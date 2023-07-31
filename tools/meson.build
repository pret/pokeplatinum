# Native tools
subdir('csv2bin')
subdir('fixrom')
subdir('knarc')
subdir('msgenc')
subdir('postconf')

# Prebuilt tools
makebanner_exe = find_program('makebanner', native: true)
makelcf_exe = find_program('makelcf', native: true)
makerom_exe = find_program('makerom', native: true)

# External tools
nitrogfx_exe = subproject('nitrogfx').get_variable('nitrogfx_exe')
