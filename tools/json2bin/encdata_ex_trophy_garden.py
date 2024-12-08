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
output_path = pathlib.Path(sys.argv[2])

data = {}
with open(input_path, 'r', encoding='utf-8') as input_file:
    data = json.load(input_file)

packables = bytearray([])
for i in range(16):
    packables.extend(as_species(data['daily_encounters'][i]))

with open(output_path, 'wb') as output_file:
    output_file.write(packables)
