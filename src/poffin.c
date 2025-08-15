#include "poffin.h"

#include <nitro.h>
#include <string.h>

#include "constants/flavor.h"

#include "heap.h"
#include "math_util.h"
#include "savedata.h"

#define FLAVOR_NONE 30

int Poffin_SizeOf(void)
{
    return sizeof(Poffin);
}

BOOL Poffin_HasValidFlavor(Poffin *poffin)
{
    if (poffin->flavor == FLAVOR_NONE) {
        return FALSE;
    }

    return TRUE;
}

void Poffin_Clear(Poffin *poffin)
{
    poffin->flavor = FLAVOR_NONE;
    poffin->spiciness = 0;
    poffin->dryness = 0;
    poffin->sweetness = 0;
    poffin->bitterness = 0;
    poffin->sourness = 0;
    poffin->smoothness = 0;
    poffin->dummy = 0;
}

Poffin *Poffin_New(int heapID)
{
    Poffin *poffin = Heap_AllocAtEnd(heapID, sizeof(Poffin));
    Poffin_Clear(poffin);

    return poffin;
}

void Poffin_Copy(Poffin *src, Poffin *dest)
{
    dest->flavor = src->flavor;
    dest->spiciness = src->spiciness;
    dest->dryness = src->dryness;
    dest->sweetness = src->sweetness;
    dest->bitterness = src->bitterness;
    dest->sourness = src->sourness;
    dest->smoothness = src->smoothness;
    dest->dummy = src->dummy;
}

u8 Poffin_GetAttribute(Poffin *poffin, enum PoffinAttributeID attributeID)
{
    switch (attributeID) {
    case POFFIN_ATTRIBUTEID_FLAVOR:
        return poffin->flavor;
    case POFFIN_ATTRIBUTEID_SPICINESS:
        return poffin->spiciness;
    case POFFIN_ATTRIBUTEID_DRYNESS:
        return poffin->dryness;
    case POFFIN_ATTRIBUTEID_SWEETNESS:
        return poffin->sweetness;
    case POFFIN_ATTRIBUTEID_BITTERNESS:
        return poffin->bitterness;
    case POFFIN_ATTRIBUTEID_SOURNESS:
        return poffin->sourness;
    case POFFIN_ATTRIBUTEID_SMOOTHNESS:
    default:
        return poffin->smoothness;
    }
}

static void Poffin_MakeFoul(Poffin *poffin, u8 param1)
{
    int v0;
    u8 v1;

    v0 = 0;

    do {
        v1 = LCRNG_Next() % 5;

        if (poffin->attributes[v1 + 1] != 0) {
            continue;
        }

        poffin->attributes[v1 + 1] = 2;
        ++v0;
    } while (v0 < 3);

    poffin->flavor = POFFIN_FLAVOR_FOUL;
    poffin->smoothness = param1;
}

int Poffin_MakePoffin(Poffin *poffin, u8 *flavors, u8 smoothness, BOOL isFoul)
{
    int i, flavorCount = 0;
    u8 poffinFlavors[FLAVOR_MAX];
    u8 isMild = FALSE, flavor = 0;

    flavor = POFFIN_FLAVOR_FOUL;

    if (isFoul) {
        Poffin_MakeFoul(poffin, smoothness);
        return flavor;
    }

    for (i = 0; i < FLAVOR_MAX; i++) {
        if (flavors[i]) {
            if (flavors[i] >= 50) {
                isMild = TRUE;
            }

            poffinFlavors[flavorCount++] = i;
        }
    }

    switch (flavorCount) {
    case 0:
        Poffin_MakeFoul(poffin, smoothness);
        return flavor;
    case 1:
        flavor = poffinFlavors[0] * FLAVOR_MAX + poffinFlavors[0];
        break;
    case 2:
        if (flavors[poffinFlavors[0]] >= flavors[poffinFlavors[1]]) {
            flavor = poffinFlavors[0] * FLAVOR_MAX + poffinFlavors[1];
        } else {
            flavor = poffinFlavors[1] * FLAVOR_MAX + poffinFlavors[0];
        }
        break;
    case 3:
        flavor = POFFIN_FLAVOR_RICH;
        break;
    case 4:
    case 5:
        flavor = POFFIN_FLAVOR_OVERRIPE;
        break;
    }

    if (isMild) {
        flavor = POFFIN_FLAVOR_MILD;
    }

    for (i = 0; i < FLAVOR_MAX; i++) {
        poffin->attributes[i + 1] = flavors[i];
    }

    poffin->flavor = flavor;
    poffin->smoothness = smoothness;

    return flavor;
}

void Poffin_StoreAttributesToArray(Poffin *poffin, u8 *dest)
{
    dest[0] = poffin->flavor;
    dest[1] = poffin->spiciness;
    dest[2] = poffin->dryness;
    dest[3] = poffin->sweetness;
    dest[4] = poffin->bitterness;
    dest[5] = poffin->sourness;
    dest[6] = poffin->smoothness;
}

