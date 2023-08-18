subdir('pl_msg')

pl_msg_narc = custom_target('pl_msg.narc',
    output: 'pl_msg.narc',
    input: pl_msg_files,
    command: [
        knarc_exe,
        '-d', '@OUTDIR@/pl_msg',
        '-p', '@OUTPUT0@'
    ]
)

nitrofs_files += pl_msg_narc

subdir('scenario')

prebuilt_files = [
    'msg.narc'
]

foreach f : prebuilt_files
    nitrofs_files += fs.copyfile(f)
endforeach
