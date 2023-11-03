#!/usr/bin/env python3
import pathlib, functools

from consts import (
    item,
    moves,
    trainer
)

from consts.pokemon import species

import json2bin as j2b


def derive_data_flags(party: list[dict], *args) -> bytes:
    defined_moves = False
    defined_items = False
    for mon in party:
        defined_moves |= functools.reduce(lambda x, y: x or y,
                                          map(lambda move: move != moves.Move.MOVE_0000.name,
                                              mon.get('moves', []) if mon.get('moves', []) else []),
                                          False)
        defined_items |= bool(mon.get('item', None))

    return (int(defined_moves) | (int(defined_items) << 1)).to_bytes(1, 'little')


def parse_trainer_items(item_list: list[str], *args) -> bytes:
    item_bin = bytearray([])
    for item_str in item_list:
        item_bin.extend(item.Item[item_str].value.to_bytes(2, 'little'))
    
    for _ in range(4 - len(item_list)):
        item_bin.extend(item.Item.ITEM_NONE.value.to_bytes(2, 'little'))
    return item_bin


DATA_SCHEMA = j2b.Parser() \
    .register('party', 1, derive_data_flags) \
    .register('class', 1, j2b.parse_const, trainer.TrainerClass) \
    .pad(1) \
    .register('party', 1,
              lambda party, size, _: j2b.parse_int(len(party), size, _)) \
    .register('items', 8, parse_trainer_items) \
    .register('ai_flags', 4, j2b.pack_flags, trainer.AIFlag) \
    .register('double_battle', 1,
              lambda val, size, _: j2b.parse_int(2 if val else 0, size, _)) \
    .pad(3)


def indexer(file_path: pathlib.Path) -> int:
    return int(file_path.stem)


args = j2b.ARGPARSER.parse_args()
j2b.json2bin(args.source_dir,
             DATA_SCHEMA,
             args.private_dir,
             args.output_dir,
             indexer,
             glob_pattern='*.json',
             narc_name='trdata',
             narc_packer=args.knarc)
