#!/usr/bin/env python3
import argparse
import json
import pathlib
import subprocess

from consts.species import PokemonSpecies
from consts.pokemon import PokemonType
from consts.pokemon import PokemonBodyShape


argparser = argparse.ArgumentParser(
    prog='make_pokedex_enc_platinum_py',
    description='Packs the archive containing Pokedex encounter data'
)
argparser.add_argument('-k', '--knarc',
                       required=True,
                       help='Path to knarc executable')
argparser.add_argument('-s', '--source-dir',
                       required=True,
                       help='Path to the source directory (res/prebuilt/application/zukanlist/zkn_data)')
argparser.add_argument('-p', '--private-dir',
                       required=True,
                       help='Path to the private directory (where binaries will be made)')
argparser.add_argument('-o', '--output-dir',
                       required=True,
                       help='Path to the output directory (where the NARC will be made)')
args = argparser.parse_args()

source_dir = pathlib.Path(args.source_dir)
private_dir = pathlib.Path(args.private_dir)
output_dir = pathlib.Path(args.output_dir)

output_name = 'zukan_enc_platinum'

private_dir.mkdir(parents=True, exist_ok=True)

# dungeon position on map
file_0 = [
    [0, 0, 0, 0],
    [9, 24, 0, 0],
    [6, 17, 0, 0],
    [12, 17, 1, 0],
    [18, 24, 0, 0],
    [18, 20, 0, 0],
    [26, 18, 0, 0],
    [5, 22, 0, 0],
    [7, 23, 0, 0],
    [23, 7, 0, 0],
    [24, 21, 0, 0],
    [11, 6, 0, 0],
    [9, 19, 0, 0],
    [22, 21, 0, 0],
    [14, 24, 0, 0],
    [3, 15, 0, 0],
    [7, 16, 0, 0],
    [2, 26, 0, 0],
    [22, 23, 0, 0],
    [10, 7, 0, 0],
    [17, 21, 0, 0],
    [5, 19, 0, 0]
]
file_1 = [
    [255, 255, 255, 255],
    [198, 0, 0, 0],
    [203, 0, 0, 0],
    [207, 0, 0, 0],
    [248, 1, 0, 0],
    [225, 0, 0, 0],
    [244, 0, 0, 0],
    [254, 0, 0, 0],
    [2, 1, 0, 0],
    [7, 1, 0, 0],
    [11, 1, 0, 0],
    [22, 1, 0, 0],
    [28, 1, 0, 0],
    [30, 1, 0, 0],
    [31, 1, 0, 0],
    [33, 1, 0, 0],
    [39, 1, 0, 0],
    [55, 1, 0, 0],
    [59, 1, 0, 0],
    [62, 1, 0, 0],
    [101, 1, 0, 0],
    [0, 1, 0, 0]
]
# field position on map
file_2 = [
    [0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [1, 22, 1, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [9, 16, 1, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [18, 25, 2, 2, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [26, 23, 2, 2, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [26, 17, 1, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [7, 20, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [5, 18, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [23, 7, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [3, 15, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [21, 23, 2, 2, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [9, 6, 2, 2, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [3, 26, 2, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [5, 25, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [6, 23, 2, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [5, 22, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [5, 21, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [6, 18, 1, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [8, 16, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [9, 18, 1, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [9, 22, 2, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [12, 22, 2, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [17, 21, 1, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [17, 17, 1, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [15, 16, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [11, 16, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [13, 16, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [14, 23, 1, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [14, 26, 4, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [20, 25, 3, 2, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [22, 20, 1, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [18, 18, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [9, 12, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [9, 8, 1, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [2, 23, 2, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [5, 27, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [7, 28, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [23, 24, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [27, 15, 2, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [19, 10, 1, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [23, 8, 1, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [24, 10, 1, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [24, 13, 2, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [3, 27, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [14, 16, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [25, 14, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [5, 28, 2, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [26, 19, 1, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [21, 10, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [21, 13, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [6, 16, 2, 2, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
]
file_3 = [
    [255, 255, 255, 255],
    [33, 0, 0, 0],
    [65, 0, 0, 0],
    [120, 0, 0, 0],
    [150, 0, 0, 0],
    [172, 0, 0, 0],
    [200, 0, 0, 0],
    [204, 0, 0, 0],
    [6, 1, 0, 0],
    [32, 1, 0, 0],
    [80, 1, 0, 0],
    [84, 1, 0, 0],
    [86, 1, 0, 0],
    [87, 1, 0, 0],
    [88, 1, 0, 0],
    [89, 1, 0, 0],
    [90, 1, 0, 0],
    [91, 1, 0, 0],
    [93, 1, 0, 0],
    [94, 1, 0, 0],
    [97, 1, 0, 0],
    [98, 1, 0, 0],
    [100, 1, 0, 0],
    [106, 1, 0, 0],
    [107, 1, 0, 0],
    [109, 1, 0, 0],
    [110, 1, 0, 0],
    [111, 1, 0, 0],
    [115, 1, 0, 0],
    [117, 1, 0, 0],
    [124, 1, 0, 0],
    [126, 1, 0, 0],
    [127, 1, 0, 0],
    [129, 1, 0, 0],
    [132, 1, 0, 0],
    [135, 1, 0, 0],
    [136, 1, 0, 0],
    [139, 1, 0, 0],
    [143, 1, 0, 0],
    [144, 1, 0, 0],
    [147, 1, 0, 0],
    [150, 1, 0, 0],
    [151, 1, 0, 0],
    [155, 1, 0, 0],
    [186, 1, 0, 0],
    [201, 1, 0, 0],
    [211, 1, 0, 0],
    [212, 1, 0, 0],
    [213, 1, 0, 0],
    [215, 1, 0, 0],
    [202, 0, 0, 0]
]

honeyTrees = [
    "SPECIES_AIPOM",
    "SPECIES_HERACROSS",
    "SPECIES_WURMPLE",
    "SPECIES_BURMY",
    "SPECIES_COMBEE",
    "SPECIES_CHERUBI"
]

NUM_POKEMON = len(PokemonSpecies) - 1
NUM_FILES = NUM_POKEMON * 10 + 4
NUM_MAPS = 183

numDigits = len(str(NUM_FILES))

binData = bytes()
for dungeon in file_0:
    for pos in dungeon:
        binData = binData + pos.to_bytes(1, 'little')

target_fname = str(private_dir / output_name) + f'_{0:0{numDigits}}.bin'
with open(target_fname, 'wb+') as target_file:
    target_file.write(binData)

binData = bytes()
for dungeon in file_1:
    for pos in dungeon:
        binData = binData + pos.to_bytes(1, 'little')

target_fname = str(private_dir / output_name) + f'_{1:0{numDigits}}.bin'
with open(target_fname, 'wb+') as target_file:
    target_file.write(binData)

binData = bytes()
for field in file_2:
    for pos in field:
        binData = binData + pos.to_bytes(1, 'little')

target_fname = str(private_dir / output_name) + f'_{2:0{numDigits}}.bin'
with open(target_fname, 'wb+') as target_file:
    target_file.write(binData)

binData = bytes()
for field in file_3:
    for pos in field:
        binData = binData + pos.to_bytes(1, 'little')

target_fname = str(private_dir / output_name) + f'_{3:0{numDigits}}.bin'
with open(target_fname, 'wb+') as target_file:
    target_file.write(binData)

dungeonMorning = [set() for species in range(NUM_POKEMON)]
dungeonDay = [set() for species in range(NUM_POKEMON)]
dungeonNight = [set() for species in range(NUM_POKEMON)]
dungeonSpecial = [set() for species in range(NUM_POKEMON)]
dungeonSpecialNatDex = [set() for species in range(NUM_POKEMON)]
fieldMorning = [set() for species in range(NUM_POKEMON)]
fieldDay = [set() for species in range(NUM_POKEMON)]
fieldNight = [set() for species in range(NUM_POKEMON)]
fieldSpecial = [set() for species in range(NUM_POKEMON)]
fieldSpecialNatDex = [set() for species in range(NUM_POKEMON)]

for archiveID in range(NUM_MAPS):
            with open(source_dir / f"{archiveID:03}.json", encoding='utf-8') as encounter_file:
                encounterData = json.load(encounter_file)

            mapData = encounterData["map_category"]
            mapType = mapData["map_type"]
            mapNum = mapData["map_number"]

            if (mapType == 'dungeon'):
                for i, slot in enumerate(encounterData["land_encounters"]):
                    species = slot["species"]
                    dungeonMorning[PokemonSpecies[species].value].add(mapNum)

                    if ((i == 2) or (i == 3)):
                        species = encounterData["morning"][i - 2]
                        dungeonDay[PokemonSpecies[species].value].add(mapNum)

                        species = encounterData["night"][i - 2]
                        dungeonNight[PokemonSpecies[species].value].add(mapNum)
                    else:
                        dungeonDay[PokemonSpecies[species].value].add(mapNum)
                        dungeonNight[PokemonSpecies[species].value].add(mapNum)

                for slot in encounterData["surf_encounters"]:
                    species = slot["species"]
                    dungeonMorning[PokemonSpecies[species].value].add(mapNum)
                    dungeonDay[PokemonSpecies[species].value].add(mapNum)
                    dungeonNight[PokemonSpecies[species].value].add(mapNum)

                for slot in encounterData["old_rod_encounters"]:
                    species = slot["species"]
                    dungeonMorning[PokemonSpecies[species].value].add(mapNum)
                    dungeonDay[PokemonSpecies[species].value].add(mapNum)
                    dungeonNight[PokemonSpecies[species].value].add(mapNum)

                for slot in encounterData["good_rod_encounters"]:
                    species = slot["species"]
                    dungeonMorning[PokemonSpecies[species].value].add(mapNum)
                    dungeonDay[PokemonSpecies[species].value].add(mapNum)
                    dungeonNight[PokemonSpecies[species].value].add(mapNum)

                for slot in encounterData["super_rod_encounters"]:
                    species = slot["species"]
                    dungeonMorning[PokemonSpecies[species].value].add(mapNum)
                    dungeonDay[PokemonSpecies[species].value].add(mapNum)
                    dungeonNight[PokemonSpecies[species].value].add(mapNum)

                for species in encounterData["special_encounters"]:
                    dungeonSpecial[PokemonSpecies[species].value].add(mapNum)
                dungeonSpecial[0].add(mapNum)

                for species in encounterData["radar"]:
                    dungeonSpecialNatDex[PokemonSpecies[species].value].add(mapNum)
                for species in encounterData["specialnatdex_encounters"]:
                    dungeonSpecialNatDex[PokemonSpecies[species].value].add(mapNum)

            if (mapType == 'field'):
                for i, slot in enumerate(encounterData["land_encounters"]):
                    species = slot["species"]
                    fieldMorning[PokemonSpecies[species].value].add(mapNum)

                    if ((i == 2) or (i == 3)):
                        species = encounterData["morning"][i - 2]
                        fieldDay[PokemonSpecies[species].value].add(mapNum)

                        species = encounterData["night"][i - 2]
                        fieldNight[PokemonSpecies[species].value].add(mapNum)
                    else:
                        fieldDay[PokemonSpecies[species].value].add(mapNum)
                        fieldNight[PokemonSpecies[species].value].add(mapNum)

                for slot in encounterData["surf_encounters"]:
                    species = slot["species"]
                    fieldMorning[PokemonSpecies[species].value].add(mapNum)
                    fieldDay[PokemonSpecies[species].value].add(mapNum)
                    fieldNight[PokemonSpecies[species].value].add(mapNum)

                for slot in encounterData["old_rod_encounters"]:
                    species = slot["species"]
                    fieldMorning[PokemonSpecies[species].value].add(mapNum)
                    fieldDay[PokemonSpecies[species].value].add(mapNum)
                    fieldNight[PokemonSpecies[species].value].add(mapNum)

                for slot in encounterData["good_rod_encounters"]:
                    species = slot["species"]
                    fieldMorning[PokemonSpecies[species].value].add(mapNum)
                    fieldDay[PokemonSpecies[species].value].add(mapNum)
                    fieldNight[PokemonSpecies[species].value].add(mapNum)

                for slot in encounterData["super_rod_encounters"]:
                    species = slot["species"]
                    fieldMorning[PokemonSpecies[species].value].add(mapNum)
                    fieldDay[PokemonSpecies[species].value].add(mapNum)
                    fieldNight[PokemonSpecies[species].value].add(mapNum)

                for species in encounterData["special_encounters"]:
                    fieldSpecial[PokemonSpecies[species].value].add(mapNum)
                fieldSpecial[0].add(mapNum)

                for species in encounterData["radar"]:
                    fieldSpecialNatDex[PokemonSpecies[species].value].add(mapNum)
                for species in encounterData["specialnatdex_encounters"]:
                    fieldSpecialNatDex[PokemonSpecies[species].value].add(mapNum)

for species in honeyTrees:
    dungeonSpecial[PokemonSpecies[species].value].add(21)
    dungeonSpecialNatDex[PokemonSpecies[species].value].add(21)
    fieldSpecial[PokemonSpecies[species].value].add(50)
    fieldSpecialNatDex[PokemonSpecies[species].value].add(50)

for species in range(NUM_POKEMON):
    speciesSets = [dungeonMorning[species],
                   dungeonDay[species],
                   dungeonNight[species],
                   dungeonSpecial[species],
                   dungeonSpecialNatDex[species],
                   fieldMorning[species],
                   fieldDay[species],
                   fieldNight[species],
                   fieldSpecial[species],
                   fieldSpecialNatDex[species]]

    for i, mapSet in enumerate(speciesSets):
        binData = bytes()
        mapList = list(mapSet)
        mapList.sort()
        mapList.append(0)
        for map in mapList:
            binData = binData + map.to_bytes(4, 'little')

        fileNum = 4 + species + NUM_POKEMON * i
        target_fname = str(private_dir / output_name) + f'_{fileNum:0{numDigits}}.bin'
        with open(target_fname, 'wb+') as target_file:
            target_file.write(binData)

subprocess.run([args.knarc, '-d', private_dir, '-p', str(output_dir / output_name) + '.narc'])
