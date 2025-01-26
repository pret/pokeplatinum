nitrofs_files = []
naix_headers = []

### PREBUILT FILES ###
subdir('prebuilt')

### DECOMPILED DATA DIRECTORIES ###
# These subpaths are listed because the result of some build-rule inside them
# is a dependency of some later build-rule. e.g., `trdata.naix` is a dependency
# of the files compiled into `scr_seq.narc`.
subdir('pokemon')
subdir('trainers')
subdir('text')

# Common generator for "scripting" files, i.e. field and battle scripts
relative_source_root = fs.relative_to(meson.project_source_root(), meson.project_build_root())

copy_gen = generator(find_program('cp'),
    arguments: [ '@INPUT@', '@OUTPUT@', ],
    output: '@PLAINNAME@'
)

# NOTE: The members of the `depends` clause below will always be modified by the
# postconf script to be order-only dependencies. This means that this generator
# will only *wait* to run until after these files have been generated, and it
# *breaks* the dependency-chain if any of these files are edited. However, because
# this generator produces a depfile, the build back-end will still see the correct
# granular headers on which each input source file depends.
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
        message_banks_index,
        asm_consts_generators,
        c_consts_generators,
        trdata_naix,
    ],
    output: '@BASENAME@',
    depfile: '@BASENAME@.d',
)

ncgr_gen = generator(nitrogfx_exe,
    arguments: [ '@INPUT@', '@OUTPUT@', '@EXTRA_ARGS@', ],
    output: '@BASENAME@.NCGR',
)

nclr_gen = generator(nitrogfx_exe,
    arguments: [ '@INPUT@', '@OUTPUT@', '@EXTRA_ARGS@', ],
    output: '@BASENAME@.NCLR',
)

ncer_gen = generator(nitrogfx_exe,
    arguments: [ '@INPUT@', '@OUTPUT@', '@EXTRA_ARGS@', ],
    output: '@BASENAME@.NCER'
)

nanr_gen = generator(nitrogfx_exe,
    arguments: [ '@INPUT@', '@OUTPUT@', '@EXTRA_ARGS@', ],
    output: '@BASENAME@.NANR'
)

subdir('battle')
subdir('field')
subdir('fonts')
subdir('graphics')
subdir('items')
subdir('sound')
