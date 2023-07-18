msl_extras_srcs = files('asm/extras.s')

msl_extras = static_library('MSL_Extras_NITRO_Ai_LE',
    name_prefix: '',
    sources: msl_extras_srcs,
    c_args: c_args,
    nasm_args: asm_args,
    include_directories: public_includes,
    pic: false
)

msl_libs += msl_extras
