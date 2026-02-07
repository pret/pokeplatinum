subdir('pl_etc')
subdir('pl_frontier')

prebuilt_files = [
    'particledata.narc'
]

foreach f : prebuilt_files
    nitrofs_files += fs.copyfile(f)
endforeach
