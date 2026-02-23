#!/usr/bin/env python3
import argparse
import json
import pathlib
import subprocess
import sys

from generated.species import Species

ANSI_BOLD_WHITE = "\033[1;37m"
ANSI_BOLD_RED = "\033[1;31m"
ANSI_RED = "\033[31m"
ANSI_CLEAR = "\033[0m"

argparser = argparse.ArgumentParser(
    prog='make_pokedex_enc_platinum_py',
    description='Packs the archive containing Pokedex encounter data'
)
argparser.add_argument('-n', '--narc',
                       required=True,
                       help='Path to narc compiler tool')
argparser.add_argument('-s', '--source-dir',
                       required=True,
                       help='Path to the source directory (res/field/encounters)')
argparser.add_argument('-p', '--private-dir',
                       required=True,
                       help='Path to the private directory (where binaries will be made)')
argparser.add_argument('-o', '--output-dir',
                       required=True,
                       help='Path to the output directory (where the NARC will be made)')
argparser.add_argument('-c', '--coronet-file',
                       required=True,
                       help='encounter file for MtCoronet B1F')
argparser.add_argument('-t', '--honey-file',
                       required=True,
                       help='encounter file for honey trees')
argparser.add_argument('-g', '--trophy-file',
                       required=True,
                       help='encounter file for the Trophy Garden')
argparser.add_argument('-m', '--marsh-file',
                       required=True,
                       help='encounter file for the Great Marsh Lookout')
argparser.add_argument('src_files',
                       nargs='+',
                       help='List of files to process in-order')
args = argparser.parse_args()

source_dir = pathlib.Path(args.source_dir)
private_dir = pathlib.Path(args.private_dir)
output_dir = pathlib.Path(args.output_dir)

output_name = 'zukan_enc_platinum'

private_dir.mkdir(parents=True, exist_ok=True)

