#!/usr/bin/env python3
import argparse
import json
import pathlib
import subprocess


argparser = argparse.ArgumentParser(
    prog='pl_poke_icon.narc packer',
    description='Packs the archive containing Pokemon icons'
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
argparser.add_argument('subdirs',
                       nargs='+',
                       help='List of subdirectories to process in-order')
args = argparser.parse_args()

source_dir = pathlib.Path(args.source_dir)
private_dir = pathlib.Path(args.private_dir)
output_dir = pathlib.Path(args.output_dir)

private_dir.mkdir(parents=True, exist_ok=True)

for i, subdir in enumerate(args.subdirs):
    # Do not attempt to process eggs
    if subdir in ['egg', 'bad_egg']:
        continue

    with open(source_dir / subdir / 'sprite_data.json', 'r') as data_file:
        spdata = json.load(data_file)
    with open(source_dir / subdir / 'data.json', 'r') as data_file:
        pkdata = json.load(data_file)
    
    gender_ratio = pkdata['gender_ratio']
    female_only = (gender_ratio == 'FEMALE_ONLY')
    male_or_genderless = (gender_ratio in ['MALE_ONLY', 'NO_GENDER'])

    j = 0
    for face in ['back', 'front']:
        for gender in ['female', 'male']:
            target_fname = private_dir / f'{i:04}-{j:02}.bin'
            if female_only and gender == 'male':
                subprocess.run(['touch', target_fname])
            elif male_or_genderless and gender == 'female' and subdir != '000': # DPPic is handled like a normal mon
                subprocess.run(['touch', target_fname])
            else:
                with open(target_fname, 'wb+') as target_file:
                    target_file.write(spdata[face]['y_offset'][gender].to_bytes(1, 'little'))

            j += 1

subprocess.run([args.knarc, '-d', private_dir, '-p', output_dir / 'height.narc'])
