json2bin_env = environment()
json2bin_env.set('PYTHONPATH', meson.project_build_root()) # access to constants geneated by constgen

# Old combined parser + packer scripts
movedata_py = find_program('movedata.py', native: true)
pokemon_personal_data_py = find_program('pokemon_personal_data.py', native: true)
pokemon_wotbl_data_py = find_program('pokemon_wotbl_data.py', native: true)
evo_py = find_program('evo.py', native: true)
pl_poke_data_py = find_program('pl_poke_data.py', native: true)

# New single-file-parser scripts
encounter_py = find_program('encounter.py', native: true)
event_py = find_program('event.py', native: true)
trainer_data_py = find_program('trainer_data.py', native: true)
trainer_party_py = find_program('trainer_party.py', native: true)
encdata_ex_elusive_rod_py = find_program('encdata_ex_elusive_rod.py', native: true)
encdata_ex_honey_trees_py = find_program('encdata_ex_honey_trees.py', native: true)
encdata_ex_trophy_garden_py = find_program('encdata_ex_trophy_garden.py', native: true)
encdata_ex_great_marsh_py = find_program('encdata_ex_great_marsh.py', native: true)
