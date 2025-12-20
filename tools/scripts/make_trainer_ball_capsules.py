#!/usr/bin/env python3

import argparse
import json
import pathlib
import struct

from generated.seals import Seal

argparser = argparse.ArgumentParser(
    prog='make_trainer_ball_capsules.py',
    description='Packs the trainer ball capsules definitions into a binary file'
)

argparser.add_argument('input', help='Path to the trainer ball capsules JSON.')
argparser.add_argument('output', help='Path to the output binary.')
args = argparser.parse_args()

input_path = pathlib.Path(args.input)
output_path = pathlib.Path(args.output)

capsule_seal = struct.Struct("3B")

DUMMY_SEAL = capsule_seal.pack(0, 255, 255)

with open(input_path, 'r') as capsules_json:
    capsules = json.load(capsules_json)

with open(output_path, 'wb') as capsules_bin:
    seals_per_capsule = capsules["seals_per_capsule"]
    for capsule in capsules["capsules"]:
        for seal in capsule:
            capsules_bin.write(capsule_seal.pack(Seal[seal["id"]].value, seal["x"], seal["y"]))
        for _ in range(len(capsule), seals_per_capsule):
            capsules_bin.write(DUMMY_SEAL)
