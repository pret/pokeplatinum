#!/usr/bin/env python3

import argparse
import pathlib
import os
import subprocess

from generated.species import Species

SPECIES_DIRS = os.environ['SPECIES'].split(';')

argparser = argparse.ArgumentParser(
    prog='pokefoot.narc packer',
    description='Packs the archive containing Pokemon footprints'
)
argparser.add_argument('-n', '--nitrogfx',
                       required=True,
                       help='Path to nitrogfx executable')
argparser.add_argument('-k', '--narc',
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
args = argparser.parse_args()

source_dir = pathlib.Path(args.source_dir)
private_dir = pathlib.Path(args.private_dir)
output_dir = pathlib.Path(args.output_dir)

private_dir.mkdir(parents=True, exist_ok=True)
(output_dir / '.shared').mkdir(parents=True, exist_ok=True)

palette_file = 'footprint.NCLR'
anim_file = 'footprint.NANR.lz'
cell_file = 'footprint.NCER.lz'
cell_key_file = 'footprint_key.NCER'

# palette
src = source_dir / '.shared' / 'footprint.pal'
dst = private_dir / palette_file
subprocess.run([
    args.nitrogfx,
    src,
    dst,
])

# anim
src = source_dir / '.shared' / 'footprint_anim.json'
dst = output_dir / '.shared' / 'footprints.NANR'
subprocess.run([
    args.nitrogfx,
    src,
    dst,
])

src = dst
dst = private_dir / anim_file
subprocess.run([
    args.nitrogfx,
    src,
    dst,
    '-nopad',
])

# cell
src = source_dir / '.shared' / 'footprint_cell.json'
cell_NCER = output_dir / '.shared' / 'footprints.NCER'
subprocess.run([
    args.nitrogfx,
    src,
    cell_NCER,
])

src = cell_NCER
dst = private_dir / cell_file
subprocess.run([
    args.nitrogfx,
    src,
    dst,
    '-nopad',
])

# key cells for PNGs
src = source_dir / '.shared' / 'footprint_key.json'
cell_key_file = output_dir / '.shared' / 'footprints.NCER'
subprocess.run([
    args.nitrogfx,
    src,
    cell_key_file,
])

with open(output_dir / 'pokefoot.order', "w", encoding="utf-8") as order_file:
    print(palette_file, file=order_file)
    print(anim_file, file=order_file)
    print(cell_file, file=order_file)

    # char
    for i, subdir in enumerate(SPECIES_DIRS):
        # Do not attempt to process either egg or bad_egg
        if subdir in ['egg', 'bad_egg']:
            continue

        char_file = f'footprint_{subdir}.NCGR.lz'

        print(char_file, file=order_file)
        (output_dir / subdir).mkdir(parents=True, exist_ok=True)

        src = source_dir / subdir / 'footprint.png'
        dst = output_dir / subdir / 'footprint.NCGR'
        subprocess.run([
            args.nitrogfx,
            src,
            dst,
            '-version101',
            '-clobbersize',
            '-mappingtype', '128',
            '-cell', cell_key_file,
        ])

        src = dst
        dst = private_dir / char_file
        subprocess.run([
            args.nitrogfx,
            src,
            dst,
            '-nopad',
        ])

subprocess.run([args.narc, 'create', '--naix', '--order', output_dir / 'pokefoot.order', '--output', output_dir / 'pokefoot.narc', private_dir])
