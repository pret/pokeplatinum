#ifndef POKEPLATINUM_CHARACTER_SPRITE_H
#define POKEPLATINUM_CHARACTER_SPRITE_H

#include "constants/heap.h"
#include "constants/narc.h"
#include "generated/species.h"

#define FRAME_0_REGION { 0, 0, 10, 10 }
#define FRAME_1_REGION { 10, 0, 10, 10 }

typedef struct {
    int leftMostCol;
    int topMostRow;
    int width;
    int height;
} TileRegion;

void CharacterSprite_LoadDataInTiles(enum NarcID narcID, int narcIdx, enum HeapID heapID, int startTileCol, int startTileRow, int width, int height, u8 *dest);
void CharacterSprite_LoadSpriteRegion(enum NarcID narcID, int narcIdx, enum HeapID heapID, const TileRegion *region, void *dest);
void CharacterSprite_LoadSpriteFrame0(enum NarcID narcID, int narcIdx, enum HeapID heapID, void *dest);
void *CharacterSprite_GetSprite(enum NarcID narcID, int narcIdx, enum HeapID heapID);
void *CharacterSprite_GetPaletteData(enum NarcID narcID, int paletteIndex, enum HeapID heapID);

void CharacterSprite_LoadPokemonSpriteRect(enum NarcID narcID, int narcIdx, enum HeapID heapID, int startCol, int startRow, int width, int height, u8 *dest, u32 personality, BOOL isAnimated, int face, enum Species species);
void CharacterSprite_LoadPokemonSpriteRegion(enum NarcID narcID, int narcIdx, enum HeapID heapID, const TileRegion *frameTiles, void *dest, u32 personality, BOOL isAnimated, int face, enum Species species);
void CharacterSprite_LoadPokemonSprite(enum NarcID narcID, int narcIdx, enum HeapID heapID, void *destPtr, u32 personality, BOOL isAnimated, int face, enum Species species);

#endif // POKEPLATINUM_CHARACTER_SPRITE_H
