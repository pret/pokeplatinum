#include <nitro.h>
#include <string.h>

#include "coresys.h"

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02018340_decl.h"

#include "narc.h"
#include "unk_0200F174.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0208C098.h"

__attribute__((aligned(4))) static const u16 Unk_020F4030[] = {
    0x20,
    0x80,
    0x200,
    0x800,
    0x40,
    0x80,
    0x100,
    0x400,
    0x40,
    0x80,
    0x100,
    0x400
};

int sub_0208C098 (int param0)
{
    param0 -= 0;
    return Unk_020F4030[param0];
}

u32 sub_0208C0A4 (u32 param0, u32 param1)
{
    u32 v0;

    v0 = (param0 * param0) + (param1 * param1);
    v0 = SVC_Sqrt(v0 << 4);

    return v0 >> 2;
}

u8 sub_0208C0BC (u32 param0, u32 param1, u8 param2)
{
    u8 v0;

    v0 = param0 * param2 / param1;

    if ((v0 == 0) && (param0 > 0)) {
        v0 = 1;
    }

    return v0;
}

u8 sub_0208C0D4 (u32 param0, u32 param1)
{
    param0 <<= 8;
    param1 <<= 8;

    if (param0 > (param1 / 2)) {
        return 3;
    } else if (param0 > (param1 / 5)) {
        return 2;
    } else if (param0 > 0) {
        return 1;
    }

    return 0;
}

u8 sub_0208C104 (u16 param0, u16 param1, u32 param2)
{
    u32 v0;

    if (param0 == param1) {
        return 4;
    }

    v0 = sub_0208C0BC(param0, param1, param2);

    return sub_0208C0D4(v0, param2);
}

void sub_0208C120 (u8 param0, u32 param1)
{
    if (param0 == 0) {
        sub_0200F174(0, 1, 1, 0x0, 6, 1, param1);
    } else {
        sub_0200F174(0, 0, 0, 0x0, 6, 1, param1);
    }
}

u8 sub_0208C15C (s16 * param0, u16 param1)
{
    s16 v0;

    v0 = *param0;

    if (coresys.unk_4C & PAD_KEY_UP) {
        *param0 += 1;

        if (*param0 > param1) {
            *param0 = 1;
        }

        if (*param0 == v0) {
            return 0;
        }

        return 1;
    }

    if (coresys.unk_4C & PAD_KEY_DOWN) {
        *param0 -= 1;

        if (*param0 <= 0) {
            *param0 = param1;
        }

        if (*param0 == v0) {
            return 0;
        }

        return 2;
    }

    if (coresys.unk_4C & PAD_KEY_LEFT) {
        *param0 -= 10;

        if (*param0 <= 0) {
            *param0 = 1;
        }

        if (*param0 == v0) {
            return 0;
        }

        return 2;
    }

    if (coresys.unk_4C & PAD_KEY_RIGHT) {
        *param0 += 10;

        if (*param0 > param1) {
            *param0 = param1;
        }

        if (*param0 == v0) {
            return 0;
        }

        return 1;
    }

    return 0;
}

void sub_0208C210 (UnkStruct_02018340 * param0, int param1, NARC * param2, int param3, int param4, int param5, int param6, u16 param7, u16 param8)
{
    u32 v0;
    void * v1;
    NNSG2dCharacterData * v2;
    NNSG2dScreenData * v3;
    NNSG2dPaletteData * v4;

    v0 = NARC_GetMemberSize(param2, param4);
    v1 = Heap_AllocFromHeapAtEnd(param1, v0);

    NARC_ReadWholeMember(param2, param4, (void *)v1);

    switch (param6) {
    case 0:
        NNS_G2dGetUnpackedCharacterData(v1, &v2);

        if (param7 == 0) {
            param7 = v2->szByte;
        }

        sub_0201958C(param0, param5, v2->pRawData, param7, param8);
        break;
    case 1:
        NNS_G2dGetUnpackedScreenData(v1, &v3);

        if (param7 == 0) {
            param7 = v3->szByte;
        }

        if (sub_02019FE4(param0, param5) != NULL) {
            sub_02019574(param0, param5, v3->rawData, param7);
        }

        sub_02019460(param0, param5, v3->rawData, param7, param8);
        break;
    case 2:
        NNS_G2dGetUnpackedPaletteData(v1, &v4);

        if (param7 == 0) {
            param7 = v4->szByte;
        }

        sub_0201972C(param5, v4->pRawData, param7, param8);
    }

    Heap_FreeToHeap(v1);
}

void * sub_0208C2F4 (NARC * param0, int param1, int param2, NNSG2dScreenData ** param3, int param4)
{
    int v0;
    void * v1;

    v0 = NARC_GetMemberSize(param0, param2);
    v1 = Heap_AllocFromHeap(param4, v0);

    NARC_ReadWholeMember(param0, param2, v1);
    NNS_G2dGetUnpackedScreenData(v1, param3);

    return v1;
}
