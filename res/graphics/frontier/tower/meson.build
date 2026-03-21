tower_records_narc = custom_target('tower_records_narc',
    output: [
        'records.narc',
        'records.naix',
    ],

    input: [
        ncgr_cell_gen.process(
            files('sprites.png'),
            extra_args: [ '-bitdepth', '4', '-version101', '-clobbersize' ],
        ),

        ncgr_gen.process(
            files('records_tiles.png'),
            extra_args: [ '-bitdepth', '4', '-version101', '-sopc' ],
        ),

        nclr_gen.process(
            files('sprites.pal', 'records_tiles.pal'),
            extra_args: [ '-bitdepth', '4', '-nopad', '-pcmp' ],
        ),

        ncer_gen.process(files('sprites_cell.json')),
        nanr_gen.process(files('sprites_anim.json')),

        copy_gen.process(
            files(
                'records_solo.NSCR',
                'records_ranks.NSCR',
                'records_wifi.NSCR',
            )
        ),
    ],

    command: [
        nitroarc_exe,
        '--create',
        '--index',
        '--files-from', files('records.order'),
        '--file', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ],
)

nitrofs_files += tower_records_narc
naix_headers += tower_records_narc[1]
