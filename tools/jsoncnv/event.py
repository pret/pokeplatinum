#!/usr/bin/env python3
import json
import pathlib
import sys

from convert import from_bg_event_dir, from_movement_type, from_object_event_gfx, from_map_header, from_trainer_type, from_var_flag, pad, u16, u32

ANSI_BOLD_WHITE = "\033[1;37m"
ANSI_BOLD_RED = "\033[1;31m"
ANSI_RED = "\033[31m"
ANSI_CLEAR = "\033[0m"

def parse_bg_events(bg_events: list[dict]) -> bytes:
    parsed = [
        b"".join(
            [
                u16(bg["script"]),
                u16(bg["type"]),
                u32(bg["x"]),
                u32(bg["z"]),
                u32(bg["y"]),
                u16(from_bg_event_dir(bg["player_facing_dir"])),
                pad(2),
            ]
        )
        for bg in bg_events
    ]

    return b"".join(
        [
            u32(len(bg_events)),
            *parsed,
        ]
    )


# separate function to enable throwing value errors in a list comprehension
def parse_object_event(obj: dict, i: int) -> bytes:
    obj_data = obj["data"] + [0] * (3 - len(obj["data"]))  # pad up to length 3
    if len(obj_data) > 3:
        raise ValueError(f"more than 3 values found in object event data ({obj_data})")

    return b"".join(
        [
            u16(obj.get("local_id", i)),
            u16(from_object_event_gfx(obj["graphics_id"])),
            u16(from_movement_type(obj["movement_type"])),
            u16(from_trainer_type(obj["trainer_type"])),
            u16(from_var_flag(obj["flag"])),
            u16(obj["script"]),
            u16(obj["initial_dir"]),
            u16(obj_data[0]),
            u16(obj_data[1]),
            u16(obj_data[2]),
            u16(obj["movement_range_x"]),
            u16(obj["movement_range_z"]),
            u16(obj["x"]),
            u16(obj["z"]),
            u32(obj["y"] * 0x10000),
        ]
    )


def parse_object_events(obj_events: list[dict]) -> bytes:
    return b"".join(
        [
            u32(len(obj_events)),
            *[parse_object_event(obj, i) for i, obj in enumerate(obj_events)],
        ]
    )


def parse_warp_events(warp_events: list[dict]) -> bytes:
    parsed = [
        b"".join(
            [
                u16(warp["x"]),
                u16(warp["z"]),
                u16(from_map_header(warp["dest_header_id"])),
                u16(warp["dest_warp_id"]),
                pad(4),
            ]
        )
        for warp in warp_events
    ]

    return b"".join(
        [
            u32(len(warp_events)),
            *parsed,
        ]
    )


def parse_coord_events(coord_events: list[dict]) -> bytes:
    parsed = [
        b"".join(
            [
                u16(coord["script"]),
                u16(coord["x"]),
                u16(coord["z"]),
                u16(coord["width"]),
                u16(coord["length"]),
                u16(coord["y"]),
                u16(coord["value"]),
                u16(coord["var"]),
            ]
        )
        for coord in coord_events
    ]

    return b"".join(
        [
            u32(len(coord_events)),
            *parsed,
        ]
    )


input_path = pathlib.Path(sys.argv[1])
output_path = pathlib.Path(sys.argv[2])

try:
    data = {}
    with open(input_path, 'r', encoding='utf-8') as input_file:
        data = json.load(input_file)
except json.decoder.JSONDecodeError as e:
    doc_lines = e.doc.splitlines()
    start_line = max(e.lineno - 2, 0)
    end_line = min(e.lineno + 1, len(doc_lines))

    error_lines = [f"{line_num:>4} | {line}" for line_num, line in zip(list(range(start_line + 1, end_line + 1)), doc_lines[start_line : end_line])][ : end_line - start_line]
    error_line_index = e.lineno - start_line - 1
    error_lines[error_line_index] = error_lines[error_line_index][ : 5] + f"{ANSI_RED}{error_lines[error_line_index][5 : ]}{ANSI_CLEAR}"
    error_out = "\n".join(error_lines)

    print(f"{ANSI_BOLD_WHITE}{input_path}:{e.lineno}:{e.colno}: {ANSI_BOLD_RED}error: {ANSI_BOLD_WHITE}{e.msg}{ANSI_CLEAR}\n{error_out}", file=sys.stderr)
    sys.exit(1)

packable = bytearray([])
packable.extend(parse_bg_events(data["bg_events"]))
packable.extend(parse_object_events(data["object_events"]))
packable.extend(parse_warp_events(data["warp_events"]))
packable.extend(parse_coord_events(data["coord_events"]))

with open(output_path, "wb") as output_file:
    output_file.write(packable)
