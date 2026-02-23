# This build file contains all definitions for building trainer graphics
# Specifically, it handles:
#     - trfgra - front sprites for each trainer class
#     - trbgra - back sprites for trainer classes
#     - field_encounteffect - encounter graphics when triggering battle

#######################
## SOURCE FILE LISTS ##
#######################
trainer_front_png = []
trainer_front_cell_json = []
trainer_front_anim_json = []
trainer_front_pal = []
trainer_front_scan_png = []

trainer_back_png = []
trainer_back_cell_json = []
trainer_back_anim_json = []
trainer_back_pal = []
trainer_back_scan_png = []

trainer_encounter_mugshot_png = []
trainer_encounter_banner_png = []
trainer_encounter_frontier_png = []
trainer_encounter_cell_json = []
trainer_encounter_anim_json = []
trainer_encounter_pal = []
trainer_encounter_copy = []
trainer_encounter_dummy_png = []

# 1. These static files must always exist.
trainer_encounter_mugshot_png = files(
    '.shared/enc_trainer_low.png',
    '.shared/enc_trainer_high.png',
    '.shared/enc_galactic.png',
    '.shared/league_banner.png',
    '.shared/dummy_mugshot.png',
    '.shared/vs.png',
)
trainer_encounter_cell_json += files(
    '.shared/enc_trainer_low_cell.json',
    '.shared/enc_trainer_high_cell.json',
    '.shared/enc_galactic_cell.json',
    '.shared/league_banner_cell.json',
    '.shared/dummy_mugshot_cell.json',
    '.shared/vs_cell.json',
    '.shared/frontier_vs_cell.json',
)
trainer_encounter_anim_json += files(
    '.shared/enc_trainer_low_anim.json',
    '.shared/enc_trainer_high_anim.json',
    '.shared/enc_galactic_anim.json',
    '.shared/league_banner_anim.json',
    '.shared/dummy_mugshot_anim.json',
    '.shared/vs_anim.json',
)
trainer_encounter_pal += files(
    '.shared/enc_trainer.pal',
    '.shared/enc_galactic.png',
    '.shared/enc_fade.pal',
    '.shared/dummy_banner.png',
    '.shared/dummy_mugshot.png',
    '.shared/vs.png',
)
trainer_encounter_copy += files(
    '.shared/dummy_banner.NSCR',
    '.shared/elite_particle_1.spa',
    '.shared/elite_particle_2.spa',
)
trainer_encounter_dummy_png += files(
    '.shared/dummy_banner.png',
)

# battle frontier repeats the vs icon
# the cell file is unique due to differing mapping types
frontier_vs_png = files(
    '.shared/vs.png',
)
frontier_vs_anim_json = files(
    '.shared/vs_anim.json',
)


# 2. Register trainer classes. The contents of each output file is a listing
#    of subdirectories which contains some assets that must be compiled.
trainer_class_consts = fs.read(trainer_classes_txt).splitlines()
trainer_class_dirnames = []
foreach trainer_class : trainer_class_consts
  trainer_class_dirnames += trainer_class.replace('TRAINER_CLASS_', '').to_lower()
endforeach

# 3. Walk trainer class subdirectories; `trainer_class_dirnames` is the authority.

frontier_brains = [
    'castle_valet',
    'factory_head',
    'arcade_star',
    'hall_matron',
    'tower_tycoon',
]

castle_valet = ['castle_valet']
castle_valet_png = []

foreach trainer_class : trainer_class_dirnames
    # castle valet has a special front sprite with overlapping OAMs
    if castle_valet.contains(trainer_class)
        castle_valet_png += files(trainer_class / 'front.png')
    else
        trainer_front_png += files(trainer_class / 'front.png')
    endif
    trainer_front_cell_json += files(trainer_class / 'front_cell.json')
    trainer_front_anim_json += files(trainer_class / 'front_anim.json')
    trainer_front_scan_png += files(trainer_class / 'front_scan.png')

    if fs.exists(trainer_class / 'back.png')
        trainer_back_png += files(trainer_class / 'back.png')
        trainer_back_cell_json += files(trainer_class / 'back_cell.json')
        trainer_back_anim_json += files(trainer_class / 'back_anim.json')
        trainer_back_scan_png += files(trainer_class / 'back_scan.png')
    endif

    if fs.exists(trainer_class / 'mugshot.png')
        if frontier_brains.contains(trainer_class)
            trainer_encounter_frontier_png += files(trainer_class / 'mugshot.png')
        else
            trainer_encounter_mugshot_png += files(trainer_class / 'mugshot.png')
        endif
        trainer_encounter_cell_json += files(trainer_class / 'mugshot_cell.json')
        trainer_encounter_anim_json += files(trainer_class / 'mugshot_anim.json')
        trainer_encounter_pal += files(trainer_class / 'mugshot.png')
    endif
    if fs.exists(trainer_class / 'banner.png')
        trainer_encounter_banner_png += files(trainer_class / 'banner.png')
        trainer_encounter_pal += files(trainer_class / 'banner.png')
        trainer_encounter_copy += files(trainer_class / 'banner.NSCR')
    endif
    # league shares banner assets, so they only have palettes
    if fs.exists(trainer_class / 'banner.pal')
        trainer_encounter_pal += files(trainer_class / 'banner.pal')
    endif
