#!/usr/bin/env python3
import argparse
import json
import pathlib
from consts.moves import Move
from consts.species import PokemonSpecies
from consts.pokemon import PokemonFootprintSize


argparser = argparse.ArgumentParser(
    prog='make_species_tables.py',
    description='Creates generated .h files for species-specific data'
)
argparser.add_argument('-t', '--tutorable-moves',
                       required=True,
                       help='Path to the tutorable moves schema')
argparser.add_argument('-s', '--source-dir',
                       required=True,
                       help='Path to the source directory (res/pokemon)')
argparser.add_argument('-o', '--output-dir',
                       required=True,
                       help='Path to the output directory (where the header files will be made)')
args = argparser.parse_args()

source_dir = pathlib.Path(args.source_dir)
output_dir = pathlib.Path(args.output_dir)

tutors_schema = {}
with open(args.tutorable_moves, 'r', encoding='utf-8') as f:
    tutors_schema = json.load(f)

moveset = [Move[m] for m in tutors_schema["moves"].keys()]

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

species_movesets = {}
species_footprints = {
    0: { "has_footprint": False, "footprint_size": "FOOTPRINT_SMALL" }
}

for file_path in source_dir.glob("**/data.json"):
    with open(file_path, 'r') as data_file:
        species_data = json.load(data_file)

    species_name = file_path.parent.stem.upper()

    if species_name in ["000", "EGG", "BAD_EGG"]:
        continue

    isForm = False

    if file_path.parent.parent.stem == "forms":
        
        form_name = species_name
        species_name = file_path.parent.parent.parent.stem.upper()

        species_id = FORM_INDICES[species_name][form_name]

        isForm = True
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

    species_movesets[species_id] = byte_array

    if not isForm:
        species_footprints[species_id] = species_data["footprint"]


generated_disclaimer = [
    "// This file is GENERATED. Changes will be overwritten here on build\n",
    "// Check make_species_tables.py for reference\n",
]
 
# write moveset table header
output_path = output_dir / "tutor_movesets.h"

with open(output_path, "w") as output_file:
    output_file.writelines(generated_disclaimer)
    output_file.write("#ifndef POKEPLATINUM_GENERATED_TUTOR_MOVESETS_H\n")
    output_file.write("#define POKEPLATINUM_GENERATED_TUTOR_MOVESETS_H\n")
    output_file.write("#include \"tutor_movesets.h\"\n")
    output_file.write("#include \"constants/forms.h\"\n")
    output_file.write("\n")
    output_file.write("const MovesetMask sTeachableMovesets[MOVESET_MAX] = {\n")

    sorted_array = sorted(species_movesets.items())

    for key, value in sorted_array:
        struct = ''.join([f" 0x{i:X},".ljust(6) for i in value])

        output_file.write(f"    {{{struct.rstrip(' ,').ljust(29)} }},\n")

    output_file.write("};\n")
    output_file.write("\n#endif\n")


# write footprint table header
output_path = output_dir / "footprint_data.h"

with open(output_path, "w") as output_file:
    output_file.writelines(generated_disclaimer)
    output_file.write("#ifndef POKEPLATINUM_GENERATED_FOOTPRINT_DATA_H\n")
    output_file.write("#define POKEPLATINUM_GENERATED_FOOTPRINT_DATA_H\n")
    output_file.write("#include \"overlay113/footprint_data.h\"\n")
    output_file.write("#include \"constants/species.h\"\n")
    output_file.write("\n")
    output_file.write("static const FootprintData sSpeciesFootprintData[NATIONAL_DEX_COUNT + 1] = {\n")

    sorted_array = sorted(species_footprints.items())

    for key, value in sorted_array:

        has_footprint = "TRUE" if species_footprints[key]["has_footprint"] else "FALSE"
        footprint_size = PokemonFootprintSize[species_footprints[key]["footprint_size"]].value

        output_file.write(f"    {{ {has_footprint}, {footprint_size} }},\n")

    output_file.write("};\n")
    output_file.write("\n#endif\n")
