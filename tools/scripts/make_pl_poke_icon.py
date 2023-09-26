#!/usr/bin/env python3

import argparse
import pathlib
import shutil
import subprocess

argparser = argparse.ArgumentParser(
    prog='pl_poke_icon.narc packer',
    description='Packs the archive containing Pokemon icons'
)
argparser.add_argument('-n', '--nitrogfx',
                       required=True,
                       help='Path to nitrogfx executable')
argparser.add_argument('-k', '--knarc',
                       required=True,
                       help='Path to knarc executable')
argparser.add_argument('-s', '--shared-dir',
                       required=True,
                       help='Path to the .shared directory')
argparser.add_argument('-p', '--private-dir',
                       required=True,
                       help='Path to the private directory (where binaries will be made)')
argparser.add_argument('-o', '--output-dir',
                       required=True,
                       help='Path to the output directory (where the NARC will be made)')
argparser.add_argument('icon_files',
                       nargs='+',
                       help='Input icon files to pack into the NARC')
args = argparser.parse_args()

shared_dir = pathlib.Path(args.shared_dir)
private_dir = pathlib.Path(args.private_dir)
output_dir = pathlib.Path(args.output_dir)

bin_dest_dir = private_dir / 'pl_poke_icon_work'
bin_dest_dir.mkdir(parents=True, exist_ok=True)

shutil.copy(shared_dir / 'icon_palette.NCLR', bin_dest_dir / '0000.NCLR')

for i in range(3):
    anim_file_src = shared_dir / f'pl_poke_icon_anim_{i+1:02}.json'
    cell_file_src = shared_dir / f'pl_poke_icon_cell_{i+1:02}.json'
    anim_file_dst = bin_dest_dir / f'{(i*2+1):04}.NANR'
    cell_file_dst = bin_dest_dir / f'{(i*2+2):04}.NCER'

    subprocess.run([args.nitrogfx, anim_file_src, anim_file_dst])
    subprocess.run([args.nitrogfx, cell_file_src, cell_file_dst])

for i, input_fname in enumerate(args.icon_files):
    subprocess.run([
        args.nitrogfx,
        input_fname,
        bin_dest_dir / f'{i+7:04}.NCGR',
        '-clobbersize',
        '-version101'
    ])

subprocess.run([args.knarc, 'pack', '-s', '-o', output_dir / 'pl_poke_icon.narc', bin_dest_dir])
