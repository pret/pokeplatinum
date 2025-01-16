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

font_nfgrs = []
foreach target, inputs: fonts
    font_nfgrs += custom_target(target,
        output: target,
        input: inputs,
        command: [
            nitrogfx_exe,
            '@INPUT0@',
            '@OUTPUT@',
            '-metadata', '@INPUT1@',
        ]
    )

endforeach

font_special_chars_png = files('font_special_chars.png')
font_special_chars_ncgr = custom_target('font_special_chars.NCGR',
    output: 'font_special_chars.NCGR',
    input: font_special_chars_png,
    command: [
        nitrogfx_exe,
        '@INPUT@',
        '@OUTPUT@',
        '-sopc',
        '-version101',
    ],
)
font_special_chars_ncgr_lz = custom_target('font_special_chars.NCGR.lz',
    output: 'font_special_chars.NCGR.lz',
    input: font_special_chars_ncgr,
    command: [
        nitrogfx_exe,
        '@INPUT@',
        '@OUTPUT@',
    ],
)
font_nclr = custom_target('font.NCLR',
    output: 'font.NCLR',
    input: font_special_chars_png,
    command: [
        nitrogfx_exe,
        '@INPUT@',
        '@OUTPUT@',
        '-bitdepth', '4',
        '-nopad',
        '-pcmp',
    ],
)

screen_indicators_png = files('screen_indicators.png')
screen_indicators_ncgr = custom_target('screen_indicators.NCGR',
    output: 'screen_indicators.NCGR',
    input: screen_indicators_png,
    command: [
        nitrogfx_exe,
        '@INPUT@',
        '@OUTPUT@',
        '-sopc',
        '-version101',
    ],
)
screen_indicators_nclr = custom_target('screen_indicators.NCLR',
    output: 'screen_indicators.NCLR',
    input: screen_indicators_png,
    command: [
        nitrogfx_exe,
        '@INPUT@',
        '@OUTPUT@',
        '-bitdepth', '4',
    ],
)

current_build_dir = meson.current_build_dir()
pl_font_order = files('pl_font.order')
pl_font_ignore = files('pl_font.ignore')
pl_font_narc = custom_target('pl_font.narc',
    output: [
        'pl_font.narc',
        'pl_font.naix',
    ],
    input: [
        font_nfgrs,
        font_special_chars_ncgr_lz,
        font_nclr,
        screen_indicators_ncgr,
        screen_indicators_nclr,
        pl_font_order,
        pl_font_ignore,
    ],
    command: [
        narc_exe, 'create',
        '--naix',
        '--order', pl_font_order,
        '--ignore', pl_font_ignore,
        '--output', '@OUTPUT0@',
        '@OUTDIR@',
    ],
)

nitrofs_files += pl_font_narc[0]
naix_headers += pl_font_narc[1]
