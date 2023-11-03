#!/usr/bin/env python3
import pathlib


import json2bin as j2b


from consts import (
    item,
    moves
)


from consts.pokemon import (
    evo_methods,
    species
)


def get_evo_params(method: evo_methods.EvoMethod, evo: list):
    maybe_param = evo[1]
    final_param = 0
    #None of these take an extra parameter
    if method in set([
        evo_methods.EvoMethod.EVO_NONE,
        evo_methods.EvoMethod.EVO_HAPPINESS,
        evo_methods.EvoMethod.EVO_HAPPINESS_DAY,
        evo_methods.EvoMethod.EVO_HAPPINESS_NIGHT,
        evo_methods.EvoMethod.EVO_TRADE,
        evo_methods.EvoMethod.EVO_ELECTRIC_FIELD,
        evo_methods.EvoMethod.EVO_MOSSY_STONE,
        evo_methods.EvoMethod.EVO_ICY_STONE]):
        final_param = 0
    # These all specify a basic integer param
    elif method in set([
        evo_methods.EvoMethod.EVO_LEVEL_UP,
        evo_methods.EvoMethod.EVO_LEVEL_ATK_GT_DEF,
        evo_methods.EvoMethod.EVO_LEVEL_ATK_EQ_DEF,
        evo_methods.EvoMethod.EVO_LEVEL_ATK_LT_DEF,
        evo_methods.EvoMethod.EVO_LEVEL_PID_LOW,
        evo_methods.EvoMethod.EVO_LEVEL_PID_HIGH,
        evo_methods.EvoMethod.EVO_LEVEL_NINJASK,
        evo_methods.EvoMethod.EVO_LEVEL_SHEDINJA,
        evo_methods.EvoMethod.EVO_LEVEL_MALE,
        evo_methods.EvoMethod.EVO_LEVEL_FEMALE,
        evo_methods.EvoMethod.EVO_BEAUTY]):
        final_param = maybe_param
    # These specify an item
    elif method in set([
        evo_methods.EvoMethod.EVO_TRADE_WITH_ITEM,
        evo_methods.EvoMethod.EVO_USE_ITEM,
        evo_methods.EvoMethod.EVO_USE_ITEM_MALE,
        evo_methods.EvoMethod.EVO_USE_ITEM_FEMALE,
        evo_methods.EvoMethod.EVO_USE_ITEM_DAY,
        evo_methods.EvoMethod.EVO_USE_ITEM_NIGHT]):
        final_param = item.Item[maybe_param].value
    elif method == evo_methods.EvoMethod.EVO_KNOW_MOVE:
        final_param = moves.Move['MOVE_' + maybe_param].value
    elif method == evo_methods.EvoMethod.EVO_MON_IN_PARTY:
        final_param = species.PokemonSpecies[maybe_param].value

    return final_param


def table_line(evo_method: int, evo_params: int, species: int) -> bytes:
    binary = bytearray([])
    binary.extend((evo_method & 0x7F).to_bytes(2, 'little'))
    binary.extend((evo_params & 0x7F).to_bytes(2, 'little'))
    binary.extend((species & 0x7F).to_bytes(2, 'little'))
    return bytes(binary)
    

def parse_evolutions(table: list, _size: int, _enum: None):
    out = []
    for j in range(min(len(table), 7)):
        evo = table[j]
        method = evo_methods.EvoMethod['EVO_' + evo[0]]
        params = get_evo_params(method, evo)
        target = species.PokemonSpecies[evo[-1]]
        out.extend(table_line(method.value, params, target.value))
        
    if len(out) < 42:
        out.extend((0).to_bytes(42 - len(out), 'little'))
    out.extend((0).to_bytes(2, 'little'))

    return out
        

SCHEMA = j2b.Parser() \
         .register('evolutions', 44, parse_evolutions, optional=True)


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
    if name == 'egg': return 494
    if name == 'bad_egg': return 495
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
             narc_name='evo',
             narc_packer=args.knarc)
