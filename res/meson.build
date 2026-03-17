nitrofs_files = []
naix_headers = []
h_headers = []
embed_headers = []

### PREBUILT FILES ###
subdir('prebuilt')

ncgr_gen = generator(nitrogfx_exe,
    arguments: [ '@INPUT@', '@OUTPUT@', '@EXTRA_ARGS@', ],
    output: '@BASENAME@.NCGR',
)

ncgr_cell_gen = generator(nitrogfx_exe,
    arguments: [
        '@INPUT@',
        '@OUTPUT@',
        '-cell', '-preservepath',
        '@EXTRA_ARGS@',
    ],
    output: '@BASENAME@.NCGR',
)

ncgr_lz_gen = generator(nitrogfx_exe,
    arguments: [ '@INPUT@', '@OUTPUT@', '@EXTRA_ARGS@', ],
    output: '@BASENAME@.NCGR.lz',
)

ncgr_cell_lz_gen = generator(nitrogfx_exe,
    arguments: [
        '@INPUT@',
        '@OUTPUT@',
        '-cell', '@CURRENT_SOURCE_DIR@/@BASENAME@_cell.json',
        '@EXTRA_ARGS@',
    ],
    output: '@BASENAME@.NCGR.lz',
)

nclr_gen = generator(nitrogfx_exe,
    arguments: [ '@INPUT@', '@OUTPUT@', '@EXTRA_ARGS@', ],
    output: '@BASENAME@.NCLR',
)

ncer_gen = generator(nitrogfx_exe,
    arguments: [ '@INPUT@', '@OUTPUT@', '@EXTRA_ARGS@', ],
    output: '@BASENAME@.NCER'
)

ncer_lz_gen = generator(nitrogfx_exe,
    arguments: [ '@INPUT@', '@OUTPUT@', '@EXTRA_ARGS@', ],
    output: '@BASENAME@.NCER.lz',
)

nanr_gen = generator(nitrogfx_exe,
    arguments: [ '@INPUT@', '@OUTPUT@', '@EXTRA_ARGS@', ],
    output: '@BASENAME@.NANR'
)

nanr_lz_gen = generator(nitrogfx_exe,
    arguments: [ '@INPUT@', '@OUTPUT@', '@EXTRA_ARGS@', ],
    output: '@BASENAME@.NANR.lz',
)

lz_gen = generator(nitrogfx_exe,
    arguments: [ '@INPUT@', '@OUTPUT@', '@EXTRA_ARGS@', ],
    output: '@PLAINNAME@.lz',
)

copy_gen = generator(copy_exe,
    arguments: [ '@INPUT@', '@OUTPUT@', ],
    output: '@PLAINNAME@'
)

### DECOMPILED DATA DIRECTORIES ###
# These subpaths are listed because the result of some build-rule inside them
# is a dependency of some later build-rule.
subdir('pokemon')
subdir('trainers')
subdir('graphics')
subdir('town_map')
subdir('text')

# Common generator for "scripting" files, i.e. field and battle scripts
relative_source_root = fs.relative_to(meson.project_source_root(), meson.project_build_root())

# NOTE: The members of the `depends` clause below will always be modified by the
# postconf script to be order-only dependencies. This means that this generator
# will only *wait* to run until after these files have been generated, and it
# *breaks* the dependency-chain if any of these files are edited. However, because
# this generator produces a depfile, the build back-end will still see the correct
# granular headers on which each input source file depends.
# WARN: If you update this generator, you should also consider updating its child
# in res/field/scripts/meson.build
script_bin_gen = generator(make_script_bin_sh,
    arguments: [
        '-i', relative_source_root / 'include',
        '-i', relative_source_root / 'asm',
        '-i', '.' / 'res' / 'text',
        '-i', '.' / 'res',
        '-i', '.',
        '--depfile',
        '--assembler', arm_none_eabi_gcc_exe.full_path(),
        '--objcopy', arm_none_eabi_objcopy_exe.full_path(),
        '@EXTRA_ARGS@',
        '@INPUT@',
    ],
    depends: [
        text_banks,
        c_consts_generators,
        h_headers,
    ],
    output: '@BASENAME@',
    depfile: '@BASENAME@.d',
)

subdir('battle')
subdir('field')
subdir('fonts')
subdir('items')
subdir('pokemon_anims')
subdir('sound')
