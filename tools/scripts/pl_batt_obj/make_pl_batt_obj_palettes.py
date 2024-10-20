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
argparser.add_argument('--private-dir',
                       required=True,
                       help='Path to the private directory (where binaries will be made)')
argparser.add_argument('--datafile',
                       required=True,
                       help='Contains details of how to build each input.')
args = argparser.parse_args()

input_file = pathlib.Path(args.input)
output_file = pathlib.Path(args.output)
private_dir = pathlib.Path(args.private_dir)
with open(args.datafile) as f:
    data_map = json.load(f)

private_dir.mkdir(parents=True, exist_ok=True)

dest_dir = private_dir / 'pl_batt_obj_work'
dest_dir.mkdir(parents=True, exist_ok=True)

# adjust output_file to target the root private_dir for the build (hacky)
output_file = output_file.parent / ".." / "pl_batt_obj.narc.p" / output_file.name

file_props = None
for props in data_map:
    if props['target'] == input_file.name:
        file_props = props

if file_props == None:
    raise Exception(f"Input palette file {input_file.name} is not listed in data map {args.datafile}")

tmp_file = dest_dir / output_file.name

ngfx_args = [args.nitrogfx, input_file, tmp_file]
if 'bitdepth' in file_props and file_props['bitdepth'] != None:
    ngfx_args.append('-bitdepth')
    ngfx_args.append(str(file_props['bitdepth']))
if 'pad' in file_props and file_props['pad'] == False:
    ngfx_args.append('-nopad')
if 'pcmp' in file_props and file_props['pcmp'] == True:
    ngfx_args.append('-pcmp')

subprocess.run(ngfx_args)

if 'invert_size' in file_props and file_props['invert_size'] == True:
    with open(tmp_file, mode="rb") as f:
        data = f.read()
        size = int.from_bytes(data[32:36], byteorder='little')
        size = 512 - size
        data = data[:32] + int.to_bytes(size, byteorder='little', length=4) + data[36:]

    with open(tmp_file, mode="wb") as f:
        f.write(data)

shutil.copy(tmp_file, output_file.with_suffix(".nclr"))