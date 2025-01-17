#ifndef POKEPLATINUM_POFFIN_H
#define POKEPLATINUM_POFFIN_H

#include "struct_decls/poffin_case_decl.h"
#include "struct_defs/poffin.h"

#include "savedata.h"

#define POFFIN_NONE 0xFFFF
#define MAX_POFFINS 100

typedef enum {
    POFFIN_ATTRIBUTEID_FLAVOR,
    POFFIN_ATTRIBUTEID_SPICINESS,
    POFFIN_ATTRIBUTEID_DRYNESS,
    POFFIN_ATTRIBUTEID_SWEETNESS,
    POFFIN_ATTRIBUTEID_BITTERNESS,
    POFFIN_ATTRIBUTEID_SOURNESS,
    POFFIN_ATTRIBUTEID_06,
    POFFIN_ATTRIBUTEID_NUM
} PoffinAttributeID;

int Poffin_sizeof(void);
BOOL Poffin_HasValidFlavor(Poffin *poffin);
void Poffin_clear(Poffin *poffin);
Poffin *Poffin_malloc(int heapID);
void Poffin_copy(Poffin *src, Poffin *dest);
u8 Poffin_GetAttribute(Poffin *poffin, PoffinAttributeID attributeID);
int sub_0202A9E4(Poffin *poffin, u8 *param1, u8 param2, BOOL isFoul);
void Poffin_StoreAttributesToArray(Poffin *poffin, u8 *dest);
u8 Poffin_CalcLevel(Poffin *poffin);
PoffinCase *Poffin_GetSavedataBlock(SaveData *savedata);
int Poffin_SaveSize(void);
void Poffin_Init(PoffinCase *poffinCase);
u16 Poffin_GetEmptyCaseSlot(PoffinCase *poffinCase);
u16 Poffin_AddToCase(PoffinCase *poffinCase, Poffin *poffin);
BOOL Poffin_ClearCaseSlot(PoffinCase *poffinCase, u16 slot);
void Poffin_CompactCase(PoffinCase *poffinCase);
void Poffin_CopyToCaseSlot(PoffinCase *poffinCase, u16 destSlot, Poffin *poffin);
Poffin *Poffin_AllocateForCaseSlot(PoffinCase *poffinCase, u16 destSlot, int heapID);
u16 Poffin_GetNumberOfFilledSlots(PoffinCase *poffinCase);
u16 Poffin_GetNumberOfEmptySlots(PoffinCase *poffinCase);

#endif // POKEPLATINUM_POFFIN_H
