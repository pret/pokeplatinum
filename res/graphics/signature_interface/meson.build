signature_interface_pngs = files(
    'top_screen_tiles.png',
    'bottom_screen_tiles.png',
)

signature_interface_cell_pngs = files('done_button.png')

yes_no_button_nscrs = files(
    'top_screen.NSCR',
    'bottom_screen.NSCR',
)

signature_interface_nclrs = nclr_gen.process(
    signature_interface_pngs + signature_interface_cell_pngs,
    extra_args: [ '-bitdepth', '4' ]
)

signature_interface_ncgr_lzs = ncgr_lz_gen.process(
    signature_interface_pngs,
    extra_args: [
        '-convertTo4Bpp',
        '-version101',
        '-sopc',
        '-nopad',
    ]
)

signature_interface_ncgr_cell_lzs = ncgr_lz_gen.process(
    signature_interface_cell_pngs,
    extra_args: [
        '-convertTo4Bpp',
        '-version101',
        '-clobbersize',
        '-nopad',
    ]
)

signature_interface_nscr_lzs = lz_gen.process(
    yes_no_button_nscrs,
    extra_args: [ '-nopad' ]
)

signature_interface_ncer_lzs = ncer_lz_gen.process(
    files('done_button_cell.json'),
    extra_args: [ '-nopad' ]
)

signature_interface_nanr_lzs = nanr_lz_gen.process(
    files('done_button_anim.json'),
    extra_args: [ '-nopad' ]
)

signature_interface_narc = custom_target('signature_interface.narc',
    output: [
        'signature_interface.narc',
        'signature_interface.naix',
    ],
    input: [
        signature_interface_nclrs,
        signature_interface_ncgr_lzs,
        signature_interface_ncgr_cell_lzs,
        signature_interface_nscr_lzs,
        signature_interface_ncer_lzs,
        signature_interface_nanr_lzs,
    ],
    command: [
        nitroarc_exe,
        '--create',
        '--index',
        '--files-from', files('signature_interface.order'),
        '--file', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ],
)

nitrofs_files += signature_interface_narc
naix_headers += signature_interface_narc[1]
