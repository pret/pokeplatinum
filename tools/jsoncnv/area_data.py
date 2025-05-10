#!/usr/bin/env python3
import json
import pathlib
import argparse

from convert import parse_naix, u16

def try_get_dict_value(naix_dict: dict, json_key: str, data: dict) -> int:
    if data[json_key] in naix_dict:
        return naix_dict[data[json_key]] 
    else:
        raise Exception(f'{json_key}: {data[json_key]} not found.')

def parse_area_data(data) -> bytes:
    return b''.join([
        u16(try_get_dict_value(dict_map_prop_set, 'mapPropSet', data)),
        u16(try_get_dict_value(dict_map_texture_set, 'mapTextureSet', data)),
        u16(data['dummy'] if 'dummy' in data else 0),
        u16(try_get_dict_value(dict_lighting_set, 'lightingSet', data)),
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
dict_map_prop_set = parse_naix(pathlib.Path(args.map_prop_set_naix))
dict_map_texture_set = parse_naix(pathlib.Path(args.map_texture_set_naix))
dict_lighting_set = parse_naix(pathlib.Path(args.lighting_set_naix))

data = {}
with open(input_path, 'r', encoding='utf-8') as input_file:
    data = json.load(input_file)

with open(output_path, 'wb') as output_file:
    output_file.write(parse_area_data(data))
