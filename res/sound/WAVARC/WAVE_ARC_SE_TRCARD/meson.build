WAVE_ARC_SE_TRCARD = custom_target('WAVE_ARC_SE_TRCARD.swar',
    input: [ files([
        '000.wav',
        '001.wav',
        '002.wav',
        '003.wav',
        '004.wav',
        '005.wav',
    ]),],
    output: 'WAVE_ARC_SE_TRCARD.swar',
    command: [
        nitrosfx_exe,
        '@CURRENT_SOURCE_DIR@', '@OUTPUT0@',
    ],
)
