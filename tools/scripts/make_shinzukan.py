#!/usr/bin/env python3
import argparse
import json
import pathlib
import subprocess
import sys

from generated.species import Species


argparser = argparse.ArgumentParser(
    prog='make_shinzukan_py',
    description='Packs the archive containing SinnohDex->NatDex number mapping'
)
argparser.add_argument('-n', '--narc',
                       required=True,
                       help='Path to knarc executable')
argparser.add_argument('-s', '--source-dir',
                       required=True,
                       help='Path to the source directory (res/pokemon)')
argparser.add_argument('-p', '--private-dir',
                       required=True,
                       help='Path to the private directory (where binaries will be made)')
argparser.add_argument('-o', '--output-dir',
                       required=True,
                       help='Path to the output directory (where the NARC will be made)')
argparser.add_argument('pokedex',
                       help='List of pokemon in the Sinnoh Pokedex')
args = argparser.parse_args()

source_dir = pathlib.Path(args.source_dir)
private_dir = pathlib.Path(args.private_dir)
output_dir = pathlib.Path(args.output_dir)

private_dir.mkdir(parents=True, exist_ok=True)

NUM_SINNOH = 211

pokedex = [0 for i in range(NUM_SINNOH)]

try:
    with open(args.pokedex) as data_file:
        dex_data = json.load(data_file)
        for i, mon in enumerate(dex_data):
            pokedex[i] = Species[mon].value
except json.decoder.JSONDecodeError as e:
    docLines = e.doc.splitlines()
    startLine = max(e.lineno-2, 0)
    endLine = min(e.lineno+1, len(docLines))
    
    errorLines = [f"{lineNum:>4} {line}" for lineNum, line in zip(list(range(startLine+1, endLine+1)), docLines[startLine : endLine])][ : endLine - startLine]
    errorLineIndex = e.lineno - startLine - 1
    errorLines[errorLineIndex] = errorLines[errorLineIndex][ : 5] + f"\033[31m{errorLines[errorLineIndex][5 : ]}\033[0m"

    print(f"{args.pokedex}:{e.lineno}:{e.colno}\033[31m error: \033[0m{e.msg}\n{'\n'.join(errorLines)}\n", file=sys.stderr)
    sys.exit(1)

target_fname = private_dir / 'shinzukan_0.bin'
with open(target_fname, 'wb+') as target_file:
    shinzukan = [0 for i in range(NUM_SINNOH * 2)]
    for i in range(NUM_SINNOH):
        shinzukan[i*2] = pokedex[i] & 0xff
        shinzukan[i*2 + 1] = (pokedex[i] >> 8) & 0xff
    target_file.write(bytes(shinzukan))

subprocess.run([args.narc, 'create', '--output', output_dir / 'shinzukan.narc', private_dir])
