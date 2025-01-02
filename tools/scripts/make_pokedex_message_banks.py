#!/usr/bin/env python3
import argparse
import yaml
import pathlib
import xml.etree.ElementTree as ET

from consts.species import PokemonSpecies

# variables
NUM_POKEMON = len(PokemonSpecies)
NUM_CHR = len(str(NUM_POKEMON))
languages = ['french', 'german', 'italian', 'spanish', 'japanese']
text_data = [['' for i in range(NUM_POKEMON-2)] for i in range(22)]

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
                       nargs=22,
                       help='List of output file names')
argparser.add_argument('pokedex_files',
                       nargs=NUM_POKEMON,
                       help='List of pokedex files to process in-order')
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
for i, file in enumerate(args.pokedex_files):
    # eggs do not have dex entries
    if (i >= (NUM_POKEMON - 2)):
        continue

    dex_data = yaml.safe_load(pathlib.Path(file).read_text())

    text_data[5][i] = dex_data['english']['entry_text'].replace('\n','\\n')
    text_data[10][i] = dex_data['english']['category']
    text_data[16][i] = dex_data['english']['category']

    # record for each foreign language
    for j, lang in enumerate(languages):
        # dex_entry
        text_data[j][i] = dex_data[lang]['entry_text'].replace('\n','\\n')
        # name_number
        if (i == 0):
            text_data[11+j][0] = dex_data[lang]['name']
        else:
            if (lang == 'japanese'):
                text_data[11+j][i] = Full_Width_Number(i) + '  ' + dex_data[lang]['name'].upper()
            else:
                text_data[11+j][i] = f'{i:03}  ' + dex_data[lang]['name'].upper()
        # category
        text_data[17+j][i] = dex_data[lang]['category']

    # weight and height
    is_giratina = ('origin' in dex_data.keys())
    if is_giratina:
        text_data[6][i] = Convert_weight(dex_data['origin']['weight'])
        text_data[8][i] = Convert_Height(dex_data['origin']['height'])
        dex_data = dex_data['altered']
    else:
        text_data[6][i] = Convert_weight(dex_data['weight'])
        text_data[8][i] = Convert_Height(dex_data['height'])
    text_data[7][i] = Convert_weight(dex_data['weight'])
    text_data[9][i] = Convert_Height(dex_data['height'])

text_data[6][0] = '????.? lbs.'
text_data[7][0] = '????.? lbs.'
text_data[8][0] = '???’??”'
text_data[9][0] = '???’??”'

fileKeys = [
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
file_number = [(701 + i) for i in range(11)] + [(713 + i) for i in range(11)]
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
        if ((file_idx < 6) and (i == 0)):
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
