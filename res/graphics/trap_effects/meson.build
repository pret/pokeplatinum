trap_effect_pal_cell_pngs = files(
    'bubble.png',
    'leaf.png',
    'petal.png',
    'radar.png',
    'boulder.png',
)

trap_effect_pal_pngs = trap_effect_pal_cell_pngs
trap_effect_pal_pngs += files('smoke_tiles.png',)

trap_effect_cell_pngs = trap_effect_pal_cell_pngs
trap_effect_cell_pngs += files(
    'ember.png',
    'fire.png',
)

trap_effect_pals = files(
    'ember_fire.pal',
    'text_window.pal'
)

trap_effect_anims = files(
    'bubble_anim.json',
    'ember_anim.json',
    'fire_anim.json',
    'leaf_anim.json',
    'petal_anim.json',
    'radar_anim.json',
    'boulder_anim.json',
)

trap_effect_cells = files(
    'bubble_cell.json',
    'ember_cell.json',
    'fire_cell.json',
    'leaf_cell.json',
    'petal_cell.json',
    'radar_cell.json',
    'boulder_cell.json',
)

boulder_ncgr_gen = generator(nitrogfx_exe,
    arguments: [
        '@INPUT@',
        '@OUTPUT@',
        '-cell', '@CURRENT_SOURCE_DIR@/boulder_cell.json',
        '@EXTRA_ARGS@',
    ],
    output: '@BASENAME@.NCGR',
)

trap_effect_boulder_ncgrs = boulder_ncgr_gen.process(
    files(
        'boulder_damaged_1.png',
        'boulder_damaged_2.png',
        'boulder_damaged_3.png',
        'boulder_damaged_4.png',
        'boulder_damaged_5.png',
        'boulder_damaged_6.png',
    ),
    extra_args: [
        '-version101',
        '-clobbersize',
    ]
)

trap_effect_cell_ncgrs = ncgr_cell_gen.process(
    trap_effect_cell_pngs,
    extra_args: [
        '-version101',
        '-clobbersize',
    ]
)

trap_effect_ncgrs = ncgr_gen.process(
    files('smoke_tiles.png',),
    extra_args: [
        '-version101',
        '-sopc',
    ]
)

trap_effect_nclrs = nclr_gen.process(
    trap_effect_pal_pngs + trap_effect_pals,
    extra_args: [
        '-bitdepth', '4',
    ]
)

trap_effect_nanrs = nanr_gen.process(trap_effect_anims)

trap_effect_ncers = ncer_gen.process(trap_effect_cells)

trap_effect_copied = copy_gen.process(files(
    'big_smoke_pattern.NSCR',
    'smoke_pattern_1.NSCR',
    'smoke_pattern_2.NSCR',
    'smoke_pattern_3.NSCR',
    'smoke_pattern_4.NSCR',
    'boulder_damaged_1_anim_unused.NANR',
    'boulder_damaged_1_cell_unused.NCER',
    'boulder_damaged_2_anim_unused.NANR',
    'boulder_damaged_2_cell_unused.NCER',
    'boulder_damaged_3_anim_unused.NANR',
    'boulder_damaged_3_cell_unused.NCER',
    'boulder_damaged_4_anim_unused.NANR',
    'boulder_damaged_4_cell_unused.NCER',
    'boulder_damaged_5_anim_unused.NANR',
    'boulder_damaged_5_cell_unused.NCER',
    'boulder_damaged_6_anim_unused.NANR',
    'boulder_damaged_6_cell_unused.NCER',
))

trap_effects_order = files('trap_effects.order')
trap_effects_narc = custom_target('trap_effects.narc',
    output: [
        'trap_effects.narc',
        'trap_effects.naix',
    ],
    input: [
        trap_effect_boulder_ncgrs,
        trap_effect_cell_ncgrs,
        trap_effect_ncgrs,
        trap_effect_nclrs,
        trap_effect_nanrs,
        trap_effect_ncers,
        trap_effect_copied,
    ],
    command: [
        nitroarc_exe,
        '--create',
        '--index',
        '--files-from', files('trap_effects.order'),
        '--file', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ],
)

nitrofs_files += trap_effects_narc
naix_headers += trap_effects_narc[1]
