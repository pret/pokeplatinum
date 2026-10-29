#!/usr/bin/env python3
import json
import pathlib
import sys

from convert import u16, u32
from generated import species
from generated.maps import MapID

ANSI_BOLD_WHITE = "\033[1;37m"
ANSI_BOLD_RED = "\033[1;31m"
ANSI_RED = "\033[31m"
ANSI_CLEAR = "\033[0m"

def as_species(s: str) -> bytes:
    return u32(species.Species[s].value)

input_path = pathlib.Path(sys.argv[1])
output_path_species = pathlib.Path(sys.argv[2])
output_path_tiles = pathlib.Path(sys.argv[3])
matrices_dir = pathlib.Path(sys.argv[4])
map_data_dir = pathlib.Path(sys.argv[5])
depfile_path = pathlib.Path(sys.argv[6])

# Feebas can be on any sea water tile in the map matrix
TILE_BEHAVIOR_WATER_SEA = 0x15  # include/constants/field/map_tile_behaviors.h
MAP_TILES = 32
TERRAIN_ATTRIBUTES_OFFSET = 0x10  # after the four u32 section sizes; see docs/maps/file_format_specifications.md

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

data = data['elusive_rod_encounter']

packables = bytearray([])
packables.extend(as_species(data['species']))

with open(output_path_species, 'wb') as output_file:
    output_file.write(packables)


matrix_path = matrices_dir / f"{data['map_matrix']}.json"
with open(matrix_path, 'r', encoding='utf-8') as matrix_file:
    matrix_maps = json.load(matrix_file)['maps']

map_data_order = (map_data_dir / 'map_data.order').read_text().split()
matrix_width = len(matrix_maps[0]) * MAP_TILES
tiles_per_map = []
tiles = []
dependencies = [matrix_path]
for row, map_row in enumerate(matrix_maps):
    for col, map_id in enumerate(map_row):
        map_data_path = map_data_dir / map_data_order[MapID[map_id].value]
        dependencies.append(map_data_path)
        terrain_attributes = map_data_path.read_bytes()[TERRAIN_ATTRIBUTES_OFFSET:TERRAIN_ATTRIBUTES_OFFSET + MAP_TILES * MAP_TILES * 2]
        map_tiles = [
            (row * MAP_TILES + z) * matrix_width + col * MAP_TILES + x
            for z in range(MAP_TILES)
            for x in range(MAP_TILES)
            if terrain_attributes[(z * MAP_TILES + x) * 2] == TILE_BEHAVIOR_WATER_SEA
        ]
        tiles_per_map.append(len(map_tiles))
        tiles.extend(map_tiles)

packables = bytearray([])
packables.extend(u32(len(tiles_per_map)))
for count in tiles_per_map:
    packables.extend(u32(count))
for tile in tiles:
    packables.extend(u16(tile))

with open(output_path_tiles, 'wb') as output_file:
    output_file.write(packables)

with open(depfile_path, 'w', encoding='utf-8') as depfile:
    depfile.write(f"{output_path_tiles}: {' '.join(str(path) for path in dependencies)}\n")
