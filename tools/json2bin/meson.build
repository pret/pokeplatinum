json2bin_env = environment()
json2bin_env.set('PYTHONPATH', meson.project_build_root()) # access to constants geneated by constgen

# Old combined parser + packer scripts
movedata_py = find_program('movedata.py', native: true)

# New single-file-parser scripts
encounter_py = find_program('encounter.py', native: true)
event_py = find_program('event.py', native: true)
encdata_ex_elusive_rod_py = find_program('encdata_ex_elusive_rod.py', native: true)
encdata_ex_honey_trees_py = find_program('encdata_ex_honey_trees.py', native: true)
encdata_ex_trophy_garden_py = find_program('encdata_ex_trophy_garden.py', native: true)
encdata_ex_great_marsh_py = find_program('encdata_ex_great_marsh.py', native: true)
lighting_py = find_program('lighting.py', native: true)
map_matrix_py = find_program('map_matrix.py', native: true)
npc_trades_py = find_program('npc_trades.py', native: true)
prop_model_set_py = find_program('prop_model_set.py', native: true)
