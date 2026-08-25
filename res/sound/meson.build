subdir('BANK')
subdir('SEQ')
subdir('WAVARC')

# wave archives are duplicated in order to place them in the sdat private folder

pl_sound_data_sdat = custom_target('pl_sound_data.sdat',
    build_by_default: true,
    input: [
        files(['pl_sound_data.json']),
        sbnk_gen.process(sound_bank_files),
        sbnk_gen.process(cry_banks, preserve_path_from: pokemon_data_root),
        sseq_gen.process(sound_sequence_files),
        swar_gen.process(cry_waves, extra_args: ['-pcm8'], preserve_path_from: pokemon_data_root),
        copy_gen.process(WAVE_ARC_BASIC),
        copy_gen.process(WAVE_ARC_BGM_BATTLE),
        copy_gen.process(WAVE_ARC_BGM_DEMO01),
        copy_gen.process(WAVE_ARC_BGM_DUNGEON),
        copy_gen.process(WAVE_ARC_BGM_FIELD),
        copy_gen.process(WAVE_ARC_BGM_OPEND),
        copy_gen.process(WAVE_ARC_SE_BAG),
        copy_gen.process(WAVE_ARC_SE_BATTLE),
        copy_gen.process(WAVE_ARC_SE_CLIMAX),
        copy_gen.process(WAVE_ARC_SE_CONTEST),
        copy_gen.process(WAVE_ARC_SE_CUSTOM),
        copy_gen.process(WAVE_ARC_SE_DIG),
        copy_gen.process(WAVE_ARC_SE_FIELD),
        copy_gen.process(WAVE_ARC_SE_HIROBA),
        copy_gen.process(WAVE_ARC_SE_IMAGE),
        copy_gen.process(WAVE_ARC_SE_NAMEIN),
        copy_gen.process(WAVE_ARC_SE_NUTMIXER),
        copy_gen.process(WAVE_ARC_SE_POKELIST),
        copy_gen.process(WAVE_ARC_SE_SCRATCH),
        copy_gen.process(WAVE_ARC_SE_SHINKA),
        copy_gen.process(WAVE_ARC_SE_SHIP),
        copy_gen.process(WAVE_ARC_SE_SLOT),
        copy_gen.process(WAVE_ARC_SE_TOWNMAP),
        copy_gen.process(WAVE_ARC_SE_TRADE),
        copy_gen.process(WAVE_ARC_SE_TRAIN),
        copy_gen.process(WAVE_ARC_SE_TRCARD),
        copy_gen.process(WAVE_ARC_SE_ZUKAN),
    ],
    output: [
        'pl_sound_data.sdat',
        'pl_sound_data.naix',
    ],
    command: [
        nitrosfx_exe,
        '@PRIVATE_DIR@', '@OUTPUT0@', '@INPUT0@', '-symb', '-naix',
    ]
)

nitrofs_files += pl_sound_data_sdat
naix_headers += pl_sound_data_sdat[1]
