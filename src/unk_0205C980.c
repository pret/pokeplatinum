#include "unk_0205C980.h"

#include <nitro.h>
#include <string.h>

#include "heap.h"
#include "string_template.h"
#include "unk_02006E3C.h"

static const int Unk_020ED7F0[][3] = {
    { 0x3, 0x3C, 0x3C },
    { 0x5, 0x6, 0x6 },
    { 0xB, 0x18, 0x18 },
    { 0x1f, 0x39, 0x39 },
    { 0x32, 0x30, 0x30 },
    { 0x33, 0xE, 0xE },
    { 0x3E, 0x20, 0x20 },
    { 0x46, 0x31, 0x31 },
    { 0x6, 0x3, 0x3 },
    { 0x7, 0xA, 0xA },
    { 0xD, 0x24, 0x24 },
    { 0xE, 0x19, 0x19 },
    { 0x23, 0x55, 0x55 },
    { 0x25, 0x23, 0x23 },
    { 0x2A, 0x12, 0x12 },
    { 0x3f, 0x21, 0x21 }
};

static const int Unk_020ED770[][4] = {
    { 0x0, 0x1, 0x2, 0x3 },
    { 0x1, 0x6, 0x7, 0x0 },
    { 0x2, 0x3, 0x4, 0x5 },
    { 0x3, 0x0, 0x5, 0x6 },
    { 0x4, 0x1, 0x2, 0x7 },
    { 0x5, 0x2, 0x7, 0x0 },
    { 0x6, 0x3, 0x4, 0x1 },
    { 0x7, 0x4, 0x5, 0x6 }
};

void sub_0205C980(u32 param0, int param1, StringTemplate *param2)
{
    int v0 = param0 % 8;
    int v1;

    for (v1 = 0; v1 < 4; v1++) {
        int v2 = Unk_020ED770[v0][v1] + 8 * param1;
        StringTemplate_SetTrainerClassName(param2, v1, Unk_020ED7F0[v2][1]);
    }
}

int sub_0205C9BC(u32 param0, int param1, u32 param2)
{
    int v0 = param0 % 8;
    int v1 = Unk_020ED770[v0][param2] + 8 * param1;

    return Unk_020ED7F0[v1][0];
}

static int sub_0205C9E0(int param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < 16 / 2; v0++) {
        if (Unk_020ED7F0[v0 + (param0 * (16 / 2))][0] == param1) {
            return v0 + (param0 * (16 / 2));
        }
    }

    return 0;
}

int sub_0205CA0C(int param0, int param1)
{
    return sub_0205C9E0(param0, param1);
}

int sub_0205CA14(int param0, int param1, int param2)
{
    int v0 = sub_0205C9E0(param0, param1);

    switch (param2) {
    case 0:
        return v0;
        break;
    case 2:
        return Unk_020ED7F0[v0][1];
        break;
    case 1:
        return Unk_020ED7F0[v0][2];
        break;
    default:
        GF_ASSERT(0);
    }

    return 0;
}

u16 *sub_0205CA4C(int param0)
{
    u8 *v0, *v1;
    NNSG2dPaletteData *v2, *v3;
    u16 *v4, *v5;
    int v6;

    v0 = sub_02006F88(86, 7, &v2, param0);
    v4 = Heap_AllocFromHeap(param0, 16 * 18 * 2);
    v5 = (u16 *)v2->pRawData;

    for (v6 = 0; v6 < 16 * 16; v6++) {
        v4[v6] = v5[v6];
    }

    Heap_FreeToHeap(v0);

    return v4;
}
