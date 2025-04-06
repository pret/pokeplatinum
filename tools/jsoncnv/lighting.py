#!/usr/bin/env python3
import json
import pathlib
import math
import argparse

def commajoin(list):
    return ','.join([str(val) for val in list]) 

def parse_color(color):
    return commajoin(color.values()) + ',\r\n'

def float_to_fx16(value):
    value = float(value)
    if (value > 0):
        return math.ceil(value * (1 << 12))
    else:
        return math.floor(value * (1 << 12))

def parse_light(light):
    ret_list = []
    ret_list.append(int(light["enabled"]))
    ret_list.append(commajoin(light["color"].values()))
    ret_list.append(commajoin([float_to_fx16(dir) for dir in light["direction"].values()]))
    return commajoin(ret_list) + ',\r\n'

def parse_lighting(lighting):
    ret = str(lighting["endTime"]) + ',\r\n'
    for light in lighting["lights"]:
        ret += parse_light(light)
    ret += parse_color(lighting["diffuseColor"])
    ret += parse_color(lighting["ambientColor"])
    ret += parse_color(lighting["specularColor"])
    ret += parse_color(lighting["emissionColor"])
    return ret

def parse_lighting_file(data):
    output = ""

    for lighting in data:
        output += parse_lighting(lighting)
        output += '\r\n'

    output += "EOF"

    if (eof_newline):
        output += '\r\n'

    return output

parser = argparse.ArgumentParser()
parser.add_argument('input')
parser.add_argument('output')
parser.add_argument('--eofnewline', action='store_true')
args = parser.parse_args()

input_path = pathlib.Path(args.input)
output_path = pathlib.Path(args.output)
eof_newline = args.eofnewline

data = {}
with open(input_path, "r", encoding="utf-8") as input_file:
    data = json.load(input_file)

with open(output_path, "w") as output_file:
    output_file.write(parse_lighting_file(data))
