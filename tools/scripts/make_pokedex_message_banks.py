#!/usr/bin/env python3
import argparse
import json
import pathlib
import xml.etree.ElementTree as ET

from consts.species import PokemonSpecies

argparser = argparse.ArgumentParser(
    prog='make_pokedex_message_banks_py',
    description='Compiles pokedex message files'
)
argparser.add_argument('-s', '--source-dir',
                       required=True,
                       help='Path to the source directory (res/text/pokedex_message_banks)')
argparser.add_argument('-o', '--output-dir',
                       required=True,
                       help='Path to the output directory (where the gmm files will be made)')
args = argparser.parse_args()

source_dir = pathlib.Path(args.source_dir)
output_dir = pathlib.Path(args.output_dir)

def Convert_weight(weight_metric):
    conv = 4.536
    lbs = round(weight_metric/conv,1)
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

def Convert_Height(height_metric):
    conv = 3.048
    feet = int(height_metric//conv)
    inches = round((height_metric%conv)/conv*12)
    while inches >= 12:
        feet += 1
        inches -= 12
    if feet >= 100:
        return f'{feet}’{inches:02}”'
    if feet >= 10:
        return f' {feet}’{inches:02}”'
    return f'  {feet}’{inches:02}”'

# variables
NUM_POKEMON = len(PokemonSpecies)

name_data = ['' for i in range(NUM_POKEMON)]
name_articles = ['' for i in range(NUM_POKEMON)]
dex_entry = ['' for i in range(NUM_POKEMON-2)]
heights = ['' for i in range(NUM_POKEMON-2)]
heights_gira = ['' for i in range(NUM_POKEMON-2)]
weights = ['' for i in range(NUM_POKEMON-2)]
weights_gira = ['' for i in range(NUM_POKEMON-2)]
name_number = ['' for i in range(NUM_POKEMON-2)]
dex_category = ['' for i in range(NUM_POKEMON-2)]

# collect data
for i, species in enumerate(PokemonSpecies):
    subdir = species.name
    subdir = subdir[8:].lower()
    if subdir == 'none':
        subdir = '000'
    
    with open(source_dir / '../pokemon' / subdir / 'data.json', 'r', encoding='utf-8') as data_file:
        pkdata = json.load(data_file)

    if subdir not in ['egg', 'bad_egg']:
        pokemon_name = pkdata['name'].upper()
    else:
        pokemon_name = pkdata['name']
    
    name_data[i] = pokemon_name

    if pokemon_name[0] in ['A','E','I','O','U']:
        name_articles[i] = 'an {COLOR 255}' + pokemon_name + '{COLOR 0}'
    else:
        name_articles[i] = 'a {COLOR 255}' + pokemon_name + '{COLOR 0}'

    # eggs do not have dex entries
    if subdir in ['egg', 'bad_egg']:
        continue

    name_number[i] = f'{i:03}  ' + pokemon_name
    pkdexdata = pkdata['pokedex_data']
    if subdir == 'giratina':
        heights_gira[i] = Convert_Height(pkdexdata[1]['height'])
        weights_gira[i] = Convert_weight(pkdexdata[1]['weight'])
        pkdexdata = pkdexdata[0]
    else:
        heights_gira[i] = Convert_Height(pkdexdata['height'])
        weights_gira[i] = Convert_weight(pkdexdata['weight'])
    dex_entry[i] = str(pkdexdata['entry_text']).replace('\n','\\n')
    dex_category[i] = pkdexdata['category']
    heights[i] = Convert_Height(pkdexdata['height'])
    weights[i] = Convert_weight(pkdexdata['weight'])

    if subdir == '000':
        name_number[i] = '----------'
        heights[i] = '???’??”'
        heights_gira[i] = '???’??”'
        weights[i] = '????.? lbs.'
        weights_gira[i] = '????.? lbs.'

fileNames = [
    'message_bank_species_names.gmm',
    'message_bank_species_names_with_articles.gmm',
    'message_bank_species_dex_entry.gmm',
    'message_bank_species_weight.gmm',
    'message_bank_species_weight_gira.gmm',
    'message_bank_species_height.gmm',
    'message_bank_species_height_gira.gmm',
    'message_bank_species_name_number_1.gmm',
    'message_bank_species_name_number_2.gmm',
    'message_bank_species_name_number_3.gmm',
    'message_bank_species_category.gmm'
]
fileKeys = [
    '30764',
    '59681',
    '63572',
    '25297',
    '64639', '5013',
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
    dex_entry,
    weights,
    weights_gira,
    heights,
    heights_gira,
    name_number,
    name_number,
    name_number,
    dex_category
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
        if (((fileNames[file] == 'message_bank_species_names_with_articles.gmm') or (fileNames[file] == 'message_bank_species_dex_entry.gmm')) and (i == 0)):
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
