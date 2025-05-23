#!/usr/bin/env python3
import argparse
import json
import os
import sys
import pathlib
import xml.etree.ElementTree as ET

ANSI_BOLD_WHITE = "\033[1;37m"
ANSI_BOLD_RED = "\033[1;31m"
ANSI_RED = "\033[31m"
ANSI_CLEAR = "\033[0m"

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
file_names = [
    'species_name.gmm',
    'species_name_with_articles.gmm',
    'species_pokedex_entry_fr.gmm',
    'species_pokedex_entry_de.gmm',
    'species_pokedex_entry_it.gmm',
    'species_pokedex_entry_es.gmm',
    'species_pokedex_entry_jp.gmm',
    'species_pokedex_entry_en.gmm',
    'species_weight.gmm',
    'species_weight_gira.gmm',
    'species_height.gmm',
    'species_height_gira.gmm',
    'species_category.gmm',
    'species_name_with_natdex_number_en.gmm',
    'species_name_with_natdex_number_fr.gmm',
    'species_name_with_natdex_number_de.gmm',
    'species_name_with_natdex_number_it.gmm',
    'species_name_with_natdex_number_es.gmm',
    'species_name_with_natdex_number_jp.gmm',
    'species_category_en.gmm',
    'species_category_fr.gmm',
    'species_category_de.gmm',
    'species_category_it.gmm',
    'species_category_es.gmm',
    'species_category_jp.gmm'
]

# variables
NUM_POKEMON = len(SPECIES_DIRS)
languages = ['en', 'fr', 'de', 'it', 'es', 'jp']
NUM_LANGUAGES = len(languages)
species_name = ['' for i in range(NUM_POKEMON)]
species_name_articles = ['' for i in range(NUM_POKEMON)]
species_pokedex_entry = [['' for i in range(NUM_POKEMON-2)] for j in range(NUM_LANGUAGES)]
species_weight = ['' for i in range(NUM_POKEMON-2)]
species_weight_gira = ['' for i in range(NUM_POKEMON-2)]
species_height = ['' for i in range(NUM_POKEMON-2)]
species_height_gira = ['' for i in range(NUM_POKEMON-2)]
species_name_number = [['' for i in range(NUM_POKEMON-2)] for j in range(NUM_LANGUAGES)]
species_category = [['' for i in range(NUM_POKEMON-2)] for j in range(NUM_LANGUAGES)]

def Convert_weight(hectograms):
    conv = 4.536 # this is the best estimate for the value Gamefreak used for conversion
    lbs = round(hectograms/conv,1)

    # exceptions
    if lbs == 1505.7: # Dialga
        lbs = 1505.8
    elif lbs == 740.7: # Palkia
        lbs = 740.8
    elif lbs == 1653.4: # Giratina Altered
        lbs = 1653.5

    return f'{lbs: >6} lbs.'

def Convert_Height(decimeters):
    conv = 3.937
    feet = 0
    inches = round(decimeters*conv)

    while inches >= 12:
        feet += 1
        inches -= 12

    height = f'{feet}’{inches:02}”'
    return f'{height: >7}'

def Full_Width_Number(value):
    num = ''
    while (value > 0):
        num = chr(0xff10 + value%10) + num
        value = value//10

    return f'{num:０>{len(str(NUM_POKEMON))}}'

# collect data
errors = ""
for i, species_dir in enumerate(SPECIES_DIRS):
    file = source_dir / species_dir / 'data.json'
    try:
        with open(file, 'r', encoding='utf-8') as data_file:
            pkdata = json.load(data_file)
        pokemon_name = pkdata['pokedex_data']['en']['name']
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

    # species_names
    species_name[i] = pokemon_name

    # species_names_with_articles
    if pokemon_name[0] in ['A','E','I','O','U']:
        species_name_articles[i] = f'an {{COLOR 255}}{pokemon_name}{{COLOR 0}}'
    else:
        species_name_articles[i] = f'a {{COLOR 255}}{pokemon_name}{{COLOR 0}}'

    # eggs do not have dex entries
    if species_dir in ['egg', 'bad_egg']:
        continue
    pkdexdata = pkdata['pokedex_data']

    # weight and height
    species_weight_gira[i] = Convert_weight(pkdexdata['weight'])
    species_height_gira[i] = Convert_Height(pkdexdata['height'])
    if species_dir == 'giratina':
        form_file = source_dir / species_dir / 'forms/origin/data.json'
        with open(form_file, 'r', encoding='utf-8') as data_file:
            form_pkdata = json.load(data_file)
        species_weight[i] = Convert_weight(form_pkdata['pokedex_data']['weight'])
        species_height[i] = Convert_Height(form_pkdata['pokedex_data']['height'])
    else:
        species_weight[i] = Convert_weight(pkdexdata['weight'])
        species_height[i] = Convert_Height(pkdexdata['height'])

    for j, lang in enumerate(languages):
        # dex_entry
        entry = ''.join(pkdexdata[lang]['entry_text']).replace('\n','\\n')
        if (lang == 'en'):
            species_pokedex_entry[5][i] = entry
        else:
            species_pokedex_entry[j - 1][i] = entry

        # name_with_natdex_number
        if (i == 0):
            species_name_number[j][0] = pkdexdata[lang]['name']
        else:
            if (lang == 'jp'):
                species_name_number[5][i] = f'{Full_Width_Number(i)}  ' + pkdexdata['jp']['name']
            else:
                species_name_number[j][i] = f'{i:03}  ' + str(pkdexdata[lang]['name'])

        # category
        species_category[j][i] = pkdexdata[lang]['category']

if errors:
    print(errors, file=sys.stderr)
    sys.exit(1)

# SPECIES_NONE
species_name[0] = '-----'
species_weight[0] = '????.? lbs.'
species_weight_gira[0] = '????.? lbs.'
species_height[0] = '???’??”'
species_height_gira[0] = '???’??”'

# organize data
text_data = [species_name, species_name_articles]
text_data += species_pokedex_entry
text_data += [species_weight, species_weight_gira, species_height, species_height_gira, species_category[0]]
text_data += species_name_number
text_data += species_category

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
