#!/usr/bin/env python3
import argparse
import json
import pathlib
import sys

from convert import parse_naix, u16

def parse_prop_model_set(data) -> bytes:
    return b"".join([
        u16(len(data["mapPropModels"])),
        b"".join([u16(map_prop_models[model]) for model in data["mapPropModels"]]),
    ])

parser = argparse.ArgumentParser()
parser.add_argument('input')
parser.add_argument('output')
parser.add_argument('--map-prop-model-naix')
args = parser.parse_args()

input_path = pathlib.Path(args.input)
output_path = pathlib.Path(args.output)
map_prop_models = parse_naix(pathlib.Path(args.map_prop_model_naix))

data = {}
with open(input_path, "r", encoding="utf-8") as input_file:
    data = json.load(input_file)

with open(output_path, "wb") as output_file:
    try:
        output_file.write(parse_prop_model_set(data))
    except KeyError as err:
        print(f'\nError parsing {args.input}: map prop model constant {err.args[0]} not found.\n', file=sys.stderr)
        exit(1)
