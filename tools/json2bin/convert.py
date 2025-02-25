#!/usr/bin/env python3
import collections
import functools

from generated import (
    ai_flags,
    items,
    genders,
    moves,
    movement_types,
    object_events,
    species,
    trainer_classes,
    trainer_types
)

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
    return trainer_classes.TrainerClass[s].value

def from_trainer_ai_flag(s: str) -> int:
    return ai_flags.AIFlag[s].value

def from_gender(s: str) -> int:
    return genders.Gender[s].value

def from_object_event_gfx(s: str) -> int:
    return object_events.ObjectEventGfx[s].value

def from_movement_type(s: str) -> int:
    return movement_types.MovementType[s].value

def from_trainer_type(s: str) -> int:
    return trainer_types.TrainerType[s].value

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
