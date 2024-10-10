#!/usr/bin/env python3
import argparse
import json
import pathlib
import subprocess
import os
import shutil

argparser = argparse.ArgumentParser(
    prog='pl_batt_obj.narc packer',
    description='Packs the archive containing battle graphics'
)
argparser.add_argument('-k', '--knarc',
                       required=True,
                       help='Path to knarc executable')
argparser.add_argument('-n', '--nitrogfx',
                       required=True,
                       help='Path to nitrogfx executable')
argparser.add_argument('-p', '--private-dir',
                       required=True,
                       help='Path to the private directory (where binaries will be made)')
argparser.add_argument('-o', '--output-dir',
                       required=True,
                       help='Path to the output directory (where the NARC will be made)')
argparser.add_argument('order',
                       nargs=1,
                       help='File indicating list of files to pack and the order to pack')
args = argparser.parse_args()

private_dir = pathlib.Path(args.private_dir)
output_dir = pathlib.Path(args.output_dir)
order_list = pathlib.Path(args.order[0])

private_dir.mkdir(parents=True, exist_ok=True)

dest_dir = private_dir / 'pl_batt_obj_work'
dest_dir.mkdir(parents=True, exist_ok=True)

with open(order_list) as f:
    all_lines = f.readlines()
    for index in range(len(all_lines)):
        line = all_lines[index]
        fname = str(private_dir / line.strip())
        dest = str(dest_dir / f"{index:08}_{line.strip()}")
        shutil.copy(fname, dest)

subprocess.run([args.knarc, '-d', dest_dir, '-p', output_dir / 'pl_batt_obj.narc'])

print(output_dir)