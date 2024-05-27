#!/usr/bin/env python3
import argparse
import json
import pathlib
import re

def snake(s):
    return '_'.join(
        re.sub('([A-Z][a-z]+)', r' \1',
        re.sub('([A-Z]+)', r' \1',
        s.replace('-', ' '))).split()
    ).lower()

def guard(s):
    return snake(str(s)).upper().replace('/', '__').replace('.', '__')

argparser = argparse.ArgumentParser(
    prog='make_tutorable_moves.py',
    description='Generates tutorable_moves.h'
)
argparser.add_argument('--schema',
                       required=True,
                       help='Path to the source schema file')
argparser.add_argument('--output-dir',
                       required=True,
                       help='Path to the output directory (where the header will be generated)')
args = argparser.parse_args()

schema_file = open(args.schema, 'r', encoding='utf-8')
output_dir = pathlib.Path(args.output_dir)
output_fname = output_dir / 'tutorable_moves.h'
output_file = open(output_fname, 'w', encoding='utf-8')

schema_json = json.load(schema_file)
static_prefix = 'static ' if schema_json['static'] else ''
const_prefix = 'const ' if schema_json['const'] else ''

entries = [
    f'    {{ {move}, {entry["redCost"]}, {entry["blueCost"]}, {entry["yellowCost"]}, {entry["greenCost"]}, {entry["location"]} }},'
    for move, entry in schema_json['moves'].items()
]

incl_guard = guard(output_fname)
output_file.writelines([
    f'#ifndef {incl_guard}\n',
    f'#define {incl_guard}\n',
    '\n',
    f'{static_prefix}{const_prefix}{schema_json["type"]} {schema_json["name"]}[] = {{\n',
    '\n'.join(entries),
    '\n',
    '};\n',
    '\n',
    f'#endif // {incl_guard}\n',
])

schema_file.close()
output_file.close()

