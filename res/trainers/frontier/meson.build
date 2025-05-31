pl_btdtr_bin_gen = generator(
    frontier_trainers_py,
    arguments: [ '@INPUT@', '@OUTPUT@', ],
    output: '@BASENAME@',
)

pl_btdpm_bin_gen = generator(
    frontier_pokemon_py,
    arguments: [ '@INPUT@', '@OUTPUT@', ],
    output: '@BASENAME@',
)

pl_btdtr_order = files('frontier_trainers.order')
pl_btdpm_order = files('frontier_pokemon.order')

frontier_trainer_consts = fs.read(pl_btdtr_order).splitlines()
frontier_pokemon_consts = fs.read(pl_btdpm_order).splitlines()

frontier_trainer_data_files = []
foreach trainer_stem : frontier_trainer_consts
    frontier_trainer_data_files += files('data' / (trainer_stem + '.json'))
endforeach

frontier_pokemon_data_files = []
foreach pokemon_stem : frontier_pokemon_consts
    frontier_pokemon_data_files += files('pokemon' / (pokemon_stem + '.json'))
endforeach


pl_btdtr_narc = custom_target('pl_btdtr.narc',
    output: 'pl_btdtr.narc',
    input: pl_btdtr_bin_gen.process(frontier_trainer_data_files, env: json2bin_env),
    env: json2bin_env,
    depends: [ py_consts_generators ],
    command: [
        narc_exe, 'create',
        '--naix',
        '--order', pl_btdtr_order,
        '--output', '@OUTPUT@',
        '@PRIVATE_DIR@',
    ]
)

pl_btdpm_narc = custom_target('pl_btdpm.narc',
    output: 'pl_btdpm.narc',
    input: pl_btdpm_bin_gen.process(frontier_pokemon_data_files, env: json2bin_env),
    env: json2bin_env,
    depends: [ py_consts_generators ],
    command: [
        narc_exe, 'create',
        '--naix',
        '--order', pl_btdpm_order,
        '--output', '@OUTPUT@',
        '@PRIVATE_DIR@',
    ]
)


nitrofs_files += pl_btdtr_narc
nitrofs_files += pl_btdpm_narc