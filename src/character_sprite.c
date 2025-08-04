#include "character_sprite.h"

#include <nitro.h>
#include <string.h>

#include "constants/graphics.h"
#include "constants/heap.h"
#include "constants/narc.h"
#include "generated/species.h"

#include "heap.h"
#include "narc.h"
#include "pokemon.h"
#include "pokemon_sprite.h"

#define SUB_REGION_ORDER { { 0x0, 0x0, 0x8, 0x8 }, { 0x8, 0x0, 0x2, 0x4 }, { 0x8, 0x4, 0x2, 0x4 }, { 0x0, 0x8, 0x4, 0x2 }, { 0x4, 0x8, 0x4, 0x2 }, { 0x8, 0x8, 0x2, 0x2 } }

static void CharacterSprite_CopyTileFromUntiledArray(const u8 *src, u8 *dest, int *srcOffset, int *destOffset, int tileWidth, int rowWidth)
{
    int i;
    for (i = 0; i < TILE_HEIGHT_PIXELS; i++) {
        memcpy(&dest[*destOffset], &src[*srcOffset], tileWidth);
        *srcOffset += rowWidth;
        *destOffset += tileWidth;
    }
}

static void CharacterSprite_etSpriteData(enum NarcID narcID, int narcIdx, enum HeapID heapID, NNSG2dCharacterData **charData)
{
    BOOL success;
    void *ngcrFile = NULL;

    ngcrFile = NARC_AllocAndReadWholeMemberByIndexPair(narcID, narcIdx, heapID);
    GF_ASSERT(ngcrFile != NULL);

    success = NNS_G2dGetUnpackedCharacterData(ngcrFile, &(*charData));
    GF_ASSERT(charData != NULL);
    GF_ASSERT(success != FALSE);

    Heap_Free(ngcrFile);
}

static void CharacterSprite_TileUntiledPokemonSprite(int startCol, int startRow, int width, int height, NNSG2dCharacterData *monSpriteData, void *dest)
{
    u8 *untiledSpriteData = NULL;
    u8 *tiledData = NULL;
    int startIndex;
    int tiledDataOffset;
    int spriteWidth;

    GF_ASSERT(monSpriteData->W >= (startCol + width));
    GF_ASSERT(monSpriteData->H >= (startRow + height));

    untiledSpriteData = monSpriteData->pRawData;
    tiledData = (u8 *)dest;
    spriteWidth = (monSpriteData->W * TILE_WIDTH_4BPP);
    startIndex = (startCol * TILE_WIDTH_4BPP) + (startRow * spriteWidth);
    tiledDataOffset = 0;

    {
        int row, col;
        for (row = startRow; row < (startRow + height); row++) {
            for (col = startCol; col < (startCol + width); col++) {
                startIndex = (col * TILE_WIDTH_4BPP) + (row * spriteWidth * 8);
                CharacterSprite_CopyTileFromUntiledArray(untiledSpriteData, tiledData, &startIndex, &tiledDataOffset, TILE_WIDTH_4BPP, spriteWidth);
            }
        }
    }
}

static BOOL CharacterSprite_SpeciesIsSpinda(enum Species species)
{
    int i;
    enum Species listItem;
    const int speciesList[] = {
        SPECIES_SPINDA,
        SPECIES_BAD_EGG,
    };

    for (i = 0; i < 495; i++) {
        listItem = speciesList[i];

        if (listItem == SPECIES_BAD_EGG) {
            break;
        }

        if (listItem == species) {
            return TRUE;
        }
    }

    return FALSE;
}

static void CharacterSprite_LoadTiledPokemonSprite(enum NarcID narcID, int narcIdx, enum HeapID headID, int startCol, int startRow, int width, int height, void *buffer, u32 personality, BOOL isAnimated, int face, enum Species species)
{
    BOOL speciesIsSpinda;
    NNSG2dCharacterData *monSpriteData = NULL;

    CharacterSprite_etSpriteData(narcID, narcIdx, headID, &monSpriteData);
    PokemonSprite_Decrypt(monSpriteData->pRawData, narcID);

    speciesIsSpinda = CharacterSprite_SpeciesIsSpinda(species);

    if ((face == FACE_FRONT) && (speciesIsSpinda == TRUE)) {
        PokemonSprite_DrawSpindaSpots(monSpriteData->pRawData, personality, isAnimated);
    }

    CharacterSprite_TileUntiledPokemonSprite(startCol, startRow, width, height, monSpriteData, buffer);
}

