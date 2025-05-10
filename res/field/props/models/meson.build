map_prop_model_consts = fs.read(map_prop_models_txt).splitlines()
map_prop_model_names = []
foreach model : map_prop_model_consts
  map_prop_model_names += model.split(' ')[0].replace('MAP_PROP_MODEL_','').to_lower() + '.nsbmd'
endforeach

map_prop_model_gen = generator(
    find_program('cp'),
    arguments: [ '@INPUT@', '@OUTPUT@', ],
    output: '@BASENAME@'
)

map_prop_model_order = files('map_prop_models.order')
map_prop_model_narc = custom_target('build_model.narc',
    output: [
        'build_model.narc',
    ],
    input: [
        map_prop_model_gen.process(files(map_prop_model_names)),
        map_prop_model_order,
    ],
    command: [
        narc_exe, 'create',
        '--naix',
        '--order', map_prop_model_order,
        '--output', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ]
)

nitrofs_files += map_prop_model_narc