#ifndef POKEPLATINUM_POFFIN_H
#define POKEPLATINUM_POFFIN_H

#include "savedata.h"

#define POFFIN_NONE 0xFFFF
#define MAX_POFFINS 100

typedef struct {
    union {
        struct PoffinInner {
            u8 flavor;
            u8 spiciness;
            u8 dryness;
            u8 sweetness;
            u8 bitterness;
            u8 sourness;
            u8 val1_06;
            u8 dummy;
        };
        u8 attributes[sizeof(struct PoffinInner)];
    };
} Poffin;

typedef struct PoffinCase {
    Poffin slot[MAX_POFFINS];
} PoffinCase;

enum PoffinAttributeID {
    POFFIN_ATTRIBUTEID_FLAVOR,
    POFFIN_ATTRIBUTEID_SPICINESS,
    POFFIN_ATTRIBUTEID_DRYNESS,
    POFFIN_ATTRIBUTEID_SWEETNESS,
    POFFIN_ATTRIBUTEID_BITTERNESS,
    POFFIN_ATTRIBUTEID_SOURNESS,
    POFFIN_ATTRIBUTEID_06,
    POFFIN_ATTRIBUTEID_NUM
};

int Poffin_SizeOf(void);
BOOL Poffin_HasValidFlavor(Poffin *poffin);
void Poffin_Clear(Poffin *poffin);
Poffin *Poffin_New(int heapID);
void Poffin_Copy(Poffin *src, Poffin *dest);
u8 Poffin_GetAttribute(Poffin *poffin, enum PoffinAttributeID attributeID);
int sub_0202A9E4(Poffin *poffin, u8 *param1, u8 param2, BOOL isFoul);
void Poffin_StoreAttributesToArray(Poffin *poffin, u8 *dest);
u8 Poffin_CalcLevel(Poffin *poffin);
PoffinCase *SaveData_GetPoffinCase(SaveData *saveData);
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
