tiles = files(
    'sinnoh_document.png',
    'national_dex_document.png',
    'sinnoh_blank.png',
    'national_dex_blank.png',
)

diploma_ncgrs = ncgr_gen.process(tiles,
    extra_args: [
        '-sopc',
        '-version101',
    ]
)

diploma_nclrs = nclr_gen.process(tiles,
    extra_args: [
        '-bitdepth', '4',
    ]
)

diploma_nscrs = copy_gen.process(files(
    'sinnoh_document.NSCR',
    'national_dex_document.NSCR',
    'sinnoh_blank.NSCR',
    'national_dex_blank.NSCR',
))

diploma_narc = custom_target('diploma.narc',
    output: [
        'diploma.narc',
        'diploma.naix',
    ],
    input: [
        diploma_ncgrs,
        diploma_nclrs,
        diploma_nscrs,
    ],
    command: [
        nitroarc_exe,
        '--create',
        '--index',
        '--files-from', files('diploma.order'),
        '--file', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ],
)

nitrofs_files += diploma_narc
naix_headers += diploma_narc[1]
