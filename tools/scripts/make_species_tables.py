#!/usr/bin/env python3
import argparse
import json
import pathlib
import sys
from consts.moves import Move
from consts.species import PokemonSpecies


argparser = argparse.ArgumentParser(
    prog='make_species_tables.py',
    description='Creates generated .h files for species-specific data'
)
argparser.add_argument('-s', '--source-dir',
                       required=True,
                       help='Path to the source directory (res/pokemon)')
argparser.add_argument('-o', '--output-dir',
                       required=True,
                       help='Path to the output directory (where the header files will be made)')
args = argparser.parse_args()

source_dir = pathlib.Path(args.source_dir)
output_dir = pathlib.Path(args.output_dir)

moveset = [
    Move.MOVE_DIVE,
    Move.MOVE_MUD_SLAP,
    Move.MOVE_FURY_CUTTER,
    Move.MOVE_ICY_WIND,
    Move.MOVE_ROLLOUT,
    Move.MOVE_THUNDER_PUNCH,
    Move.MOVE_FIRE_PUNCH,
    Move.MOVE_SUPERPOWER,
    Move.MOVE_ICE_PUNCH,
    Move.MOVE_IRON_HEAD,
    Move.MOVE_AQUA_TAIL,
    Move.MOVE_OMINOUS_WIND,
    Move.MOVE_GASTRO_ACID,
    Move.MOVE_SNORE,
    Move.MOVE_SPITE,
    Move.MOVE_AIR_CUTTER,
    Move.MOVE_HELPING_HAND,
    Move.MOVE_ENDEAVOR,
    Move.MOVE_OUTRAGE,
    Move.MOVE_ANCIENT_POWER,
    Move.MOVE_SYNTHESIS,
    Move.MOVE_SIGNAL_BEAM,
    Move.MOVE_ZEN_HEADBUTT,
    Move.MOVE_VACUUM_WAVE,
    Move.MOVE_EARTH_POWER,
    Move.MOVE_GUNK_SHOT,
    Move.MOVE_TWISTER,
    Move.MOVE_SEED_BOMB,
    Move.MOVE_IRON_DEFENSE,
    Move.MOVE_MAGNET_RISE,
    Move.MOVE_LAST_RESORT,
    Move.MOVE_BOUNCE,
    Move.MOVE_TRICK,
    Move.MOVE_HEAT_WAVE,
    Move.MOVE_KNOCK_OFF,
    Move.MOVE_SUCKER_PUNCH,
    Move.MOVE_SWIFT,
    Move.MOVE_UPROAR,
]

NATIONAL_DEX_COUNT = 493

FORM_INDICES = {
    'DEOXYS' : {
        'ATTACK': NATIONAL_DEX_COUNT + 1,
        'DEFENSE': NATIONAL_DEX_COUNT + 2,
        'SPEED': NATIONAL_DEX_COUNT + 3,
    },
    'WORMADAM': {
        'SANDY': NATIONAL_DEX_COUNT + 4,
        'TRASH': NATIONAL_DEX_COUNT + 5,
    },
    'GIRATINA': {
        'ORIGIN': NATIONAL_DEX_COUNT + 6,
    },
    'SHAYMIN': {
        'SKY': NATIONAL_DEX_COUNT + 7,
    },
    'ROTOM': {
        'HEAT': NATIONAL_DEX_COUNT + 8,
        'WASH': NATIONAL_DEX_COUNT + 9,
        'FROST': NATIONAL_DEX_COUNT + 10,
        'FAN': NATIONAL_DEX_COUNT + 11,
        'MOW': NATIONAL_DEX_COUNT + 12,
    },
}

species_sets = {}

for file_path in source_dir.glob("**/data.json"):
    with open(file_path, 'r') as data_file:
        species_data = json.load(data_file)

    species_name = file_path.parent.stem.upper()

    if species_name in ["000", "EGG", "BAD_EGG"]:
        continue

    if file_path.parent.parent.stem == "forms":
        
        form_name = species_name
        species_name = file_path.parent.parent.parent.stem.upper()

        species_id = FORM_INDICES[species_name][form_name]
    else:
        species_id = PokemonSpecies[f"SPECIES_{species_name}"].value


    # this needs to be increased if more than 40 moves are added to this list
    byte_array = [0, 0, 0, 0, 0]

    def set_bit(bit_num):
        byte_index = bit_num // 8
        bit_index = bit_num % 8

        byte = byte_array[byte_index]
        byte_array[byte_index] = byte | (1 << bit_index)

    for tutor_move in species_data["learnset"]["tutor"]:
        set_bit(moveset.index(Move[tutor_move]))

    species_sets[species_id] = byte_array


generated_disclaimer = [
    "// This file is GENERATED. Changes will be overwritten here on build\n",
    "// Check make_species_tables.py for reference\n",
]
 
output_path = output_dir / "tutor_movesets.h"

with open(output_path, "w") as output_file:
    output_file.writelines(generated_disclaimer)
    output_file.write("#ifndef POKEPLATINUM_GENERATED_TUTOR_MOVESETS_H\n")
    output_file.write("#define POKEPLATINUM_GENERATED_TUTOR_MOVESETS_H\n")
    output_file.write("#include \"tutor_movesets.h\"\n")
    output_file.write("#include \"constants/forms.h\"\n")
    output_file.write("\n")
    output_file.write("const MovesetMask sTeachableMovesets[MOVESET_MAX] = {\n")

    sorted_array = sorted(species_sets.items())

    for key, value in sorted_array:
        struct = ''.join([f" 0x{i:X},".ljust(6) for i in value])

        output_file.write(f"    {{{struct.rstrip(' ,').ljust(29)} }},\n")

    output_file.write("};\n")
    output_file.write("\n#endif\n")
