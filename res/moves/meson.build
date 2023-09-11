pl_waza_tbl_subdirs = run_command('ls', '-d', '*/').stdout().splitlines()

pl_waza_tbl_srcs = []
foreach subdir : pl_waza_tbl_subdirs
    pl_waza_tbl_srcs += subdir / 'data.json'
endforeach

pl_waza_tbl_narc = custom_target('pl_waza_tbl.narc',
    output: 'pl_waza_tbl.narc',
    input: pl_waza_tbl_srcs,
    command: [
        movedata_py,
        '--knarc', knarc_exe,
        '--source-dir', '@CURRENT_SOURCE_DIR@',
        '--output-dir', '@BUILD_ROOT@' / 'res' / 'poketool' / 'waza',
    ]
)

nitrofs_files += pl_waza_tbl_narc