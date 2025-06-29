# This build file contains all definitions for building filesystem archives
# and related to Trainers. Specifically, it handles:
#   - Trainer data:
#     - trdata - header information for individual trainers in-game: their class
#       (internally called trainerType for compatibility reasons), party size,
#       AI behavior flags, and items on-hand.
#     - trpoke - party information for individual trainers in-game

trainer_data_dir = meson.current_source_dir() / 'data'

# 1. Build the list of trainer stems, which define the files to be scanned
# by the batch processor below. While building this list, assert that each
# stem must have a corresponding data file.
trainer_consts = fs.read(trainers_txt).splitlines()
trainer_stems = []
trainer_data_files = []
foreach trainer : trainer_consts
    # `substring` here strips the `TRAINER_` prefix
    trainer_stem = trainer.substring(8).to_lower()
    trainer_stems += trainer_stem
    trainer_data_files += files(trainer_data_dir / (trainer_stem + '.json'))
endforeach

# 2. Build the environment of trainer stems to be passed to the batch processor.
trainer_env = environment()
trainer_env.append('TRAINERS', trainer_stems, separator: ';')

# 3. Process the trainer data files in batch and emit header data + party lists.
datagen_trainer_out = custom_target('datagen_trainer_out',
    output: [
        'trdata.narc',
        'trpoke.narc',
    ],
    command: [
        datagen_trainer_exe,
        meson.current_build_dir(),
        trainer_data_dir,
    ],
    env: trainer_env,
    depend_files: [
        trainer_data_files,
    ],
)

nitrofs_files += datagen_trainer_out


subdir('frontier')