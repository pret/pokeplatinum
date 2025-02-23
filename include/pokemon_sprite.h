#ifndef POKEPLATINUM_POKEMON_SPRITE_H
#define POKEPLATINUM_POKEMON_SPRITE_H

#include <nnsys.h>

#include "constants/heap.h"

#include "struct_defs/sprite_animation_frame.h"
#include "struct_defs/struct_02008900.h"

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
    u32 active : 1;
    u32 polygonID : 6;
    u32 needReloadChar : 1;
    u32 needReloadPltt : 1;
    u32 padding_00_9 : 23;
    PokemonSpriteTemplate template;
    PokemonSpriteTemplate templateBackup;
    PokemonSpriteTransforms transforms;
    u8 animActive;
    u8 currAnimFrame;
    u8 animFrameDelay;
    u8 currSpriteFrame;
    u8 animLoopTimers[10];
    u8 padding_66[2];
    PokemonSpriteCallback *callback;
    PokemonSpriteShadow shadow;
    PokemonSpriteShadow shadowBackup;
    SpriteAnimationFrame animFrames[10];
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

void *sub_0200762C(int heapID);
void sub_02007768(PokemonSpriteManager *param0);
void sub_02007B6C(PokemonSpriteManager *param0);
void sub_02007B98(PokemonSprite *param0, int param1);
void sub_02007C10(PokemonSprite *param0, SpriteAnimationFrame *param1);
BOOL sub_02007C24(PokemonSprite *param0);
PokemonSprite *sub_02007C34(PokemonSpriteManager *param0, PokemonSpriteTemplate *param1, int param2, int param3, int param4, int param5, SpriteAnimationFrame *param6, PokemonSpriteCallback *param7);
PokemonSprite *sub_02007C7C(PokemonSpriteManager *param0, PokemonSpriteTemplate *param1, int param2, int param3, int param4, int param5, int param6, SpriteAnimationFrame *param7, PokemonSpriteCallback *param8);
void sub_02007DC8(PokemonSprite *param0);
void sub_02007DD4(PokemonSpriteManager *param0);
void sub_02007DEC(PokemonSprite *param0, int param1, int param2);
int sub_020080C0(PokemonSprite *param0, int param1);
void sub_02008274(PokemonSprite *param0, int param1, int param2);
void sub_020086D4(PokemonSprite *param0, int param1, int param2, int param3, int param4);
void sub_020086FC(PokemonSprite *param0, int param1, int param2, int param3, int param4);
void sub_0200872C(PokemonSpriteManager *param0, int param1, int param2, int param3, int param4);
void sub_02008780(PokemonSprite *param0);
BOOL sub_020087B4(PokemonSprite *param0);
void sub_020087C8(PokemonSprite *param0, int param1);
void sub_020088E0(UnkStruct_02008900 *param0, const SpriteAnimationFrame *param1);
int sub_02008900(UnkStruct_02008900 *param0);
void sub_020089A0(PokemonSprite *param0);
void sub_020089B0(PokemonSprite *param0);
void sub_02008A0C(PokemonSprite *param0);
void sub_02008A78(PokemonSpriteManager *param0, u32 param1, u32 param2);
void sub_02008A84(PokemonSpriteManager *param0, u32 param1, u32 param2);
PokemonSpriteTemplate *sub_02008A90(PokemonSprite *param0);
void sub_02008A94(PokemonSpriteManager *param0);
void sub_02008B2C(PokemonSpriteManager *param0, int param1);
BOOL sub_02008B38(PokemonSprite *param0);
void sub_02008B54(PokemonSpriteManager *param0, u32 param1);
void sub_02008B60(PokemonSpriteManager *param0, u32 param1);
void sub_020091D8(u8 *param0, u32 param1, BOOL param2);
void sub_02009348(u8 *param0);
void sub_02009370(u8 *param0);
void sub_020093A0(u8 *param0, int param1);

#endif // POKEPLATINUM_POKEMON_SPRITE_H
