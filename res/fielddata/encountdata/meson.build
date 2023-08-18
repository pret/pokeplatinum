enc_data_txt    = files('enc_data.txt')
pl_enc_data_csv = files('pl_enc_data.csv')

pl_enc_data_narc = custom_target('pl_enc_data.narc',
    output: 'pl_enc_data.narc',
    input: [
        enc_data_txt,
        pl_enc_data_csv
    ], 
    command: [
        csv2bin_exe,
        'compile',
        '@INPUT1@',
        '@OUTPUT0@',
        '@INPUT0@',
        '--narc',
        '-i', '@SOURCE_ROOT@/include'
    ]
)

nitrofs_files += pl_enc_data_narc

prebuilt_files = [
    'd_enc_data.narc',
    'p_enc_data.narc'
]

foreach f : prebuilt_files
    nitrofs_files += fs.copyfile(f)
endforeach
