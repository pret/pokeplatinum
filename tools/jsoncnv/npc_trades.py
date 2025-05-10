#!/usr/bin/env python3
import json
import pathlib
import sys

from convert import from_item, from_gender, from_species, u32

ANSI_BOLD_WHITE = "\033[1;37m"
ANSI_BOLD_RED = "\033[1;31m"
ANSI_RED = "\033[31m"
ANSI_CLEAR = "\033[0m"

def parse_npc_trade(data) -> bytes:
    return b"".join([
        u32(from_species(data["species"])),
        u32(data["hpIV"]),
        u32(data["atkIV"]),
        u32(data["defIV"]),
        u32(data["speedIV"]),
        u32(data["spAtkIV"]),
        u32(data["spDefIV"]),
        u32(data["unused1"]),
        u32(data["otID"]),
        u32(data["cool"]),
        u32(data["beauty"]),
        u32(data["cute"]),
        u32(data["smart"]),
        u32(data["tough"]),
        u32(data["personality"]),
        u32(from_item(data["heldItem"])),
        u32(from_gender(data["otGender"])),
        u32(data["unused2"]),
        u32(data["language"]),
        u32(from_species(data["requestedSpecies"])),
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
    output_file.write(parse_npc_trade(data))
