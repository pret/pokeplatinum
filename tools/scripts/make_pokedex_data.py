#!/usr/bin/env python3
import argparse
import json
import os
import sys
import pathlib
import subprocess

from generated.pokemon_body_shapes import PokemonBodyShape
from generated.pokemon_types import PokemonType
from generated.species import Species

ANSI_BOLD_WHITE = "\033[1;37m"
ANSI_BOLD_RED = "\033[1;31m"
ANSI_RED = "\033[31m"
ANSI_CLEAR = "\033[0m"

SPECIES_DIRS = os.environ['SPECIES'].split(';')

argparser = argparse.ArgumentParser(
    prog='make_pokedex_data_py',
    description='Packs the archive containing Pokedex sorting'
)
argparser.add_argument('-n', '--narc',
                       required=True,
                       help='Path to narc executable')
argparser.add_argument('-s', '--source-dir',
                       required=True,
                       help='Path to the source directory (res/pokemon)')
argparser.add_argument('-p', '--private-dir',
                       required=True,
                       help='Path to the private directory (where binaries will be made)')
argparser.add_argument('-o', '--output-dir',
                       required=True,
                       help='Path to the output directory (where the NARC will be made)')
argparser.add_argument('sinnoh_pokedex',
                       help='List of pokemon in the Sinnoh Pokedex')
argparser.add_argument('giratina_form',
                       help='String of either giratina_origin or giratina_altered')
args = argparser.parse_args()

source_dir = pathlib.Path(args.source_dir)
private_dir = pathlib.Path(args.private_dir)
output_dir = pathlib.Path(args.output_dir)

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

NUM_FILES = 26 + PokemonType['NUM_POKEMON_TYPES'].value + PokemonBodyShape['NUM_BODY_SHAPES'].value
NUM_POKEMON = len(Species)-3

binData = [bytes() for f in range(NUM_FILES)]
heightData = [0 for i in range(NUM_POKEMON)]
weightData = [0 for i in range(NUM_POKEMON)]
nameData = ['' for i in range(NUM_POKEMON)]

errors = ""
for i, species_dir in enumerate(SPECIES_DIRS):
    file = source_dir / species_dir / 'data.json'
    try:
        if ((species_dir == 'giratina') and (args.giratina_form == 'giratina_origin')):
            file = source_dir / 'giratina/forms/origin/data.json'
        with open(file, 'r', encoding='utf-8') as data_file:
            pkdata = json.load(data_file)
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

    # Do not attempt to process eggs
    if species_dir in ['egg', 'bad_egg']:
        continue

    pkdexdata = pkdata['pokedex_data']

    for j in range(11):
        dataSize = DataSize(j)
        if j == 2:
            binData[2] = binData[2] + PokemonBodyShape[pkdexdata['body_shape']].value.to_bytes(1, 'little')
        else:
            binData[j] = binData[j] + pkdexdata[data_names[j]].to_bytes(dataSize, 'little')

    if i > 0:
        # national dex order
        binData[11] = binData[11] + i.to_bytes(2, 'little')

        # body shape
        bodyIdx = PokemonBodyShape[pkdexdata['body_shape']].value + PokemonType['NUM_POKEMON_TYPES'].value + 26
        binData[bodyIdx] = binData[bodyIdx] + i.to_bytes(2, 'little')

        # pokemon types
        typeIdx = 27
        for type in PokemonType:
            if type.name in ['TYPE_MYSTERY', 'NUM_POKEMON_TYPES']:
                continue
            if type.name in pkdata['types']:
                binData[typeIdx] = binData[typeIdx] + i.to_bytes(2, 'little')
            typeIdx += 1
        
        # store for later
        heightData[i-1] = pkdexdata['height']
        weightData[i-1] = pkdexdata['weight']
        nameData[i-1] = pkdexdata['en']['name']

if errors:
    print(errors, file=sys.stderr)
    sys.exit(1)

# sinnoh dex order
with open(args.sinnoh_pokedex) as data_file:
    pokedex = json.load(data_file)
    for mon in pokedex:
        if mon not in ['SPECIES_EGG', 'SPECIES_BAD_EGG', 'SPECIES_NONE', 'SPECIES_ARCEUS']:
            binData[12] = binData[12] + Species[mon].value.to_bytes(2, 'little')

# alphabetical order
alpha = sorted(range(len(nameData)), key=lambda k: nameData[k])
for idx in alpha:
    # alphabetical
    binData[13] = binData[13] + (idx+1).to_bytes(2, 'little')

    # first letter
    letter = ord(nameData[idx][0].upper())
    if letter >= ord('A') and letter <= ord('Z'):
        letterIDX = (letter - 11) // 3
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
else:
    output_name = 'zukan_data_gira'

numDigits = len(str(NUM_FILES))

for i in range(NUM_FILES):
    target_fname = str(private_dir / output_name) + f'_{i:0{numDigits}}.bin'
    with open(target_fname, 'wb+') as target_file:
        target_file.write(binData[i])

subprocess.run([
    args.narc,
    '--create',
    '--file', f'{output_dir / output_name}.narc',
    private_dir
])
