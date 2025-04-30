#!/usr/bin/env python3
import json
import pathlib
import sys

from convert import from_map_header, from_map, u8, u16, ascii

ANSI_BOLD_WHITE = "\033[1;37m"
ANSI_BOLD_RED = "\033[1;31m"
ANSI_RED = "\033[31m"
ANSI_CLEAR = "\033[0m"

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
    doc_lines = e.doc.splitlines()
    start_line = max(e.lineno - 2, 0)
    end_line = min(e.lineno + 1, len(doc_lines))

    error_lines = [f"{line_num:>4} | {line}" for line_num, line in zip(list(range(start_line + 1, end_line + 1)), doc_lines[start_line : end_line])][ : end_line - start_line]
    error_line_index = e.lineno - start_line - 1
    error_lines[error_line_index] = error_lines[error_line_index][ : 5] + f"{ANSI_RED}{error_lines[error_line_index][5 : ]}{ANSI_CLEAR}"
    error_out = "\n".join(error_lines)

    print(f"{ANSI_BOLD_WHITE}{input_path}:{e.lineno}:{e.colno}: {ANSI_BOLD_RED}error: {ANSI_BOLD_WHITE}{e.msg}{ANSI_CLEAR}\n{error_out}", file=sys.stderr)
    sys.exit(1)

with open(output_path, "wb") as output_file:
    output_file.write(parse_matrix(data))
