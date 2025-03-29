# Maps

This document aims to provide an overview of how the playground is constructed,
excluding BDHC, which is covered in [its own document](bdhc.md).

## Introduction

Maps are the main building block of the playground. They are defined by various
properties, which are explored throughout this document.

Maps in Pokémon Platinum are a bit of a hybrid between 2D and 3D: they retain a
2D grid system that was used in previous games, on which the terrain attributes
dictate the collision and behavior of each tile, and on which map objects (such
as the player) are constrained.

They also have 3D elements, such as the map model which is used to render the
map, and the BDHC subsystem which is used to add height and height variations
to the terrain.

Basically, from the 2D perspective, we can consider that a map is a grid of 32x32
tiles. From the 3D perspective, we can consider that a map is a grid of 512x512 units,
where each unit is 1/16th of a tile, and where the height at any point is given
by one or more BDHC plates.

## Map

### Map header

The map header is a structure that contains metadata about a map. It is the
starting point of loading maps, and is what is stored in the save data to keep
track of the player's position, alongside their X and Z coordinates.

The map header contains various identifiers to other data structures:

- the area data to load
- the map matrix in which the map is located
- the scripts and initialization scripts of the map
- the text bank that contains the messages of the map
- the music to play during day and night
- the wild encounters data
- the events data
- the map name
- the background used when displaying the map name

It also directly contains various properties:

- the weather
- the camera type
- the type of map
- the background used during battles
- whether cycling is allowed
- whether running is allowed
- whether the escape rope can be used
- whether fly can be used

### Map data

Stored in another archive inside the ROM, the map data contains the bulk of
what's needed to render a map and have a player interact with it.

The map data contains the following:

- attributes for each tile of the map, which dictates whether a tile can be
  walked on (collision data), and how the tile behaves when interacted with:
  is it tall grass, water, a trash can, etc.
- the base 3D model of the map, which is stored inside an NSBMD container
- the BDHC data

| Everything rendered                                                                                        | Map model only                                                                                                                       |
| ---------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------ |
| ![Image of Jubilife City](https://github.com/user-attachments/assets/953bafe8-7a55-4843-82c1-298da1a2cfb6) | ![Image of Jubilife City without objects and props](https://github.com/user-attachments/assets/c0787f2f-7e0c-4a7b-ae99-b1f934dcd6fa) |

Above is an image of Jubilife City with only the map model (which means, without
the map objects and map props) to get a good grasp at what the base map contains.

Stored inside the map data is also the instances of the map props placed on the map,
having the following properties:

- the identifier to the 3D model of the map prop
- its position on the map
- its rotation on the map
- the scale at which it should be rendered

| Everything rendered                                                                                        | Map props only                                                                                                                              |
| ---------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------- |
| ![Image of Jubilife City](https://github.com/user-attachments/assets/953bafe8-7a55-4843-82c1-298da1a2cfb6) | ![Image of Jubilife City without the base model and props](https://github.com/user-attachments/assets/3263671c-509d-4fc1-8f80-905e4e4d1baf) |

## Map matrix

Map matrices are the game's way of organizing maps in a grid. They are used to
create a coherent world, where maps are connected to each other, and where the
player can seamlessly move from one map to another.

There exist multiple map matrices in the game, the two biggest ones being the
overworld map matrix (being 30x30 maps) and the underground map matrix (being
15x15 maps). However, the vast majority of map matrices do not exceed 2x2 maps,
and are used for small, interior areas such as buildings or caves.

Map matrices contain the following properties:

- a height and a width (in maps)
- the IDs of the map headers of each map in the matrix
- the IDs of the map data of each map in the matrix
- altitudes for each map, which affects the height at which the map and its
  props are rendered

## Area

Areas are basically a middle ground between maps and map matrices. They are used
to group maps together, and a map matrix can have multiple areas. On the contrary,
a map can only belong to one area.

Here are the areas of the overworld map matrix:

![Area IDs of the overworld](https://github.com/user-attachments/assets/93da276c-cbee-4a4a-b120-63af10a18373)

If you checked what's present in the border between two areas, you'd see that there is
a gate, a cave, or any other kind of warp. This illustrates how gates are used to force
a warp, which allows the game to load a different set of resources (but a warp doesn't
necessarily mean a change of area).

Areas regroup rendering resources common to multiple maps, and that are loaded
when entering a map in the area. This includes:

- the 3D models of the map props
- the textures of the map props
- the animation data of the map props
- the textures of the map models
- the lighting configuration, described below

### Lighting

Lighting data is actually dictated by area rather than map. This data is intimately
linked to the Nintendo DS 3D hardware, and directly maps to its capabilities.

The Nintendo DS supports 4 different lights, each with their own direction vector
and color, and those lights can be toggled on and off to only affect certain polygons.

In game, this translates to the following usage:

| Light # | Screenshot                                                                                                       | Used on (non-exhaustive)                                                                      |
| ------- | ---------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| Light 0 | ![Map with light 0 colored red](https://github.com/user-attachments/assets/0f8d5f48-0eb5-46fa-9d7a-97b4cae2024c) | 2D sprites, base 3D model of the map, most of the polygons of map props                       |
| Light 1 | N/A                                                                                                              | Seemingly unused                                                                              |
| Light 2 | ![Map with light 2 colored red](https://github.com/user-attachments/assets/1412f228-09ef-4f16-9a9c-dca1257aeae4) | Building windows                                                                              |
| Light 3 | ![Map with light 3 colored red](https://github.com/user-attachments/assets/0ea2d3ec-8c15-46e8-b6aa-8905a617b856) | Lamp post lights, building lights and doors (only glass doors: PokéCenter, PokéMart, Gyms...) |

In the above screenshots, the corresponding lights are in red.

The game supports 4 different "lighting configurations":

- the first one is used by outside areas
- the second one is used by inside areas
- the third one is used by some specific areas (Lost Tower, Mount Coronet and
  Iron Island)
- the fourth one is seemingly unused

Those lighting configurations are also affected by the current wall time, which
allows the game to change lighting depending on the time of the day.
