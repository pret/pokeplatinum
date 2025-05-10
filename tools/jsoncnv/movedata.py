#!/usr/bin/env python3
import pathlib

from generated.battle_move_effects import BattleMoveEffect
from generated.move_classes import MoveClass
from generated.move_flags import MoveFlag
from generated.move_ranges import MoveRange
from generated.moves import Move
from generated.pokemon_contest_types import PokemonContestType
from generated.pokemon_types import PokemonType

import jsoncnv as j2b


SCHEMA = j2b.Parser() \
    .register_name(lambda s: s) \
    .register('effect.type', 2, j2b.parse_const, BattleMoveEffect) \
    .register('class', 1, j2b.parse_const, MoveClass) \
    .register('power', 1, j2b.parse_int) \
    .register('type', 1, j2b.parse_const, PokemonType) \
    .register('accuracy', 1, j2b.parse_int) \
    .register('pp', 1, j2b.parse_int) \
    .register('effect.chance', 1, j2b.parse_int) \
    .register('range', 2, j2b.parse_const, MoveRange) \
    .register('priority', 1, j2b.parse_sint) \
    .register('flags', 1, j2b.pack_flags, MoveFlag) \
    .register('contest.effect', 1, j2b.parse_int) \
    .register('contest.type', 1, j2b.parse_const, PokemonContestType) \
    .pad(2)

def indexer(file_path: pathlib.Path) -> int:
    stem = file_path.parent.stem.upper()
    if stem.isnumeric():
        return int(stem)

    return Move[f'MOVE_{file_path.parent.stem.upper()}'].value


args = j2b.ARGPARSER.parse_args()
j2b.jsoncnv(args.source_dir,
             SCHEMA,
             args.private_dir,
             args.output_dir,
             indexer,
             glob_pattern='**/data.json',
             narc_name='pl_waza_tbl',
             narc_packer=args.narc)
