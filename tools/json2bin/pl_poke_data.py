#!/usr/bin/env python3
import pathlib
import json2bin as j2b

from consts.generated.py import (
    species,
    shadows
)


def parse_frame(frame: dict) -> bytes:
    binary = bytearray([])
    binary.extend(j2b.parse_sint(frame['sprite_frame'], 1))
    binary.extend(j2b.parse_int(frame['frame_delay'], 1))
    binary.extend(j2b.parse_sint(frame['x_shift'], 1))
    binary.extend(j2b.parse_sint(frame['y_shift'], 1))

    return binary


def parse_face(face: dict, _size: int, _consts: type = None) -> bytes:
    binary = bytearray([])
    binary.extend(j2b.parse_int(face['cry_delay'], 1))
    binary.extend(j2b.parse_int(face['animation'], 1))
    binary.extend(j2b.parse_int(face['start_delay'], 1))

    for frame in face['frames']:
        binary.extend(parse_frame(frame))
    
    return binary


SCHEMA = j2b.Parser() \
    .register('front', 43, parse_face) \
    .register('back', 43, parse_face) \
    .register('front.addl_y_offset', 1, j2b.parse_sint) \
    .register('shadow.x_offset', 1, j2b.parse_sint) \
    .register('shadow.size', 1, j2b.parse_const, shadows.PokemonBattleShadowSize)


def indexer(file_path: pathlib.Path) -> int:
    name = file_path.parent.stem.upper()
    if name == '000': return 0
    return species.PokemonSpecies[f'SPECIES_{name}'].value


args = j2b.ARGPARSER.parse_args()
j2b.json2bin(args.source_dir,
             SCHEMA,
             args.private_dir,
             args.output_dir,
             indexer,
             glob_pattern='**/sprite_data.json',
             narc_name='pl_poke_data',
             narc_packer=args.knarc,
             output_mode=j2b.OutputMode.SINGLE_FILE,
             skip_stems=['forms'])
