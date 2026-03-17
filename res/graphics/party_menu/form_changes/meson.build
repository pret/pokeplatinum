form_change_effects_files = files(
    'giratina.spa',
    'shaymin.spa',
)

form_change_effects_narc = custom_target('form_change_effects_narc',
    output: [
        'form_change_effects.narc',
        'form_change_effects.naix',
    ],
    input: copy_gen.process(form_change_effects_files),
    command: [
        nitroarc_exe,
        '--create',
        '--index',
        '--files-from', files('form_change_effects.order'),
        '--file', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ],
)

nitrofs_files += form_change_effects_narc
naix_headers += form_change_effects_narc[1]
