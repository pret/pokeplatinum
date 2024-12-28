#!/usr/bin/env python3
import argparse
import json
import pathlib
import xml.etree.ElementTree as ET

from consts.species import PokemonSpecies

# variables
NUM_POKEMON = len(PokemonSpecies)
NUM_CHR = len(str(NUM_POKEMON))
languages = ['english', 'french', 'german', 'italian', 'spanish', 'japanese']
text_data = [['' for i in range(NUM_POKEMON)] for i in range(2)] + [['' for i in range(NUM_POKEMON-2)] for i in range(24)]

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
argparser.add_argument('out_files',
                       nargs=26,
                       help='List of output file names')
argparser.add_argument('src_files',
                       nargs=NUM_POKEMON,
                       help='List of files to process in-order')
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

# collect data
for i, file in enumerate(args.src_files):
    with open(file, 'r', encoding='utf-8') as data_file:
        pkdata = json.load(data_file)

    pokemon_name = pkdata['name']
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

    pkdata = pkdata['pokedex_data']

    # record for each language
    for j, lang in enumerate(languages):
        # dex_entry
        if (lang == 'english'):
            text_data[2+j][i] = str(pkdata[lang]['entry_text_diamond']).replace('\n','\\n')
        else:
            text_data[2+j][i] = str(pkdata[lang]['entry_text']).replace('\n','\\n')
        # name_number
        if (i == 0):
            if (lang == 'english'):
                text_data[14+j][i] = pokemon_name + pokemon_name
            else:
                text_data[14+j][i] = pkdata[lang]['name']
        else:
            if (lang == 'japanese'):
                text_data[14+j][i] = Full_Width_Number(i) + '  ' + pkdata[lang]['name'].upper()
            elif (lang == 'english'):
                text_data[14+j][i] = f'{i:03}  ' + pokemon_name
            else:
                text_data[14+j][i] = f'{i:03}  ' + pkdata[lang]['name'].upper()
        # category
        text_data[20+j][i] = pkdata[lang]['category']
    # native language
    text_data[8][i] = pkdata['english']['entry_text'].replace('\n','\\n')
    text_data[13][i] = pkdata['english']['category']

    # weight and height
    if pokemon_name == 'GIRATINA':
        text_data[9][i] = Convert_weight(pkdata['origin']['weight'])
        text_data[11][i] = Convert_Height(pkdata['origin']['height'])
        pkdata = pkdata['altered']
    else:
        text_data[9][i] = Convert_weight(pkdata['weight'])
        text_data[11][i] = Convert_Height(pkdata['height'])
    text_data[10][i] = Convert_weight(pkdata['weight'])
    text_data[12][i] = Convert_Height(pkdata['height'])

text_data[9][0] = '????.? lbs.'
text_data[10][0] = '????.? lbs.'
text_data[11][0] = '???’??”'
text_data[12][0] = '???’??”'

fileKeys = [
    '30764',
    '59681',
    '30026',
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
file_number = [412, 413] + [(700 + i) for i in range(24)]
empty_string = 'empty_string'

# construct binaries
for file in range(len(file_names)):
    body = ET.Element('body')
    body.set('language', 'English')
    key = ET.SubElement(body, 'key')
    key.set('value', fileKeys[file])
    for i in range(len(text_data[file])):
        row = ET.SubElement(body, 'row')
        row.set('id', f'pl_msg_{file_number[file]:08}_{i:05}')
        row.set('index', f'{i}')

        attribute = ET.SubElement(row, 'attribute')
        attribute.set('name', 'window_context_name')
        if (((file > 0) and (file < 9)) and (i == 0)):
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
