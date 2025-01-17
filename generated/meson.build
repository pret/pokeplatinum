enum_generators = {
    'abilities': ['--tag-name', 'Ability'],
    'egg_groups': ['--tag-name', 'EggGroup'],
    'evolution_methods': ['--tag-name', 'EvolutionMethod'],
    'exp_rates': ['--tag-name', 'ExpRate'],
    'gender_ratios': ['--tag-name', 'GenderRatio'],
    'item_hold_effects': ['--tag-name', 'ItemHoldEffect'],
    'items': ['--tag-name', 'Item'],
    'moves': ['--tag-name', 'Move'],
    'pokemon_colors': ['--tag-name', 'PokemonColor'],
    'pokemon_types': ['--tag-name', 'PokemonType'],
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
            '--guard', 'POKEPLATINUM_GENERATED',
            '--output', '@OUTPUT@',
            '--lang', 'py',
            '@INPUT@',
        ]
    )
endforeach
