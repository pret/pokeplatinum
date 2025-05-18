#!/usr/bin/env python3

import argparse
import pathlib
import shutil
import subprocess

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
argparser.add_argument('subdirs',
                       nargs='+',
                       help='List of subdirectories to process in-order')
args = argparser.parse_args()

source_dir = pathlib.Path(args.source_dir)
private_dir = pathlib.Path(args.private_dir)
output_dir = pathlib.Path(args.output_dir)

private_dir.mkdir(parents=True, exist_ok=True)

num_digits = len(str(len(args.subdirs) + 3))

# palette
src = source_dir / '.shared/pokefoot.pal'
dst = private_dir / '00000.NCLR'
subprocess.run([
    args.nitrogfx,
    src,
    dst,
])

# anim
src = source_dir / '.shared/pokefoot_anim.json'
dst = output_dir / 'footprints.NANR'
subprocess.run([
    args.nitrogfx,
    src,
    dst,
])

src = dst
dst = private_dir / '00001.NANR.lz'
subprocess.run([
    args.nitrogfx,
    src,
    dst,
    '-nopad',
])

# cell
src = source_dir / '.shared/pokefoot_cell.json'
dst = output_dir / 'footprints.NCER'
subprocess.run([
    args.nitrogfx,
    src,
    dst,
])

src = dst
dst = private_dir / '00002.NCER.lz'
subprocess.run([
    args.nitrogfx,
    src,
    dst,
    '-nopad',
])

# char
for i, subdir in enumerate(args.subdirs):
    # Do not attempt to process either egg or bad_egg
    if subdir in ['egg', 'bad_egg']:
        continue

    src = source_dir / subdir / 'footprint.png'
    dst = output_dir / subdir / 'footprint.NCGR'
    subprocess.run([
        args.nitrogfx,
        src,
        dst,
        '-version101',
        '-clobbersize',
        '-mappingtype', '128',
    ])

    src = dst
    dst = private_dir / f'{(3+i):05}.NCGR.lz'
    subprocess.run([
        args.nitrogfx,
        src,
        dst,
        '-nopad',
    ])

subprocess.run([args.narc, 'create', '--output', output_dir / 'pokefoot.narc', private_dir])
