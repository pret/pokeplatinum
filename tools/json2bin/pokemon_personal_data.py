#!/usr/bin/env python3
import pathlib

import json2bin as j2b

from consts.generated.py import (
    abilities,
    items,
    pokemon,
    species,
    tm_learnset
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
    packed = pokemon.PokemonColor[sprite['color']].value
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
    .register('types.0', 1, j2b.parse_const, pokemon.PokemonType) \
    .register('types.1', 1, j2b.parse_const, pokemon.PokemonType) \
    .register('catch_rate', 1, j2b.parse_int) \
    .register('base_exp_reward', 1, j2b.parse_int) \
    .register('ev_yields', 2, parse_ev_yields) \
    .register('held_items.common', 2, j2b.parse_const, items.Item) \
    .register('held_items.rare', 2, j2b.parse_const, items.Item) \
    .register('gender_ratio', 1, j2b.parse_const, pokemon.PokemonGenderRatio) \
    .register('hatch_cycles', 1, j2b.parse_int) \
    .register('base_friendship', 1, j2b.parse_int) \
    .register('exp_rate', 1, j2b.parse_const, pokemon.PokemonExpRate) \
    .register('egg_groups.0', 1, j2b.parse_const, pokemon.PokemonEggGroup) \
    .register('egg_groups.1', 1, j2b.parse_const, pokemon.PokemonEggGroup) \
    .register('abilities.0', 1, j2b.parse_const, abilities.Ability) \
    .register('abilities.1', 1, j2b.parse_const, abilities.Ability) \
    .register('great_marsh_flee_rate', 1, j2b.parse_int) \
    .register('sprite', 1, parse_color) \
    .pad(2) \
    .register('learnset.tms', 16, j2b.pack_flags, tm_learnset.TMLearnsetFlags)


NATIONAL_DEX_COUNT = 493

# I'm not sure if this is correct? The form indices in-game are offset at NATIONAL_DEX_COUNT, not SPECIES_BAD_EGG
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
