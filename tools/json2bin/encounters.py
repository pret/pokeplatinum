#!/usr/bin/env python3
import pathlib
import json2bin as j2b

from consts import species


SCHEMA = j2b.Parser().register('land_rate', 4, j2b.parse_int)

# Land encounters
for i in range(12):
    SCHEMA = SCHEMA \
    .register(f'land_encounters.{i}.level', 1, j2b.parse_int) \
    .pad(3) \
    .register(f'land_encounters.{i}.species', 4, j2b.parse_const, species.PokemonSpecies)

# Swarms, day-only, night-only
for encounter_type in ['swarms', 'morning', 'night']:
    for i in range(2):
        SCHEMA = SCHEMA.register(f'{encounter_type}.{i}', 4, j2b.parse_const, species.PokemonSpecies)

# Poké Radar
for i in range(4):
        SCHEMA = SCHEMA.register(f'radar.{i}', 4, j2b.parse_const, species.PokemonSpecies)

# ???
SCHEMA = SCHEMA \
    .register('rate_form0', 4, j2b.parse_int)  \
    .register('rate_form1', 4, j2b.parse_int)  \
    .register('rate_form2', 4, j2b.parse_int)  \
    .register('rate_form3', 4, j2b.parse_int)  \
    .register('rate_form4', 4, j2b.parse_int)  \
    .register('unown_table', 4, j2b.parse_int) \
    
# GBA slot
for version in ['ruby', 'sapphire', 'emerald', 'firered', 'leafgreen']:
    for i in range(2):
        SCHEMA = SCHEMA.register(f'{version}.{i}', 4, j2b.parse_const, species.PokemonSpecies)

# Surf & Rods
for method in ['surf', 'old_rod', 'good_rod', 'super_rod']:
    SCHEMA = SCHEMA.register(f'{method}_rate', 4, j2b.parse_int)
    for i in range(5):
        SCHEMA = SCHEMA \
        .register(f'{method}_encounters.{i}.level_max', 1, j2b.parse_int) \
        .register(f'{method}_encounters.{i}.level_min', 1, j2b.parse_int) \
        .pad(2) \
        .register(f'{method}_encounters.{i}.species', 4, j2b.parse_const, species.PokemonSpecies)
    
    if method == 'surf':
         SCHEMA = SCHEMA.pad(44)

def indexer(file_path: pathlib.Path) -> int:
    return int(file_path.stem)

args = j2b.ARGPARSER.parse_args()
j2b.json2bin(args.source_dir,
             SCHEMA,
             args.private_dir,
             args.output_dir,
             index_func=indexer,
             narc_name='pl_enc_data',
             narc_packer=args.knarc)