#!/usr/bin/env python3
import argparse
import json
import pathlib
import sys

from convert import parse_naix, u16

def try_get_naix_value(naix_dict: dict, json_key: str, data: dict) -> int:
    try:
        return naix_dict[data[json_key]] 
    except KeyError as err:
        err.add_note(json_key)
        raise err

def parse_area_data(data) -> bytes:
    return b''.join([
        u16(try_get_naix_value(map_prop_sets, 'mapPropSet', data)),
        u16(try_get_naix_value(map_texture_sets, 'mapTextureSet', data)),
        u16(data['dummy'] if 'dummy' in data else 0),
        u16(try_get_naix_value(lighting_sets, 'lightingSet', data)),
    ])

parser = argparse.ArgumentParser()
parser.add_argument('input')
parser.add_argument('output')
parser.add_argument('--map-prop-set-naix')
parser.add_argument('--map-texture-set-naix')
parser.add_argument('--lighting-set-naix')
args = parser.parse_args()

input_path = pathlib.Path(args.input)
output_path = pathlib.Path(args.output)
map_prop_sets = parse_naix(pathlib.Path(args.map_prop_set_naix))
map_texture_sets = parse_naix(pathlib.Path(args.map_texture_set_naix))
lighting_sets = parse_naix(pathlib.Path(args.lighting_set_naix))

data = {}
with open(input_path, 'r', encoding='utf-8') as input_file:
    data = json.load(input_file)

with open(output_path, 'wb') as output_file:
    try:
        output_file.write(parse_area_data(data))
    except KeyError as err:
        print(f'Error parsing {args.input}: {err.__notes__[0]} constant {err.args[0]} not found.', file=sys.stderr)
        exit(1)
