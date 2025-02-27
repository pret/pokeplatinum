#!/usr/bin/env python3
import json
import pathlib
import sys

from convert import from_item, from_gender, from_species, u32

def parse_npc_trade(data) -> bytes:
    return b"".join([
        u32(from_species(data["species"])),
        u32(data["hpIV"]),
        u32(data["atkIV"]),
        u32(data["defIV"]),
        u32(data["speedIV"]),
        u32(data["spAtkIV"]),
        u32(data["spDefIV"]),
        u32(data["unused1"]),
        u32(data["otID"]),
        u32(data["cool"]),
        u32(data["beauty"]),
        u32(data["cute"]),
        u32(data["smart"]),
        u32(data["tough"]),
        u32(data["personality"]),
        u32(from_item(data["heldItem"])),
        u32(from_gender(data["otGender"])),
        u32(data["unused2"]),
        u32(data["language"]),
        u32(from_species(data["requestedSpecies"])),
    ])

input_path = pathlib.Path(sys.argv[1])
output_path = pathlib.Path(sys.argv[2])

data = {}
with open(input_path, "r", encoding="utf-8") as input_file:
    data = json.load(input_file)

with open(output_path, "wb") as output_file:
    output_file.write(parse_npc_trade(data))
