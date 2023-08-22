project('NitroSDK', ['c', 'nasm'])

# Compiler flags
c_args = [
    '-wrap:ver', '2.0/sp1p2',
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

# Public includes
public_includes = [include_directories('include')]
nitro_pch = meson.current_source_dir() / 'include/pch/nitro_pch.h'

# arm7 components
subdir('components')

# spec files
subdir('specfiles')

# Generated headers
subdir('autogen')
public_includes += include_directories('autogen')

# Libraries
nitrosdk_libs = []
subdir('libraries')

# Own dependency for consumers
nitrosdk_dep = declare_dependency(
    compile_args: sdk_args,
    include_directories: public_includes,
    link_with: nitrosdk_libs,
    objects: crt0_obj,
    sources: fx_const_h
)