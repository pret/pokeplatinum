project('ppwlobby', ['c', 'nasm'])

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
nitrodwc_dep = dependency('NitroDWC', fallback : ['NitroDWC', 'nitrodwc_dep'])

# Public includes
public_includes = include_directories('include')

# Libraries
ppwlobby_libs = []
subdir('libraries')

# Own dependency for consumers
ppwlobby_dep = declare_dependency(
    compile_args: sdk_args,
    dependencies: [nitrodwc_dep],
    include_directories: public_includes,
    link_with: ppwlobby_libs
)