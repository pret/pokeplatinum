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

try:
    data = {}
    with open(input_path, 'r', encoding='utf-8') as input_file:
        data = json.load(input_file)
except json.decoder.JSONDecodeError as e:
    docLines = e.doc.splitlines()
    startLine = max(e.lineno-2, 0)
    endLine = min(e.lineno+1, len(docLines))
    
    errorLines = [f"{lineNum:>4} {line}" for lineNum, line in zip(list(range(startLine+1, endLine+1)), docLines[startLine : endLine])][ : endLine - startLine]
    errorLineIndex = e.lineno - startLine - 1
    errorLines[errorLineIndex] = errorLines[errorLineIndex][ : 5] + f"\033[31m{errorLines[errorLineIndex][5 : ]}\033[0m"

    print(f"{input_path}:{e.lineno}:{e.colno}\033[31m error: \033[0m{e.msg}\n{'\n'.join(errorLines)}\n", file=sys.stderr)
    sys.exit(1)

with open(output_path, "wb") as output_file:
    output_file.write(parse_matrix(data))
