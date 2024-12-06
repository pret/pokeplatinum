#!/usr/bin/env python3
import json
import pathlib
import sys

from consts import moves
from convert import derive_data_flags, pad, u16, u32, from_item, from_move, from_species


def parse_poke_moves(move_list: list[str]) -> bytes:
    move_list += [moves.Move.MOVE_NONE.name] * (4 - len(move_list))
    return b"".join([u16(from_move(move_str)) for move_str in move_list])


def parse_party_mon(mon: dict, has_moves: bool, has_items: bool) -> bytes:
    return b"".join(
        [
            u16(mon["power"]),
            u16(mon["level"]),
            u16((from_species(mon["species"]) & 0x3FF) | (mon["form"] << 10)),
            u16(from_item(mon["item"])) if has_items else b"",
            *[parse_poke_moves(mon["moves"]) if has_moves else b""],
            u16(mon["ball_seal"]),
        ]
    )


input_path = pathlib.Path(sys.argv[1])
output_path = pathlib.Path(sys.argv[2])

data = {}
with open(input_path, "r", encoding="utf-8") as input_file:
    data = json.load(input_file)

party = data["party"]
if len(party) == 0:
    packed = pad(8)
else:
    data_flags = derive_data_flags(party)
    packed = bytearray(
        b"".join(
            [
                parse_party_mon(mon, data_flags.has_moves, data_flags.has_items)
                for mon in party
            ]
        )
    )

    # word-align
    if len(packed) % 4 > 0:
        packed.extend(pad(4 - (len(packed) % 4)))
    packed = bytes(packed)

with open(output_path, "wb") as output_file:
    output_file.write(packed)
