#!/usr/bin/env python3
import functools
import json
import pathlib
import sys

from generated import items
from convert import (
    TrainerDataFlags,
    derive_data_flags,
    from_trainer_class,
    pad,
    u8,
    u16,
    u32,
    from_item,
    from_trainer_ai_flag,
)


def parse_trainer_items(item_list: list[str]) -> bytes:
    item_list += [items.Item.ITEM_NONE.name] * (4 - len(item_list))
    return b"".join([u16(from_item(item_str)) for item_str in item_list])


def pack_data_flags(flags: TrainerDataFlags) -> bytes:
    return u8(int(flags.has_moves) | (int(flags.has_items) << 1))


def parse_ai_flags(flags: list[str]) -> bytes:
    return u32(
        functools.reduce(
            lambda x, y: x | y,
            [from_trainer_ai_flag(s) for s in flags],
            0,
        )
    )


input_path = pathlib.Path(sys.argv[1])
output_path = pathlib.Path(sys.argv[2])

data = {}
with open(input_path, "r", encoding="utf-8") as input_file:
    data = json.load(input_file)

packed = b"".join(
    [
        pack_data_flags(derive_data_flags(data["party"])),
        u8(from_trainer_class(data["class"])),
        pad(1),
        u8(len(data["party"])),
        parse_trainer_items(data["items"]),
        parse_ai_flags(data["ai_flags"]),
        u8(2 if data["double_battle"] else 0),
        pad(3),
    ]
)

with open(output_path, "wb") as output_file:
    output_file.write(packed)
