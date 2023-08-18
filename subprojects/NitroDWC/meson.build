project('NitroDWC', ['c', 'nasm'])

# Compiler flags
c_args = [
    '-O4,p',
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
    '-stdinc'
]

asm_args = [
    '-proc', 'arm5TE',
    '-gccinc'
]

sdk_args = [
    '-DSDK_CW_FORCE_EXPORT_SUPPORT',
    '-DSDK_TS',
    '-DSDK_4M',
    '-DSDK_ARM9',
    '-DSDK_CW',
    '-DSDK_FINALROM',
    '-DSDK_CODE_ARM',
    '-DNNS_FINALROM'
]

# Dependencies
gamespy_dep = dependency('gamespy', fallback : ['gamespy', 'gamespy_dep'])
nitrosdk_dep = dependency('NitroSDK', fallback : ['NitroSDK', 'nitrosdk_dep'])
nitrosystem_dep = dependency('NitroSystem', fallback : ['NitroSystem', 'nitrosystem_dep'])
nitrowifi_dep = dependency('NitroWiFi', fallback : ['NitroWiFi', 'nitrowifi_dep'])

# Public includes
public_includes = include_directories('include')
nitro_pch = subproject('NitroSDK').get_variable('nitro_pch')

# Libraries
nitrodwc_libs = []
subdir('libraries')

# Own dependency for consumers
nitrodwc_dep = declare_dependency(
    compile_args: sdk_args,
    dependencies: [
        gamespy_dep,
        nitrosdk_dep,
        nitrosystem_dep,
        nitrowifi_dep
    ],
    include_directories: public_includes,
    link_with: nitrodwc_libs
)