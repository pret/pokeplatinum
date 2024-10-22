#!/usr/bin/env python3
import argparse
import json
import pathlib
import subprocess
import struct

argparser = argparse.ArgumentParser(
    prog='make_cldat.py',
    description='Packs cldat binaries'
)
argparser.add_argument('-s', '--source-file',
                       required=True,
                       help='Path to the source file')
argparser.add_argument('-o', '--output-file',
                       required=True,
                       help='Path to the output file (where the cldat binary will be output)')
args = argparser.parse_args()

source_file = pathlib.Path(args.source_file)
output_file = pathlib.Path(args.output_file)

with open(source_file) as infile:
    data = json.loads(infile.read())

## format of a standard cldat:
#### array of elements, each element is 32 bytes (8 ints):
#### 4 bytes for each: tile ID, palette ID, cell ID, anim ID, multi-cell ID, multi-anim ID, vram transfer flag, bg priority
#### terminated with 8 ints of -2
with open(output_file, mode="wb") as f:
    for element in data:
        f.write(struct.pack('<i', element['tiles']))
        f.write(struct.pack('<i', element['palette']))
        f.write(struct.pack('<i', element['cells']))
        f.write(struct.pack('<i', element['anim']))
        f.write(struct.pack('<i', element['multi_cells']))
        f.write(struct.pack('<i', element['multi_anim']))
        f.write(struct.pack('<i', 1 if element['vram_transfer'] else 0))
        f.write(struct.pack('<i', element['bg_priority']))
    for _ in range(8):
        f.write(struct.pack('<i', -2))