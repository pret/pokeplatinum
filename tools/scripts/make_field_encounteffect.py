#!/usr/bin/env python3

import argparse
import pathlib
import os
import subprocess
import shutil

from generated.trainer_classes import TrainerClass

TRAINER_DIRS = os.environ['TRAINER_CLASS'].split(';')

argparser = argparse.ArgumentParser(
    prog='field_encounteffect.narc packer',
    description='Packs the archive containing trainer encounter sprites'
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

frontier_brains = [
    'castle_valet',
    'factory_head',
    'arcade_star',
    'hall_matron',
    'tower_tycoon',
]

# Trainer class specific assets
for i, subdir in enumerate(TRAINER_DIRS):
    ## mugshot ##

    # palette
    file_name = f'mugshot_{subdir}.NCLR'
    src = source_dir / subdir / 'mugshot.pal'
    dst = private_dir / file_name
    # mugshots are optional
    if src.exists():
        subprocess.run([
            args.nitrogfx,
            src,
            dst,
            '-bitdepth', '4',
        ])
        
        # cell
        file_name = f'mugshot_{subdir}.NCER'
        src = source_dir / subdir / 'mugshot_cell.json'
        cell_file = private_dir / file_name
        subprocess.run([
            args.nitrogfx,
            src,
            cell_file,
        ])
        
        # char
        file_name = f'mugshot_{subdir}.NCGR'
        src = source_dir / subdir / 'mugshot.png'
        dst = private_dir / file_name
        # frontier brains use mappingtype 128
        if subdir in frontier_brains:
            subprocess.run([
                args.nitrogfx,
                src,
                dst,
                '-version101',
                '-clobbersize',
                '-mappingtype', '128',
                '-cell', cell_file,
            ])
        else:
            subprocess.run([
                args.nitrogfx,
                src,
                dst,
                '-version101',
                '-clobbersize',
                '-cell', cell_file,
            ])
        
        # anim
        file_name = f'mugshot_{subdir}.NANR'
        src = source_dir / subdir / 'mugshot_anim.json'
        dst = private_dir / file_name
        subprocess.run([
            args.nitrogfx,
            src,
            dst,
        ])
        
    ## banner ##

    # palette
    file_name = f'banner_{subdir}.NCLR'
    src = source_dir / subdir / 'banner.pal'
    dst = private_dir / file_name
    # banners are optional
    if src.exists():
        subprocess.run([
            args.nitrogfx,
            src,
            dst,
            '-bitdepth', '4',
        ])
    
        # char
        file_name = f'banner_{subdir}.NCGR'
        src = source_dir / subdir / 'banner.png'
        dst = private_dir / file_name
        # league shares banner assets
        if src.exists():
            subprocess.run([
                args.nitrogfx,
                src,
                dst,
                '-version101',
                '-sopc',
            ])
            
            # tile map
            file_name = f'banner_{subdir}.NSCR'
            src = source_dir / subdir / 'banner.NSCR'
            dst = private_dir / file_name
            shutil.copy2(src, dst)

# Shared assets
for file_name in sorted(os.listdir(source_dir / '.shared'), reverse=True):
    src = source_dir / '.shared' / file_name
    if 'anim' in file_name:
        base_name = file_name[:-10]
        dst = private_dir / f'{base_name}.NANR'
        subprocess.run([
            args.nitrogfx,
            src,
            dst,
        ])
    elif 'cell' in file_name:
        base_name = file_name[:-10]
        dst = private_dir / f'{base_name}.NCER'
        subprocess.run([
            args.nitrogfx,
            src,
            dst,
        ])
        key_file = dst
    elif 'pal' in file_name:
        base_name = file_name[:-4]
        dst = private_dir / f'{base_name}.NCLR'
        subprocess.run([
            args.nitrogfx,
            src,
            dst,
        ])
    elif 'png' in file_name:
        base_name = file_name[:-4]
        dst = private_dir / f'{base_name}.NCGR'
        if 'frontier_vs' in file_name:
            subprocess.run([
                args.nitrogfx,
                src,
                dst,
                '-version101',
                '-clobbersize',
                '-mappingtype', '128',
                '-cell', key_file,
            ])
        elif 'dummy_banner' in file_name:
            subprocess.run([
                args.nitrogfx,
                src,
                dst,
                '-version101',
                '-sopc',
                '-bitdepth', '8',
            ])
        else:
            subprocess.run([
                args.nitrogfx,
                src,
                dst,
                '-version101',
                '-clobbersize',
                '-cell', key_file,
            ])
    else:
        dst = private_dir / file_name
        shutil.copy2(src, dst)

subprocess.run([args.narc, 'create', '--naix', '--order', source_dir / 'field_encounteffect.order', '--output', output_dir / 'field_encounteffect.narc', private_dir])
