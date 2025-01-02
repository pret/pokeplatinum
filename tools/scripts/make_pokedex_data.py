#!/usr/bin/env python3
import argparse
import json
import yaml
import pathlib
import subprocess

from consts.species import PokemonSpecies
from consts.pokemon import PokemonType
from consts.pokemon import PokemonBodyShape

NUM_FILES = 26 + PokemonType['NUMBER_OF_MON_TYPES'].value + PokemonBodyShape['NUMBER_OF_BODY_SHAPES'].value
NUM_POKEMON = len(PokemonSpecies)

argparser = argparse.ArgumentParser(
    prog='make_pokedex_data_py',
    description='Packs the archive containing Pokedex sorting'
)
argparser.add_argument('-k', '--knarc',
                       required=True,
                       help='Path to knarc executable')
argparser.add_argument('-s', '--source-dir',
                       required=True,
                       help='Path to the source directory (res/pokemon)')
argparser.add_argument('-p', '--private-dir',
                       required=True,
                       help='Path to the private directory (where binaries will be made)')
argparser.add_argument('-o', '--output-dir',
                       required=True,
                       help='Path to the output directory (where the NARC will be made)')
argparser.add_argument('giratina_form',
                       help='String of either giratina_origin or giratina_altered')
argparser.add_argument('pokemon_files',
                       nargs=NUM_POKEMON,
                       help='List of pokemon files to process in-order')
argparser.add_argument('pokedex_files',
                       nargs=NUM_POKEMON,
                       help='List of pokedex files to process in-order')
args = argparser.parse_args()

source_dir = pathlib.Path(args.source_dir)
private_dir = pathlib.Path(args.private_dir)
output_dir = pathlib.Path(args.output_dir)
pokemon_files = args.pokemon_files
pokedex_files = args.pokedex_files

private_dir.mkdir(parents=True, exist_ok=True)

data_names = [
    'height',
    'weight',
    'body_shape',
    'trainer_scale_f',
    'pokemon_scale_f',
    'trainer_scale_m',
    'pokemon_scale_m',
    'trainer_pos_f',
    'pokemon_pos_f',
    'trainer_pos_m',
    'pokemon_pos_m'
]

def DataSize(num):
    if num < 2:
        return 4
    if num == 2:
        return 1
    return 2

binData = [bytes() for f in range(NUM_FILES)]
heightData = [0 for i in range(NUM_POKEMON-3)]
weightData = [0 for i in range(NUM_POKEMON-3)]
nameData = ['' for i in range(NUM_POKEMON-3)]

for i in range(NUM_POKEMON):
    with open(pokemon_files[i], 'r', encoding='utf-8') as data_file:
        poke_data = json.load(data_file)
    dex_data = yaml.safe_load(pathlib.Path(pokedex_files[i]).read_text())
    pk_name = poke_data['name'].lower()

    # Do not attempt to process eggs
    if pk_name in ['egg', 'bad egg']:
        continue

    if pk_name == 'giratina':
        if args.giratina_form == 'giratina_origin':
            dex_data = dex_data['origin']
        if args.giratina_form == 'giratina_altered':
            dex_data = dex_data['altered']
    
    for j in range(11):
        dataSize = DataSize(j)
        if j == 2:
            binData[2] = binData[2] + PokemonBodyShape[dex_data['body_shape']].value.to_bytes(1, 'little')
        else:
            binData[j] = binData[j] + dex_data[data_names[j]].to_bytes(dataSize, 'little')

    if i > 0:
        # national dex order
        binData[11] = binData[11] + i.to_bytes(2, 'little')

        # body shape
        bodyIdx = PokemonBodyShape[dex_data['body_shape']].value + PokemonType['NUMBER_OF_MON_TYPES'].value + 26
        binData[bodyIdx] = binData[bodyIdx] + i.to_bytes(2, 'little')

        # pokemon types
        typeIdx = 27
        for type in PokemonType:
            if type.name in ['TYPE_MYSTERY', 'NUMBER_OF_MON_TYPES']:
                continue
            if type.name in poke_data['types']:
                binData[typeIdx] = binData[typeIdx] + i.to_bytes(2, 'little')
            typeIdx += 1
        
        # store for later
        heightData[i-1] = dex_data['height']
        weightData[i-1] = dex_data['weight']
        nameData[i-1] = pk_name.replace('porygon2','porygon-z2')

# sinnoh dex order
with open(source_dir / 'sinnoh_pokedex.json') as data_file:
    dexData = json.load(data_file)
    for mon in dexData:
        if mon not in ['SPECIES_EGG', 'SPECIES_BAD_EGG', 'SPECIES_NONE', 'SPECIES_ARCEUS']:
            binData[12] = binData[12] + PokemonSpecies[mon].value.to_bytes(2, 'little')

# alphabetical order
alpha = sorted(range(len(nameData)), key=lambda k: nameData[k])
for idx in alpha:
    # alphabetical
    binData[13] = binData[13] + (idx+1).to_bytes(2, 'little')

    # first letter
    letter = ord(nameData[idx][0])
    if letter > 96 and letter < 123:
        letterIDX = int((letter - 1) / 3) - 14
        binData[letterIDX] = binData[letterIDX] + (idx+1).to_bytes(2, 'little')

# heaviest to lightest
heaviest = sorted(range(len(weightData)), key=lambda k: 1/weightData[k])
for idx in heaviest:
    binData[14] = binData[14] + (idx+1).to_bytes(2, 'little')

# lightest to heaviest
lightest = sorted(range(len(weightData)), key=lambda k: weightData[k])
for idx in lightest:
    binData[15] = binData[15] + (idx+1).to_bytes(2, 'little')

# tallest to shortest
tallest = sorted(range(len(weightData)), key=lambda k: 1/heightData[k])
for idx in tallest:
    binData[16] = binData[16] + (idx+1).to_bytes(2, 'little')

# shortest to tallest
shortest = sorted(range(len(weightData)), key=lambda k: heightData[k])
for idx in shortest:
    binData[17] = binData[17] + (idx+1).to_bytes(2, 'little')

# save data
if args.giratina_form == 'giratina_origin':
    output_name = 'zukan_data'
if args.giratina_form == 'giratina_altered':
    output_name = 'zukan_data_gira'

numDigits = len(str(NUM_FILES))

for i in range(NUM_FILES):
    target_fname = str(private_dir / output_name) + f'_{i:0{numDigits}}.bin'
    with open(target_fname, 'wb+') as target_file:
        target_file.write(binData[i])

subprocess.run([args.knarc, '-d', private_dir, '-p', str(output_dir / output_name) + '.narc'])
