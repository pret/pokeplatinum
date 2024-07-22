# Native tools
subdir('csv2bin')
subdir('fixrom')
subdir('json2bin')
subdir('msgenc')
subdir('postconf')
subdir('scripts')

# Prebuilt tools
mwrap_exe = find_program('cw/mwrap', native: true)
makebanner_exe = find_program('makebanner', native: true)
makelcf_exe = find_program('makelcf', native: true)
makerom_exe = find_program('makerom', native: true)

# ARM binutils
arm_none_eabi_gcc_exe = find_program('arm-none-eabi-gcc', native: true)
arm_none_eabi_objcopy_exe = find_program('arm-none-eabi-objcopy', native: true)

# External tools
nitrogfx_exe = find_program('nitrogfx', native: true)
knarc_exe = find_program('knarc', native: true)
constgen_py = find_program('constgen_py', native: true)
SDATTool_py = find_program('SDATTool_py', native: true)
