#!/usr/bin/env python3

import argparse
import os
import pathlib
import shutil
import subprocess

SPECIES_DIRS = os.environ['SPECIES'].split(';')

argparser = argparse.ArgumentParser(
    prog='pl_poke_icon.narc packer',
    description='Packs the archive containing Pokemon icons'
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

for i, subdir in enumerate(SPECIES_DIRS):
    # Do not attempt to process either egg or bad_egg
    if subdir in ['egg', 'bad_egg']:
        continue

    j = 0
    for face in ['back', 'front']:
        for gender in ['female', 'male']:
            source_file = source_dir / subdir / f'{gender}_{face}.png'
            target_file = private_dir / f'{i:04}-{j:02}.NCGR'

            if source_file.exists():
                subprocess.run([
                    args.nitrogfx,
                    source_file,
                    target_file,
                    '-encodefronttoback',
                    '-scan',
                ])
            else:
                subprocess.run(['touch', target_file])

            j += 1

    if i == 0:  # species none has special palette files
        shutil.copy(source_dir / 'none/normal_pal.NCLR', private_dir / '0000-04.NCLR')
        shutil.copy(source_dir / 'none/shiny_pal.NCLR', private_dir / '0000-05.NCLR')
        continue

    normal_pal_src = source_dir / subdir / 'normal.pal'
    shiny_pal_src = source_dir / subdir / 'shiny.pal'

    subprocess.run([
        args.nitrogfx,
        normal_pal_src,
        private_dir / f'{i:04}-04.NCLR',
        '-bitdepth', '8',
        '-nopad',
        '-comp', '10'
    ])
    subprocess.run([
        args.nitrogfx,
        shiny_pal_src,
        private_dir / f'{i:04}-05.NCLR',
        '-bitdepth', '8',
        '-nopad',
        '-comp', '10'
    ])

subprocess.run([
    args.narc,
    '--create',
    '--file', output_dir / 'pl_pokegra.narc',
    private_dir
])
