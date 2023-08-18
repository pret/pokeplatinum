project('pokeplatinum', ['c', 'cpp', 'nasm'],
    version: '1.0',
    meson_version: '>=1.2.0',
    default_options : [
        'buildtype=plain',
        'warning_level=0'
    ]
)

fs = import('fs')

############################################################
###                    INCLUDE PATHS                     ###
############################################################
public_includes = include_directories('include', 'asm')


############################################################
###                    COMPILER FLAGS                    ###
############################################################
c_args = [
    '-O4,p',
    '-proc', 'arm946e',
    '-thumb',
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
    '-stdinc'
]

pokeplatinum_args = [
    '-DPM_KEEP_ASSERTS',
    '-DGAME_VERSION=PLATINUM',
    '-DGAME_LANGUAGE=ENGLISH'
]

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
    '-force_active', 'DGTi_hash2_arm4_small'
]


############################################################
###                        TOOLS                         ###
############################################################
subdir('tools')


############################################################
###                      SPEC FILES                      ###
############################################################
subdir('platinum.us')


############################################################
###                     DEPENDENCIES                     ###
############################################################
gamespy_dep     = dependency('gamespy',     fallback : ['gamespy', 'gamespy_dep'])
libvct_dep      = dependency('libVCT',      fallback : ['libVCT', 'libvct_dep'])
nitrosdk_dep    = dependency('NitroSDK',    fallback : ['NitroSDK', 'nitrosdk_dep'])
nitrosystem_dep = dependency('NitroSystem', fallback : ['NitroSystem', 'nitrosystem_dep'])
nitrowifi_dep   = dependency('NitroWiFi',   fallback : ['NitroWiFi', 'nitrowifi_dep'])
nitrodwc_dep    = dependency('NitroDWC',    fallback : ['NitroDWC', 'nitrodwc_dep'])
libcrypto_dep   = dependency('libcrypto',   fallback : ['libcrypto', 'libcrypto_dep'])
libsyscall_dep  = dependency('libsyscall',  fallback : ['libsyscall', 'libsyscall_dep'])


############################################################
###                  INTERNAL LIBRARIES                  ###
############################################################
subdir('lib')


############################################################
###                     GAME SOURCES                     ###
############################################################
subdir('src')
subdir('asm')


# Build main executable
main = executable('main',
    sources: [
        pokeplatinum_c,
        pokeplatinum_asm
    ],
    c_args: [
        c_args,
        pokeplatinum_args
    ],
    nasm_args: asm_args,
    c_pch: 'include/pch/global_pch.h',
    include_directories: [
        public_includes,
        libgds_public_includes,
        libspl_public_includes
    ],
    dependencies: [
        gamespy_dep,
        libvct_dep,
        nitrosdk_dep,
        nitrosystem_dep,
        nitrowifi_dep,
        nitrodwc_dep,
        libsyscall_dep,
        libcrypto_dep
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
###                     FILE SYSTEM                      ###
############################################################
subdir('res')


############################################################
###                    ARM7 BINARIES                     ###
############################################################
ichneumon_sub = subproject('NitroSDK').get_variable('ichneumon_sub')
ichneumon_sub_defs = subproject('NitroSDK').get_variable('ichneumon_sub_defs')


############################################################
###                        DS ROM                        ###
############################################################
pokeplatinum_nds = custom_target('pokeplatinum.us.nds',
    output: [
        'pokeplatinum.us.nds',
        'pokeplatinum.us.nlf'
    ],
    input: [
        main,
        banner_bnr,
        rom_header_template,
        rom_rsf,
        ichneumon_sub,
        ichneumon_sub_defs,
        fixrom_exe,
        nitrofs_files # Make sure this is always listed last
    ], 
    command : [
        'sh', '-c',
        '"$@" && @INPUT6@ @OUTPUT0@ --secure-crc 0xF8B8 --game-code CPUE',
        '--',
        makerom_exe,
        '-DTITLE_NAME=POKEMON PL',
        '-DBNR=@INPUT1@',
        '-DHEADER_TEMPLATE=@INPUT2@',
        '-DARM7=@INPUT4@',
        '-DARM7_DEFS=@INPUT5@',
        '@INPUT3@',
        '@OUTPUT0@',
        '@OUTPUT1@'
    ],
    build_by_default : true
)


############################################################
###                        TESTS                         ###
############################################################
sha1sum = find_program('sha1sum', native: true)

test('SBIN Checksums', sha1sum, args: ['-c', '--quiet', sbins_sha1])
test('ROM Checksum', sha1sum, args: ['-c', '--quiet', rom_sha1])


############################################################
###                       POSTCONF                       ###
############################################################
meson.add_postconf_script(postconf_py)
