#!/usr/bin/env python3
import json
import pathlib
import sys

from convert import from_item, from_move, from_nature, from_species, u16, u8

def parse_moves(moves: list[str]) -> bytes:
    return b"".join(
        [u16(from_move(move)) for move in moves]
    )

input_path = pathlib.Path(sys.argv[1])
output_path = pathlib.Path(sys.argv[2])

try:
    with open(input_path, 'r', encoding='utf-8') as input_file:
        data = json.load(input_file)
except json.decoder.JSONDecodeError as e:
    print(e)
    sys.exit(1)

packables = bytearray([])
packables.extend(u16(from_species(data['species'])))
packables.extend(parse_moves(data['moves']))
packables.extend(u8(data['evFlag']))  # evFlag, it it enough to convert the int to a u8 byte?
packables.extend(u8(from_nature(data['nature'])))
packables.extend(u16(from_item(data['item'])))
packables.extend(u16(data['form']))


with open(output_path, 'wb') as output_file:
    output_file.write(packables)
