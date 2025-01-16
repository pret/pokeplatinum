#!/usr/bin/env python3
import pathlib
import json2bin as j2b

from consts import catching_show
from generated import species

def parse_catching_show_data(cs_data: dict, _size: int, _consts: type = None) -> bytes:
    binary = bytearray([])
    binary.extend(j2b.parse_int(cs_data['catching_points'], 1))
    binary.extend(j2b.parse_int(cs_data['rarity'], 1))
    binary.extend(j2b.parse_int(cs_data['unused'], 2))
    return binary


SCHEMA = j2b.Parser() \
    .register('catching_show_data.pal_park_land_area', 1, j2b.parse_const, catching_show.PalParkLandArea) \
    .register('catching_show_data.pal_park_water_area', 1, j2b.parse_const, catching_show.PalParkWaterArea) \
    .register('catching_show_data', 1, parse_catching_show_data)


def indexer(file_path: pathlib.Path) -> int:
    name = file_path.parent.stem.upper()
    return species.Species[f'SPECIES_{name}'].value


args = j2b.ARGPARSER.parse_args()
j2b.json2bin(args.source_dir,
             SCHEMA,
             args.private_dir,
             args.output_dir,
             indexer,
             glob_pattern='**/data.json',
             narc_name='ppark',
             narc_packer=args.narc,
             output_mode=j2b.OutputMode.SINGLE_FILE,
             skip_stems=['forms', '000', 'bad_egg', 'egg'])
