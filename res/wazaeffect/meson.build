subdir('effectclact')
subdir('effectdata')

prebuilt_files = [
    'we_sub.narc',
    'we.arc'
]

foreach f : prebuilt_files
    nitrofs_files += fs.copyfile(f)
endforeach