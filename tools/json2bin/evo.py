#!/usr/bin/env python3
from collections.abc import Sequence
import pathlib
import json2bin as j2b

from generated import (
    evolution_methods,
    items,
    moves,
    species,
)


def get_evo_params(method: evolution_methods.EvolutionMethod, evo: Sequence):
    maybe_param = evo[1]
    final_param = 0
    #None of these take an extra parameter
    if method in set([
        evolution_methods.EvolutionMethod.EVO_NONE,
        evolution_methods.EvolutionMethod.EVO_LEVEL_HAPPINESS,
        evolution_methods.EvolutionMethod.EVO_LEVEL_HAPPINESS_DAY,
        evolution_methods.EvolutionMethod.EVO_LEVEL_HAPPINESS_NIGHT,
        evolution_methods.EvolutionMethod.EVO_TRADE,
        evolution_methods.EvolutionMethod.EVO_LEVEL_MAGNETIC_FIELD,
        evolution_methods.EvolutionMethod.EVO_LEVEL_MOSS_ROCK,
        evolution_methods.EvolutionMethod.EVO_LEVEL_ICE_ROCK]):
        final_param = 0
    # These all specify a basic integer param
    elif method in set([
        evolution_methods.EvolutionMethod.EVO_LEVEL,
        evolution_methods.EvolutionMethod.EVO_LEVEL_ATK_GT_DEF,
        evolution_methods.EvolutionMethod.EVO_LEVEL_ATK_EQ_DEF,
        evolution_methods.EvolutionMethod.EVO_LEVEL_ATK_LT_DEF,
        evolution_methods.EvolutionMethod.EVO_LEVEL_PID_LOW,
        evolution_methods.EvolutionMethod.EVO_LEVEL_PID_HIGH,
        evolution_methods.EvolutionMethod.EVO_LEVEL_NINJASK,
        evolution_methods.EvolutionMethod.EVO_LEVEL_SHEDINJA,
        evolution_methods.EvolutionMethod.EVO_LEVEL_MALE,
        evolution_methods.EvolutionMethod.EVO_LEVEL_FEMALE,
        evolution_methods.EvolutionMethod.EVO_LEVEL_BEAUTY]):
        final_param = maybe_param
    # These specify an item
    elif method in set([
        evolution_methods.EvolutionMethod.EVO_TRADE_WITH_HELD_ITEM,
        evolution_methods.EvolutionMethod.EVO_USE_ITEM,
        evolution_methods.EvolutionMethod.EVO_USE_ITEM_MALE,
        evolution_methods.EvolutionMethod.EVO_USE_ITEM_FEMALE,
        evolution_methods.EvolutionMethod.EVO_LEVEL_WITH_HELD_ITEM_DAY,
        evolution_methods.EvolutionMethod.EVO_LEVEL_WITH_HELD_ITEM_NIGHT]):
        final_param = items.Item[maybe_param].value
    elif method == evolution_methods.EvolutionMethod.EVO_LEVEL_KNOW_MOVE:
        final_param = moves.Move[maybe_param].value
    elif method == evolution_methods.EvolutionMethod.EVO_LEVEL_SPECIES_IN_PARTY:
        final_param = species.Species[maybe_param].value

    return final_param


def table_line(evo_method: int, evo_params: int, species: int) -> bytes:
    binary = bytearray([])
    binary.extend(evo_method.to_bytes(2, 'little'))
    binary.extend(evo_params.to_bytes(2, 'little'))
    binary.extend(species.to_bytes(2, 'little'))
    return bytes(binary)
    

def parse_evolutions(table: Sequence, _size: int, _enum: None) -> bytes:
    out = bytearray([])
    for j in range(min(len(table), 7)):
        evo = table[j]
        method = evolution_methods.EvolutionMethod[evo[0]]
        params = get_evo_params(method, evo)
        target = species.Species[evo[-1]]
        out.extend(table_line(method.value, params, target.value))
        
    out.extend((0).to_bytes(44 - len(out), 'little'))

    return out
        

SCHEMA = j2b.Parser() \
    .register('evolutions', 44, parse_evolutions, optional=j2b.OptionalBehavior.PAD)


NATIONAL_DEX_COUNT = 493

FORM_INDICES = {
    'DEOXYS' : {
        'ATTACK': NATIONAL_DEX_COUNT + 3,
        'DEFENSE': NATIONAL_DEX_COUNT + 4,
        'SPEED': NATIONAL_DEX_COUNT + 5,
    },
    'WORMADAM': {
        'SANDY': NATIONAL_DEX_COUNT + 6,
        'TRASH': NATIONAL_DEX_COUNT + 7,
    },
    'GIRATINA': {
        'ORIGIN': NATIONAL_DEX_COUNT + 8,
    },
    'SHAYMIN': {
        'SKY': NATIONAL_DEX_COUNT + 9,
    },
    'ROTOM': {
        'HEAT': NATIONAL_DEX_COUNT + 10,
        'WASH': NATIONAL_DEX_COUNT + 11,
        'FROST': NATIONAL_DEX_COUNT + 12,
        'FAN': NATIONAL_DEX_COUNT + 13,
        'MOW': NATIONAL_DEX_COUNT + 14,
    },
}

def indexer(file_path: pathlib.Path) -> int:
    name = file_path.parent.stem.upper()
    if name == '000': return 0
    if name == 'egg': return NATIONAL_DEX_COUNT + 1
    if name == 'bad_egg': return NATIONAL_DEX_COUNT + 2
    if file_path.parent.parent.stem == 'forms':
        species_idx = file_path.parent.parent.parent.stem.upper()
        form = file_path.parent.stem.upper()
        return FORM_INDICES[species_idx][form]
    return species.Species[f'SPECIES_{name}'].value


args = j2b.ARGPARSER.parse_args()
j2b.json2bin(args.source_dir,
             SCHEMA,
             args.private_dir,
             args.output_dir,
             indexer,
             glob_pattern='**/data.json',
             narc_name='evo',
             narc_packer=args.narc)