u8 Poffin_CalcLevel(Poffin *poffin)
{
    u8 v0 = 0;
    u8 level = 0;

    v0 = poffin->flavor / 5;

    switch (v0) {
    case 0:
        level = poffin->spiciness;
        break;
    case 1:
        level = poffin->dryness;
        break;
    case 2:
        level = poffin->sweetness;
        break;
    case 3:
        level = poffin->bitterness;
        break;
    case 4:
        level = poffin->sourness;
        break;
    case 5:
    default:
        level = poffin->spiciness;

        if (level < poffin->dryness) {
            level = poffin->dryness;
        }

        if (level < poffin->sweetness) {
            level = poffin->sweetness;
        }

        if (level < poffin->bitterness) {
            level = poffin->bitterness;
        }

        if (level < poffin->sourness) {
            level = poffin->sourness;
        }
        break;
    }

    if (level > 99) {
        return 99;
    }

    return level;
}

PoffinCase *SaveData_GetPoffinCase(SaveData *saveData)
{
    return SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_POFFINS);
}

int PoffinCase_SaveSize(void)
{
    return sizeof(PoffinCase);
}

void PoffinCase_Init(PoffinCase *poffinCase)
{
    int i;

    for (i = 0; i < MAX_POFFINS; i++) {
        Poffin_Clear(&poffinCase->slot[i]);
    }
}

u16 PoffinCase_GetEmptySlot(PoffinCase *poffinCase)
{
    u16 i;

    for (i = 0; i < MAX_POFFINS; i++) {
        if (poffinCase->slot[i].flavor == FLAVOR_NONE) {
            return i;
        }
    }

    return POFFIN_NONE;
}

u16 PoffinCase_AddPoffin(PoffinCase *poffinCase, Poffin *poffin)
{
    u16 slotId = PoffinCase_GetEmptySlot(poffinCase);

    if (slotId == POFFIN_NONE) {
        return slotId;
    }

    Poffin_Copy(poffin, &poffinCase->slot[slotId]);
    return slotId;
}

BOOL PoffinCase_ClearSlot(PoffinCase *poffinCase, u16 slot)
{
    if (slot >= MAX_POFFINS) {
        return FALSE;
    }

    Poffin_Clear(&poffinCase->slot[slot]);
    return TRUE;
}

static u16 PoffinCase_GetFirstValidPoffin(PoffinCase *poffinCase, u16 startingSlot)
{
    u16 i;

    for (i = startingSlot; i < MAX_POFFINS; i++) {
        if (poffinCase->slot[i].flavor != FLAVOR_NONE) {
            return i;
        }
    }

    return POFFIN_NONE;
}

void PoffinCase_Compact(PoffinCase *poffinCase)
{
    u16 i, unused;
    u16 nextValidSlotNum, emptySlotNum, targetSlotNum;
    u16 remainingSlots = MAX_POFFINS;

    for (i = 0; i < remainingSlots; i++) {
        // skip over occupied slots
        if (poffinCase->slot[i].flavor != FLAVOR_NONE) {
            continue;
        }

        // found an empty slot, proceed
        emptySlotNum = i;
        nextValidSlotNum = PoffinCase_GetFirstValidPoffin(poffinCase, emptySlotNum); // find the next valid poffin

        if (nextValidSlotNum == POFFIN_NONE) {
            break;
        }

        targetSlotNum = nextValidSlotNum;
        nextValidSlotNum = targetSlotNum - emptySlotNum;

        for (; targetSlotNum < remainingSlots; emptySlotNum++, targetSlotNum++) {
            Poffin_Copy(&poffinCase->slot[targetSlotNum], &poffinCase->slot[emptySlotNum]);
            Poffin_Clear(&poffinCase->slot[targetSlotNum]);
        }

        remainingSlots -= nextValidSlotNum;
    }
}

void PoffinCase_CopyPoffinToSlot(PoffinCase *poffinCase, u16 destSlot, Poffin *poffin)
{
    if (destSlot >= MAX_POFFINS) {
        Poffin_Clear(poffin);
        return;
    }

    Poffin_Copy(&poffinCase->slot[destSlot], poffin);
    return;
}

Poffin *PoffinCase_AllocateForSlot(PoffinCase *poffinCase, u16 destSlot, int heapID)
{
    Poffin *poffin = Poffin_New(heapID);

    if (destSlot >= MAX_POFFINS) {
        Poffin_Clear(poffin);
        return NULL;
    }

    Poffin_Copy(&poffinCase->slot[destSlot], poffin);
    return poffin;
}

u16 PoffinCase_CountFilledSlots(PoffinCase *poffinCase)
{
    u16 j = 0, i;

    for (i = 0; i < MAX_POFFINS; i++) {
        if (Poffin_HasValidFlavor(&poffinCase->slot[i])) {
            ++j;
        }
    }

    return j;
}

u16 PoffinCase_CountEmptySlots(PoffinCase *poffinCase)
{
    u16 i, j = 0;

    for (i = 0; i < MAX_POFFINS; i++) {
        if (poffinCase->slot[i].flavor == FLAVOR_NONE) {
            j++;
        }
    }

    return j;
}
