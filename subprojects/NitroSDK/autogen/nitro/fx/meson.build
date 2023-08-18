fx_const_csv     = files('fx_const.csv')
gen_fx_const_py  = find_program('gen_fx_const.py', native: true)

fx_const_h = custom_target('fx_const.h',
    input: fx_const_csv,
    output: 'fx_const.h',
    command: [gen_fx_const_py, '@INPUT@', '@OUTPUT@']
)
