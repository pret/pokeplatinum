#!/usr/bin/env python3
import argparse
import json
import pathlib
import xml.etree.ElementTree as ET

from consts.species import PokemonSpecies

# variables
NUM_POKEMON = len(PokemonSpecies)
text_data = [['' for i in range(NUM_POKEMON)] for i in range(2)] + [['' for i in range(NUM_POKEMON-2)]]

argparser = argparse.ArgumentParser(
    prog='make_species_message_banks_py',
    description='Compiles species message files'
)
argparser.add_argument('-s', '--source-dir',
                       required=True,
                       help='Path to the source directory (res/text/pokedex_message_banks)')
argparser.add_argument('-o', '--output-dir',
                       required=True,
                       help='Path to the output directory (where the gmm files will be made)')
argparser.add_argument('out_files',
                       nargs=3,
                       help='List of output file names')
argparser.add_argument('species_files',
                       nargs=NUM_POKEMON,
                       help='List of data files to process in-order')
args = argparser.parse_args()

source_dir = pathlib.Path(args.source_dir)
output_dir = pathlib.Path(args.output_dir)

# collect data
for i, file in enumerate(args.species_files):
    with open(file, 'r', encoding='utf-8') as data_file:
        poke_data = json.load(data_file)

    pokemon_name = poke_data['name']
    if pokemon_name not in ['Egg', 'Bad Egg']:
        pokemon_name = pokemon_name.upper()

    text_data[0][i] = pokemon_name

    if pokemon_name[0] in ['A','E','I','O','U']:
        text_data[1][i] = 'an {COLOR 255}' + pokemon_name + '{COLOR 0}'
    else:
        text_data[1][i] = 'a {COLOR 255}' + pokemon_name + '{COLOR 0}'

    # eggs do not have dex entries
    if pokemon_name in ['Egg', 'Bad Egg']:
        continue

    if (i == 0):
        text_data[2][0] = pokemon_name + pokemon_name
    else:
        text_data[2][i] = f'{i:03}  ' + pokemon_name


fileKeys = [
    '30764',
    '59681',
    '32249'
]
file_number = [412, 413, 712]
empty_string = 'empty_string'

# construct binaries
for file_idx, file_name in enumerate(args.out_files):
    body = ET.Element('body')
    body.set('language', 'English')
    key = ET.SubElement(body, 'key')
    key.set('value', fileKeys[file_idx])
    for i in range(len(text_data[file_idx])):
        row = ET.SubElement(body, 'row')
        row.set('id', f'pl_msg_{file_number[file_idx]:08}_{i:05}')
        row.set('index', f'{i}')

        attribute = ET.SubElement(row, 'attribute')
        attribute.set('name', 'window_context_name')
        if ((file_idx == 1) and (i == 0)):
            attribute.text = 'garbage'
            language = ET.SubElement(row, 'language')
            language.set('name', 'English')
            language.text = empty_string
            language = ET.SubElement(row, 'language')
            language.set('name', '日本語')
            language.text = empty_string
        else:
            attribute.text = 'used'
            language = ET.SubElement(row, 'language')
            language.set('name', 'English')
            language.text = text_data[file_idx][i]
    ET.indent(body, '\t')
    message_bank = ET.tostring(body, encoding='utf-8')
    message_bank = message_bank.decode('utf-8').replace(empty_string, '').encode('utf-8')
    file_data = bytes('<?xml version="1.0"?>\n', encoding='utf-8') + message_bank + bytes('\n', encoding='utf-8')
    
    # save gmm
    target_fname = output_dir / file_name
    with open(target_fname, 'wb+') as target_file:
        target_file.write(file_data)
