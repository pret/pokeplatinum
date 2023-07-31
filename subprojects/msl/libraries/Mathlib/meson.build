mathlib_srcs = files(
    'asm/_d_add.s',
    'asm/_d_dtof.s',
    'asm/_d_dtoi.s',
    'asm/_d_dtou.s',
    'asm/_d_dtoull.s',
    'asm/_d_itod.s',
    'asm/_d_mul.s',
    'asm/_d_sqrt.s',
    'asm/_d_sub.s',
    'asm/_f_add.s',
    'asm/_f_cmp.s',
    'asm/_f_div.s',
    'asm/_f_ftod.s',
    'asm/_f_ftoi.s',
    'asm/_f_ftou.s',
    'asm/_f_itof.s',
    'asm/_f_lltof.s',
    'asm/_f_mul.s',
    'asm/_f_sub.s',
    'asm/_ll_div.s',
    'asm/_ll_mul.s',
    'asm/_ll_sll.s',
    'asm/_s32_div_f.s',
    'asm/_u32_div_f.s',
    'asm/_d_div.s',
    'asm/ieee_status.s'
)

mathlib = static_library('FP_fastI_v5t_LE',
    name_prefix: '',
    sources: mathlib_srcs,
    c_args: [c_args],
    nasm_args: asm_args,
    include_directories: public_includes,
    pic: false
)

msl_libs += mathlib