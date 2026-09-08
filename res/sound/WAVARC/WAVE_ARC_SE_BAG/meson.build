WAVE_ARC_SE_BAG = custom_target('WAVE_ARC_SE_BAG.swar',
    input: [ files([
        '000.wav',
        '001.wav',
        '002.wav',
        '003.wav',
        '004.wav',
        '005.wav',
        '006.wav',
        '007.wav',
    ]),],
    output: 'WAVE_ARC_SE_BAG.swar',
    command: [
        nitrosfx_exe,
        '@CURRENT_SOURCE_DIR@', '@OUTPUT0@',
    ],
)
