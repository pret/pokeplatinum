project('gamespy', ['c', 'nasm'])

asm_args = [
    '-proc', 'arm5TE',
    '-gccinc'
]

# Public includes
public_includes = include_directories('include')

# Dependencies
msl_dep = dependency('msl', fallback: ['msl', 'msl_dep'])
nitrosdk_dep = dependency('NitroSDK', fallback : ['NitroSDK', 'nitrosdk_dep'])
nitrosystem_dep = dependency('NitroSystem', fallback : ['NitroSystem', 'nitrosystem_dep'])
nitrowifi_dep = dependency('NitroWiFi', fallback : ['NitroWiFi', 'nitrowifi_dep'])

# Libraries
gamespy_libs = []
subdir('libraries')

# Own dependency for consumers
gamespy_dep = declare_dependency(
    compile_args: '-D_NITRO',
    dependencies: [
        msl_dep,
        nitrosdk_dep,
        nitrosystem_dep,
        nitrowifi_dep
    ],
    include_directories: public_includes,
    link_with: gamespy_libs
)