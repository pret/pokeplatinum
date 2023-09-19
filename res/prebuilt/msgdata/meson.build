subdir('pl_msg')

pl_msg_narc = custom_target('pl_msg.narc',
    output: 'pl_msg.narc',
    input: msgenc_gen.process(pl_msg_gmm),
    command: [
        knarc_exe,
        '-d', '@OUTDIR@/pl_msg.narc.p',
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
