#!/usr/bin/env python3
import collections
import functools

from generated import items, moves, species
from consts import trainer, trainer_ai

def pad(len: int) -> bytes:
    return (0).to_bytes(len, 'little')

def u8(i: int) -> bytes:
    return i.to_bytes(1, 'little')

def u16(i: int) -> bytes:
    return i.to_bytes(2, 'little')

def u32(i: int) -> bytes:
    return i.to_bytes(4, 'little')

def from_item(s: str) -> int:
    return items.Item[s].value

def from_move(s: str) -> int:
    return moves.Move[s].value

def from_species(s: str) -> int:
    return species.Species[s].value

def from_trainer_class(s: str) -> int:
    return trainer.TrainerClass[s].value

def from_trainer_ai_flag(s: str) -> int:
    return trainer_ai.AIFlag[s].value

TrainerDataFlags = collections.namedtuple('TrainerDataFlags', ['has_moves', 'has_items'])

def derive_data_flags(party: list[dict]) -> TrainerDataFlags:
    has_moves = False
    has_items = False
    for mon in party:
        has_moves |= functools.reduce(
            lambda x, y: x or y,
            map(
                lambda move: move != moves.Move.MOVE_NONE.name,
                mon.get('moves', []) or [],
            ),
            False,
        )
        has_items |= bool(mon.get('item', None))

    return TrainerDataFlags(has_moves, has_items)
