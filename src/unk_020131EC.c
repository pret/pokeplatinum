#include "unk_020131EC.h"

#include <nitro.h>
#include <string.h>

#include "constants/heap.h"
#include "constants/narc.h"
#include "generated/species.h"

#include "struct_defs/struct_02013610.h"

#include "heap.h"
#include "narc.h"
#include "pokemon_sprite.h"

static void sub_020131EC(const u8 *param0, u8 *param1, int *param2, int *param3, int param4, int param5);

static void sub_020131EC(const u8 *param0, u8 *param1, int *param2, int *param3, int param4, int param5)
{
    int v0;
    u32 v1;

    for (v0 = 0; v0 < 8; v0++) {
        memcpy(&param1[*param3], &param0[*param2], param4);
        *param2 += param5;
        *param3 += param4;
    }
}

static void sub_0201322C(enum NarcID narcID, int param1, int param2, NNSG2dCharacterData **param3)
{
    BOOL v0;
    void *v1 = NULL;

    v1 = NARC_AllocAndReadWholeMemberByIndexPair(narcID, param1, param2);
    GF_ASSERT(v1 != NULL);

    v0 = NNS_G2dGetUnpackedCharacterData(v1, &(*param3));
    GF_ASSERT(param3 != NULL);
    GF_ASSERT(v0 != 0);

    Heap_FreeToHeap(v1);
}

static void sub_02013260(int param0, int param1, int param2, int param3, NNSG2dCharacterData *param4, void *param5)
{
    u8 *v0 = NULL;
    u8 *v1 = NULL;
    int v2;
    int v3;
    int v4;
    int v5;
    int v6;

    GF_ASSERT(param4->W >= (param0 + param2));
    GF_ASSERT(param4->H >= (param1 + param3));

    v3 = (sizeof(u8) * 4);
    v0 = param4->pRawData;
    v1 = (u8 *)param5;
    v6 = (param4->W * v3);
    v4 = (param0 * v3) + (param1 * v6);
    v5 = 0;

    {
        int v7;
        int v8;

        for (v8 = param1; v8 < (param1 + param3); v8++) {
            for (v7 = param0; v7 < (param0 + param2); v7++) {
                v4 = (v7 * v3) + (v8 * v6 * 8);
                sub_020131EC(v0, v1, &v4, &v5, v3, v6);
            }
        }
    }
}

static BOOL sub_020132F8(int param0)
{
    int v0;
    int v1;
    const int v2[] = {
        SPECIES_SPINDA,
        SPECIES_BAD_EGG,
    };

    for (v0 = 0; v0 < 495; v0++) {
        v1 = v2[v0];

        if (v1 == SPECIES_BAD_EGG) {
            break;
        }

        if (v1 == param0) {
            return 1;
        }
    }

    return 0;
}

static void sub_02013338(enum NarcID narcID, int param1, int param2, int param3, int param4, int param5, int param6, void *param7, u32 param8, BOOL param9, int param10, int param11)
{
    BOOL v0;
    NNSG2dCharacterData *v1 = NULL;

    sub_0201322C(narcID, param1, param2, &v1);
    PokemonSprite_Decrypt(v1->pRawData, narcID);

    v0 = sub_020132F8(param11);

    if ((param10 == 2) && (v0 == 1)) {
        PokemonSprite_DrawSpindaSpots(v1->pRawData, param8, param9);
    }

    sub_02013260(param3, param4, param5, param6, v1, param7);
}

static void *sub_02013388(enum NarcID narcID, int param1, enum HeapID heapID, int param3, int param4, int param5, int param6, u32 param7, BOOL param8, int param9, int param10)
{
    void *v0;
    int v1 = ((param5 * param6) * ((8 / 2) * 8));
    v0 = Heap_AllocFromHeap(heapID, v1);

    sub_02013338(narcID, param1, heapID, param3, param4, param5, param6, v0, param7, param8, param9, param10);

    return v0;
}

void sub_020133D4(enum NarcID narcID, int param1, int param2, int param3, int param4, int param5, int param6, void *param7)
{
    void *v0 = NULL;
    u8 *v1 = NULL;
    u8 *v2 = NULL;
    NNSG2dCharacterData *v3 = NULL;
    int v4;
    int v5;
    int v6;
    int v7;
    int v8;
    BOOL v9;

    v0 = NARC_AllocAndReadWholeMemberByIndexPair(narcID, param1, param2);
    GF_ASSERT(v0 != NULL);

    v9 = NNS_G2dGetUnpackedCharacterData(v0, &v3);
    GF_ASSERT(v9 != 0);
    GF_ASSERT(v3->W >= (param3 + param5));
    GF_ASSERT(v3->H >= (param4 + param6));

    v5 = (sizeof(u8) * 4);
    v1 = v3->pRawData;

    PokemonSprite_Decrypt(v1, narcID);

    v2 = (u8 *)param7;
    v8 = (v3->W * v5);
    v6 = (param3 * v5) + (param4 * v8);
    v7 = 0;

    {
        int v10;
        int v11;

        for (v11 = param4; v11 < (param4 + param6); v11++) {
            for (v10 = param3; v10 < (param3 + param5); v10++) {
                v6 = (v10 * v5) + (v11 * v8 * 8);
                sub_020131EC(v1, v2, &v6, &v7, v5, v8);
            }
        }
    }

    Heap_FreeToHeap(v0);
}

