#!/usr/bin/env python3
import json
import pathlib
import sys

from convert import from_map_prop_model, u16

def parse_prop_model_set(data) -> bytes:
    return b"".join([
        u16(len(data["mapPropModels"])),
        b"".join([u16(from_map_prop_model(model_constant)) for model_constant in data["mapPropModels"]]),
    ])

input_path = pathlib.Path(sys.argv[1])
output_path = pathlib.Path(sys.argv[2])

data = {}
with open(input_path, "r", encoding="utf-8") as input_file:
    data = json.load(input_file)

with open(output_path, "wb") as output_file:
    output_file.write(parse_prop_model_set(data))
