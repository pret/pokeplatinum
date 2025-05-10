project('pokeplatinum', ['c', 'cpp', 'nasm'],
    version: '1.0',
    meson_version: '>=1.5.0',
    default_options : [
        'buildtype=plain',
        'warning_level=0'
    ]
)

fs = import('fs')

############################################################
###                    INCLUDE PATHS                     ###
############################################################
public_includes = include_directories('include', 'asm', 'res')
toplevel_includes = include_directories('.')


############################################################
###                    COMPILER FLAGS                    ###
############################################################
c_args = [
    '-proc', 'arm946e',
    '-enum', 'int',
    '-lang', 'c99',
    '-Cpp_exceptions', 'off',
    '-gccext,on',
    '-msgstyle', 'gcc',
    '-ipa', 'file',
    '-interworking',
    '-inline', 'on,noauto',
    '-char', 'signed',
    '-nosyspath',
    '-stdinc',
    '-sym', 'on',
    '-DPOKEPLATINUM_GENERATED_ENUM',
    '-D_MSL_RESTRICT=',
]

if get_option('gdb_debugging')
    c_args += [
        '-O1,p',
        '-inline', 'off'
    ]
else
    c_args += '-O4,p'
endif

add_global_arguments(c_args,
    language: 'c',
    native: false
)

pokeplatinum_args = [
    '-DPM_KEEP_ASSERTS',
    '-DGAME_VERSION=VERSION_PLATINUM',
    '-DGAME_LANGUAGE=ENGLISH'
]

if get_option('gdb_debugging')
    pokeplatinum_args += '-DGDB_DEBUGGING'
endif

asm_args = [
    '-proc', 'arm5TE',
    '-16',
    '-gccinc'
]

link_args = [
    '-w', 'off',
    '-proc', 'arm946e',
    '-nopic',
    '-nopid',
    '-interworking',
    '-map', 'closure,unused',
    '-symtab', 'sort',
    '-msgstyle' ,'gcc',
    '-m', '_start',
    '-force_active', 'DGTi_hash2_arm4_small',
    '-sym', 'on'
]

############################################################
###                     DEPENDENCIES                     ###
############################################################
nitrosdk_dep = dependency('NitroSDK',
    default_options: {
        'mwrap_sdk': '2.0/sp1p2',
        'sp1p3_conditionals': true
    }
)

nitrosystem_dep = dependency('NitroSystem',
    default_options: {
        'mwrap_sdk': '2.0/sp2',
    }
)

nitrowifi_dep = dependency('NitroWiFi',
    default_options: {
        'mwrap_sdk': '2.0/sp1p2',
        'sp1p3_conditionals': true
    }
)

nitrodwc_dep = dependency('NitroDWC',
    default_options: {
        'mwrap_sdk': '2.0/sp2p2',
        'link_ppwlobby': true
    }
)

libvct_dep = dependency('libvct')
libcrypto_dep = dependency('libcrypto')
libsyscall_dep = dependency('libsyscall')
ppwlobby_dep = dependency('ppwlobby')

############################################################
###                       CONSTS                         ###
############################################################
subdir('generated')


############################################################
###                        TOOLS                         ###
############################################################
subdir('tools')


############################################################
###                      SPEC FILES                      ###
############################################################
subdir('platinum.us')


############################################################
###                  INTERNAL LIBRARIES                  ###
############################################################
subdir('lib')


############################################################
###                     FILE SYSTEM                      ###
############################################################
subdir('res')

# Phony-like target to build all generated data files
alias_target('data', nitrofs_files)

############################################################
###                     ARM9 BINARY                      ###
############################################################
subdir('src')
subdir('asm')

main = executable('main',
    sources: [
        pokeplatinum_c,
        pokeplatinum_asm,
        c_consts_generators,
        naix_headers,
        tutorable_moves_h,
        species_learnsets_by_tutor_h,
        species_footprints_h,
    ],
    c_args: [
        pokeplatinum_args,
        '-thumb'
    ],
    nasm_args: asm_args,
    c_pch: 'include/pch/global_pch.h',
    include_directories: [
        public_includes,
        libgds_public_includes,
        libspl_public_includes,
    ],
    dependencies: [
        nitrosdk_dep,
        nitrosystem_dep,
        nitrowifi_dep,
        nitrodwc_dep,
        libvct_dep,
        libcrypto_dep,
        libsyscall_dep,
	    ppwlobby_dep
    ],
    link_with: [
        libgds,
        libspl
    ],
    link_args: [
        link_args,
        'platinum.us/main.lcf'
    ],
    link_depends: main_lcf,
    native: false
)


############################################################
###                    ARM7 BINARIES                     ###
############################################################
ichneumon_sub = subproject('NitroSDK'
    ).get_variable('ichneumon_sub')

ichneumon_sub_defs = subproject('NitroSDK'
    ).get_variable('ichneumon_sub_defs')


############################################################
###                        DS ROM                        ###
############################################################
pokeplatinum_nds = custom_target('pokeplatinum.us.nds',
    output: 'pokeplatinum.us.nds',
    input: [
        main,
        rom_header_template,
        icon_png,
        ichneumon_sub,
        ichneumon_sub_defs,
        nitrofs_files,
    ],
    command : [
        nitrorom_exe,
        'pack',
        '-DHEADER_TEMPLATE=@INPUT1@', # rom_header_template
        '-DICON_PNG=@INPUT2@',        # icon_png
        '-DARM7_STATIC=@INPUT3@',     # ichneumon_sub
        '-DARM7_DEFINE=@INPUT4@',     # ichneumon_sub_defs
        '--output=@OUTPUT0@',         # pokeplatinum.us.nds
        rom_ini,
        filesys_csv,
    ],
    build_by_default: true
)

############################################################
###                   GDB HELPERS                        ###
############################################################
nef_fixer = custom_target('debug.nef',
    output: [
        'debug.nef'
    ],
    input: [
        main
    ],
    command : [
        nef_fixer_py, '@INPUT@', '@OUTPUT@'
    ]
)

ovly_mapper = custom_target('overlay.map',
    output: [
        'overlay.map'
    ],
    input: [
        main_lsf
    ],
    command : [
        overlay_mapper_py, '@INPUT@', '@OUTPUT@'
    ]
)


############################################################
###                        TESTS                         ###
############################################################
sha1sum = find_program(['sha1sum', 'shasum'], native: true)

test('SBIN Checksums',
    sha1sum,
    args: ['-c', '--quiet', sbins_sha1]
)

test('Filesystem Checksums',
    sha1sum,
    args: ['-c', '--quiet', filesys_sha1]
)

test('ROM Checksum',
    sha1sum,
    args: ['-c', '--quiet', rom_sha1]
)


############################################################
###                       POSTCONF                       ###
############################################################
meson.add_postconf_script(postconf_py)
