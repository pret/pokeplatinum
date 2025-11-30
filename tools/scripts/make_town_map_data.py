#!/usr/bin/env python3

import argparse
from dataclasses import dataclass
import json
import pathlib
import struct
import sys

from generated.first_arrival_to_zones import FirstArrivalToZone
from generated.hidden_locations import HiddenLocation
from generated.signpost_types import SignpostType
from generated.town_map_description_flag_types import TownMapDescriptionFlagType
from generated.vars_flags import VarFlag

ANSI_BOLD_WHITE = "\033[1;37m"
ANSI_BOLD_RED = "\033[1;31m"
ANSI_RED = "\033[31m"
ANSI_CLEAR = "\033[0m"

TOWN_MAP_BLOCK_FMT = '<HHHHHHHHHHHH'
TOWN_MAP_FLAGS_FMT = '<BBBB'

AREA_DESCRIPTION_X = 0
AREA_DESCRIPTION_Y = 0
LANDMARK_DESCRIPTION_X = 0
LANDMARK_DESCRIPTION_Y = 64

class TownMapBlock:
    # block
    x = 0
    z = 0
    signpost_type = 0
    signpost_narc_member_idx = 0
    area_desc_string_idx = 0xFFFF
    landmark_desc_string_idx = 0xFFFF
    area_desc_x = AREA_DESCRIPTION_X
    area_desc_y = AREA_DESCRIPTION_Y
    landmark_desc_x = LANDMARK_DESCRIPTION_X
    landmark_desc_y = LANDMARK_DESCRIPTION_Y
    hidden_location = 0
    index = 0
    
    #flag
    area_desc_flag_type = 0
    area_desc_flag = 0
    landmark_desc_flag_type = 0
    landmark_desc_flag = 0
    
    def to_block_bytes(self):
        return struct.pack(
            TOWN_MAP_BLOCK_FMT, 
            self.x, 
            self.z, 
            self.signpost_type, 
            self.signpost_narc_member_idx, 
            self.area_desc_string_idx,
            self.landmark_desc_string_idx,
            self.area_desc_x ,
            self.area_desc_y ,
            self.landmark_desc_x ,
            self.landmark_desc_y ,
            self.hidden_location,
            self.index
        )
    
    def to_flags_bytes(self):
        return struct.pack(
            TOWN_MAP_FLAGS_FMT,
            self.area_desc_flag_type,
            self.area_desc_flag,
            self.landmark_desc_flag_type,
            self.landmark_desc_flag
        )
        

def snake_to_camel(string):
    return ''.join(map(str.capitalize, string.split('_')))

argparser = argparse.ArgumentParser(
    prog='make_town_map_blocks.py',
    description='Packs the files containing the town map data (blocks and strings)'
)

argparser.add_argument('-i', '--input',
                        required=True,
                        help='Path to the input town map JSON.')
argparser.add_argument('-n', '--signpost-naix',
                       required=True,
                       help='Path to the NAIX file for the signpost graphics NARC.')
argparser.add_argument('-b', '--blocks',
                       required=True,
                       help='Path to the output town map blocks binary file.')
argparser.add_argument('-f', '--flags',
                       required=True,
                       help='Path to the output town map description flags binary file.')
argparser.add_argument('-t', '--text-bank',
                       required=True,
                       help='Path to the output town map text bank JSON.')

args = argparser.parse_args()

input_path = pathlib.Path(args.input)
signpost_naix_path = pathlib.Path(args.signpost_naix)

block_path = pathlib.Path(args.blocks)
flags_path = pathlib.Path(args.flags)
text_bank_path = pathlib.Path(args.text_bank)

try:
    with open(input_path, 'r') as f:
        town_map_data = json.load(f)
except json.decoder.JSONDecodeError as e:
    doc_lines = e.doc.splitlines()
    start_line = max(e.lineno - 2, 0)
    end_line = min(e.lineno + 1, len(doc_lines))

    error_lines = [f"{line_num:>4} | {line}" for line_num, line in zip(list(range(start_line + 1, end_line + 1)), doc_lines[start_line : end_line])][ : end_line - start_line]
    error_line_index = e.lineno - start_line - 1
    error_lines[error_line_index] = error_lines[error_line_index][ : 5] + f"{ANSI_RED}{error_lines[error_line_index][5 : ]}{ANSI_CLEAR}"
    error_out = "\n".join(error_lines)

    print(f"{ANSI_BOLD_WHITE}{args.pokedex}:{e.lineno}:{e.colno}: {ANSI_BOLD_RED}error: {ANSI_BOLD_WHITE}{e.msg}{ANSI_CLEAR}\n{error_out}", file=sys.stderr)
    sys.exit(1)

