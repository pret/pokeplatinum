pl_btdpm_bin_gen = generator(
    battletower_data_py,
    arguments: [ '@INPUT@', '@OUTPUT@', ],
    output: '@BASENAME@.bin'
)

bt_pokemon_data_files = []

foreach i : range(951)
    bt_pokemon_data_files += run_command('printf', '%04d.json', i.to_string(), check: true).stdout()
endforeach

pl_btdpm_narc = custom_target('pl_btdpm.narc',
    output: 'pl_btdpm.narc',
    input: pl_btdpm_bin_gen.process(bt_pokemon_data_files, env: json2bin_env),
    env: json2bin_env,
    depends: [ py_consts_generators ],
    command: [
        narc_exe, 'create',
        '--naix',
        '--output', '@OUTPUT@',
        '@PRIVATE_DIR@',
    ]
)

nitrofs_files += pl_btdpm_narc
