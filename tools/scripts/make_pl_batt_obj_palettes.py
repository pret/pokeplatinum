#!/usr/bin/env python3
import argparse
import json
import pathlib
import subprocess
import os
import shutil

argparser = argparse.ArgumentParser(
    prog='pl_batt_obj.narc palette builder and size fixer',
    description='Builds NCLR palette files and fixes the size field if requested.'
)
argparser.add_argument('--nitrogfx',
                       required=True,
                       help='Path to nitrogfx executable')
argparser.add_argument('--input',
                       required=True,
                       help='Input NCLR file to make adjustments to.')
argparser.add_argument('--output',
                       required=True,
                       help='Output NCLR file to write to.')
args, extra_args = argparser.parse_known_args()

input_file = pathlib.Path(args.input)
output_file = pathlib.Path(args.output)

resize = False
ngfx_args = [args.nitrogfx, input_file, output_file]
for arg in extra_args:
    if arg == "-fixsize":
        resize = True
    else:
        ngfx_args.append(arg)

subprocess.run(ngfx_args)

if resize:
    with open(output_file, mode="rb") as f:
        data = f.read()
        size = int.from_bytes(data[32:36], byteorder='little')
        size = 512 - size
        data = data[:32] + int.to_bytes(size, byteorder='little', length=4) + data[36:]

    with open(output_file, mode="wb") as f:
        f.write(data)