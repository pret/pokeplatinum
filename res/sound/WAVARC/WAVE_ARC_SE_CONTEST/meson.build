WAVE_ARC_SE_CONTEST = custom_target('WAVE_ARC_SE_CONTEST.swar',
    input: [ files([
        '000.wav',
        '001.wav',
        '002.wav',
    ]),],
    output: 'WAVE_ARC_SE_CONTEST.swar',
    command: [
        nitrosfx_exe,
        '@CURRENT_SOURCE_DIR@', '@OUTPUT0@',
    ],
)
