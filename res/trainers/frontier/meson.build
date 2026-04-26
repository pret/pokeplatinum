pl_btdpm_order = files('frontier_pokemon.order')

frontier_trainer_consts = fs.read(frontier_trainers_txt).splitlines()
frontier_trainer_stems = []
frontier_trainer_files = []
foreach trainer : frontier_trainer_consts
    # `substring` here strips the `FRONTIER_TRAINER_` prefix
    trainer_stem = trainer.substring(17).to_lower()
    frontier_trainer_stems += trainer_stem
    frontier_trainer_files += files(meson.current_source_dir() / 'data' / (trainer_stem + '.json'))
endforeach

frontier_pokemon_consts = fs.read(pl_btdpm_order).splitlines()
frontier_pokemon_files = []
foreach pokemon : frontier_pokemon_consts
    frontier_pokemon_files += files(meson.current_source_dir() / 'pokemon' / (pokemon + '.json'))
endforeach

frontier_env = environment()
frontier_env.append('TRAINERS', frontier_trainer_stems, separator: ';')
frontier_env.append('POKEMON', frontier_pokemon_consts, separator: ';')

frontier_data = custom_target('datagen_frontier_out',
    output: [
        'pl_btdtr.narc',
        'pl_btdpm.narc',
        'frontier_trainer_names.json',
        'frontier_trainer_messages.json'
    ],
    command: [
        frontierproc_exe,
        '-M', '@DEPFILE@',
        '-o', meson.current_build_dir(),
        meson.current_source_dir(),
    ],
    env: frontier_env,
    depend_files: [
        frontier_trainer_files,
        frontier_pokemon_files,
    ],
    depfile: 'frontier_data.d',
)

nitrofs_files += frontier_data
frontier_data_outputs = frontier_data.to_list()
frontier_text_banks = frontier_data_outputs.slice(2, frontier_data_outputs.length())
