pl_btdpm_order = files('frontier_pokemon.order')

frontier_trainer_consts = fs.read(frontier_trainers_txt).splitlines()
frontier_trainer_stems = []
foreach trainer : frontier_trainer_consts
    # `substring` here strips the `FRONTIER_TRAINER_` prefix
    trainer_stem = trainer.substring(17).to_lower()
    frontier_trainer_stems += trainer_stem
endforeach

frontier_pokemon_consts = fs.read(pl_btdpm_order).splitlines()

frontier_trainer_data_dir = meson.current_source_dir() / 'data'
frontier_pokemon_data_dir = meson.current_source_dir() / 'pokemon'

frontier_env = environment()
frontier_env.append('TRAINERS', frontier_trainer_stems, separator: ';')
frontier_env.append('POKEMONS', frontier_pokemon_consts, separator: ';')

datagen_frontier_out = custom_target('datagen_frontier_out',
    output: [
        'pl_btdtr.narc',
        'pl_btdpm.narc',
    ],
    command: [
        datagen_frontier_exe,
        meson.current_build_dir(),
        frontier_trainer_data_dir,
        frontier_pokemon_data_dir,
    ],
    env: frontier_env,
)

nitrofs_files += datagen_frontier_out