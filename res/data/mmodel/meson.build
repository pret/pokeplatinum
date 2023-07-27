subdir('mmodel')

mmodel_narc = custom_target('mmodel.narc',
    output: 'mmodel.narc',
    input: mmodel_files,
    command: [
        knarc_exe,
        '-d', '@CURRENT_SOURCE_DIR@/mmodel',
        '-p', '@OUTPUT0@'
    ],
    build_by_default: true
)

prebuilt_files = [
    'fldeff.narc'
]

foreach f : prebuilt_files
    nitrofs_files += fs.copyfile(f)
endforeach