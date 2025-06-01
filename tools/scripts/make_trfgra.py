#!/usr/bin/env python3

import argparse
import pathlib
import os
import subprocess

from generated.trainer_classes import TrainerClass

TRAINER_DIRS = os.environ['TRAINER_CLASS'].split(';')

argparser = argparse.ArgumentParser(
    prog='trfgra.narc packer',
    description='Packs the archive containing trainer front sprites'
)
argparser.add_argument('-n', '--nitrogfx',
                       required=True,
                       help='Path to nitrogfx executable')
argparser.add_argument('-k', '--narc',
                       required=True,
                       help='Path to narc executable')
argparser.add_argument('-s', '--source-dir',
                       required=True,
                       help='Path to the source directory (res/trainers/classes)')
argparser.add_argument('-p', '--private-dir',
                       required=True,
                       help='Path to the private directory (where binaries will be made)')
argparser.add_argument('-o', '--output-dir',
                       required=True,
                       help='Path to the output directory (where the NARC will be made)')
args = argparser.parse_args()

source_dir = pathlib.Path(args.source_dir)
private_dir = pathlib.Path(args.private_dir)
output_dir = pathlib.Path(args.output_dir)

private_dir.mkdir(parents=True, exist_ok=True)

# An order file is maintained even for expanded trainers
# This way the files can be accessed in the expected order:
# char, palette, cell, anim, scan
with open(output_dir / 'trfgra.order', "w", encoding="utf-8") as order_file:
    for i, subdir in enumerate(TRAINER_DIRS):
        # cell
        # must be done before char
        cell_file = f'front_{subdir}.NCER'
        src = source_dir / subdir / 'front_cell.json'
        dst = private_dir / cell_file
        subprocess.run([
            args.nitrogfx,
            src,
            dst,
        ])
        key_file = dst

        # char
        # Check for png key
        key_src = source_dir / subdir / 'front_key.json'
        if key_src.exists():
            (output_dir / subdir).mkdir(parents=True, exist_ok=True)
            key_file = output_dir / subdir / 'front_key.NCER'
            subprocess.run([
                args.nitrogfx,
                key_src,
                key_file,
            ])

        char_file = f'front_{subdir}.NCGR'
        src = source_dir / subdir / 'front.png'
        dst = private_dir / char_file
        subprocess.run([
            args.nitrogfx,
            src,
            dst,
            '-version101',
            '-vram',
            '-clobbersize',
            '-mappingtype', '64',
            '-cell', key_file,
        ])
        
        # palette
        pal_file = f'front_{subdir}.NCLR'
        src = source_dir / subdir / 'front.png'
        dst = private_dir / pal_file
        subprocess.run([
            args.nitrogfx,
            src,
            dst,
        ])
        
        # anim
        anim_file = f'front_{subdir}.NANR'
        src = source_dir / subdir / 'front_anim.json'
        dst = private_dir / anim_file
        subprocess.run([
            args.nitrogfx,
            src,
            dst,
        ])
        
        # scan
        scan_file = f'front_{subdir}_scan.NCGR'
        src = source_dir / subdir / 'front_scan.png'
        dst = private_dir / scan_file
        subprocess.run([
            args.nitrogfx,
            src,
            dst,
            '-scanfronttoback',
        ])

        print(char_file, file=order_file)
        print(pal_file, file=order_file)
        print(cell_file, file=order_file)
        print(anim_file, file=order_file)
        print(scan_file, file=order_file)

subprocess.run([args.narc, 'create', '--order', output_dir / 'trfgra.order', '--output', output_dir / 'trfgra.narc', private_dir])
