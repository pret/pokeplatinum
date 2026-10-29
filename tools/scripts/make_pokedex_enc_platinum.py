#!/usr/bin/env python3
import argparse
import json
import pathlib
import subprocess
import sys
from collections import defaultdict

from generated.map_headers import MapHeaderID
from generated.species import Species

ANSI_BOLD_WHITE = "\033[1;37m"
ANSI_BOLD_RED = "\033[1;31m"
ANSI_RED = "\033[31m"
ANSI_CLEAR = "\033[0m"

argparser = argparse.ArgumentParser(
    prog='make_pokedex_enc_platinum_py',
    description='Packs the archive containing Pokedex encounter data'
)
argparser.add_argument('-n', '--narc',
                       required=True,
                       help='Path to narc compiler tool')
argparser.add_argument('-s', '--source-dir',
                       required=True,
                       help='Path to the source directory (res/field/encounters)')
argparser.add_argument('-p', '--private-dir',
                       required=True,
                       help='Path to the private directory (where binaries will be made)')
argparser.add_argument('-o', '--output-dir',
                       required=True,
                       help='Path to the output directory (where the NARC will be made)')
argparser.add_argument('-c', '--coronet-file',
                       required=True,
                       help='encounter file for MtCoronet B1F')
argparser.add_argument('-t', '--honey-file',
                       required=True,
                       help='encounter file for honey trees')
argparser.add_argument('-g', '--trophy-file',
                       required=True,
                       help='encounter file for the Trophy Garden')
argparser.add_argument('-m', '--marsh-file',
                       required=True,
                       help='encounter file for the Great Marsh Lookout')
argparser.add_argument('-x', '--matrix-file',
                       required=True,
                       help='overworld map matrix, for the shapes of fields')
argparser.add_argument('src_files',
                       nargs='+',
                       help='List of files to process in-order')
args = argparser.parse_args()

source_dir = pathlib.Path(args.source_dir)
private_dir = pathlib.Path(args.private_dir)
output_dir = pathlib.Path(args.output_dir)

output_name = 'zukan_enc_platinum'

private_dir.mkdir(parents=True, exist_ok=True)

# Pokedex dungeons: map header and dot position on the town map
DUNGEONS = [
    (None, 0, 0),
    (MapHeaderID.MAP_HEADER_OREBURGH_MINE_B1F, 9, 24),
    (MapHeaderID.MAP_HEADER_ETERNA_FOREST, 6, 17),
    (MapHeaderID.MAP_HEADER_MT_CORONET_1F_SOUTH, 12, 17),
    (MapHeaderID.MAP_HEADER_GREAT_MARSH_1, 18, 24),
    (MapHeaderID.MAP_HEADER_SOLACEON_RUINS_MANIAC_TUNNEL_ROOM, 18, 20),
    (MapHeaderID.MAP_HEADER_VICTORY_ROAD_1F, 26, 18),
    (MapHeaderID.MAP_HEADER_RAVAGED_PATH, 5, 22),
    (MapHeaderID.MAP_HEADER_OREBURGH_GATE_1F, 7, 23),
    (MapHeaderID.MAP_HEADER_STARK_MOUNTAIN_ROOM_1, 23, 7),
    (MapHeaderID.MAP_HEADER_SENDOFF_SPRING, 24, 21),
    (MapHeaderID.MAP_HEADER_SNOWPOINT_TEMPLE_1F, 11, 6),
    (MapHeaderID.MAP_HEADER_WAYWARD_CAVE_1F, 9, 19),
    (MapHeaderID.MAP_HEADER_RUIN_MANIAC_CAVE_SHORT, 22, 21),
    (MapHeaderID.MAP_HEADER_TROPHY_GARDEN, 14, 24),
    (MapHeaderID.MAP_HEADER_IRON_ISLAND_1F, 3, 15),
    (MapHeaderID.MAP_HEADER_OLD_CHATEAU, 7, 16),
    (MapHeaderID.MAP_HEADER_LAKE_VERITY_LOW_WATER, 2, 26),
    (MapHeaderID.MAP_HEADER_LAKE_VALOR, 22, 23),
    (MapHeaderID.MAP_HEADER_LAKE_ACUITY, 10, 7),
    (MapHeaderID.MAP_HEADER_ROUTE_209_LOST_TOWER_1F, 17, 21),
    (MapHeaderID.MAP_HEADER_FLOAROMA_MEADOW, 5, 19),
]

