mining_interface_pngs = files(
    'interface_tiles.png'
)

mining_interface_ncgrs = ncgr_gen.process(mining_interface_pngs,
    extra_args: [
        '-sopc',
        '-version101',
        '-convertTo4Bpp',
    ],
)

mining_interface_nclrs = nclr_gen.process(mining_interface_pngs,
    extra_args: [
        '-convertTo4Bpp',
    ],
)

mining_interface_nscrs = copy_gen.process(files('interface.NSCR'))

mining_interface_narc = custom_target('interface.narc',
    output: [
        'interface.narc',
        'interface.naix',
    ],
    input: [
        mining_interface_ncgrs,
        mining_interface_nclrs,
        mining_interface_nscrs,
    ],
    command: [
        nitroarc_exe,
        '--create',
        '--index',
        '--files-from', files('interface.order'),
        '--file', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ],
)

nitrofs_files += mining_interface_narc
naix_headers += mining_interface_narc[1]
