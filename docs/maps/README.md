# Map documentation

This section of the documentation aims to provide an overview of the different
map-related subsystems, the interaction between them, and how they load their
data from the ROM so that, in the end, the game can seamlessly render a world
in which the player moves.

## Glossary

- **Area**: a collection of maps that load the same set of textures and map prop
  models.
- **BDHC**: contains data used to calculate the height of the terrain. Used for
  collision detection and the map objects height, for example.
- **Map**: a 2D grid of 32x32 tiles that form part of the game's world.
- **Map header**: a structure that contains metadata about a map, such as its
  music, its name, whether cycling is allowed, etc. Each map is associated with
  a map header, and has a specific, well-known ID.
- **Map matrix**: a 2D array of maps that form a playable area. This system allows
  the game to dynamically load and unload maps as the player moves around the world.
  The overworld is one such example of a map matrix, containing 30x30 maps.
- **Map object**: an entity that is placed on the map. Examples include the player
  and NPCs.
- **Map prop**: a 3D model that is placed on the map. Examples include the various
  buildings encountered throughout the game, but also interior furniture, honey
  trees, etc.
- **NARC**: Nitro ARChive, a file format used by Nintendo DS games to store files.
  (think archive as in a `.tar` file, a file that contains files)
- **NSBCA/NSBTA**: a file format used to store animations for 3D models for the
  Nintendo DS. See [apicula's documentation](https://raw.githubusercontent.com/scurest/nsbmd_docs/master/nsbmd_docs.txt)
  for more information.
- **NSBMD**: a file format used to store 3D models, textures and palettes for the
  Nintendo DS. See [apicula's documentation](https://raw.githubusercontent.com/scurest/nsbmd_docs/master/nsbmd_docs.txt)
  for more information.
- **NSBTX**: a file format used to store textures and palettes for the
  Nintendo DS. See [apicula's documentation](https://raw.githubusercontent.com/scurest/nsbmd_docs/master/nsbmd_docs.txt)
  for more information.

## What's in this directory?

- [maps.md](maps.md): a general overview of maps
- [bdhc.md](bdhc.md): an overview of the BDHC subsystem, which is used to provide
  height information on maps
- [loading_maps.md](loading_maps.md): an overview of how maps are loaded by the game
- [file_format_specifications.md](file_format_specifications.md): a more technical
  description of the different files and their data structures that are used to
  store map data

## Credits

- Mikelan98 and HumanGamer for their initial work on BDHC
  ([here](https://projectpokemon.org/home/forums/topic/37816-gen-iv-bdhc-files-terrain-settings/) and
  [here](https://www.pokecommunity.com/threads/i-solved-the-final-piece-of-the-terrain-bdhc-files-in-gen-4-inclines.424428/))
- HiroTDK for their comprehensive documentation on the file formats used in HeartGold
  and SoulSilver ([here](https://hirotdk.neocities.org/FileSpecs))
- scurest for their work on apicula and the associated documentation (linked above)
