trainer_data_files = []

foreach i : range(928)
    i_fname = run_command('printf', '%04d.json', i.to_string(), check: true).stdout()
    trainer_data_files += i_fname
endforeach

trdata_narc = custom_target('trdata.narc',
    output: 'trdata.narc',
    input: trainer_data_files,
    command: [
        trainer_data_py,
        '--mode', 'data',
        '--knarc', knarc_exe,
        '--source-dir', '@CURRENT_SOURCE_DIR@',
        '--private-dir', '@PRIVATE_DIR@',
        '--output-dir', '@OUTDIR@',
    ]
)

trpoke_narc = custom_target('trpoke.narc',
    output: 'trpoke.narc',
    input: trainer_data_files,
    command: [
        trainer_data_py,
        '--mode', 'poke',
        '--knarc', knarc_exe,
        '--source-dir', '@CURRENT_SOURCE_DIR@',
        '--private-dir', '@PRIVATE_DIR@',
        '--output-dir', '@OUTDIR@',
    ]
)

nitrofs_files += trdata_narc
nitrofs_files += trpoke_narc