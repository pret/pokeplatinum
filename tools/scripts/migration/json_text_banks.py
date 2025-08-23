#!/usr/bin/env python3

"""
This is a standalone script for existing end-users to migrate their text
banks from GMM (XML) to JSON. It requires the GMM files to still be present
on disk; users merging this commit should perform the conversion as part of
their merge from upstream.
"""

import json
import pathlib
import re
import xml.etree.ElementTree as xml

LINE_FEED = re.compile(r"(\r|\n|\f)")

def take_text(node: xml.Element, expected: str) -> str | list[str]:
    assert node.tag == "language"
    assert node.attrib.get("name", "") == expected

    if not node.text:
        return ""

    text = node.text.replace("\\r", "\r").replace("\\n", "\n").replace("\\f", "\f")
    splits = LINE_FEED.split(text)
    if len(splits) == 1:
        return text

    lines: list[str] = []
    for i in range(0, len(splits), 2):
        pair = splits[i : i + 2]
        if len(pair) > 1:
            lines.append(f"{pair[0]}{pair[1]}")
        else:
            lines.append(pair[0])

    if not lines[-1]:  # Trim a trailing empty line
        lines = lines[:-1]

    return lines if len(lines) > 1 else lines[0]


def take_entry(entry: xml.Element) -> dict[str, int | str | list[str]]:
    id = entry.attrib["id"]

    assert entry[0].tag == "attribute", f"{id} in {fname}"
    assert entry[0].text in ("used", "garbage"), f"{id} in {fname}"

    if entry[0].text == "garbage":
        return {
            "id": id,
            "garbage": 0 if not entry[2].text else len(entry[2].text),
        }
    else:
        return {
            "id": id,
            "en_US": take_text(entry[1], "English"),
        }

root = pathlib.Path("res/text")

for fname in root.rglob("*.gmm"):
    bank_data = {}
    with open(fname, "r", encoding="utf-8") as f:
        bank_tree = xml.parse(f)
        bank_root = bank_tree.getroot()

        bank_data["key"] = int(bank_root[0].attrib["value"])
        bank_data["messages"] = [take_entry(entry) for entry in bank_root[1:]]

    out_fname = fname.with_suffix(".json")
    with open(out_fname, "w", encoding="utf-8") as fout:
        print(
            json.dumps(bank_data, ensure_ascii=False, indent=2),
            file=fout,
        )
