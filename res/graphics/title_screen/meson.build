pngs_4bpp = files(
    'bottom_screen_border.png',
)

pngs_8bpp = files(
    'logo.png',
    'logo_jp.png',
)

# These PNGs require explicit palettes because they are 4bpp palettes that contain more than 16 colors.
pngs_explicit = files(
    'gf_presents.png',
    'top_screen_border.png',
    'copyright.png',
)
pals_explicit = files(
    'gf_presents.pal',
    'top_screen_border.pal',
    'copyright.pal',
)

ncgrs_4bpp = ncgr_gen.process(pngs_4bpp,
    extra_args: [ '-sopc', '-version101', ],
)

ncgrs_8bpp = ncgr_gen.process(pngs_8bpp,
    extra_args: [ '-sopc', '-version101', '-bitdepth', '8', ],
)

ncgrs_explicit = ncgr_gen.process(pngs_explicit,
    extra_args: [ '-sopc', '-version101', ],
)

nclrs_4bpp = nclr_gen.process(pngs_4bpp,
    extra_args: [ '-bitdepth', '4', ]
)

nclrs_8bpp = nclr_gen.process(pngs_8bpp,
    extra_args: [ '-bitdepth', '8', ],
)

nclrs_explicit = nclr_gen.process(pals_explicit,
    extra_args: [ '-bitdepth', '4', ],
)

tilemaps = copy_gen.process(files(
    'bottom_screen_border.NSCR',
    'bottom_screen_border_2.NSCR',
    'top_screen_border.NSCR',
    'top_screen_border_2.NSCR',
    'copyright.NSCR',
    'gf_presents.NSCR',
    'logo.NSCR',
    'logo_jp.NSCR',
))

models = copy_gen.process(files(
    'giratina.nsbmd',
    'giratina_face.nsbmd',
    'giratina_portal.nsbmd',
))

anims = copy_gen.process(files(
    'giratina.nsbca',
    'giratina_face.nsbca',
    'giratina_portal.nsbca',
))

tex_anims = copy_gen.process(files(
    'giratina.nsbta',
    'giratina_portal.nsbta',
))

mat_anims = copy_gen.process(files(
    'giratina_face.nsbma',
))

titledemo_order = files('titledemo.order')
titledemo_narc = custom_target('titledemo.narc',
    output: [
        'titledemo.narc',
        'titledemo.naix',
    ],
    input: [
        ncgrs_4bpp,
        ncgrs_8bpp,
        nclrs_4bpp,
        nclrs_8bpp,
        nclrs_explicit,
        ncgrs_explicit,
        tilemaps,
        models,
        anims,
        tex_anims,
        mat_anims,
    ],
    command: [
        nitroarc_exe,
        '--create',
        '--index',
        '--files-from', files('titledemo.order'),
        '--file', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ],
)

nitrofs_files += titledemo_narc
naix_headers += titledemo_narc[1]
