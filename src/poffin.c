#ifdef SDK_BUILD_ARM
#include "poffin.h"
#endif

#include <nitro.h>
#include <string.h>

#ifndef SDK_BUILD_ARM
#include "poffin.h"
#endif

#include "constants/flavor.h"

#include "heap.h"
#include "math_util.h"
#include "poffin_types.h"
#include "savedata.h"

#define TYPE_NONE 30

int Poffin_SizeOf(void)
{
    return sizeof(Poffin);
}

BOOL Poffin_HasValidFlavor(Poffin *poffin)
{
    if (poffin->inner.type == TYPE_NONE) {
        return FALSE;
    }

    return TRUE;
}

void Poffin_Clear(Poffin *poffin)
{
    poffin->inner.type = TYPE_NONE;
    poffin->inner.spiciness = 0;
    poffin->inner.dryness = 0;
    poffin->inner.sweetness = 0;
    poffin->inner.bitterness = 0;
    poffin->inner.sourness = 0;
    poffin->inner.smoothness = 0;
    poffin->inner.dummy = 0;
}

Poffin *Poffin_New(enum HeapID heapID)
{
    Poffin *poffin = Heap_AllocAtEnd(heapID, sizeof(Poffin));
    Poffin_Clear(poffin);

    return poffin;
}

void Poffin_Copy(Poffin *src, Poffin *dest)
{
    dest->inner.type = src->inner.type;
    dest->inner.spiciness = src->inner.spiciness;
    dest->inner.dryness = src->inner.dryness;
    dest->inner.sweetness = src->inner.sweetness;
    dest->inner.bitterness = src->inner.bitterness;
    dest->inner.sourness = src->inner.sourness;
    dest->inner.smoothness = src->inner.smoothness;
    dest->inner.dummy = src->inner.dummy;
}

u8 Poffin_GetAttribute(Poffin *poffin, enum PoffinAttributeID attributeID)
{
    switch (attributeID) {
    case POFFIN_ATTRIBUTEID_TYPE:
        return poffin->inner.type;
    case POFFIN_ATTRIBUTEID_SPICINESS:
        return poffin->inner.spiciness;
    case POFFIN_ATTRIBUTEID_DRYNESS:
        return poffin->inner.dryness;
    case POFFIN_ATTRIBUTEID_SWEETNESS:
        return poffin->inner.sweetness;
    case POFFIN_ATTRIBUTEID_BITTERNESS:
        return poffin->inner.bitterness;
    case POFFIN_ATTRIBUTEID_SOURNESS:
        return poffin->inner.sourness;
    case POFFIN_ATTRIBUTEID_SMOOTHNESS:
    default:
        return poffin->inner.smoothness;
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

    poffin->inner.type = POFFIN_TYPE_FOUL;
    poffin->inner.smoothness = param1;
}

int Poffin_MakePoffin(Poffin *poffin, u8 *flavors, u8 smoothness, BOOL isFoul)
{
    int i, flavorCount = 0;
    u8 poffinFlavors[FLAVOR_MAX];
    u8 isMild = FALSE, type = 0;

    type = POFFIN_TYPE_FOUL;

    if (isFoul) {
        Poffin_MakeFoul(poffin, smoothness);
        return type;
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
        return type;
    case 1:
        type = poffinFlavors[0] * FLAVOR_MAX + poffinFlavors[0];
        break;
    case 2:
        if (flavors[poffinFlavors[0]] >= flavors[poffinFlavors[1]]) {
            type = poffinFlavors[0] * FLAVOR_MAX + poffinFlavors[1];
        } else {
            type = poffinFlavors[1] * FLAVOR_MAX + poffinFlavors[0];
        }
        break;
    case 3:
        type = POFFIN_TYPE_RICH;
        break;
    case 4:
    case 5:
        type = POFFIN_TYPE_OVERRIPE;
        break;
    }

    if (isMild) {
        type = POFFIN_TYPE_MILD;
    }

    for (i = 0; i < FLAVOR_MAX; i++) {
        poffin->attributes[i + 1] = flavors[i];
    }

    poffin->inner.type = type;
    poffin->inner.smoothness = smoothness;

    return type;
}

void Poffin_StoreAttributesToArray(Poffin *poffin, u8 *dest)
{
    dest[0] = poffin->inner.type;
    dest[1] = poffin->inner.spiciness;
    dest[2] = poffin->inner.dryness;
    dest[3] = poffin->inner.sweetness;
    dest[4] = poffin->inner.bitterness;
    dest[5] = poffin->inner.sourness;
    dest[6] = poffin->inner.smoothness;
}

u8 Poffin_CalcLevel(Poffin *poffin)
{
    u8 v0 = 0;
    u8 level = 0;

    v0 = poffin->inner.type / 5;

    switch (v0) {
    case 0:
        level = poffin->inner.spiciness;
        break;
    case 1:
        level = poffin->inner.dryness;
        break;
    case 2:
        level = poffin->inner.sweetness;
        break;
    case 3:
        level = poffin->inner.bitterness;
        break;
    case 4:
        level = poffin->inner.sourness;
        break;
    case 5:
    default:
        level = poffin->inner.spiciness;

        if (level < poffin->inner.dryness) {
            level = poffin->inner.dryness;
        }

        if (level < poffin->inner.sweetness) {
            level = poffin->inner.sweetness;
        }

        if (level < poffin->inner.bitterness) {
            level = poffin->inner.bitterness;
        }

        if (level < poffin->inner.sourness) {
            level = poffin->inner.sourness;
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
        if (poffinCase->slot[i].inner.type == TYPE_NONE) {
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
        if (poffinCase->slot[i].inner.type != TYPE_NONE) {
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
        if (poffinCase->slot[i].inner.type != TYPE_NONE) {
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

void PoffinCase_CopyPoffinFromSlot(PoffinCase *poffinCase, u16 srcSlot, Poffin *poffin)
{
    if (srcSlot >= MAX_POFFINS) {
        Poffin_Clear(poffin);
        return;
    }

    Poffin_Copy(&poffinCase->slot[srcSlot], poffin);
    return;
}

Poffin *PoffinCase_AllocateForSlot(PoffinCase *poffinCase, u16 destSlot, enum HeapID heapID)
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
        if (poffinCase->slot[i].inner.type == TYPE_NONE) {
            j++;
        }
    }

    return j;
}
