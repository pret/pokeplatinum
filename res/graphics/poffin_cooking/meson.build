nscrs = copy_gen.process(files(
    'top_screen_single.NSCR',
    'top_screen_multi.NSCR',
    'player_name.NSCR',
    'textbox.NSCR',
))

nanrs = nanr_gen.process(files(
    'interface_anim.json',
    'sparkles_anim.json',
    'puff0_anim.json',
    'puff1_anim.json',
    'puff2_anim.json',
    'done_anim.json',
    'arrow_anim.json',
))

ncers = ncer_gen.process(files(
    'interface_cell.json',
    'sparkles_cell.json',
    'puff0_cell.json',
    'puff1_cell.json',
    'puff2_cell.json',
    'done_cell.json',
    'arrow_cell.json',
))

top_screen_ncgr = ncgr_gen.process('top_screen.png',
    extra_args: [
        '-convertTo4Bpp',
        '-version101',
        '-sopc',
    ]
)

textbox_ncgr = ncgr_gen.process('textbox.png',
    extra_args: [
        '-version101',
        '-sopc',
    ]
)

interface_ncgr = ncgr_gen.process('interface.png',
    extra_args: [
        '-convertTo4Bpp',
        '-version101',
        '-clobbersize',
        '-mappingtype', '128',
    ]
)

particle_ncgrs = ncgr_gen.process(
    files(
        'sparkles.png',
        'puff0.png',
        'puff1.png',
        'puff2.png',
        'done.png',
    ),
    extra_args: [
        '-version101',
        '-clobbersize',
        '-mappingtype', '128',
    ]
)

arrow_ncgr = ncgr_gen.process('arrow.png',
    extra_args: [
        '-convertTo4Bpp',
        '-version101',
        '-clobbersize',
        '-mappingtype', '128',
        '-cell', files('arrow_cell.json')[0].full_path()
    ]
)

bottom_screen_ncgrs = ncgr_gen.process(
    files(
        'flames0.png',
        'pot.png',
        'tablecloth.png',
        'batter0.png',
        'batter1.png',
        'batter2.png',
    ),
    extra_args: [
        '-version101',
        '-sopc',
        '-scan',
    ]
)

ncgrs = [
    top_screen_ncgr,
    textbox_ncgr,
    interface_ncgr,
    particle_ncgrs,
    arrow_ncgr,
    bottom_screen_ncgrs,
]


nclrs = nclr_gen.process(
    files(
        'textbox.png',
        'top_screen.png',
        'interface.png',
        'puff0.png',
        'puff1.png',
        'puff2.png',
        'arrow.png',
        'flames0.png',
        'flames1.png',
        'flames2.png',
        'pot.png',
        'tablecloth.png',
        'batter0.png',
        'batter1.png',
        'batter2.png',
    ),
    extra_args: [
        '-bitdepth', '4',
    ]
)

poffin_cooking_narc = custom_target('poffin_cooking.narc',
    output: [
        'poffin_cooking.narc',
        'poffin_cooking.naix',
    ],
    input: [
        nscrs,
        nanrs,
        ncers,
        ncgrs,
        nclrs,
    ],
    command: [
        nitroarc_exe,
        '--create',
        '--index',
        '--files-from', files('poffin_cooking.order'),
        '--file', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ]
)

nitrofs_files += poffin_cooking_narc
naix_headers += poffin_cooking_narc[1]
