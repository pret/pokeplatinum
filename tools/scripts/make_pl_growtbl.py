#!/usr/bin/env python3
import argparse
import json
import pathlib
import subprocess


argparser = argparse.ArgumentParser(
    prog='make_pl_growtbl',
    description='Packs the archive containing pokemon exp tables'
)
argparser.add_argument('-k', '--knarc',
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
argparser.add_argument('files',
                       nargs='+',
                       help='List of files to process in-order')
args = argparser.parse_args()

source_dir = pathlib.Path(args.source_dir)
private_dir = pathlib.Path(args.private_dir)
output_dir = pathlib.Path(args.output_dir)

private_dir.mkdir(parents=True, exist_ok=True)

for i, file in enumerate(args.files):
    with open(file) as data_file:
        curve_data = json.load(data_file)
        out = bytes()
        for n in curve_data:
            out = out + n.to_bytes(4, byteorder='little')

        target_fname = private_dir / f'pl_growtbl_{i}.bin'
        with open(target_fname, 'wb+') as target_file:
            target_file.write(out)

subprocess.run([args.knarc, '-d', private_dir, '-p', output_dir / 'pl_growtbl.narc'])
