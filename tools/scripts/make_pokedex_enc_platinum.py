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

binData = bytes()
for dungeon in file_0:
    for pos in dungeon:
        binData = binData + pos.to_bytes(1, 'little')

target_fname = str(private_dir / output_name) + '_00000.bin'
with open(target_fname, 'wb+') as target_file:
    target_file.write(binData)

binData = bytes()
for dungeon in file_1:
    for pos in dungeon:
        binData = binData + pos.to_bytes(1, 'little')

target_fname = str(private_dir / output_name) + '_00001.bin'
with open(target_fname, 'wb+') as target_file:
    target_file.write(binData)

binData = bytes()
for field in file_2:
    for pos in field:
        binData = binData + pos.to_bytes(1, 'little')

target_fname = str(private_dir / output_name) + '_00002.bin'
with open(target_fname, 'wb+') as target_file:
    target_file.write(binData)

binData = bytes()
for field in file_3:
    for pos in field:
        binData = binData + pos.to_bytes(1, 'little')

target_fname = str(private_dir / output_name) + '_00003.bin'
with open(target_fname, 'wb+') as target_file:
    target_file.write(binData)

def SearchLand(species, encounterData, absent, category):
    encData = 0
    while ((encData < 12) and absent):

        if (((encData == 2) or (encData == 3)) and (category > 0)):
            if (category == 1):
                enc = encounterData["morning"][encData - 2]
            if (category == 2):
                enc = encounterData["night"][encData - 2]
        else:
            enc = encounterData["land_encounters"][encData]["species"]
        if (enc == species):
            absent = False
        encData += 1
    return absent

def SearchWater(species, encounterData, absent):
    encData = 0
    while ((encData < 5) and absent):
        enc = encounterData["surf_encounters"][encData]["species"]
        if (enc == species):
            absent = False
        enc = encounterData["old_rod_encounters"][encData]["species"]
        if (enc == species):
            absent = False
        enc = encounterData["good_rod_encounters"][encData]["species"]
        if (enc == species):
            absent = False
        enc = encounterData["super_rod_encounters"][encData]["species"]
        if (enc == species):
            absent = False
        encData += 1
    return absent

def SearchRadar(species, encounterData, absent):
    encData = 0
    while ((encData < 4) and absent):
        enc = encounterData["radar"][encData]
        if (enc == species):
            absent = False
        encData += 1
    return absent

def SearchSpecial(species, encounterData, absent):
    encData = 0
    if (species == "SPECIES_NONE"):
        return False
    while ((encData < len(encounterData["special_encounters"])) and absent):
        enc = encounterData["special_encounters"][encData]
        if (enc == species):
            absent = False
        encData += 1
    return absent

def SearchSpecialNatDex(species, encounterData, absent):
    encData = 0
    while ((encData < len(encounterData["specialnatdex_encounters"])) and absent):
        enc = encounterData["specialnatdex_encounters"][encData]
        if (enc == species):
            absent = False
        encData += 1
    if absent:
        absent = SearchRadar(species, encounterData, absent)
    return absent

def CategorySearch(species, encounterData, category):
    absent = True

    if (category < 3):
        absent = SearchLand(species, encounterData, absent, category)
        if absent:
            absent = SearchWater(species, encounterData, absent)
    if (category == 3):
        absent = SearchSpecial(species, encounterData, absent)
    if (category == 4):
        absent = SearchSpecialNatDex(species, encounterData, absent)

    return absent

for dexNum, species in enumerate(PokemonSpecies):
    if species.name in ['SPECIES_BAD_EGG']:
        continue
    species = species.name

    for category in range(10):
        fileNum = NUM_POKEMON * category + dexNum + 4
        encList = []

        for archiveID in range(183):
            with open(source_dir / '../../../../field/encounters' / f"{archiveID:03}.json", encoding='utf-8') as encounter_file:
                encounterData = json.load(encounter_file)

            areaData = encounterData["map_category"]
            areaType = areaData["map_type"]
            areaNum = areaData["map_number"]

            if (category < 5):
                if (areaType == 'field'):
                    continue
            else:
                if (areaType == 'dungeon'):
                    continue
            if (areaNum in encList):
                continue

            absent = CategorySearch(species, encounterData, category%5)

            if not absent:
                encList.append(areaNum)

        if (((category == 3) or (category == 4)) and (species in honeyTrees)):
            encList.append(21)
        if (((category == 8) or (category == 9)) and (species in honeyTrees)):
            encList.append(50)
        encList.sort()
        encList.append(0)

        binData = bytes()
        for areaNum in encList:
            binData = binData + areaNum.to_bytes(4, 'little')

        target_fname = str(private_dir / output_name) + f'_{fileNum:05}.bin'
        with open(target_fname, 'wb+') as target_file:
            target_file.write(binData)


subprocess.run([args.knarc, '-d', private_dir, '-p', str(output_dir / output_name) + '.narc'])
