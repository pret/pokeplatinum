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
output_path_species = pathlib.Path(sys.argv[2])
output_path_tiles = pathlib.Path(sys.argv[3])


data = {}
with open(input_path, 'r', encoding='utf-8') as input_file:
    data = json.load(input_file)
data = data['elusive_rod_encounter']

packables = bytearray([])
packables.extend(as_species(data['species']))

with open(output_path_species, 'wb') as output_file:
    output_file.write(packables)


map_dimensions = data["map_dimensions"]

packables = bytearray([])
packables.extend(u32(len(map_dimensions)))
for dim in map_dimensions:
    packables.extend(u32(dim))
for tile in data["tiles"]:
    packables.extend(u16(tile))

with open(output_path_tiles, 'wb') as output_file:
    output_file.write(packables)
