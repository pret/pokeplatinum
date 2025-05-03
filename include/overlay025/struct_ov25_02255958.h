#ifndef POKEPLATINUM_STRUCT_OV25_02255958_H
#define POKEPLATINUM_STRUCT_OV25_02255958_H

#include <nnsys.h>

typedef struct {
    void *compressedSprite;
    void *compressedAnim;
    NNSG2dCellDataBank *sprite;
    NNSG2dAnimBankData *anim;
    u32 heapID;
} ov25_spriteDataStruct;

#endif // POKEPLATINUM_STRUCT_OV25_02255958_H
