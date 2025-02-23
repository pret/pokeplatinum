#ifndef POKEPLATINUM_STRUCT_02007C7C_SUB1_H
#define POKEPLATINUM_STRUCT_02007C7C_SUB1_H

typedef struct {
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
} PokemonSpriteTransforms;

#endif // POKEPLATINUM_STRUCT_02007C7C_SUB1_H
