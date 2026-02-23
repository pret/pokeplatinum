#ifndef POKEPLATINUM_CHARACTER_SPRITE_H
#define POKEPLATINUM_CHARACTER_SPRITE_H

#include "constants/heap.h"
#include "constants/narc.h"
#include "constants/species.h"

#define FRAME_0_REGION { 0, 0, 10, 10 }
#define FRAME_1_REGION { 10, 0, 10, 10 }

typedef struct TileRegion {
    int x;
    int y;
    int width;
    int height;
} TileRegion;

void CharacterSprite_LoadTiledData(enum NarcID narcID, int narcIdx, enum HeapID heapID, int x, int y, int width, int height, void *dest);
void CharacterSprite_LoadSpriteRegion(enum NarcID narcID, int narcIdx, enum HeapID heapID, const TileRegion *region, void *dest);
void CharacterSprite_LoadSpriteFrame0(enum NarcID narcID, int narcIdx, enum HeapID heapID, void *dest);
void *CharacterSprite_LoadTiles(enum NarcID narcID, int narcIdx, enum HeapID heapID);
void *CharacterSprite_LoadPalette(enum NarcID narcID, int paletteIndex, enum HeapID heapID);

void CharacterSprite_LoadPokemonSpriteRect(enum NarcID narcID, int narcIdx, enum HeapID heapID, int x, int y, int width, int height, u8 *dest, u32 personality, BOOL isAnimated, int face, enum Species species);
void CharacterSprite_LoadPokemonSpriteRegion(enum NarcID narcID, int narcIdx, enum HeapID heapID, const TileRegion *frameTiles, void *dest, u32 personality, BOOL isAnimated, int face, enum Species species);
void CharacterSprite_LoadPokemonSprite(enum NarcID narcID, int narcIdx, enum HeapID heapID, void *destPtr, u32 personality, BOOL isAnimated, int face, enum Species species);

#endif // POKEPLATINUM_CHARACTER_SPRITE_H
