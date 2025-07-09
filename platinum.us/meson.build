# Collect inputs for main.lcf
main_lsf = files('main.lsf')
main_lcf_template = subproject('NitroSDK').get_variable('main_lcf_template')

# Generate main.lcf
main_lcf = custom_target('main.lcf',
    output: 'main.lcf',
    input: main_lsf + main_lcf_template,
    command: [makelcf_exe, '@INPUT@','@OUTPUT@']
)

# Collect ROM inputs for later use
filesys_csv = files('filesys.csv')
icon_png = files('icon.png')
if get_option('rev1')
    rom_header_template = files('rom_header_template_rev1.sbin')
    rom_ini = files('rom_rev1.ini')
else
    rom_header_template = files('rom_header_template.sbin')
    rom_ini = files('rom.ini')
endif

# Collect SHA-sums for later use
filesys_sha1 = files('filesys.sha1')
if get_option('rev1')
    sbins_sha1 = files('sbins_rev1.sha1')
    rom_sha1 = files('rom_rev1.sha1')
else
    sbins_sha1 = files('sbins.sha1')
    rom_sha1 = files('rom.sha1')
endif
