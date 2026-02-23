rapidjson_dep = dependency('rapidjson')

# Native tools
subdir('nitroarc') # Contains a library component that other tools depend on
subdir('csv2bin')
subdir('datagen')
subdir('fixrom')
subdir('jsoncnv')
subdir('msgenc')
subdir('nitrogfx')
subdir('ordergen')
subdir('postconf')
subdir('scripts')
subdir('debug')

copy_exe = find_program('cp')

# ARM binutils
arm_none_eabi_gcc_exe = find_program('arm-none-eabi-gcc', native: true)
arm_none_eabi_objcopy_exe = find_program('arm-none-eabi-objcopy', native: true)

# Subproject tools
makelcf_exe = find_program('makelcf', native: true)
nitrorom_exe = find_program('nitrorom', native: true)
SDATTool_py = find_program('SDATTool_py', native: true)
