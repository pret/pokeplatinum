#!/usr/bin/env python3
import itertools
import json
import pathlib
import sys

from consts import species
from convert import u16, u32

def as_species(s: str) -> bytes:
    return u32(species.PokemonSpecies[s].value)

input_path = pathlib.Path(sys.argv[1])
output_path_natdex = pathlib.Path(sys.argv[2])
output_path_local = pathlib.Path(sys.argv[3])
output_path_coords = pathlib.Path(sys.argv[4])

data = {}
with open(input_path, 'r', encoding='utf-8') as input_file:
    data = json.load(input_file)


packables = bytearray([])
for i in range(32):
    packables.extend(as_species(data['after_national_dex'][i]))

with open(output_path_natdex, 'wb') as output_file:
    output_file.write(packables)


packables = bytearray([])
for i in range(32):
    packables.extend(as_species(data['before_national_dex'][i]))

with open(output_path_local, 'wb') as output_file:
    output_file.write(packables)


packables = bytearray([])
for i in range(36):
    packables.extend(u16(data["binocular_coords"][i]['x']))
    packables.extend(u16(data["binocular_coords"][i]['y']))

with open(output_path_coords, 'wb') as output_file:
    output_file.write(packables)
