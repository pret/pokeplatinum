nitroarc_cflags = [
	'-std=c99',
	'-DNDEBUG',
	'-O3',
]

build_target = get_option('build_target')

if (build_target != 'win64')
	nitroarc_cflags += [
	    '-Wall',
	    '-Wextra',
	    '-Wpedantic',
	    '-Wno-sign-conversion',
		'-Werror',
        '-Wconversion',
	]
endif

nitroarc_incdir = include_directories('lib/include')

nitroarc_dep = declare_dependency(
    include_directories: nitroarc_incdir,
    link_with: static_library(
        'nitroarc',
        sources: files('lib/nitroarc.c'),

        c_args: nitroarc_cflags,
        include_directories: nitroarc_incdir,
        install: false,
        native: true,
    ),
)

if (build_target == 'win64')
shlwapi_lib = meson.get_compiler('c').find_library('shlwapi')

shlwapi_dep = declare_dependency(dependencies: [shlwapi_lib])

nitroarc_cflags += [ '-w' ]

nitroarc_exe = executable(
    'nitroarc',
    sources: files(
        'src/common.c',
        'src/extensions.c',
        'src/main.c',
        'src/opmode_create.c',
        'src/opmode_extract.c',
        'src/opmode_list.c',
        'src/opmode_metadata.c',
        'src/optparse.c',
    ),

    c_args: nitroarc_cflags,
    dependencies: [nitroarc_dep, shlwapi_dep],
    install: false,
    native: true,
)
else
nitroarc_exe = executable(
    'nitroarc',
    sources: files(
        'src/common.c',
        'src/extensions.c',
        'src/main.c',
        'src/opmode_create.c',
        'src/opmode_extract.c',
        'src/opmode_list.c',
        'src/opmode_metadata.c',
        'src/optparse.c',
    ),

    c_args: nitroarc_cflags,
    dependencies: nitroarc_dep,
    install: false,
    native: true,
)
endif
