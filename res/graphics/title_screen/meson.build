pngs_4bpp = files([
    'bottom_screen_border.png',
    'top_screen_border.png',
    'copyright.png',
])
pngs_8bpp = files([
    'logo.png',
    'logo_jp.png'
])

png_gf_presents = files('gf_presents.png')
pal_gf_presents = files('gf_presents.pal')

ncgrs_4bpp = ncgr_gen.process(pngs_4bpp,
    extra_args: [ '-sopc', '-version101', ],
)

ncgrs_8bpp = ncgr_gen.process(pngs_8bpp,
    extra_args: [ '-sopc', '-version101', '-bitdepth', '8', ],
)

ncgr_gf_presents = ncgr_gen.process(png_gf_presents,
    extra_args: [ '-sopc', '-version101', ],
)

nclrs_4bpp = nclr_gen.process(pngs_4bpp,
    extra_args: [ '-bitdepth', '4', '-invertsize', ],
)

nclrs_8bpp = nclr_gen.process(pngs_8bpp,
    extra_args: [ '-bitdepth', '8', '-invertsize', ],
)

nclr_gf_presents = nclr_gen.process(pal_gf_presents,
    extra_args: [ '-bitdepth', '4', ],
)

tilemaps = copy_gen.process(files([
    'bottom_screen_border.NSCR',
    'bottom_screen_border_2.NSCR',
    'top_screen_border.NSCR',
    'top_screen_border_2.NSCR',
    'copyright.NSCR',
    'gf_presents.NSCR',
    'logo.NSCR',
    'logo_jp.NSCR'
]))

models = copy_gen.process(files([
    'giratina.nsbmd',
    'giratina_face.nsbmd',
    'giratina_portal.nsbmd'
]))

anims = copy_gen.process(files([
    'giratina.nsbca',
    'giratina_face.nsbca',
    'giratina_portal.nsbca'
]))

tex_anims = copy_gen.process(files([
    'giratina.nsbta',
    'giratina_portal.nsbta'
]))

mat_anims = copy_gen.process(files([
    'giratina_face.nsbma',
]))

titledemo_order = files('titledemo.order')
titledemo_narc = custom_target('titledemo.narc',
    output: [
        'titledemo.narc',
        'titledemo.naix.h',
    ],
    input: [
        ncgrs_4bpp,
        ncgrs_8bpp,
        nclrs_4bpp,
        nclrs_8bpp,
        nclr_gf_presents,
        ncgr_gf_presents,
        tilemaps,
        titledemo_order,
        models,
        anims,
        tex_anims,
        mat_anims,
    ],
    command: [
        narc_exe, 'create',
        '--naix',
        '--order', titledemo_order,
        '--output', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ]
)

nitrofs_files += titledemo_narc
naix_headers += titledemo_narc[1]
