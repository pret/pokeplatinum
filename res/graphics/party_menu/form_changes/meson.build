form_change_effects_files = files(
    'giratina.spa',
    'shaymin.spa',
)

form_change_effects_order = files('form_change_effects.order')

form_change_effects_narc = custom_target('form_change_effects_narc',
    output: [
        'form_change_effects.narc',
        'form_change_effects.naix.h',
    ],
    input: copy_gen.process( 
        form_change_effects_files,
    ),
    command: [
        narc_exe, 'create',
        '--naix',
        '--order', form_change_effects_order,
        '--output', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ]
)

nitrofs_files += form_change_effects_narc
naix_headers += form_change_effects_narc[1]
