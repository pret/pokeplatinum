#include "poffin.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_0202A93C.h"
#include "struct_defs/struct_0202AB28.h"

#include "heap.h"
#include "math.h"
#include "savedata.h"

int Poffin_sizeof(void)
{
    return sizeof(Poffin);
}

BOOL sub_0202A914(Poffin *poffin)
{
    if (poffin->flavor == 30) {
        return FALSE;
    }

    return TRUE;
}

void Poffin_clear(Poffin *poffin)
{
    poffin->flavor = 30;
    poffin->spiciness = 0;
    poffin->dryness = 0;
    poffin->sweetness = 0;
    poffin->bitterness = 0;
    poffin->sourness = 0;
    poffin->val1_06 = 0;
    poffin->dummy = 0;
}

Poffin *Poffin_malloc(int heapID)
{
    Poffin *poffin;

    poffin = Heap_AllocFromHeapAtEnd(heapID, sizeof(Poffin));
    Poffin_clear(poffin);

    return poffin;
}

void Poffin_copy(Poffin *src, Poffin *dest)
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

static void MakePoffinFoul(Poffin *poffin, u8 param1)
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
        MakePoffinFoul(poffin, param2);
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
        MakePoffinFoul(poffin, param2);
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

UnkStruct_0202AB28 *Poffin_GetSavedataBlock(SaveData *savedata)
{
    return SaveData_SaveTable(savedata, 16);
}

int Poffin_SaveSize(void)
{
    return sizeof(Poffin) * 100;
}

void Poffin_Init(UnkStruct_0202AB28 *param0)
{
    int i = 0;

    for (i = 0; i < 100; i++) {
        Poffin_clear(&param0->unk_00[i]);
    }
}

u16 sub_0202AB54(UnkStruct_0202AB28 *param0)
{
    u16 v0;

    for (v0 = 0; v0 < 100; v0++) {
        if (param0->unk_00[v0].flavor == 30) {
            return v0;
        }
    }

    return 0xFFFF;
}

u16 sub_0202AB74(UnkStruct_0202AB28 *param0, Poffin *param1)
{
    u16 v0 = sub_0202AB54(param0);

    if (v0 == 0xFFFF) {
        return v0;
    }

    Poffin_copy(param1, &param0->unk_00[v0]);
    return v0;
}

BOOL sub_0202AB98(UnkStruct_0202AB28 *param0, u16 param1)
{
    if (param1 >= 100) {
        return FALSE;
    }

    Poffin_clear(&param0->unk_00[param1]);
    return TRUE;
}

static u16 sub_0202ABB0(UnkStruct_0202AB28 *param0, u16 param1)
{
    u16 v0;

    for (v0 = param1; v0 < 100; v0++) {
        if (param0->unk_00[v0].flavor != 30) {
            return v0;
        }
    }

    return 0xFFFF;
}

void sub_0202ABD4(UnkStruct_0202AB28 *param0)
{
    u16 v0, v1, v2;
    u16 v3, v4, v5;

    v5 = 100;

    for (v0 = 0; v0 < v5; v0++) {
        if (param0->unk_00[v0].flavor != 30) {
            continue;
        }

        v3 = v0;
        v2 = sub_0202ABB0(param0, v3);

        if (v2 == 0xFFFF) {
            break;
        }

        v4 = v2;
        v2 = v4 - v3;

        for (; v4 < v5; v3++, v4++) {
            Poffin_copy(&param0->unk_00[v4], &param0->unk_00[v3]);
            Poffin_clear(&param0->unk_00[v4]);
        }

        v5 -= v2;
    }
}

void sub_0202AC54(UnkStruct_0202AB28 *param0, u16 param1, Poffin *param2)
{
    if (param1 >= 100) {
        Poffin_clear(param2);
        return;
    }

    Poffin_copy(&param0->unk_00[param1], param2);
    return;
}

Poffin *sub_0202AC70(UnkStruct_0202AB28 *param0, u16 param1, int param2)
{
    Poffin *v0;

    v0 = Poffin_malloc(param2);

    if (param1 >= 100) {
        Poffin_clear(v0);
        return NULL;
    }

    Poffin_copy(&param0->unk_00[param1], v0);
    return v0;
}

u16 sub_0202AC98(UnkStruct_0202AB28 *param0)
{
    u16 v0 = 0, v1;

    for (v1 = 0; v1 < 100; v1++) {
        if (sub_0202A914(&param0->unk_00[v1])) {
            ++v0;
        }
    }

    return v0;
}

u16 sub_0202ACC0(UnkStruct_0202AB28 *param0)
{
    u16 v0, v1;

    v1 = 0;

    for (v0 = 0; v0 < 100; v0++) {
        if (param0->unk_00[v0].flavor == 30) {
            v1++;
        }
    }

    return v1;
}
