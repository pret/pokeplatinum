#!/usr/bin/env python3
import argparse
import json
import pathlib
import subprocess
import os
import shutil
import compress

argparser = argparse.ArgumentParser(
    prog='pl_batt_obj.narc prebuilt file fixer',
    description='Copies prebuilt files to NARC build directory and compresses if required.'
)
argparser.add_argument('--nitrogfx',
                       required=True,
                       help='Path to nitrogfx executable')
argparser.add_argument('--input',
                       required=True,
                       help='Input file to make adjustments to.')
argparser.add_argument('--output',
                       required=True,
                       help='Output file to write to.')
argparser.add_argument('--private-dir',
                       required=True,
                       help='Path to the private directory (where binaries will be made)')
argparser.add_argument('--datafile',
                       required=True,
                       help='Contains details of how to build each input.')
args = argparser.parse_args()

input_file = pathlib.Path(args.input)
output_file = pathlib.Path(args.output).with_suffix(input_file.suffix)
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
    raise Exception(f"Input prebuilt file {input_file.name} is not listed in data map {args.datafile}")

tmp_file = input_file

if 'compressed' in file_props and file_props['compressed'] == True:
    tmp_file = dest_dir / output_file.with_suffix(".lz").name
    with open(input_file, mode="rb") as f:
        with open(tmp_file, mode="wb") as f2:
            compress.compress(f.read(), f2)

shutil.copy(tmp_file, output_file)