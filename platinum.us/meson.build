banner_bsf = files('banner.bsf')
icon_png = files('icon.png')

icon_nbfc = custom_target('icon.nbfc',
    input: icon_png,
    output: 'icon.nbfc',
    command: [nitrogfx_exe, '@INPUT@', '@OUTPUT@' ]
)

icon_nbfp = custom_target('icon.nbfp',
    input: icon_png,
    output: 'icon.nbfp',
    command: [nitrogfx_exe, '@INPUT@', '@OUTPUT@']
)

banner_bnr = custom_target('banner.bnr',
    input: banner_bsf,
    output: 'banner.bnr',
    depends: [icon_nbfc, icon_nbfp],
    command: [makebanner_exe, '@INPUT@', '@OUTPUT@']
)

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
sbins_sha1 = files('sbins.sha1')
filesys_sha1 = files('filesys.sha1')
rom_header_template = files('rom_header_template.sbin')
rom_rsf = files('rom.rsf')
rom_sha1 = files('rom.sha1')
