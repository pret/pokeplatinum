project('NitroSystem', ['c', 'nasm'])

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
nitrosdk_dep = dependency('NitroSDK', fallback : ['NitroSDK', 'nitrosdk_dep'])

# Public includes
public_includes = include_directories('include')
nitro_pch = subproject('NitroSDK').get_variable('nitro_pch')

# Libraries
nitrosystem_libs = []
subdir('libraries')

# Own dependency for consumers
nitrosystem_dep = declare_dependency(
    compile_args: sdk_args,
    dependencies: nitrosdk_dep,
    include_directories: public_includes,
    link_with: nitrosystem_libs
)