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


def parse_poke_moves(move_list: list[str], *args) -> bytes:
    move_bin = bytearray([])
    for move_str in move_list:
        move_bin.extend(moves.Move[move_str].value.to_bytes(2, 'little'))

    for _ in range(4 - len(move_list)):
        move_bin.extend(moves.Move.MOVE_0000.value.to_bytes(2, 'little'))
    return move_bin


def parse_party_mon(mon: dict, has_moves: bool, has_items: bool) -> bytes:
    binary_mon = bytearray([])
    binary_mon.extend(j2b.parse_int(mon['power'], 2))
    binary_mon.extend(j2b.parse_int(mon['level'], 2))

    species_and_form = (species.PokemonSpecies[mon['species']].value & 0x3FF) | (mon['form'] << 10)
    binary_mon.extend(j2b.parse_int(species_and_form, 2))

    if has_items:
        binary_mon.extend(j2b.parse_const(mon['item'], 2, item.Item))
    if has_moves:
        binary_mon.extend(parse_poke_moves(mon['moves']))
    
    binary_mon.extend(j2b.parse_int(mon['ball_seal'], 2))
    return binary_mon


# Parties are a complicated and variable structure, so just process them wholly
# independently
def parse_party_mons(party_list: list[dict], *args) -> bytes:
    if len(party_list) == 0: # special case, pads to 2 words instead of 1 word
        return (0).to_bytes(8, 'little')

    data_flags = int.from_bytes(derive_data_flags(party_list, args), 'little')
    has_moves = data_flags & 1
    has_items = data_flags & 2

    binary_party = bytearray(b''.join([parse_party_mon(mon, has_moves, has_items) for mon in party_list]))

    # word-align
    if len(binary_party) % 4 != 0:
        target_len = len(binary_party) + (4 - (len(binary_party) % 4))
        binary_party.extend([0] * (target_len - len(binary_party)))

    return binary_party


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


POKE_SCHEMA = j2b.Parser().register('party', 18, parse_party_mons)


def indexer(file_path: pathlib.Path) -> int:
    return int(file_path.stem)


j2b.ARGPARSER.add_argument('--mode', required=True,
                           choices=['data', 'poke'],
                           help='Determines which data archive to compile')

args = j2b.ARGPARSER.parse_args()
if args.mode == 'data':
    j2b.json2bin(args.source_dir,
                DATA_SCHEMA,
                args.private_dir,
                args.output_dir,
                indexer,
                glob_pattern='*.json',
                narc_name='trdata',
                narc_packer=args.knarc)
elif args.mode == 'poke':
    j2b.json2bin(args.source_dir,
                POKE_SCHEMA,
                args.private_dir,
                args.output_dir,
                indexer,
                glob_pattern='*.json',
                narc_name='trpoke',
                narc_packer=args.knarc)