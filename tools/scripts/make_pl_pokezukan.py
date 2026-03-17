#!/usr/bin/env python3
import argparse
import json
import pathlib
import subprocess
import sys

from generated.species import Species

ANSI_BOLD_WHITE = "\033[1;37m"
ANSI_BOLD_RED = "\033[1;31m"
ANSI_RED = "\033[31m"
ANSI_CLEAR = "\033[0m"

argparser = argparse.ArgumentParser(
    prog='make_pl_pokezukan_py',
    description='Packs the archive containing NatDex->SinnohDex number mapping'
)
argparser.add_argument('-n', '--narc',
                       required=True,
                       help='Path to narc executable')
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

NUM_POKEMON = len(Species) - 2 # ignore egg and bad_egg

pokedex = [0 for i in range(NUM_POKEMON)]

try:
    with open(args.pokedex) as data_file:
        dex_data = json.load(data_file)
        for i, mon in enumerate(dex_data):
            pokedex[Species[mon].value] = i
except json.decoder.JSONDecodeError as e:
    doc_lines = e.doc.splitlines()
    start_line = max(e.lineno - 2, 0)
    end_line = min(e.lineno + 1, len(doc_lines))

    error_lines = [f"{line_num:>4} | {line}" for line_num, line in zip(list(range(start_line + 1, end_line + 1)), doc_lines[start_line : end_line])][ : end_line - start_line]
    error_line_index = e.lineno - start_line - 1
    error_lines[error_line_index] = error_lines[error_line_index][ : 5] + f"{ANSI_RED}{error_lines[error_line_index][5 : ]}{ANSI_CLEAR}"
    error_out = "\n".join(error_lines)

    print(f"{ANSI_BOLD_WHITE}{args.pokedex}:{e.lineno}:{e.colno}: {ANSI_BOLD_RED}error: {ANSI_BOLD_WHITE}{e.msg}{ANSI_CLEAR}\n{error_out}", file=sys.stderr)
    sys.exit(1)

target_fname = private_dir / 'pl_pokezukan_0.bin'
with open(target_fname, 'wb+') as target_file:
    pl_pokezukan = [0 for i in range(NUM_POKEMON * 2)]
    for i in range(NUM_POKEMON):
        pl_pokezukan[i*2] = pokedex[i] & 0xff
        pl_pokezukan[i*2 + 1] = (pokedex[i] >> 8) & 0xff
    target_file.write(bytes(pl_pokezukan))

subprocess.run([
    args.narc,
    '--create',
    '--file', output_dir / 'pl_pokezukan.narc',
    private_dir
])
