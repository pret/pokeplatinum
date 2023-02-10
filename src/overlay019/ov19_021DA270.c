#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_020218BC_decl.h"
#include "struct_decls/struct_02073C74_sub1_decl.h"
#include "overlay019/struct_ov19_021D61B0_decl.h"

#include "overlay019/struct_ov19_021D4DF0.h"
#include "overlay019/struct_ov19_021DA384.h"
#include "overlay019/struct_ov19_021DA864.h"
#include "overlay019/struct_ov19_021DCD18.h"

#include "narc.h"
#include "unk_02006E3C.h"
#include "heap.h"
#include "unk_020218BC.h"
#include "unk_02073C2C.h"
#include "unk_02079D40.h"
#include "overlay019/ov19_021D0D80.h"
#include "overlay019/ov19_021D61B0.h"
#include "overlay019/ov19_021DA270.h"

BOOL ov19_021DA270 (UnkStruct_ov19_021DA384 * param0, UnkStruct_ov19_021D61B0 * param1, const UnkStruct_ov19_021D4DF0 * param2, UnkStruct_020218BC * param3, NARC * param4)
{
    NNSG2dImagePaletteProxy v0;
    NNSG2dPaletteData * v1;
    void * v2;

    param0->unk_48 = NARC_ctor(19, 10);

    NNS_G2dInitImagePaletteProxy(&v0);
    sub_0200716C(param0->unk_48, sub_02079FD0(), NNS_G2D_VRAM_TYPE_2DMAIN, 2 * 0x20, 10, &v0);

    v2 = sub_020071EC(param0->unk_48, sub_02079FD0(), &v1, 10);

    if (v2) {
        BOOL v3;
        NNSG2dPaletteCompressInfo * v4;

        NNS_G2dInitImagePaletteProxy(&v0);
        v3 = NNS_G2dGetUnpackedPaletteCompressInfo(v2, &v4);
        ov19_021D78C8(v1->pRawData, v1->pRawData, v1->szByte / sizeof(u16), 0x57f, 8);

        if (v3) {
            NNS_G2dLoadPaletteEx(v1, v4, 6 * 0x20, NNS_G2D_VRAM_TYPE_2DMAIN, &v0);
        } else {
            NNS_G2dLoadPalette(v1, 6 * 0x20, NNS_G2D_VRAM_TYPE_2DMAIN, &v0);
        }

        Heap_FreeToHeap(v2);
    }

    param0->unk_08 = sub_02007204(param4, 21, 1, &(param0->unk_10), 10);
    param0->unk_00 = sub_02007220(param4, 22, 1, &(param0->unk_04), 10);
    param0->unk_14 = sub_02007204(param4, 23, 1, &(param0->unk_1C), 10);
    param0->unk_18 = sub_02007220(param4, 24, 1, &(param0->unk_20), 10);

    if ((param0->unk_08 == NULL) || (param0->unk_00 == NULL) || (param0->unk_48 == NULL)) {
        return 0;
    }

    param0->unk_24 = param3;
    param0->unk_40 = param2;
    param0->unk_44 = param1;

    return 1;
}

void ov19_021DA384 (UnkStruct_ov19_021DA384 * param0)
{
    if (param0->unk_08 != NULL) {
        Heap_FreeToHeap(param0->unk_08);
        param0->unk_08 = NULL;
    }

    if (param0->unk_00 != NULL) {
        Heap_FreeToHeap(param0->unk_00);
        param0->unk_00 = NULL;
    }

    if (param0->unk_14 != NULL) {
        Heap_FreeToHeap(param0->unk_14);
        param0->unk_14 = NULL;
    }

    if (param0->unk_18 != NULL) {
        Heap_FreeToHeap(param0->unk_18);
        param0->unk_18 = NULL;
    }

    if (param0->unk_48 != NULL) {
        NARC_dtor(param0->unk_48);
    }
}

void ov19_021DA3CC (UnkStruct_ov19_021DA384 * param0, UnkStruct_ov19_021DCD18 * param1, u32 param2)
{
    while (param2--) {
        param1->unk_00 = NULL;
        NNS_G2dInitImageProxy(&(param1->unk_04));
        param1++;
    }
}

void ov19_021DA3F0 (UnkStruct_ov19_021DA384 * param0, UnkStruct_ov19_021DCD18 * param1, u32 param2)
{
    while (param2--) {
        if (param1->unk_00 != NULL) {
            sub_02021BD4(param1->unk_00);
            param1->unk_00 = NULL;
        }

        param1++;
    }
}

