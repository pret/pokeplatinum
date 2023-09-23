#!/usr/bin/env python3
import pathlib

import json2bin as j2b

from consts import (
    item,
)

from consts.pokemon import (
    mon_type,
    gender_ratio,
    exp_rate,
    egg_group,
    ability,
    color,
    tms,
    species
)


def parse_ev_yields(ev_yields: dict, size: int, _: None) -> bytes:
    packed = ev_yields['hp']
    packed = packed + (ev_yields['attack'] << 2)
    packed = packed + (ev_yields['defense'] << 4)
    packed = packed + (ev_yields['speed'] << 6)
    packed = packed + (ev_yields['special_attack'] << 8)
    packed = packed + (ev_yields['special_defense'] << 10)
    return packed.to_bytes(size, 'little')

def parse_color(sprite: dict, size: int, _: None) -> bytes:
    packed = color.PokemonColor[sprite['color']].value
    packed = packed + ((1 if sprite['flip_sprite'] else 0) << 7)
    return packed.to_bytes(size, 'little')

SCHEMA = j2b.Parser() \
    .register_name(lambda s: s) \
    .register('base_stats.hp', 1, j2b.parse_int) \
    .register('base_stats.attack', 1, j2b.parse_int) \
    .register('base_stats.defense', 1, j2b.parse_int) \
    .register('base_stats.speed', 1, j2b.parse_int) \
    .register('base_stats.special_attack', 1, j2b.parse_int) \
    .register('base_stats.special_defense', 1, j2b.parse_int) \
    .register('types.0', 1, j2b.parse_const, mon_type.PokeType) \
    .register('types.1', 1, j2b.parse_const, mon_type.PokeType) \
    .register('catch_rate', 1, j2b.parse_int) \
    .register('base_exp_reward', 1, j2b.parse_int) \
    .register('ev_yields', 2, parse_ev_yields) \
    .register('held_items.common', 2, j2b.parse_const, item.Item) \
    .register('held_items.rare', 2, j2b.parse_const, item.Item) \
    .register('gender_ratio', 1, j2b.parse_const, gender_ratio.PokemonGenderRatio) \
    .register('hatch_cycles', 1, j2b.parse_int) \
    .register('base_friendship', 1, j2b.parse_int) \
    .register('exp_rate', 1, j2b.parse_const, exp_rate.PokemonExpRate) \
    .register('egg_groups.0', 1, j2b.parse_const, egg_group.PokemonEggGroup) \
    .register('egg_groups.1', 1, j2b.parse_const, egg_group.PokemonEggGroup) \
    .register('abilities.0', 1, j2b.parse_const, ability.PokemonAbility) \
    .register('abilities.1', 1, j2b.parse_const, ability.PokemonAbility) \
    .register('great_marsh_flee_rate', 1, j2b.parse_int) \
    .register('sprite', 1, parse_color) \
    .pad(2) \
    .register('learnset.tms', 16, j2b.pack_flags, tms.PokemonLearnsetTMs)


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
    if name == '494': return 494
    if name == '495': return 495
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
             narc_name='pl_personal',
             narc_packer=args.knarc)