endforeach

# dp_rival is not a trainer class
# but the back sprite is present in the default rom
trainer_back_png += files('dp_rival' / 'back.png')
trainer_back_cell_json += files('dp_rival' / 'back_cell.json')
trainer_back_anim_json += files('dp_rival' / 'back_anim.json')
trainer_back_scan_png += files('dp_rival' / 'back_scan.png')

# Stash the listing of trainer classes in an environment so that other processes can make
# use of it.
trainer_class_env = environment()
trainer_class_env.append('TRAINER_CLASSES', trainer_class_dirnames, separator: ';')
trainer_class_env.append('PYTHONPATH', meson.project_build_root()) # For python scripts

# 4. Compile assets. Compilers take registries as inputs and declare dependencies
#    on the actual source files. The former prevents command line bloat; the
#    latter maintains that compilation must reoccur when source files change.
trgra_orders = custom_target('trgra_orders',
    output: [
        'trfgra.order',
        'trbgra.order',
    ],
    command: [ ordergen_trainer_graphics_py, '@CURRENT_SOURCE_DIR@', '@OUTPUT0@', '@OUTPUT1@' ],
    env: trainer_class_env,
    depends: [ py_consts_generators ],
)
trfgra_order = trgra_orders[0]
trbgra_order = trgra_orders[1]

trainer_classes_root = meson.current_source_dir()


trainer_front_NCGR = ncgr_cell_gen.process(trainer_front_png,
    extra_args: [
        '-version101',
        '-vram',
        '-clobbersize',
        '-mappingtype', '64',
        '-convertTo4Bpp',
    ],
    preserve_path_from: trainer_classes_root,
)
trainer_front_NCER = ncer_gen.process(trainer_front_cell_json,
    preserve_path_from: trainer_classes_root,)
trainer_front_NANR = nanr_gen.process(trainer_front_anim_json,
    preserve_path_from: trainer_classes_root,)
trainer_front_png += 'castle_valet/front.png'
trainer_front_NCLR = nclr_gen.process(trainer_front_png,
    extra_args: [
        '-bitdepth', '4',
    ],
    preserve_path_from: trainer_classes_root,
)
trainer_front_scan_NCGR = ncgr_gen.process(trainer_front_scan_png,
    extra_args: [
        '-encodefronttoback',
        '-scan',
    ],
    preserve_path_from: trainer_classes_root,
)

castle_valet_NCGR = ncgr_gen.process(castle_valet_png,
    extra_args: [
        '-cell', trainer_classes_root / 'castle_valet/front_cell_key.json',
        '-version101',
        '-vram',
        '-clobbersize',
        '-mappingtype', '64',
        '-convertTo4Bpp',
    ],
    preserve_path_from: trainer_classes_root,
)

trfgra_narc = custom_target('trfgra.narc',
    output: [
        'trfgra.narc',
        'trfgra.naix',
    ],
    input: [
        trainer_front_NCGR,
        trainer_front_NCER,
        trainer_front_NANR,
        trainer_front_NCLR,
        trainer_front_scan_NCGR,
        castle_valet_NCGR,
    ],
    command: [
        nitroarc_exe,
        '--create',
        '--index',
        '--files-from', trfgra_order,
        '--file', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ],
)
naix_headers += trfgra_narc[1]


trainer_back_NCGR = ncgr_cell_gen.process(trainer_back_png,
    extra_args: [
        '-version101',
        '-vram',
        '-clobbersize',
        '-mappingtype', '64',
        '-convertTo4Bpp',
    ],
    preserve_path_from: trainer_classes_root,
)
trainer_back_NCER = ncer_gen.process(trainer_back_cell_json,
    preserve_path_from: trainer_classes_root,)
trainer_back_NANR = nanr_gen.process(trainer_back_anim_json,
    preserve_path_from: trainer_classes_root,)
