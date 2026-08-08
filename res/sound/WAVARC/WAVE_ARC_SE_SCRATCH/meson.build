WAVE_ARC_SE_SCRATCH = custom_target('WAVE_ARC_SE_SCRATCH.swar',
    input: [ files([
        '000.wav',
        '001.wav',
        '002.wav',
        '003.wav',
        '004.wav',
    ]),],
    output: 'WAVE_ARC_SE_SCRATCH.swar',
    command: [
        nitrosfx_exe,
        '@CURRENT_SOURCE_DIR@', '@OUTPUT0@',
    ],
)