static void *CharacterSprite_GetTiledPokemonSprite(enum NarcID narcID, int narcIdx, enum HeapID heapID, int startCol, int startRow, int width, int height, u32 personality, BOOL isAnimated, int face, enum Species species)
{
    void *buffer;
    int dataSize = ((width * height) * TILE_SIZE_4BPP);
    buffer = Heap_Alloc(heapID, dataSize);

    CharacterSprite_LoadTiledPokemonSprite(narcID, narcIdx, heapID, startCol, startRow, width, height, buffer, personality, isAnimated, face, species);

    return buffer;
}

void CharacterSprite_LoadDataInTiles(enum NarcID narcID, int narcIdx, enum HeapID heapID, int startTileCol, int startTileRow, int width, int height, u8 *dest)
{
    void *ncgrFile = NULL;
    u8 *untiledSpriteData = NULL;
    u8 *tiledData = NULL;
    NNSG2dCharacterData *characterData = NULL;
    int tileWidth;
    int spriteIndex;
    int tiledDataOffset;
    int spriteWidth;
    BOOL success;

    ncgrFile = NARC_AllocAndReadWholeMemberByIndexPair(narcID, narcIdx, heapID);
    GF_ASSERT(ncgrFile != NULL);

    success = NNS_G2dGetUnpackedCharacterData(ncgrFile, &characterData);
    GF_ASSERT(success != FALSE);
    GF_ASSERT(characterData->W >= (startTileCol + width));
    GF_ASSERT(characterData->H >= (startTileRow + height));

    tileWidth = TILE_WIDTH_4BPP;
    untiledSpriteData = characterData->pRawData;

    PokemonSprite_Decrypt(untiledSpriteData, narcID);

    tiledData = (u8 *)dest;
    spriteWidth = (characterData->W * tileWidth);
    spriteIndex = (startTileCol * tileWidth) + (startTileRow * spriteWidth);

    tiledDataOffset = 0;
    {
        int row, col;

        for (row = startTileRow; row < (startTileRow + height); row++) {
            for (col = startTileCol; col < (startTileCol + width); col++) {
                spriteIndex = (col * tileWidth) + (row * spriteWidth * 8);
                CharacterSprite_CopyTileFromUntiledArray(untiledSpriteData, tiledData, &spriteIndex, &tiledDataOffset, tileWidth, spriteWidth);
            }
        }
    }

    Heap_Free(ncgrFile);
}

static void *CharacterSprite_GetTiledSprite(enum NarcID narcID, int characterIdx, enum HeapID heapID, int startTileCol, int startTileRow, int width, int height)
{
    void *buffer;
    int numBytes = ((width * height) * TILE_SIZE_4BPP);
    buffer = Heap_Alloc(heapID, numBytes);

    CharacterSprite_LoadDataInTiles(narcID, characterIdx, heapID, startTileCol, startTileRow, width, height, buffer);

    return buffer;
}

static void CharacterSprite_CopyTilesRect(int sourceWidth, int sourceHeight, int startCol, int startRow, int width, int height, int *destOffset, const void *src, void *dest)
{
    int col, row;
    u8 *srcPtr;
    u8 *destPtr;
    int srcTile;
    int finishCol;
    int finishRow;

    srcPtr = (u8 *)src;
    destPtr = (u8 *)dest;
    finishCol = startCol + width;
    finishRow = startRow + height;

    for (row = startRow; row < finishRow; row++) {
        for (col = startCol; col < finishCol; col++) {
            srcTile = (col * TILE_SIZE_4BPP) + (row * TILE_SIZE_4BPP * sourceWidth);
            memcpy(&destPtr[*destOffset], &srcPtr[srcTile], TILE_SIZE_4BPP);
            *destOffset += TILE_SIZE_4BPP;
        }
    }
}

static void CharacterSprite_CopyTilesRegion(int sourceWidth, int sourceHeight, const TileRegion *subRegion, int *destOffset, const void *sourceSprite, void *dest)
{
    CharacterSprite_CopyTilesRect(sourceWidth, sourceHeight, subRegion->leftMostCol, subRegion->topMostRow, subRegion->width, subRegion->height, destOffset, sourceSprite, dest);
}

