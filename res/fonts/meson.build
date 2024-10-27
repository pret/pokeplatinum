fonts = {
    'font_system.NFGR': files('font_system.png', 'font_system.json'),
    'font_message.NFGR': files('font_message.png', 'font_message.json'),
    'font_subscreen.NFGR': files('font_subscreen.png', 'font_subscreen.json'),
    'font_unown.NFGR': files('font_unown.png', 'font_unown.json'),
}

nfgr_gen = generator(nitrogfx_exe,
    arguments: [ '@INPUT@', '@OUTPUT@', '@EXTRA_ARGS@', ],
    output: '@BASENAME@.NFGR',
)

pl_font_nfgrs = []
foreach target, inputs: fonts
    nfgr = custom_target(target,
        output: target,
        input: inputs,
        command: [
            nitrogfx_exe,
            '@INPUT0@',
            '@OUTPUT@',
            '-metadata', '@INPUT1@',
        ]
    )
    pl_font_nfgrs += mv_gen.process(nfgr)
    # pl_font_nfgrs += nfgr_gen.process(inputs[0],
    #     extra_args: [ '-metadata', inputs[1], ],
    # )
endforeach

font_special_chars_png = files('font_special_chars.png')
font_special_chars_ncgr = ncgr_gen.process(font_special_chars_png,
    extra_args: [ '-sopc', '-version101', ],
)
font_special_chars_ncgr_lz = lz_gen.process(font_special_chars_ncgr)
font_special_chars_nclr = nclr_gen.process(font_special_chars_png,
    extra_args: [ '-bitdepth', '4', '-nopad', '-pcmp', ],
)

screen_indicators_png = files('screen_indicators.png')
screen_indicators_ncgr = ncgr_gen.process(screen_indicators_png,
    extra_args: [ '-sopc', '-version101', ],
)
screen_indicators_nclr = nclr_gen.process(screen_indicators_png,
    extra_args: [ '-bitdepth', '4', ],
)

pl_font_order = files('pl_font.order')
pl_font_ignore = files('pl_font.ignore')
pl_font_narc = custom_target('pl_font.narc',
    output: [
        'pl_font.narc',
        'pl_font.naix',
    ],
    input: [
        pl_font_nfgrs,
        font_special_chars_ncgr_lz,
        font_special_chars_nclr,
        screen_indicators_ncgr,
        screen_indicators_nclr,
        pl_font_order,
        pl_font_ignore,
    ],
    command: [
        knarc_exe,
        '-d', '@PRIVATE_DIR@',
        '-p', '@OUTPUT0@',
        '--order', pl_font_order,
        '--ignore', pl_font_ignore,
        '--naix',
    ],
)

nitrofs_files += pl_font_narc[0]
naix_headers += pl_font_narc[1]
