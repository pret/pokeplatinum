WAVE_ARC_SE_SHINKA = custom_target('WAVE_ARC_SE_SHINKA.swar',
    input: [ files([
        '000.wav',
        '001.wav',
    ]),],
    output: 'WAVE_ARC_SE_SHINKA.swar',
    command: [
        nitrosfx_exe,
        '@CURRENT_SOURCE_DIR@', '@OUTPUT0@',
    ],
)
