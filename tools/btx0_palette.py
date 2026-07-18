#!/usr/bin/env python3
"""Dump and patch palettes inside a NITRO BTX0 texture container.

BTX0 is the NITRO 3D texture container used by DPPt overworld models: the
characters are textured quads, so their colours live in the PLTT block of the
TEX0 section rather than in a standalone NCLR file. tools/nitrogfx does not
handle BTX0, hence this script.

This tool knows nothing about Pokemon. It parses a container, period.
"""

import argparse
import struct
import sys
from dataclasses import dataclass, field
from typing import List

NAME_LEN = 16
PLTT_ENTRY_SIZE = 4


class Btx0Error(Exception):
    """Raised when a file is not a BTX0 container, or is laid out unexpectedly."""


@dataclass
class Palette:
    name: str
    offset: int  # absolute file offset of this palette's colour data
    colors: List[int] = field(default_factory=list)  # raw RGB555 u16 values


def rgb555_to_hex(value):
    """Convert a raw RGB555 u16 into an #RRGGBB string."""
    r, g, b = value & 0x1F, (value >> 5) & 0x1F, (value >> 10) & 0x1F
    return "#{:02X}{:02X}{:02X}".format(r * 255 // 31, g * 255 // 31, b * 255 // 31)


def hex_to_rgb555(text):
    """Convert an #RRGGBB string into a raw RGB555 u16.

    Lossy by design: the low 3 bits of each channel are discarded.
    """
    digits = text.lstrip("#")
    if len(digits) != 6:
        raise Btx0Error("expected #RRGGBB, got {!r}".format(text))
    try:
        r, g, b = (int(digits[i : i + 2], 16) for i in (0, 2, 4))
    except ValueError:
        raise Btx0Error("expected #RRGGBB, got {!r}".format(text))
    return (r >> 3) | ((g >> 3) << 5) | ((b >> 3) << 10)


def parse_palettes(data):
    """Return the palettes held in a BTX0 container, in declaration order."""
    if len(data) < 0x14 or data[:4] != b"BTX0":
        raise Btx0Error("not a BTX0 container")

    (num_sections,) = struct.unpack_from("<H", data, 0x0E)
    tex0 = None
    for i in range(num_sections):
        (offset,) = struct.unpack_from("<I", data, 0x10 + i * 4)
        if data[offset : offset + 4] == b"TEX0":
            tex0 = offset
            break
    if tex0 is None:
        raise Btx0Error("no TEX0 section in container")

    (pltt_size,) = struct.unpack_from("<I", data, tex0 + 0x30)
    pltt_size <<= 3  # stored shifted right by 3
    (info_offset,) = struct.unpack_from("<I", data, tex0 + 0x34)
    (data_offset,) = struct.unpack_from("<I", data, tex0 + 0x38)

    return _parse_dictionary(data, tex0 + info_offset, tex0 + data_offset, pltt_size)


def _parse_dictionary(data, dict_offset, data_base, pltt_size):
    """Parse a NITRO 3D dictionary of palette entries.

    The patricia block sitting between the dictionary header and the entries
    has an ambiguous size across references, so we work backwards from the end
    of the dictionary instead. That only relies on numObjs and sectionSize,
    both of which are unambiguous.
    """
    num_objs = data[dict_offset + 1]
    (section_size,) = struct.unpack_from("<H", data, dict_offset + 2)

    names_offset = dict_offset + section_size - num_objs * NAME_LEN
    entries_offset = names_offset - num_objs * PLTT_ENTRY_SIZE

    # Self-check: sizeUnit sits immediately before the entries. If our
    # back-computed offset is wrong, this is where we find out.
    (size_unit,) = struct.unpack_from("<H", data, entries_offset - 4)
    if size_unit != PLTT_ENTRY_SIZE:
        raise Btx0Error(
            "unexpected PLTT entry size {} (expected {})".format(
                size_unit, PLTT_ENTRY_SIZE
            )
        )

    starts = []
    for i in range(num_objs):
        (raw,) = struct.unpack_from("<H", data, entries_offset + i * PLTT_ENTRY_SIZE)
        starts.append(raw << 3)  # stored shifted right by 3

    palettes = []
    for i in range(num_objs):
        raw_name = data[names_offset + i * NAME_LEN : names_offset + (i + 1) * NAME_LEN]
        name = raw_name.split(b"\0")[0].decode("ascii")

        # A palette runs until the next one starts. Entries are not guaranteed
        # to be sorted, so take the nearest start above this one.
        later = [s for s in starts if s > starts[i]]
        end = min(later) if later else pltt_size
        count = (end - starts[i]) // 2
        absolute = data_base + starts[i]
        colors = list(struct.unpack_from("<{}H".format(count), data, absolute))
        palettes.append(Palette(name=name, offset=absolute, colors=colors))

    return palettes


def set_colors(data, palette, assignments):
    """Overwrite colour entries of `palette` in `data` (a bytearray), in place.

    assignments: {colour index: raw RGB555 u16}
    """
    for index, value in assignments.items():
        if not 0 <= index < len(palette.colors):
            raise Btx0Error(
                "colour index {} out of range for palette {!r} ({} colours)".format(
                    index, palette.name, len(palette.colors)
                )
            )
        struct.pack_into("<H", data, palette.offset + index * 2, value)


def replace_colors(colors, replacements):
    """Return `colors` with every entry matching a source colour swapped.

    Matching by value rather than by index: the same sprite's palettes are laid
    out in a different order in every file, so an index means nothing across
    them while a colour is stable.
    """
    swapped = 0
    result = []

    for value in colors:
        if value in replacements:
            result.append(replacements[value])
            swapped += 1
        else:
            result.append(value)

    return result, swapped


def _parse_replacement(text):
    """Parse a `#RRGGBB=#RRGGBB` CLI argument into (raw source, raw target)."""
    source_text, separator, target_text = text.partition("=")
    if not separator:
        raise Btx0Error("expected #RRGGBB=#RRGGBB, got {!r}".format(text))
    return hex_to_rgb555(source_text), hex_to_rgb555(target_text)


def _parse_assignment(text):
    """Parse an `INDEX=#RRGGBB` CLI argument into (index, raw RGB555)."""
    index_text, separator, color_text = text.partition("=")
    if not separator:
        raise Btx0Error("expected INDEX=#RRGGBB, got {!r}".format(text))
    try:
        index = int(index_text, 0)
    except ValueError:
        raise Btx0Error("bad colour index {!r} in {!r}".format(index_text, text))
    return index, hex_to_rgb555(color_text)


def add_palette(data, name, colors):
    """Return a new container with one extra palette appended.

    Adding a palette grows the palette dictionary, which sits before the
    texture data, so everything after it shifts. The container is rebuilt and
    the affected header offsets are recomputed.

    Safe to move the texture block: the addresses inside each texImageParam are
    relative to the texture data base, not absolute, so they stay valid as long
    as textureDataOffset is updated.

    Caveat: the patricia tree is rebuilt structurally but not as a correct
    prefix tree. Lookup by index (NNS_G3dGetResDataByIdx, which is what the
    game uses for palettes) only does pointer arithmetic and ignores it;
    lookup by name would not work for added palettes.
    """
    if len(name.encode("ascii")) > NAME_LEN - 1:
        raise Btx0Error("palette name {!r} exceeds {} bytes".format(name, NAME_LEN - 1))

    tex0 = _find_tex0(data)
    (pltt_size,) = struct.unpack_from("<I", data, tex0 + 0x30)
    pltt_size <<= 3
    (info_rel,) = struct.unpack_from("<I", data, tex0 + 0x34)
    (data_rel,) = struct.unpack_from("<I", data, tex0 + 0x38)

    dict_offset = tex0 + info_rel
    num_objs = data[dict_offset + 1]
    (old_dict_size,) = struct.unpack_from("<H", data, dict_offset + 2)

    existing = _parse_dictionary(data, dict_offset, tex0 + data_rel, pltt_size)
    if any(p.name == name for p in existing):
        raise Btx0Error("palette {!r} already exists".format(name))

    old_names_offset = dict_offset + old_dict_size - num_objs * NAME_LEN
    old_entries_offset = old_names_offset - num_objs * PLTT_ENTRY_SIZE
    old_entries = data[old_entries_offset : old_entries_offset + num_objs * PLTT_ENTRY_SIZE]
    old_names = data[old_names_offset : old_names_offset + num_objs * NAME_LEN]

    new_count = num_objs + 1
    new_dict = _build_dictionary(
        new_count,
        bytes(old_entries) + struct.pack("<HH", pltt_size >> 3, 0),
        bytes(old_names) + name.encode("ascii").ljust(NAME_LEN, b"\0"),
    )
    delta = len(new_dict) - old_dict_size

    new_colors = struct.pack("<{}H".format(len(colors)), *colors)
    pltt_abs = tex0 + data_rel

    rebuilt = bytearray(
        data[:dict_offset]
        + new_dict
        + data[dict_offset + old_dict_size : pltt_abs]
        + data[pltt_abs : pltt_abs + pltt_size]
        + new_colors
    )

    # Every offset pointing past the dictionary shifts by delta.
    for field_offset in (0x14, 0x24, 0x28, 0x38):
        (value,) = struct.unpack_from("<I", rebuilt, tex0 + field_offset)
        if value > info_rel:
            struct.pack_into("<I", rebuilt, tex0 + field_offset, value + delta)

    struct.pack_into("<I", rebuilt, tex0 + 0x30, (pltt_size + len(new_colors)) >> 3)

    (section_size,) = struct.unpack_from("<I", rebuilt, tex0 + 0x04)
    struct.pack_into("<I", rebuilt, tex0 + 0x04, section_size + delta + len(new_colors))
    struct.pack_into("<I", rebuilt, 0x08, len(rebuilt))

    return bytes(rebuilt)


def _find_tex0(data):
    """Return the absolute offset of the TEX0 section."""
    if len(data) < 0x14 or data[:4] != b"BTX0":
        raise Btx0Error("not a BTX0 container")
    (num_sections,) = struct.unpack_from("<H", data, 0x0E)
    for i in range(num_sections):
        (offset,) = struct.unpack_from("<I", data, 0x10 + i * 4)
        if data[offset : offset + 4] == b"TEX0":
            return offset
    raise Btx0Error("no TEX0 section in container")


def _build_dictionary(num_entries, entries, names):
    """Assemble a NITRO 3D dictionary block holding `num_entries` palettes.

    Layout, per NNSG3dResDict in the NitroSystem headers:
      u8 revision, u8 numEntry, u16 sizeDictBlk, u16 dummy_, u16 ofsEntry
      then (numEntry + 1) 4-byte patricia nodes
      then u16 sizeUnit, u16 ofsName, then the entries, then the 16-byte names
    """
    node_bytes = (num_entries + 1) * 4
    ofs_entry = 8 + node_bytes
    ofs_name = 4 + num_entries * PLTT_ENTRY_SIZE
    size_dict_blk = ofs_entry + ofs_name + num_entries * NAME_LEN

    nodes = bytearray(b"\x7f\x01\x00\x00")  # root sentinel
    for i in range(num_entries):
        nodes += bytes((0x46 + i, 0x00, i + 1, i))

    return (
        struct.pack("<BBHHH", 0, num_entries, size_dict_blk, 8, ofs_entry)
        + bytes(nodes[:node_bytes])
        + struct.pack("<HH", PLTT_ENTRY_SIZE, ofs_name)
        + entries
        + names
    )


def cmd_add_palette(args):
    with open(args.file, "rb") as handle:
        data = handle.read()

    source = [p for p in parse_palettes(data) if p.name == args.copy_from]
    if not source:
        raise Btx0Error("no palette named {!r} to copy from".format(args.copy_from))
    colors = list(source[0].colors)

    replacements = dict(_parse_replacement(item) for item in args.replace or [])
    if replacements:
        colors, swapped = replace_colors(colors, replacements)
        if swapped == 0:
            raise Btx0Error(
                "no colour matched any --replace source in palette {!r}".format(
                    args.copy_from
                )
            )

    for item in args.set or []:
        index, value = _parse_assignment(item)
        if not 0 <= index < len(colors):
            raise Btx0Error(
                "colour index {} out of range ({} colours)".format(index, len(colors))
            )
        colors[index] = value

    rebuilt = add_palette(data, args.name, colors)
    with open(args.file, "wb") as handle:
        handle.write(rebuilt)

    print(
        "added palette {!r} ({} colours{}), file {} -> {} bytes".format(
            args.name,
            len(colors),
            ", {} replaced".format(swapped) if replacements else "",
            len(data),
            len(rebuilt),
        )
    )
    return 0


def cmd_dump(args):
    with open(args.file, "rb") as handle:
        data = handle.read()
    for i, palette in enumerate(parse_palettes(data)):
        print(
            "palette {}: {} ({} colours @ 0x{:X})".format(
                i, palette.name, len(palette.colors), palette.offset
            )
        )
        for index, value in enumerate(palette.colors):
            print("  {:3}  0x{:04X}  {}".format(index, value, rgb555_to_hex(value)))
    return 0


def cmd_patch(args):
    with open(args.file, "rb") as handle:
        data = bytearray(handle.read())

    palettes = parse_palettes(data)
    matches = [p for p in palettes if p.name == args.palette]
    if not matches:
        raise Btx0Error(
            "no palette named {!r} (found: {})".format(
                args.palette, ", ".join(p.name for p in palettes) or "none"
            )
        )
    palette = matches[0]

    # Parse everything before writing anything, so a bad argument late in the
    # list cannot leave the file half-patched.
    assignments = dict(_parse_assignment(item) for item in args.set)
    set_colors(data, palette, assignments)

    with open(args.file, "wb") as handle:
        handle.write(data)

    for index in sorted(assignments):
        print(
            "{}[{}] = 0x{:04X} {}".format(
                palette.name,
                index,
                assignments[index],
                rgb555_to_hex(assignments[index]),
            )
        )
    return 0


def build_parser():
    parser = argparse.ArgumentParser(description=__doc__.splitlines()[0])
    subparsers = parser.add_subparsers(dest="command", required=True)

    dump = subparsers.add_parser("dump", help="list the palettes in a BTX0 file")
    dump.add_argument("file")
    dump.set_defaults(func=cmd_dump)

    patch = subparsers.add_parser("patch", help="overwrite colours in a BTX0 file")
    patch.add_argument("file")
    patch.add_argument("--palette", required=True, help="palette name, e.g. NAME")
    patch.add_argument(
        "--set",
        action="append",
        required=True,
        metavar="INDEX=#RRGGBB",
        help="colour assignment; repeatable",
    )
    patch.set_defaults(func=cmd_patch)

    add = subparsers.add_parser(
        "add-palette", help="append a palette, copied from an existing one"
    )
    add.add_argument("file")
    add.add_argument("--name", required=True, help="name for the new palette")
    add.add_argument(
        "--copy-from", required=True, help="existing palette to copy colours from"
    )
    add.add_argument(
        "--replace",
        action="append",
        metavar="#RRGGBB=#RRGGBB",
        help="swap every entry matching a colour, wherever it sits; repeatable",
    )
    add.add_argument(
        "--set",
        action="append",
        metavar="INDEX=#RRGGBB",
        help="colour override applied to the copy by index; repeatable",
    )
    add.set_defaults(func=cmd_add_palette)

    return parser


def main(argv=None):
    args = build_parser().parse_args(argv)
    try:
        return args.func(args)
    except Btx0Error as error:
        print("error: {}".format(error), file=sys.stderr)
        return 1


if __name__ == "__main__":
    sys.exit(main())