# Pokedex fields, shaped by their map header's cells in the overworld matrix
FIELDS = [
    None,
    MapHeaderID.MAP_HEADER_CANALAVE_CITY,
    MapHeaderID.MAP_HEADER_ETERNA_CITY,
    MapHeaderID.MAP_HEADER_PASTORIA_CITY,
    MapHeaderID.MAP_HEADER_SUNYSHORE_CITY,
    MapHeaderID.MAP_HEADER_POKEMON_LEAGUE,
    MapHeaderID.MAP_HEADER_VALLEY_WINDWORKS_OUTSIDE,
    MapHeaderID.MAP_HEADER_FUEGO_IRONWORKS_OUTSIDE,
    MapHeaderID.MAP_HEADER_STARK_MOUNTAIN_OUTSIDE,
    MapHeaderID.MAP_HEADER_IRON_ISLAND,
    MapHeaderID.MAP_HEADER_VALOR_LAKEFRONT,
    MapHeaderID.MAP_HEADER_ACUITY_LAKEFRONT,
    MapHeaderID.MAP_HEADER_ROUTE_201,
    MapHeaderID.MAP_HEADER_ROUTE_202,
    MapHeaderID.MAP_HEADER_ROUTE_203,
    MapHeaderID.MAP_HEADER_ROUTE_204_SOUTH,
    MapHeaderID.MAP_HEADER_ROUTE_204_NORTH,
    MapHeaderID.MAP_HEADER_ROUTE_205_SOUTH,
    MapHeaderID.MAP_HEADER_ROUTE_205_NORTH,
    MapHeaderID.MAP_HEADER_ROUTE_206,
    MapHeaderID.MAP_HEADER_ROUTE_207,
    MapHeaderID.MAP_HEADER_ROUTE_208,
    MapHeaderID.MAP_HEADER_ROUTE_209,
    MapHeaderID.MAP_HEADER_ROUTE_210_SOUTH,
    MapHeaderID.MAP_HEADER_ROUTE_210_NORTH,
    MapHeaderID.MAP_HEADER_ROUTE_211_WEST,
    MapHeaderID.MAP_HEADER_ROUTE_211_EAST,
    MapHeaderID.MAP_HEADER_ROUTE_212_NORTH,
    MapHeaderID.MAP_HEADER_ROUTE_212_SOUTH,
    MapHeaderID.MAP_HEADER_ROUTE_213,
    MapHeaderID.MAP_HEADER_ROUTE_214,
    MapHeaderID.MAP_HEADER_ROUTE_215,
    MapHeaderID.MAP_HEADER_ROUTE_216,
    MapHeaderID.MAP_HEADER_ROUTE_217,
    MapHeaderID.MAP_HEADER_ROUTE_218,
    MapHeaderID.MAP_HEADER_ROUTE_219,
    MapHeaderID.MAP_HEADER_ROUTE_221,
    MapHeaderID.MAP_HEADER_ROUTE_222,
    MapHeaderID.MAP_HEADER_ROUTE_224,
    MapHeaderID.MAP_HEADER_ROUTE_225,
    MapHeaderID.MAP_HEADER_ROUTE_227,
    MapHeaderID.MAP_HEADER_ROUTE_228,
    MapHeaderID.MAP_HEADER_ROUTE_229,
    MapHeaderID.MAP_HEADER_TWINLEAF_TOWN,
    MapHeaderID.MAP_HEADER_CELESTIC_TOWN,
    MapHeaderID.MAP_HEADER_RESORT_AREA,
    MapHeaderID.MAP_HEADER_ROUTE_220,
    MapHeaderID.MAP_HEADER_ROUTE_223,
    MapHeaderID.MAP_HEADER_ROUTE_226,
    MapHeaderID.MAP_HEADER_ROUTE_230,
    MapHeaderID.MAP_HEADER_ETERNA_FOREST_OUTSIDE,
]

honey_tree_dungeons = [
    21
]
honey_tree_fields = [
    6,
    7,
    17,
    18,
    19,
    20,
    21,
    22,
    23,
    24,
    26,
    27,
    28,
    29,
    30,
    31,
    34,
    36,
    37,
    50
]
great_marsh_dungeon = 4

NUM_POKEMON = len(Species) - 1

NUM_DIGITS = 8

NO_MAP_HEADER = 0xFFFFFFFF
MT_CORONET_DUNGEON = MapHeaderID.MAP_HEADER_MT_CORONET_1F_SOUTH

# Matrix cells that the Pokedex leaves out
FIELD_CELLS_NOT_SHOWN = {
    MapHeaderID.MAP_HEADER_ETERNA_CITY: {(10, 16)},
    MapHeaderID.MAP_HEADER_ROUTE_209: {(16, 22)},
}


