subproject('yyjson')
dep_yyjson = dependency('yyjson')

inc_dataproc = include_directories('include')
lib_dataproc = static_library(
    'dataproc',
    sources: files(
        'lib/dataproc.c',
        'lib/error.c',
        'lib/validate.c',
        'lib/interface_json.c',
    ),

    include_directories: [ inc_dataproc ],
    dependencies: [ dep_yyjson ],

    native: true,
)

dep_dataproc = declare_dependency(
    include_directories: inc_dataproc,
    link_with: lib_dataproc,
)