void ov19_021DA418 (const UnkStruct_ov19_021DCD18 * param0, UnkStruct_ov19_021DCD18 * param1, u32 param2)
{
    MI_CpuCopy32(param0, param1, sizeof(UnkStruct_ov19_021DCD18) * param2);
}

void ov19_021DA428 (UnkStruct_ov19_021DA384 * param0, BoxPokemon *boxMon, s32 param2, s32 param3, u32 param4, u32 param5, u32 param6, UnkStruct_ov19_021DCD18 * param7)
{
    NNSG2dCharacterData * v0;
    UnkStruct_ov19_021DA864 v1;
    u16 v2;
    u8 v3;
    u8 v4;
    u8 v5;

    v5 = sub_02073D20(boxMon);
    ov19_021D783C(&v1, NULL, ov19_021D77D0(param0->unk_44), param0->unk_10, param0->unk_04, param4);

    v2 = sub_02074570(boxMon, MON_DATA_SPECIES, NULL);
    v3 = sub_02074570(boxMon, MON_DATA_IS_EGG, NULL);
    v4 = sub_02074570(boxMon, MON_DATA_112, NULL);
    param7->unk_28 = sub_02079D40((BoxPokemon *)boxMon);
    param7->unk_2C = sub_02079EDC(v2, v4, v3);
    param7->unk_30 = sub_02074570(boxMon, MON_DATA_HELD_ITEM, NULL);
    param7->unk_2E = sub_02074570(boxMon, MON_DATA_11, NULL);

    NNS_G2dInitImageProxy(&(param7->unk_04));
    NARC_ReadFromMember(param0->unk_48, param7->unk_28, 0, ((4 * 4) * 0x20 + 0x80), param0->unk_4C);
    NNS_G2dGetUnpackedCharacterData(param0->unk_4C, &v0);

    v0->mapingType = GX_GetOBJVRamModeChar();
    v0->szByte = (4 * 4) * 0x20;

    NNS_G2dLoadImage1DMapping(v0, param6 * 0x20, NNS_G2D_VRAM_TYPE_2DMAIN, &(param7->unk_04));

    v1.unk_00 = &(param7->unk_04);
    param7->unk_00 = ov19_021D785C(param0->unk_24, &v1, param2, param3, param5, NNS_G2D_VRAM_TYPE_2DMAIN);

    GF_ASSERT(param7->unk_00 != NULL);

    sub_02021E90(param7->unk_00, 2 + param7->unk_2C);
    ov19_021DA63C(param0, param7, ov19_021D5EC8(param0->unk_40));
    sub_02073D48(boxMon, v5);
}

void ov19_021DA548 (UnkStruct_ov19_021DA384 * param0, BoxPokemon *boxMon, u32 param2, u32 param3, u8 * param4, s32 param5, s32 param6, u32 param7, u32 param8, u32 param9, UnkStruct_ov19_021DCD18 * param10)
{
    NNSG2dCharacterData * v0;
    UnkStruct_ov19_021DA864 v1;
    BOOL v2;
    u8 v3, v4;

    v2 = sub_02073D20(boxMon);
    v3 = sub_02074570(boxMon, MON_DATA_IS_EGG, NULL);
    v4 = sub_02074570(boxMon, MON_DATA_112, NULL);

    ov19_021D783C(&v1, NULL, ov19_021D77D0(param0->unk_44), param0->unk_10, param0->unk_04, param7);

    param10->unk_28 = param3;
    param10->unk_2C = sub_02079EDC(param2, v4, v3);
    param10->unk_30 = sub_02074570(boxMon, MON_DATA_HELD_ITEM, NULL);
    param10->unk_2E = sub_02074570(boxMon, MON_DATA_11, NULL);

    NNS_G2dInitImageProxy(&(param10->unk_04));
    NNS_G2dGetUnpackedCharacterData(param4, &v0);

    v0->mapingType = GX_GetOBJVRamModeChar();
    v0->szByte = (4 * 4) * 0x20;

    NNS_G2dLoadImage1DMapping(v0, param9 * 0x20, NNS_G2D_VRAM_TYPE_2DMAIN, &(param10->unk_04));

    v1.unk_00 = &(param10->unk_04);
    param10->unk_00 = ov19_021D785C(param0->unk_24, &v1, param5, param6, param8, NNS_G2D_VRAM_TYPE_2DMAIN);

    GF_ASSERT(param10->unk_00 != NULL);

    sub_02021E90(param10->unk_00, 2 + param10->unk_2C);
    ov19_021DA63C(param0, param10, ov19_021D5EC8(param0->unk_40));
    sub_02073D48(boxMon, v2);
}

