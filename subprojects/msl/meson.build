project('msl', ['c', 'nasm'])

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
    '-nostdinc'
]

asm_args = [
    '-proc', 'arm5TE',
    '-gccinc'
]

# Public includes
public_includes = [
    include_directories('include'),
    include_directories('include/MSL_C'),
    include_directories('include/MSL_Extras')
]

# Libraries
msl_libs = []
subdir('libraries')

# Own dependency for consumers
msl_dep = declare_dependency(
    include_directories: public_includes,
    link_with: msl_libs
)