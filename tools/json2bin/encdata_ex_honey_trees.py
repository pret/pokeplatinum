#!/usr/bin/env python3
import itertools
import json
import pathlib
import sys

from consts import species
from convert import u32

def as_species(s: str) -> bytes:
    return u32(species.PokemonSpecies[s].value)

input_path = pathlib.Path(sys.argv[1])
output_path_common = pathlib.Path(sys.argv[2])
output_path_uncommon = pathlib.Path(sys.argv[3])
output_path_rare = pathlib.Path(sys.argv[4])


data = {}
with open(input_path, 'r', encoding='utf-8') as input_file:
    data = json.load(input_file)


packables = bytearray([])
for i in range(6):
    packables.extend(as_species(data['common'][i]))

with open(output_path_common, 'wb') as output_file:
    output_file.write(packables)


packables = bytearray([])
for i in range(6):
    packables.extend(as_species(data['uncommon'][i]))

with open(output_path_uncommon, 'wb') as output_file:
    output_file.write(packables)


packables = bytearray([])
for i in range(6):
    packables.extend(as_species(data['rare'][i]))

with open(output_path_rare, 'wb') as output_file:
    output_file.write(packables)
