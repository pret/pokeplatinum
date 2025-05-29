#!/usr/bin/env python3

import argparse
import pathlib
import os
import subprocess

from generated.trainer_classes import TrainerClass

TRAINER_DIRS = os.environ['TRAINER_CLASS'].split(';')

argparser = argparse.ArgumentParser(
    prog='trbgra.narc packer',
    description='Packs the archive containing trainer back sprites'
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

# Default rom contains the DP rivals backsprite
TRAINER_DIRS.append('dp_rival')

# An order file is maintained even for expanded trainers
# This way the files can be accessed in the expected order:
# char, palette, cell, anim, scan
with open(output_dir / 'trbgra.order', "w", encoding="utf-8") as order_file:
    for i, subdir in enumerate(TRAINER_DIRS):
        # cell
        # must be done before char
        cell_file = f'back_{subdir}.NCER'
        src = source_dir / subdir / 'back_cell.json'
        dst = private_dir / cell_file
        # back sprites are optional
        if src.exists():
            subprocess.run([
                args.nitrogfx,
                src,
                dst,
            ])

            # char
            char_file = f'back_{subdir}.NCGR'
            src = source_dir / subdir / 'back.png'
            dst = private_dir / char_file
            subprocess.run([
                args.nitrogfx,
                src,
                dst,
                '-version101',
                '-vram',
                '-clobbersize',
                '-mappingtype', '64',
                '-cell', (private_dir / cell_file),
            ])
            
            # palette
            pal_file = f'back_{subdir}.NCLR'
            src = source_dir / subdir / 'back.png'
            dst = private_dir / pal_file
            subprocess.run([
                args.nitrogfx,
                src,
                dst,
            ])
            
            # anim
            anim_file = f'back_{subdir}.NANR'
            src = source_dir / subdir / 'back_anim.json'
            dst = private_dir / anim_file
            subprocess.run([
                args.nitrogfx,
                src,
                dst,
            ])
            
            # scan
            scan_file = f'back_{subdir}_scan.NCGR'
            src = source_dir / subdir / 'back_scan.png'
            dst = private_dir / scan_file
            subprocess.run([
                args.nitrogfx,
                src,
                dst,
                '-scanbacktoback',
            ])

            print(char_file, file=order_file)
            print(pal_file, file=order_file)
            print(cell_file, file=order_file)
            print(anim_file, file=order_file)
            print(scan_file, file=order_file)

subprocess.run([args.narc, 'create', '--naix', '--order', output_dir / 'trbgra.order', '--output', output_dir / 'trbgra.narc', private_dir])
