#ifndef POKEPLATINUM_STRUCT_02007768_H
#define POKEPLATINUM_STRUCT_02007768_H

#include <nnsys.h>

#include "constants/heap.h"

#include "struct_defs/pokemon_sprite.h"

typedef struct PokemonSpriteManager_t {
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

#endif // POKEPLATINUM_STRUCT_02007768_H