trainer_back_NCLR = nclr_gen.process(trainer_back_png,
    extra_args: [
        '-bitdepth', '4',
    ],
    preserve_path_from: trainer_classes_root,
)
trainer_back_scan_NCGR = ncgr_gen.process(trainer_back_scan_png,
    extra_args: [
        '-encodefronttoback',
        '-scan',
    ],
    preserve_path_from: trainer_classes_root,
)

trbgra_narc = custom_target('trbgra.narc',
    output: [
        'trbgra.narc',
        'trbgra.naix',
    ],
    input: [
        trainer_back_NCGR,
        trainer_back_NCER,
        trainer_back_NANR,
        trainer_back_NCLR,
        trainer_back_scan_NCGR,
    ],
    command: [
        nitroarc_exe,
        '--create',
        '--index',
        '--files-from', trbgra_order,
        '--file', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ],
)
naix_headers += trbgra_narc[1]


# battle frontier repeats the vs icon
ncgr_gen_frontier_vs = generator(nitrogfx_exe,
    arguments: [ '@INPUT@', '@OUTPUT@', '@EXTRA_ARGS@', ],
    output: 'frontier_@BASENAME@.NCGR',
)
nanr_gen_frontier_vs = generator(nitrogfx_exe,
    arguments: [ '@INPUT@', '@OUTPUT@', '@EXTRA_ARGS@', ],
    output: 'frontier_@BASENAME@.NANR'
)
frontier_vs_NCGR = ncgr_gen_frontier_vs.process(frontier_vs_png,
    extra_args: [
        '-cell', '-preservepath',
        '-version101',
        '-clobbersize',
        '-mappingtype', '128',
        '-convertTo4Bpp',
    ],
    preserve_path_from: trainer_classes_root,
)
frontier_vs_anim_NANR = nanr_gen_frontier_vs.process(frontier_vs_anim_json,
    preserve_path_from: trainer_classes_root,)

trainer_encounter_mugshot_NCGR = ncgr_cell_gen.process(trainer_encounter_mugshot_png,
    extra_args: [
        '-version101',
        '-clobbersize',
        '-convertTo4Bpp',
    ],
    preserve_path_from: trainer_classes_root,
)
trainer_encounter_banner_NCGR = ncgr_gen.process(trainer_encounter_banner_png,
    extra_args: [
        '-version101',
        '-sopc',
        '-convertTo4Bpp',
    ],
    preserve_path_from: trainer_classes_root,
)
trainer_encounter_frontier_NCGR = ncgr_cell_gen.process(trainer_encounter_frontier_png,
    extra_args: [
        '-version101',
        '-clobbersize',
        '-mappingtype', '128',
        '-convertTo4Bpp',
    ],
    preserve_path_from: trainer_classes_root,
)
trainer_encounter_dummy_NCGR = ncgr_gen.process(trainer_encounter_dummy_png,
    extra_args: [
        '-version101',
        '-sopc',
        '-bitdepth', '8',
    ],
    preserve_path_from: trainer_classes_root,
)
trainer_encounter_NCER = ncer_gen.process(trainer_encounter_cell_json,
    preserve_path_from: trainer_classes_root,)
trainer_encounter_NANR = nanr_gen.process(trainer_encounter_anim_json,
    preserve_path_from: trainer_classes_root,)
trainer_encounter_NCLR = nclr_gen.process(trainer_encounter_pal,
    extra_args: [
        '-bitdepth', '4',
    ],
    preserve_path_from: trainer_classes_root,
)
trainer_encounter_paste = copy_gen.process(trainer_encounter_copy,
    preserve_path_from: trainer_classes_root,)

field_encounteffect_narc = custom_target('field_encounteffect.narc',
    output: [
        'field_encounteffect.narc',
        'field_encounteffect.naix',
    ],
    input: [
        trainer_encounter_mugshot_NCGR,
        trainer_encounter_banner_NCGR,
        trainer_encounter_frontier_NCGR,
        trainer_encounter_dummy_NCGR,
        trainer_encounter_NCER,
        trainer_encounter_NANR,
        trainer_encounter_NCLR,
        trainer_encounter_paste,
        frontier_vs_NCGR,
        frontier_vs_anim_NANR,
    ],
    command: [
        nitroarc_exe,
        '--create',
        '--index',
        '--files-from', files('field_encounteffect.order'),
        '--file', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ],
)
naix_headers += field_encounteffect_narc[1]

nitrofs_files += trfgra_narc
nitrofs_files += trbgra_narc
nitrofs_files += field_encounteffect_narc
