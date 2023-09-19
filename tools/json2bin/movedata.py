#!/usr/bin/env python3
import pathlib

from consts import (
    movedata,
    moves,
    poketype
)

import json2bin as j2b


SCHEMA = j2b.Parser() \
    .register_name(lambda s: s) \
    .register('effect.type', 2, j2b.parse_const, movedata.MoveEffect) \
    .register('class', 1, j2b.parse_const, movedata.MoveClass) \
    .register('power', 1, j2b.parse_int) \
    .register('type', 1, j2b.parse_const, poketype.PokeType) \
    .register('accuracy', 1, j2b.parse_int) \
    .register('pp', 1, j2b.parse_int) \
    .register('effect.chance', 1, j2b.parse_int) \
    .register('range', 2, j2b.parse_const, movedata.MoveRange) \
    .register('priority', 1, j2b.parse_sint) \
    .register('flags', 1, j2b.pack_flags, movedata.MoveFlags) \
    .register('contest.effect', 1, j2b.parse_int) \
    .register('contest.type', 1, j2b.parse_const, poketype.ContestType) \
    .pad(2)


def indexer(file_path: pathlib.Path) -> int:
    return moves.Move[f'MOVE_{file_path.parent.stem.upper()}'].value


args = j2b.ARGPARSER.parse_args()
j2b.json2bin(args.source_dir,
             SCHEMA,
             args.private_dir,
             args.output_dir,
             indexer,
             glob_pattern='**/data.json',
             narc_name='pl_waza_tbl',
             narc_packer=args.knarc)