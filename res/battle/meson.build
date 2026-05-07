# We must walk into this directory first; all other battle-scripts need access
# to the index for the battle particles NARC.
subdir('particles')

# This generator is shared by both move-specific animations (in the `moves`
# directory) and common animations (in the `scripts/common_anims` directory).
battle_anim_script_bin_gen = generator(make_script_bin_sh,
    arguments: [
        '-i', relative_source_root / 'include',
        '-i', relative_source_root / 'asm',
        '-i', '.',
        '--depfile', '@DEPFILE@',
        '--enumproc', enumproc_exe.full_path(),
        '--assembler', arm_none_eabi_gcc_exe.full_path(),
        '--objcopy', arm_none_eabi_objcopy_exe.full_path(),
        '@EXTRA_ARGS@',
        '@INPUT@',
    ],
    depends: [
        enumproc_exe,
        text_banks,
        c_consts_generators,
        h_headers,
        battle_particles_narc[1],
        anim_ncer_narc_files[1],
        anim_nanr_narc_files[1],
        anim_ncgr_narc_files[1],
        anim_nclr_narc_files[1],
    ],
    output: '@BASENAME@',
    depfile: '@BASENAME@.d',
)

subdir('moves')
subdir('scripts')
