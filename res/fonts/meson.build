fonts = {
    'font_system.NFGR': files('font_system.png', 'font_system.json'),
    'font_message.NFGR': files('font_message.png', 'font_message.json'),
    'font_subscreen.NFGR': files('font_subscreen.png', 'font_subscreen.json'),
    'font_unown.NFGR': files('font_unown.png', 'font_unown.json'),
}

pl_font_files = []
foreach target, inputs: fonts
    pl_font_files += custom_target(target,
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

font_special_chars_ncgr = custom_target('font_special_chars.NCGR',
    output: 'font_special_chars.NCGR',
    input: files('font_special_chars.png'),
    command: [
        nitrogfx_exe,
        '@INPUT@',
        '@OUTPUT@',
        '-version101',
        '-sopc',
    ]
)

pl_font_files+= custom_target('font_special_chars.NCGR.lz',
    output: 'font_special_chars.NCGR.lz',
    input: font_special_chars_ncgr,
    command: [
        nitrogfx_exe,
        '@INPUT@',
        '@OUTPUT@',
    ]
)

pl_font_files += custom_target('screen_indicators.NCGR',
    output: 'screen_indicators.NCGR',
    input: files('screen_indicators.png'),
    command: [
        nitrogfx_exe,
        '@INPUT@',
        '@OUTPUT@',
        '-version101',
        '-sopc',
    ]
)

pl_font_files += custom_target('font.NCLR',
    output: 'font.NCLR',
    input: files('font.pal'),
    command: [
        nitrogfx_exe,
        '@INPUT@',
        '@OUTPUT@',
        '-bitdepth', '4',
        '-nopad',
        '-pcmp',
    ]
)

pl_font_files += custom_target('screen_indicators.NCLR',
    output: 'screen_indicators.NCLR',
    input: files('screen_indicators.pal'),
    command: [
        nitrogfx_exe,
        '@INPUT@',
        '@OUTPUT@',
    ]
)

fonts_dir = meson.current_build_dir()
pl_font_order = files('pl_font.order')
pl_font_ignore = files('pl_font.ignore')

pl_font_narc = custom_target('pl_font.narc',
    output: 'pl_font.narc',
    input: [pl_font_files, pl_font_order, pl_font_ignore],
    command: [
        knarc_exe,
        '-d', fonts_dir,
        '-p', '@OUTPUT@',
        '-o', pl_font_order,
        '-i', pl_font_ignore,
    ],
)

nitrofs_files += pl_font_narc
