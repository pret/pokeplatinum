#!/usr/bin/env python3
import json
import pathlib
import sys

from convert import from_trainer_class, u16

def parse_set_list(set_list: list[int]) -> tuple[bytes , bytes]:
    # TODO: check for set names instead of int
    num_sets = sum(idx != 0 for idx in set_list)
    # TODO: map 
    sets = b"".join(
        [u16(set_id) for set_id in set_list]
    )
    return u16(num_sets), sets

input_path = pathlib.Path(sys.argv[1])
output_path = pathlib.Path(sys.argv[2])

try:
    with open(input_path, 'r', encoding='utf-8') as input_file:
        data = json.load(input_file)
except json.decoder.JSONDecodeError as e:
    print(e)
    sys.exit(1)

packables = bytearray([])
packables.extend(u16(from_trainer_class(data['class'])))
num_sets, sets = parse_set_list(data['setIds'])
packables.extend(num_sets)
packables.extend(sets)


with open(output_path, 'wb') as output_file:
    output_file.write(packables)
