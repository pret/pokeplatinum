#ifndef POKEPLATINUM_ARCHIVED_POKE_SPRITE_DATA_H
#define POKEPLATINUM_ARCHIVED_POKE_SPRITE_DATA_H

#include "struct_defs/sprite_animation_frame.h"

#define MAX_FACES               2
#define MAX_ANIMATION_FRAMES    10

typedef struct PokeSpriteFaceData {
    u8 cryDelay; ///< How long to wait before playing the cry.
    u8 animation; ///< Which pre-programmed animation sequence to use.
    u8 startDelay; ///< How long to wait before starting the animation sequence.
    SpriteAnimationFrame frames[MAX_ANIMATION_FRAMES]; ///< Frame-data for each frame of the animation sequence.
} PokeSpriteFaceData;

typedef struct ArchivedPokeSpriteData {
    PokeSpriteFaceData faces[MAX_FACES]; ///< Data for each display-face of the Pokemon's sprite.
    s8 yOffset; ///< Vertical offset of the Pokemon's sprite for either face.
    s8 xOffsetShadow; ///< Horizontal offset for the shadow sprite beneath the Pokemon's sprite.
    u8 shadowSize; ///< Size of the shadow sprite beneath the Pokemon's sprite. TODO: enum
} ArchivedPokeSpriteData;

#endif // POKEPLATINUM_ARCHIVED_POKE_SPRITE_DATA_H
