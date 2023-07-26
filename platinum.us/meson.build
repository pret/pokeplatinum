# Collect inputs for main.lcf
main_lsf = files('main.lsf')
main_lcf_template = subproject('NitroSDK').get_variable('main_lcf_template')

# Generate main.lcf
main_lcf = custom_target('main.lcf',
    output: 'main.lcf',
    input: main_lsf + main_lcf_template,
    command: [makelcf_exe, '@INPUT@','@OUTPUT@']
)

# Collect spec files for later use
banner_bnr = files('banner.bnr')
sbins_sha1 = files('sbins.sha1')
rom_header_template = files('rom_header_template.sbin')
rom_rsf = files('rom.rsf')
rom_sha1 = files('rom.sha1')
