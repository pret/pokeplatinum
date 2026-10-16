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
argparser.add_argument('-w', '--town-map-file',
                       required=True,
                       help='town map data, for the shapes of fields')
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

# Pokedex fields: map header, and the town map area or landmark whose blocks give its shape,
# or an (x, z, width, height) rectangle where the Pokedex doesn't follow the town map
FIELDS = [
    (None, (0, 0, 1, 1)),
    (MapHeaderID.MAP_HEADER_CANALAVE_CITY, 'canalave_city'),
    (MapHeaderID.MAP_HEADER_ETERNA_CITY, (9, 16, 1, 2)),
    (MapHeaderID.MAP_HEADER_PASTORIA_CITY, 'pastoria_city'),
    (MapHeaderID.MAP_HEADER_SUNYSHORE_CITY, 'sunyshore_city'),
    (MapHeaderID.MAP_HEADER_POKEMON_LEAGUE, (26, 17, 1, 2)),
    (MapHeaderID.MAP_HEADER_VALLEY_WINDWORKS_OUTSIDE, 'valley_windworks'),
    (MapHeaderID.MAP_HEADER_FUEGO_IRONWORKS_OUTSIDE, 'fuego_ironworks'),
    (MapHeaderID.MAP_HEADER_STARK_MOUNTAIN_OUTSIDE, 'stark_mountain'),
    (MapHeaderID.MAP_HEADER_IRON_ISLAND, 'iron_island'),
    (MapHeaderID.MAP_HEADER_VALOR_LAKEFRONT, 'valor_lakefront'),
    (MapHeaderID.MAP_HEADER_ACUITY_LAKEFRONT, 'acuity_lakefront'),
    (MapHeaderID.MAP_HEADER_ROUTE_201, 'route_201'),
    (MapHeaderID.MAP_HEADER_ROUTE_202, 'route_202'),
    (MapHeaderID.MAP_HEADER_ROUTE_203, 'route_203'),
    (MapHeaderID.MAP_HEADER_ROUTE_204_SOUTH, 'ravaged_path'),
    (MapHeaderID.MAP_HEADER_ROUTE_204_NORTH, (5, 21, 1, 1)),
    (MapHeaderID.MAP_HEADER_ROUTE_205_SOUTH, 'route_205_south'),
    (MapHeaderID.MAP_HEADER_ROUTE_205_NORTH, 'route_205_north'),
    (MapHeaderID.MAP_HEADER_ROUTE_206, 'route_206'),
    (MapHeaderID.MAP_HEADER_ROUTE_207, 'route_207'),
    (MapHeaderID.MAP_HEADER_ROUTE_208, 'route_208'),
    (MapHeaderID.MAP_HEADER_ROUTE_209, (17, 21, 1, 2)),
    (MapHeaderID.MAP_HEADER_ROUTE_210_SOUTH, 'route_210_south'),
    (MapHeaderID.MAP_HEADER_ROUTE_210_NORTH, 'route_210_north'),
    (MapHeaderID.MAP_HEADER_ROUTE_211_WEST, (11, 16, 1, 1)),
    (MapHeaderID.MAP_HEADER_ROUTE_211_EAST, (13, 16, 1, 1)),
    (MapHeaderID.MAP_HEADER_ROUTE_212_NORTH, 'route_212_north'),
    (MapHeaderID.MAP_HEADER_ROUTE_212_SOUTH, 'route_212_south'),
    (MapHeaderID.MAP_HEADER_ROUTE_213, 'route_213'),
    (MapHeaderID.MAP_HEADER_ROUTE_214, 'route_214'),
    (MapHeaderID.MAP_HEADER_ROUTE_215, 'route_215'),
    (MapHeaderID.MAP_HEADER_ROUTE_216, 'route_216'),
    (MapHeaderID.MAP_HEADER_ROUTE_217, 'route_217'),
    (MapHeaderID.MAP_HEADER_ROUTE_218, 'route_218'),
    (MapHeaderID.MAP_HEADER_ROUTE_219, 'route_219'),
    (MapHeaderID.MAP_HEADER_ROUTE_221, 'route_221'),
    (MapHeaderID.MAP_HEADER_ROUTE_222, 'route_222'),
    (MapHeaderID.MAP_HEADER_ROUTE_224, 'route_224'),
    (MapHeaderID.MAP_HEADER_ROUTE_225, 'route_225'),
    (MapHeaderID.MAP_HEADER_ROUTE_227, 'route_227'),
    (MapHeaderID.MAP_HEADER_ROUTE_228, 'route_228'),
    (MapHeaderID.MAP_HEADER_ROUTE_229, 'route_229'),
    (MapHeaderID.MAP_HEADER_TWINLEAF_TOWN, 'twinleaf_town'),
    (MapHeaderID.MAP_HEADER_CELESTIC_TOWN, 'celestic_town'),
    (MapHeaderID.MAP_HEADER_RESORT_AREA, 'resort_area'),
    (MapHeaderID.MAP_HEADER_ROUTE_220, 'route_220'),
    (MapHeaderID.MAP_HEADER_ROUTE_223, 'route_223'),
    (MapHeaderID.MAP_HEADER_ROUTE_226, 'route_226'),
    (MapHeaderID.MAP_HEADER_ROUTE_230, 'route_230'),
    (MapHeaderID.MAP_HEADER_ETERNA_FOREST_OUTSIDE, 'eterna_forest'),
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


def write_file(file_num, data):
    target_fname = str(private_dir / output_name) + f'_{file_num:0{NUM_DIGITS}}.bin'
    with open(target_fname, 'wb+') as target_file:
        target_file.write(data)


def map_header_ids(entries):
    return b''.join((NO_MAP_HEADER if entry[0] is None else entry[0]).to_bytes(4, 'little') for entry in entries)


def field_coordinates(shape, town_map_cells):
    if isinstance(shape, str):
        cells = town_map_cells[shape]
    else:
        x, z, width, height = shape
        cells = {(x + i, z + j) for i in range(width) for j in range(height)}

    x0 = min(x for x, _ in cells)
    z0 = min(z for _, z in cells)
    width = max(x for x, _ in cells) - x0 + 1
    height = max(z for _, z in cells) - z0 + 1
    cell_matrix = bytes((x0 + i % width, z0 + i // width) in cells for i in range(width * height))
    return bytes([x0, z0, width, height]) + cell_matrix.ljust(32, b'\0')


with open(args.town_map_file, encoding='utf-8') as town_map_file:
    town_map_cells = defaultdict(set)
    for block in json.load(town_map_file)['blocks']:
        for key in ('area', 'landmark'):
            if block[key]:
                town_map_cells[block[key]].add((block['x'], block['z']))

write_file(0, b''.join(bytes([x, z, header == MT_CORONET_DUNGEON, 0]) for header, x, z in DUNGEONS))
write_file(1, map_header_ids(DUNGEONS))
write_file(2, b''.join(field_coordinates(shape, town_map_cells) for _, shape in FIELDS))
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
