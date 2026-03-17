#!/usr/bin/env python3
import argparse
import csv
import pathlib
import subprocess


argparser = argparse.ArgumentParser(
    prog='make_pl_growtbl',
    description='Packs the archive containing pokemon exp tables'
)
argparser.add_argument('-', '--narc',
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
argparser.add_argument('table',
                       help='Experience tables in csv format')
args = argparser.parse_args()

source_dir = pathlib.Path(args.source_dir)
private_dir = pathlib.Path(args.private_dir)
output_dir = pathlib.Path(args.output_dir)

private_dir.mkdir(parents=True, exist_ok=True)

with open(args.table) as data_file:
    file_reader = csv.reader(data_file)
    table_data = list(file_reader)
    transpose = list(zip(*table_data))
    count = 0
    for table in transpose:
        if table[0] == 'level':
            continue
        out = bytes()
        for n in table[1:]:
            out = out + int(n).to_bytes(4, byteorder='little')

        target_fname = private_dir / f'pl_growtbl_{count}.bin'
        with open(target_fname, 'wb+') as target_file:
            target_file.write(out)
        count += 1

subprocess.run([
    args.narc,
    '--create',
    '--file', output_dir / 'pl_growtbl.narc',
    private_dir
])
