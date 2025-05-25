# This build file contains all definitions for building trainer graphics
# Specifically, it handles:
#     - trfgra - front sprites for each trainer class
#     - trbgra - back sprites for trainer classes
#     - field_encounteffect - encounter graphics when triggering battle

#######################
## SOURCE FILE LISTS ##
#######################
trainer_front_files = []
trainer_back_files = []

# 1. These static files must always exist.
trainer_encounter_files = files(
    '.shared/enc_trainer.pal',
    '.shared/enc_galactic.pal',
    '.shared/enc_trainer_low.png',
    '.shared/enc_trainer_low_anim.json',
    '.shared/enc_trainer_low_cell.json',
    '.shared/enc_trainer_high.png',
    '.shared/enc_trainer_high_anim.json',
    '.shared/enc_trainer_high_cell.json',
    '.shared/enc_galactic.png',
    '.shared/enc_galactic_anim.json',
    '.shared/enc_galactic_cell.json',
    '.shared/enc_fade.pal',
    '.shared/dummy_banner.pal',
    '.shared/dummy_banner.png',
    '.shared/dummy_banner.NSCR',
    '.shared/league_banner.png',
    '.shared/league_banner_cell.json',
    '.shared/league_banner_anim.json',
    '.shared/dummy_mugshot.pal',
    '.shared/dummy_mugshot.png',
    '.shared/dummy_mugshot_cell.json',
    '.shared/dummy_mugshot_anim.json',
    '.shared/league_vs.pal',
    '.shared/league_vs.png',
    '.shared/league_vs_cell.json',
    '.shared/league_vs_anim.json',
    '.shared/elite_particle_1.spa',
    '.shared/elite_particle_2.spa',
    '.shared/frontier_vs.png',
    '.shared/frontier_vs_cell.json',
    '.shared/frontier_vs_anim.json',
)

# 2. Register trainer classes. The contents of each output file is a listing
#    of subdirectories which contains some assets that must be compiled.
trainer_class_consts = fs.read(trainer_classes_txt).splitlines()
trainer_class_dirnames = []
foreach trainer_class : trainer_class_consts
  trainer_class_dirnames += trainer_class.replace('TRAINER_CLASS_', '').to_lower()
endforeach

# 3. Walk trainer class subdirectories; `trainer_class_dirnames` is the authority.
foreach trainer_class : trainer_class_dirnames
    subdir(trainer_class)
endforeach

# dp_rival is not a trainer class
# but the back sprite is present in the default rom
subdir('dp_rival')

# Stash the listing of trainer classes in an environment so that other processes can make
# use of it.
trainer_class_env = environment()
trainer_class_env.append('TRAINER_CLASS', trainer_class_dirnames, separator: ';')
trainer_class_env.append('PYTHONPATH', meson.project_build_root()) # For python scripts

# 4. Compile assets. Compilers take registries as inputs and declare dependencies
#    on the actual source files. The former prevents command line bloat; the
#    latter maintains that compilation must reoccur when source files change.

trfgra_narc = custom_target('trfgra.narc',
    output: [
        'trfgra.narc',
        'trfgra.naix.h',
    ],
    input: trainer_front_files,
    command: [
        make_trfgra_py,
        '--nitrogfx', nitrogfx_exe,
        '--narc', narc_exe,
        '--source-dir', '@CURRENT_SOURCE_DIR@',
        '--private-dir', '@PRIVATE_DIR@',
        '--output-dir', '@OUTDIR@',
    ],
    env: trainer_class_env,
    depends: [ py_consts_generators ],
)
naix_headers += trfgra_narc[1]

trbgra_narc = custom_target('trbgra.narc',
    output: [
        'trbgra.narc',
        'trbgra.naix.h',
    ],
    input: trainer_back_files,
    command: [
        make_trbgra_py,
        '--nitrogfx', nitrogfx_exe,
        '--narc', narc_exe,
        '--source-dir', '@CURRENT_SOURCE_DIR@',
        '--private-dir', '@PRIVATE_DIR@',
        '--output-dir', '@OUTDIR@',
    ],
    env: trainer_class_env,
    depends: [ py_consts_generators ],
)
naix_headers += trbgra_narc[1]

field_encounteffect_order = files('field_encounteffect.order')

field_encounteffect_narc = custom_target('field_encounteffect.narc',
    output: [
        'field_encounteffect.narc',
        'field_encounteffect.naix.h',
    ],
    input: [
        trainer_encounter_files,
        field_encounteffect_order,
    ],
    command: [
        make_field_encounteffect_py,
        '--nitrogfx', nitrogfx_exe,
        '--narc', narc_exe,
        '--source-dir', '@CURRENT_SOURCE_DIR@',
        '--private-dir', '@PRIVATE_DIR@',
        '--output-dir', '@OUTDIR@',
    ],
    env: trainer_class_env,
    depends: [ py_consts_generators ],
)
naix_headers += field_encounteffect_narc[1]

nitrofs_files += trfgra_narc
nitrofs_files += trbgra_narc
nitrofs_files += field_encounteffect_narc
