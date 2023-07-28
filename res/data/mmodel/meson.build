subdir('mmodel')

mmodel_narc = custom_target('mmodel.narc',
    output: 'mmodel.narc',
    input: mmodel_files,
    command: [
        knarc_exe,
        '-d', '@CURRENT_SOURCE_DIR@/mmodel',
        '-p', '@OUTPUT0@'
    ]
)

nitrofs_files += mmodel_narc

prebuilt_files = [
    'fldeff.narc'
]

foreach f : prebuilt_files
    nitrofs_files += fs.copyfile(f)
endforeach
