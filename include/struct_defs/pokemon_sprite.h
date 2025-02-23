#ifndef POKEPLATINUM_STRUCT_POKEMON_SPRITE_H
#define POKEPLATINUM_STRUCT_POKEMON_SPRITE_H

#include <nnsys.h>

#include "constants/heap.h"

#include "struct_defs/sprite_animation_frame.h"

typedef struct PokemonSprite PokemonSprite;
typedef struct PokemonSpriteTransforms PokemonSpriteTransforms;

typedef void(PokemonSpriteCallback)(PokemonSprite *, PokemonSpriteTransforms *);

typedef struct PokemonSpriteTemplate {
    u16 archive; //< ID of the sprite archive
    u16 character; //< File index to pull from the archive for the character data (tiles)
    u16 palette; //< File index to pull from the archive for the palette data
    u16 spindaSpots; //< Simple flag denoting whether the rendered sprite should be pseudo-randomized with splotches (only for Spinda's front-sprite).

    u8 dummy; //< Dummy value; never used or set to anything other than 0.

    u32 personality; //< Cached personality value for Pokemon front-sprites. Specifically used for Spinda spots.
} PokemonSpriteTemplate;

struct PokemonSpriteTransforms {
    s16 xCenter;
    s16 yCenter;
    int zCenter;
    s16 xOffset;
    s16 yOffset;
    int zOffset;
    s16 affineWidth;
    s16 affineHeight;
    u16 rotationX;
    u16 rotationY;
    u16 rotationZ;
    u16 padding_1A;
    s16 xPivot;
    s16 yPivot;
    u8 xOffset2;
    u8 yOffset2;
    u8 width;
    u8 height;
    u8 fadeCurrent;
    u8 fadeEnd;
    u8 fadeDelayCounter;
    u8 fadeDelayLength;
    u32 fadeTargetColor;
    u32 diffuseR : 5;
    u32 diffuseG : 5;
    u32 diffuseB : 5;
    u32 ambientR : 5;
    u32 ambientG : 5;
    u32 ambientB : 5;
    u32 padding_2C_30 : 2;
    u32 hasVanished : 1;
    u32 visible : 1;
    u32 alpha : 5;
    u32 padding_30_07 : 2;
    u32 flipH : 1;
    u32 flipV : 1;
    u32 dontDraw : 1;
    u32 fadeActive : 1;
    u32 mosaicIntensity : 4;
    u32 padding_30_17 : 15;
};

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
