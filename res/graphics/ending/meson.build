ending_pal_4bpp = files(
    'ending_15.pal',
    'ending_16.pal',
    'ending_17.pal',
    'ending_18.pal',
    'ending_19.pal',
    'ending_20.pal',
    'ending_21.pal',
    'ending_22.pal',
    'ending_23.pal',
    'ending_26.pal',
    'ending_31.pal',
    'ending_36.pal',
    'ending_85.pal',
)

ending_nclr_4bpp = nclr_gen.process(
    ending_pal_4bpp,
    extra_args: [
        '-bitdepth', '4',
        '-nopad',
        '-pcmp',
    ]
)

ending_pal_8bpp = [
    ['ending_48_0.pal', '1'],
    ['ending_49_0.pal', '16'],
    ['ending_50_0.pal', '16'],
    ['ending_51_0.pal', '16'],
    ['ending_52_0.pal', '16'],
    ['ending_53_0.pal', '16'],
    ['ending_54_0.pal', '16'],
    ['ending_55_0.pal', '16'],
    ['ending_56_0.pal', '16'],
    ['ending_57_0.pal', '16'],
    ['ending_68_0.pal', '16'],
    ['ending_69_0.pal', '16'],
    ['ending_70_0.pal', '16'],
    ['ending_71_0.pal', '16'],
    ['ending_72_0.pal', '16'],
    ['ending_73_0.pal', '16'],
    ['ending_74_0.pal', '16'],
    ['ending_75_0.pal', '16'],
    ['ending_76_0.pal', '16'],
    ['ending_77_0.pal', '16'],
    ['ending_91_0.pal', '1'],
    ['ending_92_0.pal', '1'],
    ['ending_93_0.pal', '1'],
    ['ending_94_0.pal', '1'],
    ['ending_99_0.pal', '1'],
    ['ending_100_0.pal', '1'],
    ['ending_101_0.pal', '1'],
    ['ending_102_0.pal', '1'],
]

ending_nclr_8bpp = []
foreach pal : ending_pal_8bpp
    basename = pal[0].split('.')[0].replace('_0', '')
    extended = pal[1]

    nclr = custom_target(basename + '.NCLR',
        output: basename + '.NCLR',
        input: pal[0],
        command: [ nitrogfx_exe, '@INPUT@', '@OUTPUT@', '-extended', extended, '-pcmp', '-nopad', '-bitdepth', '8']
        )
    ending_nclr_8bpp += nclr
endforeach

ending_sprites_sopc = files(
    'ending_9.png',
    'ending_10.png',
    'ending_11.png',
    'ending_12.png',
    'ending_13.png',
    'ending_14.png',
    'ending_25.png',
)

ending_ncgr_sopc = ncgr_gen.process(
    ending_sprites_sopc,
    extra_args: [
        '-bitdepth', '4',
        '-version101',
        '-sopc',
    ]
)

ending_sprites_sopc_8bpp = files(
    'ending_38.png',
    'ending_39.png',
    'ending_40.png',
    'ending_41.png',
    'ending_42.png',
    'ending_43.png',
    'ending_44.png',
    'ending_45.png',
    'ending_46.png',
    'ending_47.png',
    'ending_58.png',
    'ending_59.png',
    'ending_60.png',
    'ending_61.png',
    'ending_62.png',
    'ending_63.png',
    'ending_64.png',
    'ending_65.png',
    'ending_66.png',
    'ending_67.png',
    'ending_87.png',
    'ending_88.png',
    'ending_89.png',
    'ending_90.png',
    'ending_95.png',
    'ending_96.png',
    'ending_97.png',
    'ending_98.png',
)

ending_ncgr_sopc_8bpp = ncgr_gen.process(
    ending_sprites_sopc_8bpp,
    extra_args: [
        '-bitdepth', '8',
        '-version101',
        '-sopc',
    ]
)

ending_sprites_clobbersize = files(
    'ending_0.png',
    'ending_27.png',
    'ending_32.png',
)

ending_ncgr_clobbersize = ncgr_gen.process(
    ending_sprites_clobbersize,
    extra_args: [
        '-bitdepth', '4',
        '-version101',
        '-clobbersize',
        '-mappingtype', '128',
    ]
)

ending_sprites_vram = files(
    'ending_28.png',
    'ending_33.png',
)

ending_ncgr_vram = ncgr_gen.process(
    ending_sprites_vram,
    extra_args: [
        '-bitdepth', '4',
        '-version101',
        '-clobbersize',
        '-mappingtype', '128',
        '-vram',
    ]
)

ending_cell_json = files(
    'ending_1.json',
    'ending_29.json',
    'ending_34.json',
)

ending_ncer = ncer_gen.process(ending_cell_json)

ending_nscr = copy_gen.process(files(
    'ending_3.NSCR',
    'ending_4.NSCR',
    'ending_5.NSCR',
    'ending_6.NSCR',
    'ending_7.NSCR',
    'ending_8.NSCR',
    'ending_24.NSCR',
    'ending_37.NSCR',
    'ending_86.NSCR',
))

ending_anim_json = files(
    'ending_2.json',
    'ending_30.json',
    'ending_35.json',
)

ending_nanr = nanr_gen.process(ending_anim_json)

ending_bmd0 = copy_gen.process(files(
    'ending_78.BMD0',
    'ending_79.BMD0',
    'ending_80.BMD0',
    'ending_81.BMD0',
    'ending_82.BMD0',
    'ending_83.BMD0',
    'ending_84.BMD0',
))

ending_narc = custom_target('ending.narc',
    output: [
        'ending.narc',
        'ending.naix',
    ],
    input: [
        ending_nclr_4bpp,
        copy_gen.process(ending_nclr_8bpp),

        ending_ncgr_sopc,
        ending_ncgr_sopc_8bpp,
        ending_ncgr_clobbersize,
        ending_ncgr_vram,

        ending_ncer,

        ending_nscr,

        ending_nanr,

        ending_bmd0,
    ],
    command: [
        nitroarc_exe,
        '--create',
        '--index',
        '--files-from', files('ending.order'),
        '--file', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ],
)

nitrofs_files += ending_narc
naix_headers += ending_narc[1]
