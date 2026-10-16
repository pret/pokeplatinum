dataproc_cflags = [
    '-std=gnu17',
    '-O3',
    '-Wall',
    '-Wextra',
    '-Wpedantic',
    '-Wno-unused-result',
    '-Wno-stringop-overflow',
]

dataproc_strict_cflags = [
    dataproc_cflags,
    '-Wconversion',
    '-Wno-sign-conversion',
]

repo_include = meson.global_source_root() / 'include'
repo_build = meson.global_build_root()
dataproc_templates_dir = meson.current_source_dir() / 'data'

subdir('lib')
subdir('src/common')

cc = meson.get_compiler('c', native: true)
speciesproc_exe = executable(
    'speciesproc',
    sources: [ files('src/speciesproc.c'), c_consts_generators ],
    c_args: dataproc_cflags,
    include_directories: [ public_includes, toplevel_includes ],
    dependencies: [
        common_dep,
        cc.find_library('m', required: true),
    ],
    native: true,
)

resdatproc_exe = executable(
    'resdatproc',
    sources: files('src/resdatproc.c'),
    c_args: dataproc_cflags,
    include_directories: [ public_includes, toplevel_includes ],
    dependencies: common_dep,
    native: true,
)

dexproc_exe = executable(
    'dexproc',
    sources: [ files('src/dexproc.c'), c_consts_generators ],
    c_args: dataproc_cflags,
    include_directories: [ public_includes, toplevel_includes ],
    dependencies: common_dep,
    native: true,
)

trainerproc_exe = executable(
    'trainerproc',
    sources: [ files('src/trainerproc.c'), c_consts_generators ],
    c_args: dataproc_cflags,
    include_directories: [ public_includes, toplevel_includes ],
    dependencies: common_dep,
    native: true,
)

frontierproc_exe = executable(
    'frontierproc',
    sources: [ files('src/frontierproc.c'), c_consts_generators ],
    c_args: dataproc_cflags,
    include_directories: [ public_includes, toplevel_includes ],
    dependencies: common_dep,
    native: true,
)

itemproc_exe = executable(
    'itemproc',
    sources: [ files('src/itemproc.c'), c_consts_generators ],
    c_args: dataproc_cflags,
    include_directories: [ public_includes, toplevel_includes ],
    dependencies: common_dep,
    native: true,
)

npctradeproc_exe = executable(
    'npctradeproc',
    sources: [ files('src/npctradeproc.c'), c_consts_generators ],
    c_args: dataproc_cflags,
    include_directories: [ public_includes, toplevel_includes ],
    dependencies: common_dep,
    native: true,
)

moveproc_exe = executable(
    'moveproc',
    sources: [ files('src/moveproc.c'), c_consts_generators ],
    c_args: dataproc_cflags,
    include_directories: [ public_includes, toplevel_includes ],
    dependencies: common_dep,
    native: true,
)
