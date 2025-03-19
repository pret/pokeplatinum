#!/usr/bin/env python3
import json
import pathlib
import sys

from convert import from_map_header, from_map, u8, u16, ascii

def pack_matrix_list(data, type_func, from_func) -> bytes:
    ret = []
    for row in data:
        ret += map(type_func, map(from_func, row))
    return b"".join(ret)

def parse_matrix(data) -> bytes:
    return b"".join([
        u8(0 if len(data["maps"]) == 0 else len(data["maps"][0])), # width
        u8(len(data["maps"])), # height
        u8(len(data["headers"]) != 0), # boolean indicating the matrix contains headers
        u8(len(data["altitudes"]) != 0), # boolean indicating the matrix contains altitudes
        u8(len(data["name"])),
        ascii(data["name"]), # matrix name
        pack_matrix_list(data["headers"], u16, from_map_header),
        pack_matrix_list(data["altitudes"], u8, lambda x : x),
        pack_matrix_list(data["maps"], u16, from_map),
    ])

input_path = pathlib.Path(sys.argv[1])
output_path = pathlib.Path(sys.argv[2])

data = {}
with open(input_path, "r", encoding="utf-8") as input_file:
    data = json.load(input_file)

with open(output_path, "wb") as output_file:
    output_file.write(parse_matrix(data))
