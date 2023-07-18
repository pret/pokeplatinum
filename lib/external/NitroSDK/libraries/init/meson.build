crt0_src = files('src/crt0.c')

# Build dummy lib so that we can compile crt0.c
dummy_crt0 = static_library('dummycrt0',
    sources: [crt0_src, fx_const_h],
    c_args: [c_args, sdk_args],
    dependencies: msl_dep,
    include_directories: [public_includes],
    c_pch: nitro_pch,
    pic: false
)

# Extract crt0.o
crt0_obj = dummy_crt0.extract_all_objects(recursive: true)