#!/usr/bin/env python3
import itertools
import json
import pathlib
import sys

from convert import pad, u8, u32
from generated import species

ANSI_BOLD_WHITE = "\033[1;37m"
ANSI_BOLD_RED = "\033[1;31m"
ANSI_RED = "\033[31m"
ANSI_CLEAR = "\033[0m"

def as_species(s: str) -> bytes:
    return u32(species.Species[s].value)

def convert_land(encs: list) -> bytes:
    return b''.join(itertools.chain.from_iterable([
        (
            u32(encs[i]['level']),
            as_species(encs[i]['species']),
        )
        for i in range(12)
    ]))

def convert_water(encs: list) -> bytes:
    return b''.join(itertools.chain.from_iterable([
        (
            u8(encs[i]['level_max']),
            u8(encs[i]['level_min']),
            pad(2),
            as_species(encs[i]['species']),
        )
        for i in range(5)
    ]))


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

packables = bytearray([])
packables.extend(u32(data['land_rate']))
packables.extend(convert_land(data['land_encounters']))

for enc_type, i in itertools.product(['swarms', 'morning', 'night'], range(2)):
    packables.extend(as_species(data[enc_type][i]))

for i in range(4):
    packables.extend(as_species(data['radar'][i]))

for key in ['rate_form0', 'rate_form1', 'rate_form2', 'rate_form3', 'rate_form4', 'unown_table']:
    packables.extend(u32(data[key]))

for version, i in itertools.product(['ruby', 'sapphire', 'emerald', 'firered', 'leafgreen'], range(2)):
    packables.extend(as_species(data[version][i]))

packables.extend(u32(data['surf_rate']))
packables.extend(convert_water(data['surf_encounters']))
packables.extend(pad(44))

for rod in ['old', 'good', 'super']:
    packables.extend(u32(data[f'{rod}_rod_rate']))
    packables.extend(convert_water(data[f'{rod}_rod_encounters']))

with open(output_path, 'wb') as output_file:
    output_file.write(packables)
