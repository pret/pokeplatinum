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
args = argparser.parse_args()

source_dir = pathlib.Path(args.source_dir)
private_dir = pathlib.Path(args.private_dir)
output_dir = pathlib.Path(args.output_dir)

output_name = 'encdata_ex'

private_dir.mkdir(parents=True, exist_ok=True)

NUM_FILES = 12

NUM_DIGITS = len(str(NUM_FILES))

def Write_Binary(bin_data, fileNum):
    target_fname = str(private_dir / output_name) + f'_{fileNum:0{NUM_DIGITS}}.bin'
    with open(target_fname, 'wb+') as target_file:
        target_file.write(bin_data)

def as_species(s: str) -> bytes:
    return PokemonSpecies[s].value.to_bytes(4, 'little')


with open(args.coronet_file, encoding='utf-8') as encounter_file:
    enc_data = json.load(encounter_file)
enc_data = enc_data["elusive_rod_encounter"]

bin_data = as_species(enc_data["species"])
Write_Binary(bin_data, 0)

map_dimensions = enc_data["map_dimensions"]
bin_data = len(map_dimensions).to_bytes(4, 'little')
for dim in map_dimensions:
    bin_data = bin_data + dim.to_bytes(4, 'little')
for tile in enc_data["tiles"]:
    bin_data = bin_data + tile.to_bytes(2, 'little')
Write_Binary(bin_data, 1)


with open(args.honey_file, encoding='utf-8') as encounter_file:
    enc_data = json.load(encounter_file)
honey_tree_types = [
    "common",
    "uncommon",
    "rare"
]
for i, encounter_type in enumerate(honey_tree_types):
    bin_data = bytes()
    for species in enc_data[encounter_type]:
        bin_data = bin_data + as_species(species)
    Write_Binary(bin_data, i+2)
    Write_Binary(bin_data, i+5)


with open(args.trophy_file, encoding='utf-8') as encounter_file:
    enc_data = json.load(encounter_file)
bin_data = bytes()
for species in enc_data["daily_encounters"]:
    bin_data = bin_data + as_species(species)
Write_Binary(bin_data, 8)


with open(args.marsh_file, encoding='utf-8') as encounter_file:
    enc_data = json.load(encounter_file)

daily_types = [
    "after_national_dex",
    "before_national_dex"
]
for i, encounter_type in enumerate(daily_types):
    bin_data = bytes()
    for species in enc_data[encounter_type]:
        bin_data = bin_data + as_species(species)
    Write_Binary(bin_data, i+9)

bin_data = bytes()
for coordinates in enc_data["binocular_coords"]:
    bin_data = bin_data + coordinates["x"].to_bytes(2, 'little')
    bin_data = bin_data + coordinates["y"].to_bytes(2, 'little')
Write_Binary(bin_data, 11)


subprocess.run([args.knarc, '-d', private_dir, '-p', str(output_dir / output_name) + '.narc'])
