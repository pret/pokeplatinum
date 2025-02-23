#ifndef POKEPLATINUM_STRUCT_POKEMON_SPRITE_H
#define POKEPLATINUM_STRUCT_POKEMON_SPRITE_H

#include <nnsys.h>

#include "constants/heap.h"

#include "struct_defs/sprite_animation_frame.h"
#include "struct_defs/struct_02007C7C_sub1.h"

typedef struct PokemonSprite PokemonSprite;

typedef void(PokemonSpriteCallback)(PokemonSprite *, PokemonSpriteTransforms *);

typedef struct PokemonSpriteTemplate {
    u16 archive; //< ID of the sprite archive
    u16 character; //< File index to pull from the archive for the character data (tiles)
    u16 palette; //< File index to pull from the archive for the palette data
    u16 spindaSpots; //< Simple flag denoting whether the rendered sprite should be pseudo-randomized with splotches (only for Spinda's front-sprite).

    u8 dummy; //< Dummy value; never used or set to anything other than 0.

    u32 personality; //< Cached personality value for Pokemon front-sprites. Specifically used for Spinda spots.
} PokemonSpriteTemplate;

typedef struct PokemonSpriteShadow {
    u16 plttSlot : 2;
    u16 shouldAdjustX : 1;
    u16 shouldAdjustY : 1;
    u16 isAffine : 1;
    u16 size : 2;
    u16 padding_00 : 9;
    s8 height;
    u8 padding_03;
    s16 x;
    s16 y;
    s16 xOffset;
    s16 yOffset;
} PokemonSpriteShadow;

struct PokemonSprite {
    u32 unk_00_0 : 1;
    u32 unk_00_1 : 6;
    u32 unk_00_7 : 1;
    u32 unk_00_8 : 1;
    u32 : 23;
    PokemonSpriteTemplate unk_04;
    PokemonSpriteTemplate unk_14;
    PokemonSpriteTransforms unk_24;
    u8 unk_58;
    u8 unk_59;
    u8 unk_5A;
    u8 unk_5B;
    u8 unk_5C[10];
    u8 unk_66[2];
    PokemonSpriteCallback *unk_68;
    PokemonSpriteShadow unk_6C;
    PokemonSpriteShadow unk_78;
    SpriteAnimationFrame unk_84[10];
};

typedef struct PokemonSpriteManager {
    PokemonSprite sprites[4];
    NNSG2dImageProxy imageProxy;
    NNSG2dImagePaletteProxy paletteProxy;
    enum HeapId heapID;
    u32 charBaseAddr;
    u32 charSize;
    u32 plttBaseAddr;
    u32 plttSize;
    u8 *charRawData;
    u16 *plttRawData;
    u16 *plttRawDataUnfaded;
    NNSG2dCharacterData charData;
    NNSG2dPaletteData plttData;
    u8 dummy330;
    u8 needLoadImage;
    u8 needLoadPltt;
    u8 needG3Identity;
    u32 flags;
} PokemonSpriteManager;

#endif // POKEPLATINUM_STRUCT_POKEMON_SPRITE_H
