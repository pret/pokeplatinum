msl_runtime_srcs = files(
    'asm/semihosted_console_io.s',
    'asm/compressednumbers.s',
    'asm/exceptionhandler.s',
    'asm/new.s',
    'asm/staticinitializer.s',
    'asm/cxxabi_rtti.s',
    'asm/mwexception.s',
    'asm/__nitro_eabi_init.s'
)

msl_runtime = static_library('NITRO_Runtime_Ai_LE',
    name_prefix: '',
    sources: msl_runtime_srcs,
    c_args: c_args,
    nasm_args: asm_args,
    include_directories: public_includes,
    pic: false
)

msl_libs += msl_runtime
