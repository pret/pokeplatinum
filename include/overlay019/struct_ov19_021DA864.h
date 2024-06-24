#ifndef POKEPLATINUM_STRUCT_OV19_021DA864_H
#define POKEPLATINUM_STRUCT_OV19_021DA864_H


#include <nnsys.h>

typedef struct {
    const NNSG2dImageProxy * unk_00;
    const NNSG2dCharacterData * unk_04;
    const NNSG2dImagePaletteProxy * unk_08;
    NNSG2dCellDataBank * unk_0C;
    const NNSG2dCellAnimBankData * unk_10;
    const NNSG2dMultiCellDataBank * multiCellBank;
    const NNSG2dMultiCellAnimBankData * unk_18;
    int unk_1C;
    u8 unk_20;
    u8 padding_21[3];
} CellActorResourceData;

#endif // POKEPLATINUM_STRUCT_OV19_021DA864_H
