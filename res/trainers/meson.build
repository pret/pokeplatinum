# This build file contains all definitions for building filesystem archives
# and related to Trainers. Specifically, it handles:
#   - Trainer data:
#     - trdata - header information for individual trainers in-game: their class
#       (internally called trainerType for compatibility reasons), party size,
#       AI behavior flags, and items on-hand.
#     - trpoke - party information for individual trainers in-game

trainer_data = custom_target('trainer_data',
    output: [
        'trdata.narc',
        'trpoke.narc',
        'trtbl.narc',
        'trtblofs.narc',
        'trainer_scripts.h',
        'npc_trainer_messages.json',
        'npc_trainer_names.json',
    ],

    command: [
        trainerproc_exe,
        '-M', '@DEPFILE@',
        '-o', meson.current_build_dir(),
        meson.global_build_root() / 'generated' / 'trainers.h',
        meson.current_source_dir() / 'data',
    ],

    depfile: 'trainer_data.d',
)

nitrofs_files += trainer_data
trainer_data_outputs = trainer_data.to_list()
h_headers += trainer_data_outputs.slice(4, 5)
trainer_text_banks = trainer_data_outputs.slice(5, trainer_data_outputs.length())


subdir('classes')
subdir('frontier')

trainer_ball_capsules_env = environment()
trainer_ball_capsules_env.append('PYTHONPATH', meson.project_build_root()) # for generated constants in Python scripts

ball_capsules_bin = generator(
    make_trainer_ball_capsules_py,
    output: '@BASENAME@.bin',
    arguments: ['@INPUT@', '@OUTPUT@']
).process(
    files('ball_capsules.json'),
    env: trainer_ball_capsules_env,
)

ball_capsules_narc = custom_target('trainer_ball_capsules.narc',
    output: [
        'trainer_ball_capsules.narc',
        'trainer_ball_capsules.naix',
    ],
    input: ball_capsules_bin,
    command: [
        nitroarc_exe,
        '--create',
        '--index',
        '--file', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ],
    depends: [ py_consts_generators ],
)

nitrofs_files += ball_capsules_narc
naix_headers += ball_capsules_narc[1]
