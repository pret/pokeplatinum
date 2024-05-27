#!/usr/bin/env python3
import pathlib

from consts import (
    battle,
    moves,
    pokemon
)

import json2bin as j2b


SCHEMA = j2b.Parser() \
    .register_name(lambda s: s) \
    .register('effect.type', 2, j2b.parse_const, battle.BattleEffect) \
    .register('class', 1, j2b.parse_const, moves.MoveClass) \
    .register('power', 1, j2b.parse_int) \
    .register('type', 1, j2b.parse_const, pokemon.PokemonType) \
    .register('accuracy', 1, j2b.parse_int) \
    .register('pp', 1, j2b.parse_int) \
    .register('effect.chance', 1, j2b.parse_int) \
    .register('range', 2, j2b.parse_const, battle.MoveRange) \
    .register('priority', 1, j2b.parse_sint) \
    .register('flags', 1, j2b.pack_flags, battle.MoveFlags) \
    .register('contest.effect', 1, j2b.parse_int) \
    .register('contest.type', 1, j2b.parse_const, pokemon.PokemonContestType) \
    .pad(2)

def indexer(file_path: pathlib.Path) -> int:
    stem = file_path.parent.stem.upper()
    if stem.isnumeric():
        return int(stem)

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