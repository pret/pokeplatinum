# Dynamic map features

This document aims to provide an overview of the dynamic map features system,
as well as the ones that are implemented in the game.

## Introduction

Dynamic map features are defined as features that can change the layout of a
map according to player inputs.

We distinguish between two kinds of data that can be used to define those features:

- **Dynamic map features data** (or "_runtime data_"): this is data that is specific to a
  dynamic map feature, and is only available at runtime. For example, in the Canalave Gym,
  this contains the instances of the map props that are used to create the movable platforms.
- **Persisted map features data** (or "_persisted data_"): this is a small 32 bytes buffer
  that is allocated in the save file for dynamic map features to store state that must persist
  if the game is saved and loaded.

    For example, in the Canalave Gym, this contains the position of the movable platforms,
    so that they can be restored when the game is loaded. This avoids having the player
    stuck in a part of the Gym because the platforms were reset to their original
    position.

    This saved data is considered valid only when the player has saved the game
    in the map that contains the dynamic map feature.

> [!WARNING]
> This system may be a bit restrictive to use, as there can only be one dynamic
> map feature active at one point, for all loaded maps.
>
> This is certainly the reason why the game doesn't use them in the overworld, but
> rather in dungeons, where the player is confined to a small (usually 1x1) map
> matrix.

Dynamic map features may encompass multiple map headers. Examples include the
Sunyshore Gym dynamic map features with its bridges in multiple rooms, or the
Platform Lift dynamic map features that handles maps with platform lifts (some
rooms in Iron Island and the Pokémon League).

This _does not_ include obstacles such as movable boulders or breakable rocks.

### Using dynamic map features

To make use of a dynamic map feature, a map must first call the associated
`InitPersistedMapFeaturesForX` script command in a script that is only executed when
the player enters the map. This will initialize the persisted data for the map, which
will determine which dynamic map feature is active.

> [!NOTE]
> This script command must only be called when the player enters the map,
> and _not_ when the save file is loaded. This is because this script command
> initializes persisted data to its default values, which would defeat the purpose
> of persisting the data if it is called when the save file is loaded.

Once the persisted data is initialized, the game will set up the runtime data for
the dynamic map feature, based on the ID of the dynamic map feature that was set
in the persisted data.

The dynamic map features define an interface in the code that is made up of
the following functions:

- `X_DynamicMapFeaturesInit` (required): this initializes the runtime data.
  It usually uses the persisted data to correctly set up the runtime data
  based on what has been saved in the save file.

    Contrary to its equivalent in persisted data, this function is called
    when the map is loaded, which also includes when the save file is loaded.

- `X_DynamicMapFeaturesFree` (optional): this frees up the resources used
  by the dynamic map feature, when it is no longer needed.
- `X_DynamicMapFeaturesCheckCollision` (optional): this is called by the
  terrain collision manager, and allows dynamic map features to affect the
  collision of the map. For example, this is used in the Villa to prevent the
  player from walking through furniture that they have bought.

All dynamic map features are defined in the game code directly, and adding new
ones, modifying existing ones, or using an existing one on a custom map requires
modifying the game code.

Even though initializing a dynamic map feature for a map is done in the
scripts of this map, the actual implementation of the dynamic map feature
usually makes an assumption about which map(s) it is used in, and hard-codes
information specific to this/these map(s).

## Dynamic map features in the game

This section will quickly describe the dynamic map features that are implemented in the
game.

### Platform Lift

<img src="https://github.com/user-attachments/assets/136f90ae-6276-445c-9b5b-c816bd4576b0" alt="Platform Lift" height="350">

Platform lifts is a dynamic map feature that is used on the Iron island (map
header IDs `291`, `293` and `294`), the Pokémon League elevator rooms (map
header IDs `176`, `178`, `180`, `182`, `184`) and the Pokémon League champion
room (map header ID `185`).

They are basically elevators that can be used to move between two floors.

In the code related to the platform lifts, the configuration for each map is
hard-coded and contains the following information:

- The heights at the top floor and the bottom floor.
- The 2D coordinates of the platform lift.
- Whether it is allowed to move down.

Platform lifts have a fixed size of 3x2 tiles.

The platform lift of the Iron Island B2F Left Room is a special case, as it
is dynamically loaded by the code, instead of being declared in the land data
file for the map. It is also the only platform lift that is loaded in a map
matrix bigger than 1x1.

When entering a map with a platform lift, the game will check the Z coordinate
of the player to determine which floor the player is on, and will set the
floor where the platform lift is located accordingly. Because platform lifts
are only used in interior maps, this Z coordinate always corresponds to one of
the warp points used to enter the map.

When the player triggers the platform lift, the dynamic map feature will
disable height calculation of the player and will manually update their
height based on the height of the platform lift, as the animation progresses.

This dynamic map feature also has persisted data, which contains the
following information:

- The current floor of the platform lift.
- The ID of the platform lift (i.e. which map it is).
- Whether the platform lift was considered "already used" when the player
  first entered the map.
- The kind of platform lift (Iron Island or Pokémon League), which affects
  sound effects and speed.

### Villa

_To be written..._

### Great Marsh

_To be written..._

### Distortion World

_To be written..._

### Eterna Gym

_To be written..._

### Hearthome Gym

_To be written..._

### Veilstone Gym

_To be written..._

### Pastoria Gym

_To be written..._

### Canalave Gym

_To be written..._

### Sunyshore Gym

_To be written..._
