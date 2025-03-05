#include "poffin.h"

#include <nitro.h>
#include <string.h>

#include "heap.h"
#include "math.h"
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
    poffin->val1_06 = 0;
    poffin->dummy = 0;
}

Poffin *Poffin_New(int heapID)
{
    Poffin *poffin = Heap_AllocFromHeapAtEnd(heapID, sizeof(Poffin));
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
    dest->val1_06 = src->val1_06;
    dest->dummy = src->dummy;
}

u8 Poffin_GetAttribute(Poffin *poffin, PoffinAttributeID attributeID)
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
    case POFFIN_ATTRIBUTEID_06:
    default:
        return poffin->val1_06;
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

    poffin->flavor = 27;
    poffin->val1_06 = param1;
}

int sub_0202A9E4(Poffin *poffin, u8 *param1, u8 param2, BOOL isFoul)
{
    int v0, v1 = 0;
    u8 v2[5];
    u8 v3 = 0, v4 = 0;

    v4 = 27;

    if (isFoul) {
        Poffin_MakeFoul(poffin, param2);
        return v4;
    }

    for (v0 = 0; v0 < 5; v0++) {
        if (param1[v0]) {
            if (param1[v0] >= 50) {
                v3 = 1;
            }

            v2[v1++] = v0;
        }
    }

    switch (v1) {
    case 0:
        Poffin_MakeFoul(poffin, param2);
        return v4;
    case 1:
        v4 = v2[0] * 5 + v2[0];
        break;
    case 2:
        if (param1[v2[0]] >= param1[v2[1]]) {
            v4 = v2[0] * 5 + v2[1];
        } else {
            v4 = v2[1] * 5 + v2[0];
        }
        break;
    case 3:
        v4 = 25;
        break;
    case 4:
    case 5:
        v4 = 26;
        break;
    }

    if (v3) {
        v4 = 28;
    }

    for (v0 = 0; v0 < 5; v0++) {
        poffin->attributes[v0 + 1] = param1[v0];
    }

    poffin->flavor = v4;
    poffin->val1_06 = param2;

    return v4;
}

void Poffin_StoreAttributesToArray(Poffin *poffin, u8 *dest)
{
    dest[0] = poffin->flavor;
    dest[1] = poffin->spiciness;
    dest[2] = poffin->dryness;
    dest[3] = poffin->sweetness;
    dest[4] = poffin->bitterness;
    dest[5] = poffin->sourness;
    dest[6] = poffin->val1_06;
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

PoffinCase *Poffin_GetSavedataBlock(SaveData *savedata)
{
    return SaveData_SaveTable(savedata, 16);
}

int Poffin_SaveSize(void)
{
    return sizeof(Poffin) * 100;
}

void Poffin_Init(PoffinCase *poffinCase)
{
    int i;

    for (i = 0; i < MAX_POFFINS; i++) {
        Poffin_Clear(&poffinCase->slot[i]);
    }
}

u16 Poffin_GetEmptyCaseSlot(PoffinCase *poffinCase)
{
    u16 i;

    for (i = 0; i < MAX_POFFINS; i++) {
        if (poffinCase->slot[i].flavor == FLAVOR_NONE) {
            return i;
        }
    }

    return POFFIN_NONE;
}

u16 Poffin_AddToCase(PoffinCase *poffinCase, Poffin *poffin)
{
    u16 slotId = Poffin_GetEmptyCaseSlot(poffinCase);

    if (slotId == POFFIN_NONE) {
        return slotId;
    }

    Poffin_Copy(poffin, &poffinCase->slot[slotId]);
    return slotId;
}

BOOL Poffin_ClearCaseSlot(PoffinCase *poffinCase, u16 slot)
{
    if (slot >= MAX_POFFINS) {
        return FALSE;
    }

    Poffin_Clear(&poffinCase->slot[slot]);
    return TRUE;
}

static u16 Poffin_GetFirstValidPoffin(PoffinCase *poffinCase, u16 startingSlot)
{
    u16 i;

    for (i = startingSlot; i < MAX_POFFINS; i++) {
        if (poffinCase->slot[i].flavor != FLAVOR_NONE) {
            return i;
        }
    }

    return POFFIN_NONE;
}

void Poffin_CompactCase(PoffinCase *poffinCase)
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
        nextValidSlotNum = Poffin_GetFirstValidPoffin(poffinCase, emptySlotNum); // find the next valid poffin

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

void Poffin_CopyToCaseSlot(PoffinCase *poffinCase, u16 destSlot, Poffin *poffin)
{
    if (destSlot >= MAX_POFFINS) {
        Poffin_Clear(poffin);
        return;
    }

    Poffin_Copy(&poffinCase->slot[destSlot], poffin);
    return;
}

Poffin *Poffin_AllocateForCaseSlot(PoffinCase *poffinCase, u16 destSlot, int heapID)
{
    Poffin *poffin = Poffin_New(heapID);

    if (destSlot >= MAX_POFFINS) {
        Poffin_Clear(poffin);
        return NULL;
    }

    Poffin_Copy(&poffinCase->slot[destSlot], poffin);
    return poffin;
}

u16 Poffin_GetNumberOfFilledSlots(PoffinCase *poffinCase)
{
    u16 j = 0, i;

    for (i = 0; i < MAX_POFFINS; i++) {
        if (Poffin_HasValidFlavor(&poffinCase->slot[i])) {
            ++j;
        }
    }

    return j;
}

u16 Poffin_GetNumberOfEmptySlots(PoffinCase *poffinCase)
{
    u16 i, j = 0;

    for (i = 0; i < MAX_POFFINS; i++) {
        if (poffinCase->slot[i].flavor == FLAVOR_NONE) {
            j++;
        }
    }

    return j;
}