def write_file(file_num, data):
    target_fname = str(private_dir / output_name) + f'_{file_num:0{NUM_DIGITS}}.bin'
    with open(target_fname, 'wb+') as target_file:
        target_file.write(data)


def map_header_ids(headers):
    return b''.join((NO_MAP_HEADER if header is None else header).to_bytes(4, 'little') for header in headers)


def field_coordinates(header, matrix_cells):
    if header is None:
        cells = {(0, 0)}
    else:
        cells = matrix_cells[header.name] - FIELD_CELLS_NOT_SHOWN.get(header, set())

    x0 = min(x for x, _ in cells)
    z0 = min(z for _, z in cells)
    width = max(x for x, _ in cells) - x0 + 1
    height = max(z for _, z in cells) - z0 + 1
    cell_matrix = bytes((x0 + i % width, z0 + i // width) in cells for i in range(width * height))
    return bytes([x0, z0, width, height]) + cell_matrix.ljust(32, b'\0')


with open(args.matrix_file, encoding='utf-8') as matrix_file:
    matrix_cells = defaultdict(set)
    for z, row in enumerate(json.load(matrix_file)['headers']):
        for x, header in enumerate(row):
            matrix_cells[header].add((x, z))

write_file(0, b''.join(bytes([x, z, header == MT_CORONET_DUNGEON, 0]) for header, x, z in DUNGEONS))
write_file(1, map_header_ids(header for header, _, _ in DUNGEONS))
write_file(2, b''.join(field_coordinates(header, matrix_cells) for header in FIELDS))
write_file(3, map_header_ids(FIELDS))

dungeon_morning = [set() for species in range(NUM_POKEMON)]
dungeon_day = [set() for species in range(NUM_POKEMON)]
dungeon_night = [set() for species in range(NUM_POKEMON)]
dungeon_special = [set() for species in range(NUM_POKEMON)]
dungeon_special_natdex = [set() for species in range(NUM_POKEMON)]
field_morning = [set() for species in range(NUM_POKEMON)]
field_day = [set() for species in range(NUM_POKEMON)]
field_night = [set() for species in range(NUM_POKEMON)]
field_special = [set() for species in range(NUM_POKEMON)]
field_special_natdex = [set() for species in range(NUM_POKEMON)]

errors = ""
for file in args.src_files:
    try:
        with open(file, encoding='utf-8') as encounter_file:
            enc_data = json.load(encounter_file)
    except json.decoder.JSONDecodeError as e:
        doc_lines = e.doc.splitlines()
        start_line = max(e.lineno - 2, 0)
        end_line = min(e.lineno + 1, len(doc_lines))

        error_lines = [f"{line_num:>4} | {line}" for line_num, line in zip(list(range(start_line + 1, end_line + 1)), doc_lines[start_line : end_line])][ : end_line - start_line]
        error_line_index = e.lineno - start_line - 1
        error_lines[error_line_index] = error_lines[error_line_index][ : 5] + f"{ANSI_RED}{error_lines[error_line_index][5 : ]}{ANSI_CLEAR}"
        error_out = "\n".join(error_lines)

        print(f"{ANSI_BOLD_WHITE}{file}:{e.lineno}:{e.colno}: {ANSI_BOLD_RED}error: {ANSI_BOLD_WHITE}{e.msg}{ANSI_CLEAR}\n{error_out}", file=sys.stderr)
        continue

    if (file == args.honey_file):
        for species in enc_data['common']:
            for map_num in honey_tree_dungeons:
                dungeon_special[Species[species].value].add(map_num)
                dungeon_special_natdex[Species[species].value].add(map_num)
            for map_num in honey_tree_fields:
                field_special[Species[species].value].add(map_num)
                field_special_natdex[Species[species].value].add(map_num)
        for species in enc_data['uncommon']:
            for map_num in honey_tree_dungeons:
                dungeon_special[Species[species].value].add(map_num)
                dungeon_special_natdex[Species[species].value].add(map_num)
            for map_num in honey_tree_fields:
                field_special[Species[species].value].add(map_num)
                field_special_natdex[Species[species].value].add(map_num)
    
    elif (file == args.marsh_file):
        for species in enc_data['before_national_dex']:
            dungeon_special[Species[species].value].add(great_marsh_dungeon)
        for species in enc_data['after_national_dex']:
            dungeon_special_natdex[Species[species].value].add(great_marsh_dungeon)

    else:
        map_data = enc_data['map_category']
        map_type = map_data['map_type']
        map_num = map_data['map_number']

        if (map_type == 'dungeon'):
            for i, slot in enumerate(enc_data['land_encounters']):
                species = slot['species']
                dungeon_morning[Species[species].value].add(map_num)

                if ((i == 2) or (i == 3)):
                    species = enc_data['day'][i - 2]
                    dungeon_day[Species[species].value].add(map_num)

                    species = enc_data['night'][i - 2]
                    dungeon_night[Species[species].value].add(map_num)
                else:
                    dungeon_day[Species[species].value].add(map_num)
                    dungeon_night[Species[species].value].add(map_num)

            for slot in enc_data['surf_encounters']:
                species = slot['species']
                dungeon_morning[Species[species].value].add(map_num)
                dungeon_day[Species[species].value].add(map_num)
                dungeon_night[Species[species].value].add(map_num)

            for slot in enc_data['old_rod_encounters']:
                species = slot['species']
                dungeon_morning[Species[species].value].add(map_num)
                dungeon_day[Species[species].value].add(map_num)
                dungeon_night[Species[species].value].add(map_num)

            for slot in enc_data['good_rod_encounters']:
                species = slot['species']
                dungeon_morning[Species[species].value].add(map_num)
                dungeon_day[Species[species].value].add(map_num)
                dungeon_night[Species[species].value].add(map_num)

            for slot in enc_data['super_rod_encounters']:
                species = slot['species']
                dungeon_morning[Species[species].value].add(map_num)
                dungeon_day[Species[species].value].add(map_num)
                dungeon_night[Species[species].value].add(map_num)

            dungeon_special[0].add(map_num)

            for species in enc_data['radar']:
                dungeon_special_natdex[Species[species].value].add(map_num)

            if (file == args.coronet_file):
                species = enc_data['elusive_rod_encounter']['species']
                dungeon_special[Species[species].value].add(map_num)
                dungeon_special_natdex[Species[species].value].add(map_num)

            if (file == args.trophy_file):
                for species in enc_data['daily_encounters']:
                    dungeon_special_natdex[Species[species].value].add(map_num)

        if (map_type == 'field'):
            for i, slot in enumerate(enc_data['land_encounters']):
                species = slot['species']
                field_morning[Species[species].value].add(map_num)

                if ((i == 2) or (i == 3)):
                    species = enc_data['day'][i - 2]
                    field_day[Species[species].value].add(map_num)

                    species = enc_data['night'][i - 2]
                    field_night[Species[species].value].add(map_num)
                else:
                    field_day[Species[species].value].add(map_num)
                    field_night[Species[species].value].add(map_num)

            for slot in enc_data['surf_encounters']:
                species = slot['species']
                field_morning[Species[species].value].add(map_num)
                field_day[Species[species].value].add(map_num)
                field_night[Species[species].value].add(map_num)

            for slot in enc_data['old_rod_encounters']:
                species = slot['species']
                field_morning[Species[species].value].add(map_num)
                field_day[Species[species].value].add(map_num)
                field_night[Species[species].value].add(map_num)

            for slot in enc_data['good_rod_encounters']:
                species = slot['species']
                field_morning[Species[species].value].add(map_num)
                field_day[Species[species].value].add(map_num)
                field_night[Species[species].value].add(map_num)

            for slot in enc_data['super_rod_encounters']:
                species = slot['species']
                field_morning[Species[species].value].add(map_num)
                field_day[Species[species].value].add(map_num)
                field_night[Species[species].value].add(map_num)

            field_special[0].add(map_num)

            for species in enc_data['radar']:
                field_special_natdex[Species[species].value].add(map_num)

if errors:
    print(errors, file=sys.stderr)
    sys.exit(1)

for species in range(NUM_POKEMON):
    speciesSets = [dungeon_morning[species],
                   dungeon_day[species],
                   dungeon_night[species],
                   dungeon_special[species],
                   dungeon_special_natdex[species],
                   field_morning[species],
                   field_day[species],
                   field_night[species],
                   field_special[species],
                   field_special_natdex[species]]

    for i, mapSet in enumerate(speciesSets):
        bin_data = bytes()
        mapList = list(mapSet)
        mapList.sort()
        mapList.append(0)
        for map in mapList:
            bin_data = bin_data + map.to_bytes(4, 'little')

        fileNum = 4 + species + NUM_POKEMON * i
        target_fname = str(private_dir / output_name) + f'_{fileNum:0{NUM_DIGITS}}.bin'
        with open(target_fname, 'wb+') as target_file:
            target_file.write(bin_data)

subprocess.run([
    args.narc,
    '--create',
    '--file', f'{output_dir / output_name}.narc',
    private_dir,
])
