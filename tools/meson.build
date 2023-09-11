# Native tools
subdir('csv2bin')
subdir('fixrom')
subdir('json2bin')
subdir('knarc')
subdir('msgenc')
subdir('postconf')

# Prebuilt tools
makebanner_exe = find_program('makebanner', native: true)
makelcf_exe = find_program('makelcf', native: true)
makerom_exe = find_program('makerom', native: true)

# External tools
nitrogfx_exe = find_program('nitrogfx', native: true, required: false)
if not nitrogfx_exe.found()
    subproject('nitrogfx', default_options: 'native=true')
    nitrogfx_exe = find_program('nitrogfx', native: true)
endif