signpost_naix = {}
with open(signpost_naix_path, 'r') as f:
    for line in f:
        line = line.strip().split()
        if line and line[0] == '#define' and len(line) == 3:
            signpost_naix[line[1]] = int(line[2])

text_bank = town_map_data["text_bank"]

with open(block_path, 'wb') as out_blocks, open(flags_path, 'wb') as out_flags:
    area_indices = {}
    landmark_indices = {}
    
    num_blocks = len(town_map_data["blocks"])
    out_blocks.write(struct.pack("<I", num_blocks))
    out_flags.write(struct.pack("<I", num_blocks))
    
    for i, block in enumerate(town_map_data["blocks"]):
        b = TownMapBlock()
        b.x, b.z = block["x"], block["z"]
        b.signpost_type = SignpostType[block["signpost_type"]].value
        b.signpost_narc_member_idx = signpost_naix[block["signpost_narc_member_idx"]]
        if block["hidden_location"] is not None:
            b.hidden_location = 1 << HiddenLocation[block["hidden_location"]].value
        
        if (area_key := block["area"]) is not None:
            if (copied := town_map_data["areas"][area_key].get("copy_description")):
                area_key = copied
            if area_key not in area_indices:
                entry_id = "TownMap_Text_AreaDescription_" + snake_to_camel(area_key)
                area_indices[area_key] = len(text_bank["messages"])
                text_bank["messages"].append({ "id": entry_id, **town_map_data["areas"][area_key]["description"]})
                
            area_indices[block["area"]] = area_indices[area_key]
            b.area_desc_string_idx = area_indices[block["area"]]
            
            if (area_condition := town_map_data["areas"][block["area"]]["condition"]) is not None:
                if (area_condition["type"] == TownMapDescriptionFlagType.TOWN_MAP_DESC_FLAG_FIRST_ARRIVAL.name):
                    b.area_desc_flag_type = TownMapDescriptionFlagType.TOWN_MAP_DESC_FLAG_FIRST_ARRIVAL.value
                    b.area_desc_flag = FirstArrivalToZone[area_condition["flag"]].value
                elif (area_condition["type"] == TownMapDescriptionFlagType.TOWN_MAP_DESC_FLAG_GENERAL.name):
                    b.area_desc_flag_type = TownMapDescriptionFlagType.TOWN_MAP_DESC_FLAG_GENERAL.value
                    b.area_desc_flag = VarFlag[area_condition["flag"]].value
        
        if (landmark := block["landmark"]) is not None:
            if landmark not in landmark_indices:
                entry_id = "TownMap_Text_LandmarkDescription_" + snake_to_camel(landmark)
                landmark_indices[landmark] = len(text_bank["messages"])
                text_bank["messages"].append({ "id": entry_id, **town_map_data["landmarks"][landmark]["description"]})
            
            b.landmark_desc_string_idx = landmark_indices[landmark]
            
            if (landmark_condition := town_map_data["landmarks"][landmark]["condition"]) is not None:
                if (landmark_condition["type"] == TownMapDescriptionFlagType.TOWN_MAP_DESC_FLAG_FIRST_ARRIVAL.name):
                    b.landmark_desc_flag_type = TownMapDescriptionFlagType.TOWN_MAP_DESC_FLAG_FIRST_ARRIVAL.value
                    b.landmark_desc_flag = FirstArrivalToZone[landmark_condition["flag"]].value
                elif (landmark_condition["type"] == TownMapDescriptionFlagType.TOWN_MAP_DESC_FLAG_GENERAL.name):
                    b.landmark_desc_flag_type = TownMapDescriptionFlagType.TOWN_MAP_DESC_FLAG_GENERAL.value
                    b.landmark_desc_flag = VarFlag[landmark_condition["flag"]].value
            elif town_map_data["areas"][block["area"]]["condition"] is not None:
                b.landmark_desc_flag_type = b.area_desc_flag_type
                b.landmark_desc_flag = b.area_desc_flag
                
        # Blocks with an area and no landmark usually have their landmark description condition match their area's, but the Battle Frontier doesn't
        elif town_map_data["areas"][block["area"]]["condition"] is not None and block["area"] != "battle_frontier":
            b.landmark_desc_flag_type = b.area_desc_flag_type
            b.landmark_desc_flag = b.area_desc_flag
            
        out_blocks.write(b.to_block_bytes())
        out_flags.write(b.to_flags_bytes())

with open(text_bank_path, 'w') as text_bank_file:
    json.dump(text_bank, text_bank_file)

