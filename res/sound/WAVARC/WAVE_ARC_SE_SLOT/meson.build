WAVE_ARC_SE_SLOT = custom_target('WAVE_ARC_SE_SLOT.swar',
    input: [ files([
        '000.wav',
        '001.wav',
        '002.wav',
    ]),],
    output: 'WAVE_ARC_SE_SLOT.swar',
    command: [
        nitrosfx_exe,
        '@CURRENT_SOURCE_DIR@', '@OUTPUT0@',
    ],
)
