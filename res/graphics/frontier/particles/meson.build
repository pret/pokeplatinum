frontier_particle_files = files(
    'unused_1.spa',
    'unused_2.spa',
    'battle_hall.spa',
    'battle_arcade_1.spa',
    'battle_arcade_2.spa',
    'battle_factory.spa',
    'battle_castle.spa',
)

frontier_particles_narc = custom_target('frontier_particles_narc',
    output: [
        'frontier_particles.narc',
        'frontier_particles.naix',
    ],
    input: copy_gen.process(frontier_particle_files),
    command: [
        nitroarc_exe,
        '--create',
        '--index',
        '--files-from', files('frontier_particles.order'),
        '--file', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ],
)

nitrofs_files += frontier_particles_narc
naix_headers += frontier_particles_narc[1]
