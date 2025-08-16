#!/usr/bin/env python3
from typing import NamedTuple

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

class GeneratedFile(NamedTuple):
    name: str
    key: int
    zero_is_empty: bool = False

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
argparser.add_argument('-f', '--format',
                       required=False,
                       help='File format(s) to be generated',
                       choices=['gmm', 'json'],
                       action='append')
args = argparser.parse_args()

source_dir = pathlib.Path(args.source_dir)
output_dir = pathlib.Path(args.output_dir)
formats = args.format or []
print(f"{formats=}")

files: list[GeneratedFile] = [
    GeneratedFile('species_name', 30764),
    GeneratedFile('species_name_with_articles', 59681, zero_is_empty=True),
    GeneratedFile('species_pokedex_entry_fr', 30030, zero_is_empty=True),
    GeneratedFile('species_pokedex_entry_de', 30034, zero_is_empty=True),
    GeneratedFile('species_pokedex_entry_it', 30038, zero_is_empty=True),
    GeneratedFile('species_pokedex_entry_es', 30042, zero_is_empty=True),
    GeneratedFile('species_pokedex_entry_jp', 30046, zero_is_empty=True),
    GeneratedFile('species_pokedex_entry_en', 63572, zero_is_empty=True),
    GeneratedFile('species_weight', 25297),
    GeneratedFile('species_weight_gira', 64639),
    GeneratedFile('species_height', 5013),
    GeneratedFile('species_height_gira', 28660),
    GeneratedFile('species_category', 48809),
    GeneratedFile('species_name_with_natdex_number_en', 32249),
    GeneratedFile('species_name_with_natdex_number_fr', 32242),
    GeneratedFile('species_name_with_natdex_number_de', 32254),
    GeneratedFile('species_name_with_natdex_number_it', 32250),
    GeneratedFile('species_name_with_natdex_number_es', 32230),
    GeneratedFile('species_name_with_natdex_number_jp', 32226),
    GeneratedFile('species_category_en', 22840),
    GeneratedFile('species_category_fr', 46193),
    GeneratedFile('species_category_de', 46205),
    GeneratedFile('species_category_it', 46201),
    GeneratedFile('species_category_es', 46181),
    GeneratedFile('species_category_jp', 46177),
]

# variables
NUM_POKEMON = len(SPECIES_DIRS)
languages = ['en', 'fr', 'de', 'it', 'es', 'jp']
NUM_LANGUAGES = len(languages)
species_name = [''] * NUM_POKEMON
species_name_articles = [''] * NUM_POKEMON
species_pokedex_entry = [[''] * (NUM_POKEMON-2) for _ in range(NUM_LANGUAGES)]
species_weight = [''] * (NUM_POKEMON-2)
species_weight_gira = [''] * (NUM_POKEMON-2)
species_height = [''] * (NUM_POKEMON-2)
species_height_gira = [''] * (NUM_POKEMON-2)
species_name_number = [[''] * (NUM_POKEMON-2) for _ in range(NUM_LANGUAGES)]
species_category = [[''] * (NUM_POKEMON-2) for _ in range(NUM_LANGUAGES)]

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
text_data = [
    species_name,
    species_name_articles,
    *species_pokedex_entry,
    species_weight,
    species_weight_gira,
    species_height,
    species_height_gira,
    species_category[0],
    *species_name_number,
    *species_category,
]


def dump_gmm(file: GeneratedFile, data: list[str]):
    body = ET.Element("body", { "language": "English" })
    _ = ET.SubElement(body, "key", { "value": str(file.key) })

    for i, text in enumerate(data):
        row = ET.SubElement(body, "row", {
            "id": f"{file.name}_{SPECIES_DIRS[i]}",
            "index": f"{i}",
        })

        attribute = ET.SubElement(row, "attribute", { "name": "window_context_name" })
        language = ET.SubElement(row, "language", { "name": "English" })
        if i == 0 and file.zero_is_empty:
            attribute.text = "garbage"
            _ = ET.SubElement(row, "language", { "name": "日本語" })
        else:
            attribute.text = "used"
            language.text = text

    ET.indent(body, "\t")

    print(f"write {file.name}.gmm...")
    with open((output_dir / file.name).with_suffix(".gmm"), "w", encoding="utf-8") as fout:
        _ = fout.write('<?xml version="1.0"?>\n')
        _ = fout.write(ET.tostring(body, encoding="utf-8").decode("utf-8"))
        _ = fout.write("\n")


def dump_json(file: GeneratedFile, data: list[str]):
    messages: list[dict[str, int | str]] = [
        { "id": f"{file.name}_{SPECIES_DIRS[i]}", "en_US": s }
        for i, s in enumerate(data[1:], 1)
    ]

    if file.zero_is_empty:
        messages.insert(0, {
            "id": f"{file.name}_none",
            "garbage": 0,
        })
    else:
        messages.insert(0, {
            "id": f"{file.name}_none",
            "en_US": data[0],
        })

    payload = { "key": file.key, "messages": messages }
    print(f"write {file.name}.json...")
    with open((output_dir / file.name).with_suffix(".json"), "w", encoding="utf-8") as fout:
        json.dump(payload, fout, ensure_ascii=False, indent=2)


for file, data in zip(files, text_data):
    if "json" in formats:
        dump_json(file, data)
    if "gmm" in formats or not formats:
        dump_gmm(file, data)
