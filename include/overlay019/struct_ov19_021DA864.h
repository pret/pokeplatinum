#ifndef POKEPLATINUM_STRUCT_OV19_021DA864_H
#define POKEPLATINUM_STRUCT_OV19_021DA864_H


#include <nnsys.h>

typedef struct {
    const NNSG2dImageProxy *imageProxy;
    const NNSG2dCharacterData *charData;
    const NNSG2dImagePaletteProxy *paletteProxy;
    NNSG2dCellDataBank *cellBank;
    const NNSG2dCellAnimBankData *cellAnimBank;
    const NNSG2dMultiCellDataBank *multiCellBank;
    const NNSG2dMultiCellAnimBankData *multiCellAnimBank;
    BOOL isVRamTransfer;
    u8 priority;
    u8 padding_21[3];
} CellActorResourceData;

#endif // POKEPLATINUM_STRUCT_OV19_021DA864_H
