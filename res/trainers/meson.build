trainer_data_files = []

foreach i : range(928)
    i_fname = run_command('printf', '%04d.json', i.to_string(), check: true).stdout()
    trainer_data_files += i_fname
endforeach

trainer_data_gen = generator(
    trainer_data_py,
    arguments: [ '@INPUT@', '@OUTPUT@', ],
    output: '@BASENAME@.bin',
)

trainer_party_gen = generator(
    trainer_party_py,
    arguments: [ '@INPUT@', '@OUTPUT@', ],
    output: '@BASENAME@.bin',
)

trdata_narc = custom_target('trdata.narc',
    output: 'trdata.narc',
    input: trainer_data_gen.process(trainer_data_files, env: json2bin_env),
    depends: [ py_consts_generators ],
    command: [
        knarc_exe,
        '-d', '@PRIVATE_DIR@',
        '-p', '@OUTPUT@',
    ],
)

trpoke_narc = custom_target('trpoke.narc',
    output: 'trpoke.narc',
    input: trainer_party_gen.process(trainer_data_files, env: json2bin_env),
    depends: [ py_consts_generators ],
    command: [
        knarc_exe,
        '-d', '@PRIVATE_DIR@',
        '-p', '@OUTPUT@',
    ]
)

nitrofs_files += trdata_narc
nitrofs_files += trpoke_narc
