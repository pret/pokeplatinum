#!/usr/bin/env python3
import json
import pathlib
import sys

from convert import from_item, from_gender, from_species, u32

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
    docLines = e.doc.splitlines()
    startLine = max(e.lineno-2, 0)
    endLine = min(e.lineno+1, len(docLines))
    
    errorLines = [f"{lineNum:>4} {line}" for lineNum, line in zip(list(range(startLine+1, endLine+1)), docLines[startLine : endLine])][ : endLine - startLine]
    errorLineIndex = e.lineno - startLine - 1
    errorLines[errorLineIndex] = errorLines[errorLineIndex][ : 5] + f"\033[31m{errorLines[errorLineIndex][5 : ]}\033[0m"

    print(f"{input_path}:{e.lineno}:{e.colno}\033[31m error: \033[0m{e.msg}\n{'\n'.join(errorLines)}\n", file=sys.stderr)
    sys.exit(1)

with open(output_path, "wb") as output_file:
    output_file.write(parse_npc_trade(data))
