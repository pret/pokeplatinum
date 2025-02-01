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
argparser.add_argument('out_files',
                       nargs=25,
                       help='List of output file names')
args = argparser.parse_args()

source_dir = pathlib.Path(args.source_dir)
output_dir = pathlib.Path(args.output_dir)
file_names = args.out_files

def Convert_weight(hectograms):
    conv = 4.536
    lbs = round(hectograms/conv,1)
    if lbs == 1505.7:
        lbs = 1505.8
    elif lbs == 740.7:
        lbs = 740.8
    elif lbs == 1653.4:
        lbs = 1653.5

    weight = f'{lbs} lbs.'
    while (len(weight) < 11):
        weight = ' ' + weight

    return weight

def Convert_Height(decimeters):
    conv = 3.937
    feet = 0
    inches = round(decimeters*conv)

    while inches >= 12:
        feet += 1
        inches -= 12

    height = f'{feet}’{inches:02}”'
    while (len(height) < 7):
        height = ' ' + height

    return height

def Full_Width_Number(value):
    num = ''
    while (value > 0):
        num = chr(0xff10 + value%10) + num
        value = value//10

    while (len(num) < NUM_CHR):
        num = '０' + num

    return num

# variables
NUM_POKEMON = len(SPECIES_DIRS)
NUM_CHR = len(str(NUM_POKEMON))
languages = ['english', 'french', 'german', 'italian', 'spanish', 'japanese']
text_data = [['' for i in range(NUM_POKEMON)] for i in range(2)] + [['' for i in range(NUM_POKEMON-2)] for i in range(23)]

# collect data
for i, species_dir in enumerate(SPECIES_DIRS):
    file = source_dir / species_dir / 'data.json'
    with open(file, 'r', encoding='utf-8') as data_file:
        pkdata = json.load(data_file)
    pokemon_name = pkdata['name']

    if pokemon_name not in ['Egg', 'Bad Egg']:
        pokemon_name = pokemon_name.upper()
    
    # species_names
    text_data[0][i] = pokemon_name

    # species_names_with_articles
    if pokemon_name[0] in ['A','E','I','O','U']:
        text_data[1][i] = 'an {COLOR 255}' + pokemon_name + '{COLOR 0}'
    else:
        text_data[1][i] = 'a {COLOR 255}' + pokemon_name + '{COLOR 0}'

    # eggs do not have dex entries
    if pokemon_name in ['Egg', 'Bad Egg']:
        continue
    pkdexdata = pkdata['pokedex_data']

    # weight and height
    if species_dir == 'giratina':
        text_data[8][i] = Convert_weight(pkdexdata['origin']['weight'])
        text_data[9][i] = Convert_weight(pkdexdata['altered']['weight'])
        text_data[10][i] = Convert_Height(pkdexdata['origin']['height'])
        text_data[11][i] = Convert_Height(pkdexdata['altered']['height'])
    else:
        text_data[8][i] = Convert_weight(pkdexdata['weight'])
        text_data[9][i] = Convert_weight(pkdexdata['weight'])
        text_data[10][i] = Convert_Height(pkdexdata['height'])
        text_data[11][i] = Convert_Height(pkdexdata['height'])

    for j, lang in enumerate(languages):
        # dex_entry
        entry = ''.join(pkdexdata[lang]['entry_text']).replace('\n','\\n')
        if (lang == 'english'):
            text_data[7][i] = entry
        else:
            text_data[1 + j][i] = entry

        # name_number
        if (i == 0):
            if (lang == 'english'):
                text_data[13][0] = pokemon_name
            else:
                text_data[13 + j][0] = pkdexdata[lang]['name']
        else:
            if (lang == 'english'):
                text_data[13][i] = f'{i:03}  ' + pokemon_name
            elif (lang == 'japanese'):
                text_data[18][i] = f'{Full_Width_Number(i)}  ' + pkdexdata['japanese']['name']
            else:
                text_data[13 + j][i] = f'{i:03}  ' + pkdexdata[lang]['name']

        # category
        text_data[19 + j][i] = pkdexdata[lang]['category']
    text_data[12][i] = pkdexdata['english']['category']

text_data[0][0] = '-----'
text_data[8][0] = '????.? lbs.'
text_data[9][0] = '????.? lbs.'
text_data[10][0] = '???’??”'
text_data[11][0] = '???’??”'

# constants
fileKeys = [
    '30764',
    '59681',
    '30030',
    '30034',
    '30038',
    '30042',
    '30046',
    '63572',
    '25297',
    '64639',
    '5013',
    '28660',
    '48809',
    '32249',
    '32242',
    '32254',
    '32250',
    '32230',
    '32226',
    '22840',
    '46193',
    '46205',
    '46201',
    '46181',
    '46177'
]
empty_string = 'empty_string'

# construct binaries
for file in range(25):
    body = ET.Element('body')
    body.set('language', 'English')
    key = ET.SubElement(body, 'key')
    key.set('value', fileKeys[file])
    for i in range(len(text_data[file])):
        row = ET.SubElement(body, 'row')
        row.set('id', f'pl_msg_{file_names[file][:-4]}_{SPECIES_DIRS[i]}')
        row.set('index', f'{i}')

        attribute = ET.SubElement(row, 'attribute')
        attribute.set('name', 'window_context_name')
        if (((file > 0) and (file < 8)) and (i == 0)):
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
            language.text = text_data[file][i]
    ET.indent(body, '\t')
    message_bank = ET.tostring(body, encoding='utf-8')
    message_bank = message_bank.decode('utf-8').replace(empty_string, '').encode('utf-8')
    file_data = bytes('<?xml version="1.0"?>\n', encoding='utf-8') + message_bank + bytes('\n', encoding='utf-8')

    # save gmm
    target_fname = output_dir / file_names[file]
    with open(target_fname, 'wb+') as target_file:
        target_file.write(file_data)
