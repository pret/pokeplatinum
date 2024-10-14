#!/usr/bin/env python3
import argparse
import json
import pathlib
import subprocess
import os
import shutil
import compress

argparser = argparse.ArgumentParser(
    prog='pl_batt_obj.narc sprite builder and compressor',
    description='Builds NCGR sprite files and compresses if requested.'
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
    raise Exception(f"Input sprite file {input_file.name} is not listed in data map {args.datafile}")

tmp_file = dest_dir / output_file.name

ngfx_args = [args.nitrogfx, input_file, tmp_file]
if 'clobber_size' in file_props and file_props['clobber_size'] == True:
    ngfx_args.append('-clobbersize')
if 'mapping_type' in file_props:
    ngfx_args.append('-mappingtype')
    ngfx_args.append(str(file_props['mapping_type']))
if 'version101' in file_props and file_props['version101'] == True:
    ngfx_args.append('-version101')
if 'vram' in file_props and file_props['vram'] == True:
    ngfx_args.append('-vram')

subprocess.run(ngfx_args)

if 'compressed' in file_props and file_props['compressed'] == True:
    with open(tmp_file, mode="rb") as f:
        with open(tmp_file.with_suffix(".lz"), mode="wb") as f2:
            compress.compress(f.read(), f2)
    tmp_file = tmp_file.with_suffix(".lz")

shutil.copy(tmp_file, output_file)