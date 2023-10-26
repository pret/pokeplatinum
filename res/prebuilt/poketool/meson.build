subdir('icongra')
subdir('personal')
subdir('poke_edit')
subdir('pokeanm')
subdir('pokefoot')
subdir('pokegra')
subdir('trainer')
subdir('trgra')
subdir('trmsg')
subdir('waza')

prebuilt_files = [
    'pl_pokezukan.narc',
    'pokezukan.narc',
    'shinzukan.narc'
]

foreach f : prebuilt_files
    nitrofs_files += fs.copyfile(f)
endforeach