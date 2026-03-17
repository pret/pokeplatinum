subdir('mmodel')

mmodel_narc = custom_target('mmodel.narc',
    output: 'mmodel.narc',
    input: mmodel_files_targets,
    command: [
        nitroarc_exe,
        '--create',
        '--file', '@OUTPUT0@',
        '@OUTDIR@/mmodel',
    ],
)

nitrofs_files += mmodel_narc

prebuilt_files = [
    'fldeff.narc'
]

foreach f : prebuilt_files
    nitrofs_files += fs.copyfile(f)
endforeach
