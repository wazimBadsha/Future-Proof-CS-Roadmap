#!/usr/bin/env python3
"""Dependency-free structural/accessibility checks for the static Pages site."""
from __future__ import annotations

from html.parser import HTMLParser
from pathlib import Path
import sys
from urllib.parse import urlsplit

ROOT = Path(__file__).resolve().parents[1]
SITE = ROOT / "docs" / "index.html"


class SiteAudit(HTMLParser):
    VOID = {"area", "base", "br", "col", "embed", "hr", "img", "input", "link", "meta", "param", "source", "track", "wbr"}

    def __init__(self) -> None:
        super().__init__(convert_charrefs=True)
        self.ids: set[str] = set()
        self.errors: list[str] = []
        self.links: list[str] = []
        self.headings: list[str] = []
        self.main_count = 0
        self.html_lang = False
        self.title_count = 0
        self.description = False
        self.viewport = False
        self.skip_link = False
        self._heading_depth = 0

    def handle_starttag(self, tag: str, attrs: list[tuple[str, str | None]]) -> None:
        attrs_map = dict(attrs)
        element_id = attrs_map.get("id")
        if element_id:
            if element_id in self.ids:
                self.errors.append(f"duplicate id: {element_id}")
            self.ids.add(element_id)
        if tag == "html":
            self.html_lang = bool(attrs_map.get("lang"))
        if tag == "main":
            self.main_count += 1
        if tag == "title":
            self.title_count += 1
        if tag == "meta":
            name = (attrs_map.get("name") or "").lower()
            self.description |= name == "description" and bool(attrs_map.get("content"))
            self.viewport |= name == "viewport" and bool(attrs_map.get("content"))
        if tag == "a":
            href = attrs_map.get("href")
            if href:
                self.links.append(href)
                if href == "#main":
                    self.skip_link = True
            if attrs_map.get("target") == "_blank":
                rel = set((attrs_map.get("rel") or "").lower().split())
                if not {"noopener", "noreferrer"}.issubset(rel):
                    self.errors.append("target=_blank link must include rel=noopener noreferrer")
        if tag == "img" and attrs_map.get("alt") is None:
            self.errors.append("img element missing alt attribute")
        if tag in {"h1", "h2", "h3", "h4", "h5", "h6"}:
            self._heading_depth += 1

    def handle_endtag(self, tag: str) -> None:
        if tag in {"h1", "h2", "h3", "h4", "h5", "h6"} and self._heading_depth:
            self._heading_depth -= 1


def main() -> int:
    if not SITE.is_file():
        print(f"FAIL: missing {SITE}")
        return 1
    parser = SiteAudit()
    parser.feed(SITE.read_text(encoding="utf-8"))
    parser.close()
    errors = parser.errors[:]
    if not parser.html_lang:
        errors.append("html element must declare lang")
    if parser.main_count != 1:
        errors.append(f"expected exactly one main landmark, found {parser.main_count}")
    if parser.title_count != 1:
        errors.append(f"expected exactly one title element, found {parser.title_count}")
    if not parser.description:
        errors.append("missing meta description")
    if not parser.viewport:
        errors.append("missing viewport meta")
    if not parser.skip_link:
        errors.append("missing skip link to #main")
    for href in parser.links:
        parts = urlsplit(href)
        if href.startswith("#") and href[1:] not in parser.ids:
            errors.append(f"broken in-page anchor: {href}")
        elif parts.scheme and parts.scheme not in {"https", "mailto"}:
            errors.append(f"non-HTTPS external link: {href}")
        elif not parts.scheme and not href.startswith("#"):
            target = (SITE.parent / parts.path).resolve()
            if not target.exists():
                errors.append(f"broken local link: {href}")
    if errors:
        print("SITE VALIDATION FAILED")
        for error in errors:
            print(f"- {error}")
        return 1
    print(f"SITE VALIDATION PASSED: {len(parser.ids)} unique ids, {len(parser.links)} links")
    return 0


if __name__ == "__main__":
    sys.exit(main())
