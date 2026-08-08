WAVE_ARC_SE_DIG = custom_target('WAVE_ARC_SE_DIG.swar',
    input: [ files([
        '000.wav',
        '001.wav',
        '002.wav',
    ]),],
    output: 'WAVE_ARC_SE_DIG.swar',
    command: [
        nitrosfx_exe,
        '@CURRENT_SOURCE_DIR@', '@OUTPUT0@',
    ],
)
