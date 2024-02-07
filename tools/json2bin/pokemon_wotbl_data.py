#!/usr/bin/env python3
import pathlib
import json2bin as j2b

from consts.generated.py import (
    moves,
    species
)


def table_line(move_id: int, level: int) -> bytes:
    return ((move_id & 0x01FF) | ((level & 0x7F) << 9)).to_bytes(2, 'little', signed=False)


def parse_level_up_moves(table: dict, _size: int, _enum: None):
    out = []
    for key, value in table.items():
        level = int(key)
        level_moves = value
        if isinstance(level_moves, str):
            out.extend(table_line(moves.Move[level_moves].value, level))
        elif isinstance(level_moves, list):
            for move in level_moves:
                out.extend(table_line(moves.Move[move].value, level))
        else:
            raise TypeError(f"Invalid table value {level}; expected str or list")
    return out


SCHEMA = j2b.Parser() \
    .register_name(lambda s: s) \
    .register('learnset.level_up', 0, parse_level_up_moves, optional=j2b.OptionalBehavior.SKIP) \
    .pad(2, 0xff) \
    .align(4)


FORM_INDICES = {
    'DEOXYS' : {
        'ATTACK': 496,
        'DEFENSE': 497,
        'SPEED': 498,
    },
    'WORMADAM': {
        'SANDY': 499,
        'TRASH': 500,
    },
    'GIRATINA': {
        'ORIGIN': 501,
    },
    'SHAYMIN': {
        'SKY': 502,
    },
    'ROTOM': {
        'HEAT': 503,
        'WASH': 504,
        'FROST': 505,
        'FAN': 506,
        'MOW': 507,
    },
}


def indexer(file_path: pathlib.Path) -> int:
    name = file_path.parent.stem.upper()
    if name == '000': return 0
    if name == 'egg': return 494
    if name == 'bad_egg': return 495
    if file_path.parent.parent.stem == 'forms':
        species_idx = file_path.parent.parent.parent.stem.upper()
        form = file_path.parent.stem.upper()
        return FORM_INDICES[species_idx][form]
    return species.PokemonSpecies[f'SPECIES_{name}'].value


args = j2b.ARGPARSER.parse_args()
j2b.json2bin(args.source_dir,
             SCHEMA,
             args.private_dir,
             args.output_dir,
             indexer,
             glob_pattern='**/data.json',
             narc_name='wotbl',
             narc_packer=args.knarc)
