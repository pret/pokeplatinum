#ifndef POKEPLATINUM_POFFIN_H
#define POKEPLATINUM_POFFIN_H

#include "savedata.h"

#define POFFIN_NONE 0xFFFF
#define MAX_POFFINS 100

enum PoffinFlavors {
    POFFIN_FLAVOR_SPICY,
    POFFIN_FLAVOR_SPICY_DRY,
    POFFIN_FLAVOR_SPICY_SWEET,
    POFFIN_FLAVOR_SPICY_BITTER,
    POFFIN_FLAVOR_SPICY_SOUR,
    POFFIN_FLAVOR_DRY_SPICY,
    POFFIN_FLAVOR_DRY,
    POFFIN_FLAVOR_DRY_SWEET,
    POFFIN_FLAVOR_DRY_BITTER,
    POFFIN_FLAVOR_DRY_SOUR,
    POFFIN_FLAVOR_SWEET_SPICY,
    POFFIN_FLAVOR_SWEET_DRY,
    POFFIN_FLAVOR_SWEET,
    POFFIN_FLAVOR_SWEET_BITTER,
    POFFIN_FLAVOR_SWEET_SOUR,
    POFFIN_FLAVOR_BITTER_SPICY,
    POFFIN_FLAVOR_BITTER_DRY,
    POFFIN_FLAVOR_BITTER_SWEET,
    POFFIN_FLAVOR_BITTER,
    POFFIN_FLAVOR_BITTER_SOUR,
    POFFIN_FLAVOR_SOUR_SPICY,
    POFFIN_FLAVOR_SOUR_DRY,
    POFFIN_FLAVOR_SOUR_SWEET,
    POFFIN_FLAVOR_SOUR_BITTER,
    POFFIN_FLAVOR_SOUR,
    POFFIN_FLAVOR_RICH,
    POFFIN_FLAVOR_OVERRIPE,
    POFFIN_FLAVOR_FOUL,
    POFFIN_FLAVOR_MILD
};

typedef struct {
    union {
        struct PoffinInner {
            u8 flavor;
            u8 spiciness;
            u8 dryness;
            u8 sweetness;
            u8 bitterness;
            u8 sourness;
            u8 smoothness;
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
    POFFIN_ATTRIBUTEID_SMOOTHNESS,
    POFFIN_ATTRIBUTEID_NUM
};

int Poffin_SizeOf(void);
BOOL Poffin_HasValidFlavor(Poffin *poffin);
void Poffin_Clear(Poffin *poffin);
Poffin *Poffin_New(int heapID);
void Poffin_Copy(Poffin *src, Poffin *dest);
u8 Poffin_GetAttribute(Poffin *poffin, enum PoffinAttributeID attributeID);
int Poffin_MakePoffin(Poffin *poffin, u8 *param1, u8 param2, BOOL isFoul);
void Poffin_StoreAttributesToArray(Poffin *poffin, u8 *dest);
u8 Poffin_CalcLevel(Poffin *poffin);
PoffinCase *SaveData_GetPoffinCase(SaveData *saveData);
int PoffinCase_SaveSize(void);
void PoffinCase_Init(PoffinCase *poffinCase);
u16 PoffinCase_GetEmptySlot(PoffinCase *poffinCase);
u16 PoffinCase_AddPoffin(PoffinCase *poffinCase, Poffin *poffin);
BOOL PoffinCase_ClearSlot(PoffinCase *poffinCase, u16 slot);
void PoffinCase_Compact(PoffinCase *poffinCase);
void PoffinCase_CopyPoffinToSlot(PoffinCase *poffinCase, u16 destSlot, Poffin *poffin);
Poffin *PoffinCase_AllocateForSlot(PoffinCase *poffinCase, u16 destSlot, int heapID);
u16 PoffinCase_CountFilledSlots(PoffinCase *poffinCase);
u16 PoffinCase_CountEmptySlots(PoffinCase *poffinCase);

#endif // POKEPLATINUM_POFFIN_H
