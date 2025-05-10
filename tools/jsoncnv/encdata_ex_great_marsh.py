#!/usr/bin/env python3
import json
import pathlib
import sys

from convert import u16, u32
from generated import species

ANSI_BOLD_WHITE = "\033[1;37m"
ANSI_BOLD_RED = "\033[1;31m"
ANSI_RED = "\033[31m"
ANSI_CLEAR = "\033[0m"

def as_species(s: str) -> bytes:
    return u32(species.Species[s].value)

input_path = pathlib.Path(sys.argv[1])
output_path_natdex = pathlib.Path(sys.argv[2])
output_path_local = pathlib.Path(sys.argv[3])
output_path_coords = pathlib.Path(sys.argv[4])

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

packables = bytearray([])
for i in range(32):
    packables.extend(as_species(data['after_national_dex'][i]))

with open(output_path_natdex, 'wb') as output_file:
    output_file.write(packables)


packables = bytearray([])
for i in range(32):
    packables.extend(as_species(data['before_national_dex'][i]))

with open(output_path_local, 'wb') as output_file:
    output_file.write(packables)


packables = bytearray([])
for i in range(36):
    packables.extend(u16(data["binocular_coords"][i]['x']))
    packables.extend(u16(data["binocular_coords"][i]['y']))

with open(output_path_coords, 'wb') as output_file:
    output_file.write(packables)
