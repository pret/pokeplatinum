# if adding new mail files, make sure to add them to mail.order while keeping
# identical file types together (ie. new NCGRs should go with existing ones)

mail_pngs = files(
    'grass_mail_tiles.png',
    'flame_mail_tiles.png',
    'bubble_mail_tiles.png',
    'bloom_mail_tiles.png',
    'tunnel_mail_tiles.png',
    'steel_mail_tiles.png',
    'heart_mail_tiles.png',
    'snow_mail_tiles.png',
    'space_mail_tiles.png',
    'air_mail_tiles.png',
    'mosaic_mail_tiles.png',
    'brick_mail_tiles.png',
)

mail_nscrs = copy_gen.process(files(
    'grass_mail.NSCR',
    'flame_mail.NSCR',
    'bubble_mail.NSCR',
    'bloom_mail.NSCR',
    'tunnel_mail.NSCR',
    'steel_mail.NSCR',
    'heart_mail.NSCR',
    'snow_mail.NSCR',
    'space_mail.NSCR',
    'air_mail.NSCR',
    'mosaic_mail.NSCR',
    'brick_mail.NSCR',
    'interface.NSCR',
))

mail_nclrs = nclr_gen.process(
    mail_pngs,
    extra_args: [
        '-bitdepth', '4',
        '-pcmp',
        '-invertsize',
        '-nopad',
    ]
)

mail_ncgrs = ncgr_gen.process(
    mail_pngs,
    extra_args: [
        '-convertTo4Bpp',
        '-version101',
        '-sopc',
    ]
)

mail_narc = custom_target('mail.narc',
    output: [
        'mail.narc',
        'mail.naix',
    ],
    input: [
        mail_nclrs,
        mail_ncgrs,
        mail_nscrs,
    ],
    command: [
        nitroarc_exe,
        '--create',
        '--index',
        '--files-from', files('mail.order'),
        '--file', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ],
)

nitrofs_files += mail_narc
naix_headers += mail_narc[1]