static void *sub_020134A8(enum NarcID narcID, int param1, enum HeapID heapID, int param3, int param4, int param5, int param6)
{
    void *v0;
    int v1 = ((param5 * param6) * ((8 / 2) * 8));
    v0 = Heap_AllocFromHeap(heapID, v1);

    sub_020133D4(narcID, param1, heapID, param3, param4, param5, param6, v0);

    return v0;
}

void sub_020134E4(int param0, int param1, int param2, int param3, int param4, int param5, int *param6, const void *param7, void *param8)
{
    int v0, v1;
    u8 *v2;
    u8 *v3;
    int v4;
    int v5;
    int v6;

    v2 = (u8 *)param7;
    v3 = (u8 *)param8;
    v5 = param2 + param4;
    v6 = param3 + param5;

    for (v1 = param3; v1 < v6; v1++) {
        for (v0 = param2; v0 < v5; v0++) {
            v4 = (v0 * ((8 / 2) * 8)) + (v1 * ((8 / 2) * 8) * param0);
            memcpy(&v3[*param6], &v2[v4], ((8 / 2) * 8));
            *param6 += ((8 / 2) * 8);
        }
    }
}

void sub_02013560(int param0, int param1, const UnkStruct_02013610 *param2, int *param3, const void *param4, void *param5)
{
    sub_020134E4(param0, param1, param2->unk_00, param2->unk_04, param2->unk_08, param2->unk_0C, param3, param4, param5);
}

void sub_02013584(enum NarcID narcID, int param1, int heapID, int param3, int param4, int param5, int param6, void *param7)
{
    int v0;
    int v1;
    int v2;
    void *v3 = NULL;
    const UnkStruct_02013610 v4[] = {
        { 0x0, 0x0, 0x8, 0x8 },
        { 0x8, 0x0, 0x2, 0x4 },
        { 0x8, 0x4, 0x2, 0x4 },
        { 0x0, 0x8, 0x4, 0x2 },
        { 0x4, 0x8, 0x4, 0x2 },
        { 0x8, 0x8, 0x2, 0x2 }
    };

    v1 = NELEMS(v4);
    v2 = 0;
    v3 = sub_020134A8(narcID, param1, heapID, param3, param4, param5, param6);

    for (v0 = 0; v0 < v1; v0++) {
        sub_02013560(param5, param6, &v4[v0], &v2, v3, param7);
    }

    Heap_FreeToHeap(v3);
}

void sub_020135F0(enum NarcID narcID, int param1, enum HeapID heapID, const UnkStruct_02013610 *param3, void *param4)
{
    sub_02013584(narcID, param1, heapID, param3->unk_00, param3->unk_04, param3->unk_08, param3->unk_0C, param4);
}

void sub_02013610(enum NarcID narcID, int param1, enum HeapID heapID, void *param3)
{
    const UnkStruct_02013610 v0 = {
        0x0,
        0x0,
        0xA,
        0xA
    };

    sub_020135F0(narcID, param1, heapID, &v0, param3);
}

void *sub_0201363C(enum NarcID narcID, int param1, enum HeapID heapID)
{
    void *v0 = NULL;
    int v1 = (10 * 10 * ((8 / 2) * 8));
    v0 = Heap_AllocFromHeap(heapID, v1);

    sub_02013610(narcID, param1, heapID, v0);

    return v0;
}

void *sub_02013660(enum NarcID narcID, int param1, enum HeapID heapID)
{
    NNSG2dPaletteData *v0;
    void *v1;
    void *v2;
    int v3;
    BOOL v4;

    v2 = Heap_AllocFromHeap(heapID, 0x20);
    v1 = NARC_AllocAndReadWholeMemberByIndexPair(narcID, param1, heapID);
    v4 = NNS_G2dGetUnpackedPaletteData(v1, &v0);

    GF_ASSERT(v4 == 1);
    MI_CpuCopy16(v0->pRawData, v2, 0x20);

    Heap_FreeToHeap(v1);

    return v2;
}

void sub_020136A4(enum NarcID narcID, int param1, enum HeapID heapID, int param3, int param4, int param5, int param6, void *param7, u32 param8, BOOL param9, int param10, int param11)
{
    int v0;
    int v1;
    int v2;
    void *v3 = NULL;
    const UnkStruct_02013610 v4[] = {
        { 0x0, 0x0, 0x8, 0x8 },
        { 0x8, 0x0, 0x2, 0x4 },
        { 0x8, 0x4, 0x2, 0x4 },
        { 0x0, 0x8, 0x4, 0x2 },
        { 0x4, 0x8, 0x4, 0x2 },
        { 0x8, 0x8, 0x2, 0x2 }
    };

    v1 = NELEMS(v4);
    v2 = 0;

    v3 = sub_02013388(narcID, param1, heapID, param3, param4, param5, param6, param8, param9, param10, param11);

    for (v0 = 0; v0 < v1; v0++) {
        sub_02013560(param5, param6, &v4[v0], &v2, v3, param7);
    }

    Heap_FreeToHeap(v3);
}

void sub_02013720(enum NarcID narcID, int param1, enum HeapID heapID, const UnkStruct_02013610 *param3, void *param4, u32 param5, BOOL param6, int param7, int param8)
{
    sub_020136A4(narcID, param1, heapID, param3->unk_00, param3->unk_04, param3->unk_08, param3->unk_0C, param4, param5, param6, param7, param8);
}

void sub_02013750(enum NarcID narcID, int param1, enum HeapID heapID, void *param3, u32 param4, BOOL param5, int param6, int param7)
{
    const UnkStruct_02013610 v0 = {
        0x0,
        0x0,
        0xA,
        0xA
    };

    sub_02013720(narcID, param1, heapID, &v0, param3, param4, param5, param6, param7);
}
