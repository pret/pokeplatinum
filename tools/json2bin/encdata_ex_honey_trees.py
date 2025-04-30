#!/usr/bin/env python3
import itertools
import json
import pathlib
import sys

from convert import u32
from generated import species

def as_species(s: str) -> bytes:
    return u32(species.Species[s].value)

input_path = pathlib.Path(sys.argv[1])
output_path_common = pathlib.Path(sys.argv[2])
output_path_uncommon = pathlib.Path(sys.argv[3])
output_path_rare = pathlib.Path(sys.argv[4])

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

packables = bytearray([])
for i in range(6):
    packables.extend(as_species(data['common'][i]))

with open(output_path_common, 'wb') as output_file:
    output_file.write(packables)


packables = bytearray([])
for i in range(6):
    packables.extend(as_species(data['uncommon'][i]))

with open(output_path_uncommon, 'wb') as output_file:
    output_file.write(packables)


packables = bytearray([])
for i in range(6):
    packables.extend(as_species(data['rare'][i]))

with open(output_path_rare, 'wb') as output_file:
    output_file.write(packables)