static void CharacterSprite_GetSpriteRect(enum NarcID narcID, int characterIdx, int heapID, int startTileCol, int startTileRow, int width, int height, void *dest)
{
    int i;
    int numRegions;
    int destOffset;
    void *sprite = NULL;
    const TileRegion subRegions[] = SUB_REGION_ORDER;

    numRegions = NELEMS(subRegions);
    destOffset = 0;
    sprite = CharacterSprite_GetTiledSprite(narcID, characterIdx, heapID, startTileCol, startTileRow, width, height);

    for (i = 0; i < numRegions; i++) {
        CharacterSprite_CopyTilesRegion(width, height, &subRegions[i], &destOffset, sprite, dest);
    }

    Heap_Free(sprite);
}

void CharacterSprite_GetSpriteRegion(enum NarcID narcID, int narcIdx, enum HeapID heapID, const TileRegion *region, void *dest)
{
    CharacterSprite_GetSpriteRect(narcID, narcIdx, heapID, region->leftMostCol, region->topMostRow, region->width, region->height, dest);
}

void CharacterSprite_GetSpriteFrame0(enum NarcID narcID, int narcIdx, enum HeapID heapID, void *dest)
{
    const TileRegion region = FRAME_0_REGION;
    CharacterSprite_GetSpriteRegion(narcID, narcIdx, heapID, &region, dest);
}

void *CharacterSprite_GetSprite(enum NarcID narcID, int narcIdx, enum HeapID heapID)
{
    void *spriteData = NULL;
    int size = (10 * 10 * TILE_SIZE_4BPP);
    spriteData = Heap_Alloc(heapID, size);

    CharacterSprite_GetSpriteFrame0(narcID, narcIdx, heapID, spriteData);

    return spriteData;
}

void *CharacterSprite_GetPaletteData(enum NarcID narcID, int paletteIndex, enum HeapID heapID)
{
    NNSG2dPaletteData *paletteData;
    void *nclrFile;
    void *returnPtr;
    BOOL success;

    returnPtr = Heap_Alloc(heapID, PALETTE_SIZE_BYTES);
    nclrFile = NARC_AllocAndReadWholeMemberByIndexPair(narcID, paletteIndex, heapID);
    success = NNS_G2dGetUnpackedPaletteData(nclrFile, &paletteData);

    GF_ASSERT(success == TRUE);
    MI_CpuCopy16(paletteData->pRawData, returnPtr, PALETTE_SIZE_BYTES);

    Heap_Free(nclrFile);

    return returnPtr;
}

void CharacterSprite_GetPokemonSpriteRect(enum NarcID narcID, int narcIdx, enum HeapID heapID, int startCol, int startRow, int width, int height, u8 *dest, u32 personality, BOOL isAnimated, int face, enum Species species)
{
    int i;
    int numRegions;
    int destOffset;
    void *tiledData = NULL;
    const TileRegion subRegions[] = SUB_REGION_ORDER;

    numRegions = NELEMS(subRegions);
    destOffset = 0;

    tiledData = CharacterSprite_GetTiledPokemonSprite(narcID, narcIdx, heapID, startCol, startRow, width, height, personality, isAnimated, face, species);

    for (i = 0; i < numRegions; i++) {
        CharacterSprite_CopyTilesRegion(width, height, &subRegions[i], &destOffset, tiledData, dest);
    }

    Heap_Free(tiledData);
}

void CharacterSprite_GetPokemonSpriteRegion(enum NarcID narcID, int narcIdx, enum HeapID heapID, const TileRegion *frameTiles, void *dest, u32 personality, BOOL isAnimated, int face, enum Species species)
{
    CharacterSprite_GetPokemonSpriteRect(narcID, narcIdx, heapID, frameTiles->leftMostCol, frameTiles->topMostRow, frameTiles->width, frameTiles->height, dest, personality, isAnimated, face, species);
}

void CharacterSprite_GetPokemonSprite(enum NarcID narcID, int narcIdx, enum HeapID heapID, void *destPtr, u32 personality, BOOL isAnimated, int face, enum Species species)
{
    const TileRegion region = FRAME_0_REGION;

    CharacterSprite_GetPokemonSpriteRegion(narcID, narcIdx, heapID, &region, destPtr, personality, isAnimated, face, species);
}