# dungeon position on map
file_0 = [
    [0, 0, 0, 0],
    [9, 24, 0, 0],
    [6, 17, 0, 0],
    [12, 17, 1, 0],
    [18, 24, 0, 0],
    [18, 20, 0, 0],
    [26, 18, 0, 0],
    [5, 22, 0, 0],
    [7, 23, 0, 0],
    [23, 7, 0, 0],
    [24, 21, 0, 0],
    [11, 6, 0, 0],
    [9, 19, 0, 0],
    [22, 21, 0, 0],
    [14, 24, 0, 0],
    [3, 15, 0, 0],
    [7, 16, 0, 0],
    [2, 26, 0, 0],
    [22, 23, 0, 0],
    [10, 7, 0, 0],
    [17, 21, 0, 0],
    [5, 19, 0, 0]
]
file_1 = [
    [255, 255, 255, 255],
    [198, 0, 0, 0],
    [203, 0, 0, 0],
    [207, 0, 0, 0],
    [248, 1, 0, 0],
    [225, 0, 0, 0],
    [244, 0, 0, 0],
    [254, 0, 0, 0],
    [2, 1, 0, 0],
    [7, 1, 0, 0],
    [11, 1, 0, 0],
    [22, 1, 0, 0],
    [28, 1, 0, 0],
    [30, 1, 0, 0],
    [31, 1, 0, 0],
    [33, 1, 0, 0],
    [39, 1, 0, 0],
    [55, 1, 0, 0],
    [59, 1, 0, 0],
    [62, 1, 0, 0],
    [101, 1, 0, 0],
    [0, 1, 0, 0]
]
# field position on map
file_2 = [
    [0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [1, 22, 1, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [9, 16, 1, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [18, 25, 2, 2, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [26, 23, 2, 2, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [26, 17, 1, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [7, 20, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [5, 18, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [23, 7, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [3, 15, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [21, 23, 2, 2, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [9, 6, 2, 2, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [3, 26, 2, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [5, 25, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [6, 23, 2, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [5, 22, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [5, 21, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [6, 18, 1, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [8, 16, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [9, 18, 1, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [9, 22, 2, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [12, 22, 2, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [17, 21, 1, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [17, 17, 1, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [15, 16, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [11, 16, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [13, 16, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [14, 23, 1, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [14, 26, 4, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [20, 25, 3, 2, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [22, 20, 1, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [18, 18, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [9, 12, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [9, 8, 1, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [2, 23, 2, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [5, 27, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [7, 28, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [23, 24, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [27, 15, 2, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [19, 10, 1, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [23, 8, 1, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [24, 10, 1, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [24, 13, 2, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [3, 27, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [14, 16, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [25, 14, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [5, 28, 2, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [26, 19, 1, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [21, 10, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [21, 13, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [6, 16, 2, 2, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
]
file_3 = [
    [255, 255, 255, 255],
    [33, 0, 0, 0],
    [65, 0, 0, 0],
    [120, 0, 0, 0],
    [150, 0, 0, 0],
    [172, 0, 0, 0],
    [200, 0, 0, 0],
    [204, 0, 0, 0],
    [6, 1, 0, 0],
    [32, 1, 0, 0],
    [80, 1, 0, 0],
    [84, 1, 0, 0],
    [86, 1, 0, 0],
    [87, 1, 0, 0],
    [88, 1, 0, 0],
    [89, 1, 0, 0],
    [90, 1, 0, 0],
    [91, 1, 0, 0],
    [93, 1, 0, 0],
    [94, 1, 0, 0],
    [97, 1, 0, 0],
    [98, 1, 0, 0],
    [100, 1, 0, 0],
    [106, 1, 0, 0],
    [107, 1, 0, 0],
    [109, 1, 0, 0],
    [110, 1, 0, 0],
    [111, 1, 0, 0],
    [115, 1, 0, 0],
    [117, 1, 0, 0],
    [124, 1, 0, 0],
    [126, 1, 0, 0],
    [127, 1, 0, 0],
    [129, 1, 0, 0],
    [132, 1, 0, 0],
    [135, 1, 0, 0],
    [136, 1, 0, 0],
    [139, 1, 0, 0],
    [143, 1, 0, 0],
    [144, 1, 0, 0],
    [147, 1, 0, 0],
    [150, 1, 0, 0],
    [151, 1, 0, 0],
    [155, 1, 0, 0],
    [186, 1, 0, 0],
    [201, 1, 0, 0],
    [211, 1, 0, 0],
    [212, 1, 0, 0],
    [213, 1, 0, 0],
    [215, 1, 0, 0],
    [202, 0, 0, 0]
]

honey_tree_dungeons = [
    21
]
honey_tree_fields = [
    6,
    7,
    17,
    18,
    19,
    20,
    21,
    22,
    23,
    24,
    26,
    27,
    28,
    29,
    30,
    31,
    34,
    36,
    37,
    50
]
great_marsh_dungeon = 4

NUM_POKEMON = len(Species) - 1

NUM_DIGITS = 8

bin_data = bytes()
for dungeon in file_0:
    for pos in dungeon:
        bin_data = bin_data + pos.to_bytes(1, 'little')

target_fname = str(private_dir / output_name) + f'_{0:0{NUM_DIGITS}}.bin'
with open(target_fname, 'wb+') as target_file:
    target_file.write(bin_data)

bin_data = bytes()
for dungeon in file_1:
    for pos in dungeon:
        bin_data = bin_data + pos.to_bytes(1, 'little')

target_fname = str(private_dir / output_name) + f'_{1:0{NUM_DIGITS}}.bin'
with open(target_fname, 'wb+') as target_file:
    target_file.write(bin_data)

bin_data = bytes()
for field in file_2:
    for pos in field:
        bin_data = bin_data + pos.to_bytes(1, 'little')

target_fname = str(private_dir / output_name) + f'_{2:0{NUM_DIGITS}}.bin'
with open(target_fname, 'wb+') as target_file:
    target_file.write(bin_data)

bin_data = bytes()
for field in file_3:
    for pos in field:
        bin_data = bin_data + pos.to_bytes(1, 'little')

target_fname = str(private_dir / output_name) + f'_{3:0{NUM_DIGITS}}.bin'
with open(target_fname, 'wb+') as target_file:
    target_file.write(bin_data)

dungeon_morning = [set() for species in range(NUM_POKEMON)]
dungeon_day = [set() for species in range(NUM_POKEMON)]
dungeon_night = [set() for species in range(NUM_POKEMON)]
dungeon_special = [set() for species in range(NUM_POKEMON)]
dungeon_special_natdex = [set() for species in range(NUM_POKEMON)]
field_morning = [set() for species in range(NUM_POKEMON)]
field_day = [set() for species in range(NUM_POKEMON)]
field_night = [set() for species in range(NUM_POKEMON)]
field_special = [set() for species in range(NUM_POKEMON)]
field_special_natdex = [set() for species in range(NUM_POKEMON)]

errors = ""
for file in args.src_files:
    try:
        with open(file, encoding='utf-8') as encounter_file:
            enc_data = json.load(encounter_file)
    except json.decoder.JSONDecodeError as e:
        doc_lines = e.doc.splitlines()
        start_line = max(e.lineno - 2, 0)
        end_line = min(e.lineno + 1, len(doc_lines))

        error_lines = [f"{line_num:>4} | {line}" for line_num, line in zip(list(range(start_line + 1, end_line + 1)), doc_lines[start_line : end_line])][ : end_line - start_line]
        error_line_index = e.lineno - start_line - 1
        error_lines[error_line_index] = error_lines[error_line_index][ : 5] + f"{ANSI_RED}{error_lines[error_line_index][5 : ]}{ANSI_CLEAR}"
        error_out = "\n".join(error_lines)

        print(f"{ANSI_BOLD_WHITE}{file}:{e.lineno}:{e.colno}: {ANSI_BOLD_RED}error: {ANSI_BOLD_WHITE}{e.msg}{ANSI_CLEAR}\n{error_out}", file=sys.stderr)
        continue

    if (file == args.honey_file):
        for species in enc_data['common']:
            for map_num in honey_tree_dungeons:
                dungeon_special[Species[species].value].add(map_num)
                dungeon_special_natdex[Species[species].value].add(map_num)
            for map_num in honey_tree_fields:
                field_special[Species[species].value].add(map_num)
                field_special_natdex[Species[species].value].add(map_num)
        for species in enc_data['uncommon']:
            for map_num in honey_tree_dungeons:
                dungeon_special[Species[species].value].add(map_num)
                dungeon_special_natdex[Species[species].value].add(map_num)
            for map_num in honey_tree_fields:
                field_special[Species[species].value].add(map_num)
                field_special_natdex[Species[species].value].add(map_num)
    
    elif (file == args.marsh_file):
        for species in enc_data['before_national_dex']:
            dungeon_special[Species[species].value].add(great_marsh_dungeon)
        for species in enc_data['after_national_dex']:
            dungeon_special_natdex[Species[species].value].add(great_marsh_dungeon)

    else:
        map_data = enc_data['map_category']
        map_type = map_data['map_type']
        map_num = map_data['map_number']

        if (map_type == 'dungeon'):
            for i, slot in enumerate(enc_data['land_encounters']):
                species = slot['species']
                dungeon_morning[Species[species].value].add(map_num)

                if ((i == 2) or (i == 3)):
                    species = enc_data['day'][i - 2]
                    dungeon_day[Species[species].value].add(map_num)

                    species = enc_data['night'][i - 2]
                    dungeon_night[Species[species].value].add(map_num)
                else:
                    dungeon_day[Species[species].value].add(map_num)
                    dungeon_night[Species[species].value].add(map_num)

            for slot in enc_data['surf_encounters']:
                species = slot['species']
                dungeon_morning[Species[species].value].add(map_num)
                dungeon_day[Species[species].value].add(map_num)
                dungeon_night[Species[species].value].add(map_num)

            for slot in enc_data['old_rod_encounters']:
                species = slot['species']
                dungeon_morning[Species[species].value].add(map_num)
                dungeon_day[Species[species].value].add(map_num)
                dungeon_night[Species[species].value].add(map_num)

            for slot in enc_data['good_rod_encounters']:
                species = slot['species']
                dungeon_morning[Species[species].value].add(map_num)
                dungeon_day[Species[species].value].add(map_num)
                dungeon_night[Species[species].value].add(map_num)

            for slot in enc_data['super_rod_encounters']:
                species = slot['species']
                dungeon_morning[Species[species].value].add(map_num)
                dungeon_day[Species[species].value].add(map_num)
                dungeon_night[Species[species].value].add(map_num)

            dungeon_special[0].add(map_num)

            for species in enc_data['radar']:
                dungeon_special_natdex[Species[species].value].add(map_num)

            if (file == args.coronet_file):
                species = enc_data['elusive_rod_encounter']['species']
                dungeon_special[Species[species].value].add(map_num)
                dungeon_special_natdex[Species[species].value].add(map_num)

            if (file == args.trophy_file):
                for species in enc_data['daily_encounters']:
                    dungeon_special_natdex[Species[species].value].add(map_num)

        if (map_type == 'field'):
            for i, slot in enumerate(enc_data['land_encounters']):
                species = slot['species']
                field_morning[Species[species].value].add(map_num)

                if ((i == 2) or (i == 3)):
                    species = enc_data['day'][i - 2]
                    field_day[Species[species].value].add(map_num)

                    species = enc_data['night'][i - 2]
                    field_night[Species[species].value].add(map_num)
                else:
                    field_day[Species[species].value].add(map_num)
                    field_night[Species[species].value].add(map_num)

            for slot in enc_data['surf_encounters']:
                species = slot['species']
                field_morning[Species[species].value].add(map_num)
                field_day[Species[species].value].add(map_num)
                field_night[Species[species].value].add(map_num)

            for slot in enc_data['old_rod_encounters']:
                species = slot['species']
                field_morning[Species[species].value].add(map_num)
                field_day[Species[species].value].add(map_num)
                field_night[Species[species].value].add(map_num)

            for slot in enc_data['good_rod_encounters']:
                species = slot['species']
                field_morning[Species[species].value].add(map_num)
                field_day[Species[species].value].add(map_num)
                field_night[Species[species].value].add(map_num)

            for slot in enc_data['super_rod_encounters']:
                species = slot['species']
                field_morning[Species[species].value].add(map_num)
                field_day[Species[species].value].add(map_num)
                field_night[Species[species].value].add(map_num)

            field_special[0].add(map_num)

            for species in enc_data['radar']:
                field_special_natdex[Species[species].value].add(map_num)

if errors:
    print(errors, file=sys.stderr)
    sys.exit(1)

for species in range(NUM_POKEMON):
    speciesSets = [dungeon_morning[species],
                   dungeon_day[species],
                   dungeon_night[species],
                   dungeon_special[species],
                   dungeon_special_natdex[species],
                   field_morning[species],
                   field_day[species],
                   field_night[species],
                   field_special[species],
                   field_special_natdex[species]]

    for i, mapSet in enumerate(speciesSets):
        bin_data = bytes()
        mapList = list(mapSet)
        mapList.sort()
        mapList.append(0)
        for map in mapList:
            bin_data = bin_data + map.to_bytes(4, 'little')

        fileNum = 4 + species + NUM_POKEMON * i
        target_fname = str(private_dir / output_name) + f'_{fileNum:0{NUM_DIGITS}}.bin'
        with open(target_fname, 'wb+') as target_file:
            target_file.write(bin_data)

subprocess.run([
    args.narc,
    '--create',
    '--file', f'{output_dir / output_name}.narc',
    private_dir,
])
