# This build file defines sets of constants which are used throughout the code
# base, both in the ROM's source code and in internal tooling. We generate these
# constants to ensure that they have a particular set of characteristics, are
# easily validated in data files representing them as strings, and can be easily
# parsed by simple string manipulations.

# This must be declared here instead of in tools/meson.build, as some tools depend
# on metang-generated constants.
metang_exe = find_program('metang', native: true)

enum_generators = {
    'abilities': ['--tag-name', 'Ability'],
    'catching_show_points_category': ['--tag-name', 'CatchingShowPointsCategory'],
    'egg_groups': ['--tag-name', 'EggGroup'],
    'evolution_methods': ['--tag-name', 'EvolutionMethod'],
    'exp_rates': ['--tag-name', 'ExpRate'],
    'gender_ratios': ['--tag-name', 'GenderRatio'],
    'item_hold_effects': ['--tag-name', 'ItemHoldEffect'],
    'items': ['--tag-name', 'Item'],
    'moves': ['--tag-name', 'Move'],
    'pal_park_land_area': ['--tag-name', 'PalParkLandArea'],
    'pal_park_water_area': ['--tag-name', 'PalParkWaterArea'],
    'pokemon_colors': ['--tag-name', 'PokemonColor'],
    'pokemon_types': ['--tag-name', 'PokemonType'],
    'shadow_sizes': ['--tag-name', 'ShadowSize'],
    'species': ['--tag-name', 'Species'],
}

foreach gen_key : enum_generators.keys()
    gen_h = gen_key + '.h'
    gen_py = gen_key + '.py'
    gen_file = files(gen_key + '.txt')
    gen_args = enum_generators.get(gen_key)
    c_consts_generators += custom_target(gen_h,
        output: gen_h,
        input: gen_file,
        command: [
            metang_exe, 'enum',
            gen_args,
            '--guard', 'POKEPLATINUM_GENERATED',
            '--output', '@OUTPUT@',
            '@INPUT@',
        ]
    )

    py_consts_generators += custom_target(gen_py,
        output: gen_py,
        input: gen_file,
        command: [
            metang_exe, 'enum',
            gen_args,
            '--output', '@OUTPUT@',
            '--lang', 'py',
            '@INPUT@',
        ]
    )
endforeach

species_txt = files('species.txt')
