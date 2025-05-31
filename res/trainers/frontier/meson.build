pl_btdtr_bin_gen = generator(
    frontier_trainers_py,
    arguments: [ '@INPUT@', '@OUTPUT@', ],
    output: '@BASENAME@'
)

pl_btdtr_order = files('frontier_trainers.order')
frontier_trainer_consts = fs.read(pl_btdtr_order).splitlines()
frontier_trainer_data_files = []

foreach trainer_stem : frontier_trainer_consts
    frontier_trainer_data_files += files('data' / (trainer_stem + '.json'))
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

nitrofs_files += pl_btdtr_narc