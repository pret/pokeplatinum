#!/usr/bin/env python3
import argparse
import json
import os
import pathlib
import xml.etree.ElementTree as ET

SPECIES_DIRS = os.environ['SPECIES'].split(';')

argparser = argparse.ArgumentParser(
    prog='make_pokedex_message_banks_py',
    description='Compiles pokedex message files'
)
argparser.add_argument('-s', '--source-dir',
                       required=True,
                       help='Path to the pokemon sources directory (res/pokemon)')
argparser.add_argument('-o', '--output-dir',
                       required=True,
                       help='Path to the output directory (where the gmm files will be made)')
args = argparser.parse_args()

source_dir = pathlib.Path(args.source_dir)
output_dir = pathlib.Path(args.output_dir)

def Convert_weight(hectograms):
    conv = 4.536
    lbs = round(hectograms/conv,1)
    if lbs == 1505.7:
        lbs = 1505.8
    elif lbs == 740.7:
        lbs = 740.8
    elif lbs == 1653.4:
        lbs = 1653.5

    if lbs >= 1000:
        return f'{lbs} lbs.'
    if lbs >= 100:
        return f' {lbs} lbs.'
    if lbs >= 10:
        return f'  {lbs} lbs.'
    return f'   {lbs} lbs.'

def Convert_Height(decimeters):
    conv = 3.937
    feet = 0
    inches = round(decimeters*conv)

    while inches >= 12:
        feet += 1
        inches -= 12

    if feet >= 100:
        return f'{feet}’{inches:02}”'
    if feet >= 10:
        return f' {feet}’{inches:02}”'
    return f'  {feet}’{inches:02}”'

# variables
NUM_POKEMON = len(SPECIES_DIRS)

name_data = ['' for i in range(NUM_POKEMON)]
name_articles = ['' for i in range(NUM_POKEMON)]
dex_entries = ['' for i in range(NUM_POKEMON-2)]
heights = ['' for i in range(NUM_POKEMON-2)]
heights_gira = ['' for i in range(NUM_POKEMON-2)]
weights = ['' for i in range(NUM_POKEMON-2)]
weights_gira = ['' for i in range(NUM_POKEMON-2)]
name_number = ['' for i in range(NUM_POKEMON-2)]
dex_categories = ['' for i in range(NUM_POKEMON-2)]

# collect data
for i, species_dir in enumerate(SPECIES_DIRS):
    file = source_dir / species_dir / 'data.json'
    with open(file, 'r', encoding='utf-8') as data_file:
        pkdata = json.load(data_file)
    pokemon_name = pkdata['name']

    if pokemon_name not in ['Egg', 'Bad Egg']:
        pokemon_name = pokemon_name.upper()
    
    name_data[i] = pokemon_name

    if pokemon_name[0] in ['A','E','I','O','U']:
        name_articles[i] = 'an {COLOR 255}' + pokemon_name + '{COLOR 0}'
    else:
        name_articles[i] = 'a {COLOR 255}' + pokemon_name + '{COLOR 0}'

    # eggs do not have dex entries
    if pokemon_name in ['Egg', 'Bad Egg']:
        continue

    name_number[i] = f'{i:03}  ' + pokemon_name
    pkdexdata = pkdata['pokedex_data']
    if pokemon_name == 'GIRATINA':
        heights_gira[i] = Convert_Height(pkdexdata[1]['height'])
        weights_gira[i] = Convert_weight(pkdexdata[1]['weight'])
        pkdexdata = pkdexdata[0]
    else:
        heights_gira[i] = Convert_Height(pkdexdata['height'])
        weights_gira[i] = Convert_weight(pkdexdata['weight'])
    dex_entries[i] = str(pkdexdata['entry_text']).replace('\n','\\n')
    dex_categories[i] = pkdexdata['category']
    heights[i] = Convert_Height(pkdexdata['height'])
    weights[i] = Convert_weight(pkdexdata['weight'])

    if pokemon_name == '-----':
        name_number[i] = '----------'
        heights[i] = '???’??”'
        heights_gira[i] = '???’??”'
        weights[i] = '????.? lbs.'
        weights_gira[i] = '????.? lbs.'

fileNames = [
    'species_names.gmm',
    'species_names_with_articles.gmm',
    'species_dex_entry.gmm',
    'species_weight.gmm',
    'species_weight_gira.gmm',
    'species_height.gmm',
    'species_height_gira.gmm',
    'species_name_number_1.gmm',
    'species_name_number_2.gmm',
    'species_name_number_3.gmm',
    'species_category.gmm'
]
fileKeys = [
    '30764',
    '59681',
    '63572',
    '25297',
    '64639',
    '5013',
    '28660',
    '32249',
    '32250',
    '32230',
    '22840'
]
fileNumber = [
    412,
    413,
    706,
    707,
    708,
    709,
    710,
    712,
    715,
    716,
    718
]
fileArrays = [
    name_data,
    name_articles,
    dex_entries,
    weights,
    weights_gira,
    heights,
    heights_gira,
    name_number,
    name_number,
    name_number,
    dex_categories
]
fileData = [bytes() for i in range(len(fileNames))]
emptyString = 'empty_string'

# construct binaries
for file in range(len(fileNames)):
    body = ET.Element('body')
    body.set('language', 'English')
    key = ET.SubElement(body, 'key')
    key.set('value', fileKeys[file])
    for i in range(len(fileArrays[file])):
        row = ET.SubElement(body, 'row')
        row.set('id', f'pl_msg_{fileNumber[file]:08}_{i:05}')
        row.set('index', f'{i}')

        attribute = ET.SubElement(row, 'attribute')
        attribute.set('name', 'window_context_name')
        if (((fileNames[file] == 'species_names_with_articles.gmm') or (fileNames[file] == 'species_dex_entry.gmm')) and (i == 0)):
            attribute.text = 'garbage'
            language = ET.SubElement(row, 'language')
            language.set('name', 'English')
            language.text = emptyString
            language = ET.SubElement(row, 'language')
            language.set('name', '日本語')
            language.text = emptyString
        else:
            attribute.text = 'used'
            language = ET.SubElement(row, 'language')
            language.set('name', 'English')
            language.text = fileArrays[file][i]
    ET.indent(body, '\t')
    message_bank = ET.tostring(body, encoding='utf-8')
    message_bank = message_bank.decode('utf-8').replace(emptyString, '').encode('utf-8')
    fileData[file] = bytes('<?xml version="1.0"?>\n', encoding='utf-8') + message_bank + bytes('\n', encoding='utf-8')

# save binaries
for i in range(len(fileNames)):
    target_fname = output_dir / fileNames[i]
    with open(target_fname, 'wb+') as target_file:
        target_file.write(fileData[i])
