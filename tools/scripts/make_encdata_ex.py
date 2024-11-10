#!/usr/bin/env python3
import argparse
import json
import pathlib
import subprocess

from consts.species import PokemonSpecies


argparser = argparse.ArgumentParser(
    prog='make_encdata_ex_py',
    description='Packs the archive containing extra encounter data'
)
argparser.add_argument('-k', '--knarc',
                       required=True,
                       help='Path to knarc executable')
argparser.add_argument('-s', '--source-dir',
                       required=True,
                       help='Path to the source directory (res/field/encounters_ex)')
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

output_name = 'encdata_ex'

private_dir.mkdir(parents=True, exist_ok=True)

NUM_FILES = 12

numDigits = len(str(NUM_FILES))

def WriteBin(binData, fileNum):
    target_fname = str(private_dir / output_name) + f'_{fileNum:0{numDigits}}.bin'
    with open(target_fname, 'wb+') as target_file:
        target_file.write(binData)


with open(source_dir / "mt_coronet_lake.json", encoding='utf-8') as encounter_ex_file:
    encData = json.load(encounter_ex_file)

species = PokemonSpecies[encData["species"]].value
binData = species.to_bytes(4, 'little')
WriteBin(binData, 0)

mapDimensions = encData["map_dimensions"]
binData = len(mapDimensions).to_bytes(4, 'little')
for dim in mapDimensions:
    binData = binData + dim.to_bytes(4, 'little')
for tile in encData["tiles"]:
    binData = binData + tile.to_bytes(2, 'little')
WriteBin(binData, 1)

honeyTreeFiles = [
    "honey_tree_common",
    "honey_tree_uncommon",
    "honey_tree_rare"
]
for i, sourceFile in enumerate(honeyTreeFiles):
    with open(source_dir / (sourceFile + ".json"), encoding='utf-8') as encounter_ex_file:
        encData = json.load(encounter_ex_file)
    binData = bytes()
    for species in encData["honey_tree_encounters"]:
        binData = binData + PokemonSpecies[species].value.to_bytes(4, 'little')
    WriteBin(binData, i+2)
    WriteBin(binData, i+5)

dailyFiles = [
    "trophy_garden_dailies",
    "great_marsh_dailies_natdex",
    "great_marsh_dailies"
]
for i, sourceFile in enumerate(dailyFiles):
    with open(source_dir / (sourceFile + ".json"), encoding='utf-8') as encounter_ex_file:
        encData = json.load(encounter_ex_file)
    binData = bytes()
    for species in encData["daily_encounters"]:
        binData = binData + PokemonSpecies[species].value.to_bytes(4, 'little')
    WriteBin(binData, i+8)

with open(source_dir / "great_marsh_binocular_coords.json", encoding='utf-8') as encounter_ex_file:
    encData = json.load(encounter_ex_file)
binData = bytes()
for coordinates in encData["binocular_coords"]:
    binData = binData + coordinates["x"].to_bytes(2, 'little')
    binData = binData + coordinates["y"].to_bytes(2, 'little')
WriteBin(binData, 11)


subprocess.run([args.knarc, '-d', private_dir, '-p', str(output_dir / output_name) + '.narc'])
