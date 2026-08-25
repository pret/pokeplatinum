WAVE_ARC_SE_NAMEIN = custom_target('WAVE_ARC_SE_NAMEIN.swar',
    input: [ files([
        '000.wav',
        '001.wav',
    ]),],
    output: 'WAVE_ARC_SE_NAMEIN.swar',
    command: [
        nitrosfx_exe,
        '@CURRENT_SOURCE_DIR@', '@OUTPUT0@',
    ],
)