void ov19_021DA63C (UnkStruct_ov19_021DA384 * param0, UnkStruct_ov19_021DCD18 * param1, u32 param2)
{
    if (param2 != 0) {
        int v0;

        if ((param2 & 1)) {
            if (param1->unk_30 == 0) {
                sub_02021FE0(param1->unk_00, GX_OAM_MODE_XLU);
                return;
            }
        }

        for (v0 = 0; v0 < 6; v0++) {
            if ((param2 & (2 << v0)) && ((param1->unk_2E & (1 << v0)) == 0)) {
                sub_02021FE0(param1->unk_00, GX_OAM_MODE_XLU);
                return;
            }
        }
    }

    sub_02021FE0(param1->unk_00, GX_OAM_MODE_NORMAL);
}

void ov19_021DA68C (UnkStruct_ov19_021DA384 * param0, UnkStruct_ov19_021DCD18 * param1, u32 param2)
{
    param1->unk_2E = param2;
}

void ov19_021DA690 (UnkStruct_ov19_021DA384 * param0, UnkStruct_ov19_021DCD18 * param1, u32 param2)
{
    param1->unk_30 = param2;
}

void ov19_021DA694 (UnkStruct_ov19_021DA384 * param0, UnkStruct_ov19_021DCD18 * param1, BOOL param2)
{
    int v0;
    u32 v1;
    NNSG2dCharacterData * v2;

    if ((param1->unk_30 == 112) && (param1->unk_28 == sub_02079D8C(487, 0, 0))) {
        param1->unk_28 = sub_02079D8C(487, 0, 1);
    } else if ((param1->unk_30 != 112) && (param1->unk_28 == sub_02079D8C(487, 0, 1))) {
        param1->unk_28 = sub_02079D8C(487, 0, 0);
    } else if ((param2 == 1) && (param1->unk_28 == sub_02079D8C(492, 0, 1))) {
        param1->unk_28 = sub_02079D8C(492, 0, 0);
    } else {
        return;
    }

    v1 = param1->unk_04.vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN] + (u32)G2_GetOBJCharPtr();

    NARC_ReadFromMember(param0->unk_48, param1->unk_28, 0, ((4 * 4) * 0x20 + 0x80), param0->unk_4C);
    NNS_G2dGetUnpackedCharacterData(param0->unk_4C, &v2);
    MI_CpuCopy32(v2->pRawData, (void *)v1, (4 * 4) * 0x20);
}

void ov19_021DA744 (UnkStruct_ov19_021DA384 * param0, void * param1, u32 param2, u32 param3)
{
    NARC_ReadFromMember(param0->unk_48, param2, 0, param3, param1);
}

void ov19_021DA754 (UnkStruct_ov19_021DA384 * param0, UnkStruct_ov19_021DCD18 * param1, u32 param2)
{
    if (param1->unk_00 != NULL) {
        NNSG2dCharacterData * v0;

        NNS_G2dInitImageProxy(&(param1->unk_04));

        NARC_ReadFromMember(param0->unk_48, param1->unk_28, 0, ((4 * 4) * 0x20 + 0x80), param0->unk_4C);
        NNS_G2dGetUnpackedCharacterData(param0->unk_4C, &v0);
        v0->mapingType = GX_GetOBJVRamModeChar();
        v0->szByte = (4 * 4) * 0x20;

        NNS_G2dLoadImage1DMapping(v0, param2 * 0x20, NNS_G2D_VRAM_TYPE_2DMAIN, &(param1->unk_04));

        sub_02021F7C(param1->unk_00, &(param1->unk_04));
    }
}

void ov19_021DA7B8 (UnkStruct_ov19_021DA384 * param0, UnkStruct_ov19_021DCD18 * param1, u32 param2)
{
    if ((param2 == 1) || (param2 == 2)) {
        sub_02021CF8(param1->unk_00, 1);
    } else {
        sub_02021CF8(param1->unk_00, 0);
    }

    sub_02021D6C(param1->unk_00, param2);
}

BOOL ov19_021DA7E0 (UnkStruct_ov19_021DA384 * param0, UnkStruct_ov19_021DCD18 * param1)
{
    return sub_02021FD0(param1->unk_00) == 0;
}

void ov19_021DA7F4 (UnkStruct_ov19_021DA384 * param0, UnkStruct_ov19_021DCD18 * param1, BOOL param2)
{
    u32 v0 = ((param2) ? 6 : 2) + param1->unk_2C;

    sub_02021E90(param1->unk_00, v0);
}

NNSG2dCellDataBank * ov19_021DA80C (UnkStruct_ov19_021DA384 * param0)
{
    return param0->unk_10;
}

NNSG2dAnimBankData * ov19_021DA810 (UnkStruct_ov19_021DA384 * param0)
{
    return param0->unk_04;
}
