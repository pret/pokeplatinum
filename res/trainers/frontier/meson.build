frontier_data = custom_target('datagen_frontier_out',
    output: [
        'pl_btdtr.narc',
        'pl_btdpm.narc',
        'frontier_trainer_classes.h',
        'frontier_trainer_names.json',
        'frontier_trainer_messages.json',
    ],
    command: [
        frontierproc_exe,
        '-M', '@DEPFILE@',
        '-o', meson.current_build_dir(),
        c_consts_headers['frontier_trainers'],
        files('frontier_pokemon.order'),
        meson.current_source_dir(),
    ],
    depfile: 'frontier_data.d',
)

nitrofs_files += frontier_data
frontier_data_outputs = frontier_data.to_list()
frontier_text_banks = frontier_data_outputs.slice(3, frontier_data_outputs.length())
