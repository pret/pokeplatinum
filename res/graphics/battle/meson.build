healthbar_parts_embed = custom_target('healthbar_parts.4bpp.h',
    output: [
        'healthbar_parts.4bpp',
        'healthbar_parts.4bpp.h',
    ],
    input: files('healthbar_parts.png'),
    command: [ nitrogfx_exe, '@INPUT@', '@OUTPUT0@', '-embed', 'sHealthbarPartsBitmap' ],
)

embed_headers += healthbar_parts_embed[1]
