#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02018340_decl.h"

#include "filesystem.h"
#include "unk_02006E3C.h"
#include "unk_02017E74.h"
#include "unk_02018340.h"

static u32 sub_020072D0(void * param0, UnkStruct_02018340 * param1, u32 param2, u32 param3, u32 param4);
static void sub_02007314(void * param0, UnkStruct_02018340 * param1, u32 param2, u32 param3, u32 param4);
static u32 sub_02007374(void * param0, int param1, u32 param2, u32 param3);
static void sub_020073BC(void * param0, int param1, u32 param2, u32 param3, u32 param4);
static void sub_0200749C(void * param0, NNS_G2D_VRAM_TYPE param1, u32 param2, NNSG2dImagePaletteProxy * param3);
static u32 sub_020074EC(void * param0, int param1, u32 param2, NNS_G2D_VRAM_TYPE param3, u32 param4, NNSG2dImageProxy * param5);
static void sub_02007534(void * param0, int param1, u32 param2, NNS_G2D_VRAM_TYPE param3, u32 param4, NNSG2dImageProxy * param5);
static void * sub_020075A0(void * param0, NNSG2dCharacterData ** param1);
static void * sub_020075BC(void * param0, NNSG2dScreenData ** param1);
static void * sub_020075D8(void * param0, NNSG2dPaletteData ** param1);
static void * sub_020075F4(void * param0, NNSG2dCellDataBank ** param1);
static void * sub_02007610(void * param0, NNSG2dAnimBankData ** param1);

u32 sub_02006E3C (u32 param0, u32 param1, UnkStruct_02018340 * param2, u32 param3, u32 param4, u32 param5, BOOL param6, u32 param7)
{
    void * v0 = sub_02006FE8(param0, param1, param6, param7, 0);
    return sub_020072D0(v0, param2, param3, param4, param5);
}

void sub_02006E60 (u32 param0, u32 param1, UnkStruct_02018340 * param2, u32 param3, u32 param4, u32 param5, BOOL param6, u32 param7)
{
    void * v0 = sub_02006FE8(param0, param1, param6, param7, 1);
    sub_02007314(v0, param2, param3, param4, param5);
}

void sub_02006E84 (u32 param0, u32 param1, int param2, u32 param3, u32 param4, u32 param5)
{
    sub_02006E9C(param0, param1, param2, 0, param3, param4, param5);
}

void sub_02006E9C (u32 param0, u32 param1, int param2, u32 param3, u32 param4, u32 param5, u32 param6)
{
    void * v0 = sub_02006FE8(param0, param1, 0, param6, 1);
    sub_020073BC(v0, param2, param3, param4, param5);
}

u32 sub_02006EC0 (u32 param0, u32 param1, int param2, u32 param3, u32 param4, BOOL param5, u32 param6)
{
    void * v0 = sub_02006FE8(param0, param1, param5, param6, 1);
    return sub_02007374(v0, param2, param3, param4);
}

void sub_02006EE0 (u32 param0, u32 param1, NNS_G2D_VRAM_TYPE param2, u32 param3, u32 param4, NNSG2dImagePaletteProxy * param5)
{
    void * v0 = sub_02006FE8(param0, param1, 0, param4, 1);
    sub_0200749C(v0, param2, param3, param5);
}

u32 sub_02006F00 (u32 param0, u32 param1, BOOL param2, int param3, u32 param4, NNS_G2D_VRAM_TYPE param5, u32 param6, u32 param7, NNSG2dImageProxy * param8)
{
    void * v0 = sub_02006FE8(param0, param1, param2, param7, 1);
    return sub_020074EC(v0, param3, param4, param5, param6, param8);
}

void sub_02006F28 (u32 param0, u32 param1, BOOL param2, int param3, u32 param4, NNS_G2D_VRAM_TYPE param5, u32 param6, u32 param7, NNSG2dImageProxy * param8)
{
    void * v0 = sub_02006FE8(param0, param1, param2, param7, 1);
    sub_02007534(v0, param3, param4, param5, param6, param8);
}

void * sub_02006F50 (u32 param0, u32 param1, BOOL param2, NNSG2dCharacterData ** param3, u32 param4)
{
    void * v0 = sub_02006FE8(param0, param1, param2, param4, 0);

    return sub_020075A0(v0, param3);
}

void * sub_02006F6C (u32 param0, u32 param1, BOOL param2, NNSG2dScreenData ** param3, u32 param4)
{
    void * v0 = sub_02006FE8(param0, param1, param2, param4, 0);
    return sub_020075BC(v0, param3);
}

void * sub_02006F88 (u32 param0, u32 param1, NNSG2dPaletteData ** param2, u32 param3)
{
    void * v0 = sub_02006FE8(param0, param1, 0, param3, 0);
    return sub_020075D8(v0, param2);
}

void * sub_02006FA0 (u32 param0, u32 param1, BOOL param2, NNSG2dCellDataBank ** param3, u32 param4)
{
    void * v0;

    v0 = sub_02006FE8(param0, param1, param2, param4, 0);
    return sub_020075F4(v0, param3);
}

void * sub_02006FBC (u32 param0, u32 param1, BOOL param2, NNSG2dAnimBankData ** param3, u32 param4)
{
    void * v0 = sub_02006FE8(param0, param1, param2, param4, 0);
    return sub_02007610(v0, param3);
}

void * sub_02006FD8 (u32 param0, u32 param1, u32 param2)
{
    return sub_02006FE8(param0, param1, 1, param2, 0);
}

void * sub_02006FE8 (u32 param0, u32 param1, BOOL param2, u32 param3, int param4)
{
    void * v0;

    if (param2 || (param4 == 1)) {
        v0 = sub_02018184(param3, GetNarcMemberSizeByIndexPair(param0, param1));
    } else {
        v0 = sub_02018144(param3, GetNarcMemberSizeByIndexPair(param0, param1));
    }

    if (v0 != NULL) {
        ReadWholeNarcMemberByIndexPair(v0, param0, param1);

        if (param2) {
            void * v1;

            if (param4 == 0) {
                v1 = sub_02018144(param3, MI_GetUncompressedSize(v0));
            } else {
                v1 = sub_02018184(param3, MI_GetUncompressedSize(v0));
            }

            if (v1) {
                MI_UncompressLZ8(v0, v1);
                sub_020181C4(v0);
            }

            v0 = v1;
        }
    }

    return v0;
}

void * sub_02007068 (u32 param0, u32 param1, BOOL param2, u32 param3, int param4, u32 * param5)
{
    void * v0;

    *param5 = GetNarcMemberSizeByIndexPair(param0, param1);

    if (param2 || (param4 == 1)) {
        v0 = sub_02018184(param3, *param5);
    } else {
        v0 = sub_02018144(param3, *param5);
    }

    if (v0 != NULL) {
        ReadWholeNarcMemberByIndexPair(v0, param0, param1);

        if (param2) {
            void * v1;

            *param5 = MI_GetUncompressedSize(v0);

            if (param4 == 0) {
                v1 = sub_02018144(param3, *param5);
            } else {
                v1 = sub_02018184(param3, *param5);
            }

            if (v1) {
                MI_UncompressLZ8(v0, v1);
                sub_020181C4(v0);
            }

            v0 = v1;
        }
    }

    return v0;
}

u32 sub_020070E8 (NARC * param0, u32 param1, UnkStruct_02018340 * param2, u32 param3, u32 param4, u32 param5, BOOL param6, u32 param7)
{
    void * v0 = sub_0200723C(param0, param1, param6, param7, 0);
    return sub_020072D0(v0, param2, param3, param4, param5);
}

void sub_0200710C (NARC * param0, u32 param1, UnkStruct_02018340 * param2, u32 param3, u32 param4, u32 param5, BOOL param6, u32 param7)
{
    void * v0 = sub_0200723C(param0, param1, param6, param7, 1);
    sub_02007314(v0, param2, param3, param4, param5);
}

void sub_02007130 (NARC * param0, u32 param1, int param2, u32 param3, u32 param4, u32 param5)
{
    sub_02007148(param0, param1, param2, 0, param3, param4, param5);
}

void sub_02007148 (NARC * param0, u32 param1, int param2, u32 param3, u32 param4, u32 param5, u32 param6)
{
    void * v0 = sub_0200723C(param0, param1, 0, param6, 1);
    sub_020073BC(v0, param2, param3, param4, param5);
}

void sub_0200716C (NARC * param0, u32 param1, NNS_G2D_VRAM_TYPE param2, u32 param3, u32 param4, NNSG2dImagePaletteProxy * param5)
{
    void * v0 = sub_0200723C(param0, param1, 0, param4, 1);
    sub_0200749C(v0, param2, param3, param5);
}

u32 sub_0200718C (NARC * param0, u32 param1, BOOL param2, int param3, u32 param4, NNS_G2D_VRAM_TYPE param5, u32 param6, u32 param7, NNSG2dImageProxy * param8)
{
    void * v0 = sub_0200723C(param0, param1, param2, param7, 1);
    return sub_020074EC(v0, param3, param4, param5, param6, param8);
}

void * sub_020071B4 (NARC * param0, u32 param1, BOOL param2, NNSG2dCharacterData ** param3, u32 param4)
{
    void * v0 = sub_0200723C(param0, param1, param2, param4, 0);
    return sub_020075A0(v0, param3);
}

void * sub_020071D0 (NARC * param0, u32 param1, BOOL param2, NNSG2dScreenData ** param3, u32 param4)
{
    void * v0 = sub_0200723C(param0, param1, param2, param4, 0);
    return sub_020075BC(v0, param3);
}

void * sub_020071EC (NARC * param0, u32 param1, NNSG2dPaletteData ** param2, u32 param3)
{
    void * v0 = sub_0200723C(param0, param1, 0, param3, 0);
    return sub_020075D8(v0, param2);
}

void * sub_02007204 (NARC * param0, u32 param1, BOOL param2, NNSG2dCellDataBank ** param3, u32 param4)
{
    void * v0;

    v0 = sub_0200723C(param0, param1, param2, param4, 0);
    return sub_020075F4(v0, param3);
}

void * sub_02007220 (NARC * param0, u32 param1, BOOL param2, NNSG2dAnimBankData ** param3, u32 param4)
{
    void * v0 = sub_0200723C(param0, param1, param2, param4, 0);
    return sub_02007610(v0, param3);
}

void * sub_0200723C (NARC * param0, u32 param1, BOOL param2, u32 param3, int param4)
{
    u32 v0;

    return sub_02007250(param0, param1, param2, param3, param4, &v0);
}

void * sub_02007250 (NARC * param0, u32 param1, BOOL param2, u32 param3, int param4, u32 * param5)
{
    void * v0;

    *param5 = NARC_GetMemberSize(param0, param1);

    if (param2 || (param4 == 1)) {
        v0 = sub_02018184(param3, *param5);
    } else {
        v0 = sub_02018144(param3, *param5);
    }

    if (v0 != NULL) {
        NARC_ReadWholeMember(param0, param1, v0);

        if (param2) {
            void * v1;

            *param5 = MI_GetUncompressedSize(v0);

            if (param4 == 0) {
                v1 = sub_02018144(param3, *param5);
            } else {
                v1 = sub_02018184(param3, *param5);
            }

            if (v1) {
                MI_UncompressLZ8(v0, v1);
                sub_020181C4(v0);
            }

            v0 = v1;
        }
    }

    return v0;
}

static u32 sub_020072D0 (void * param0, UnkStruct_02018340 * param1, u32 param2, u32 param3, u32 param4)
{
    if (param0 != NULL) {
        NNSG2dCharacterData * v0;

        if (NNS_G2dGetUnpackedBGCharacterData(param0, &v0)) {
            if (param4 == 0) {
                param4 = v0->szByte;
            }

            sub_0201958C(param1, param2, v0->pRawData, param4, param3);
        }

        sub_020181C4(param0);
    }

    return param4;
}

static void sub_02007314 (void * param0, UnkStruct_02018340 * param1, u32 param2, u32 param3, u32 param4)
{
    if (param0 != NULL) {
        NNSG2dScreenData * v0;

        if (NNS_G2dGetUnpackedScreenData(param0, &v0)) {
            if (param4 == 0) {
                param4 = v0->szByte;
            }

            if (sub_02019FE4(param1, param2) != NULL) {
                sub_02019574(param1, param2, v0->rawData, param4);
            }

            sub_02019460(param1, param2, v0->rawData, param4, param3);
        }

        sub_020181C4(param0);
    }
}

static u32 sub_02007374 (void * param0, int param1, u32 param2, u32 param3)
{
    static void(*const v0[])(const void *, u32, u32) = {
        GX_LoadOBJ,
        GXS_LoadOBJ
    };

    if (param0 != NULL) {
        NNSG2dCharacterData * v1;

        if (NNS_G2dGetUnpackedCharacterData(param0, &v1)) {
            if (param3 == 0) {
                param3 = v1->szByte;
            }

            DC_FlushRange(v1->pRawData, param3);
            v0[param1](v1->pRawData, param2, param3);
        }

        sub_020181C4(param0);
    }

    return param3;
}

static void sub_020073BC (void * param0, int param1, u32 param2, u32 param3, u32 param4)
{
    static void(*const v0[])(const void *, u32, u32) = {
        GX_LoadBGPltt,
        GX_LoadOBJPltt,
        GX_LoadBGExtPltt,
        GX_LoadOBJExtPltt,
        GXS_LoadBGPltt,
        GXS_LoadOBJPltt,
        GXS_LoadBGExtPltt,
        GXS_LoadOBJExtPltt
    };

    if (param0 != NULL) {
        NNSG2dPaletteData * v1;

        if (NNS_G2dGetUnpackedPaletteData(param0, &v1)) {
            (u8 *)(v1->pRawData) += param2;

            if (param4 == 0) {
                param4 = v1->szByte - param2;
            }

            DC_FlushRange(v1->pRawData, param4);

            switch (param1) {
            case 2:
                GX_BeginLoadBGExtPltt();
                v0[param1](v1->pRawData, param3, param4);
                GX_EndLoadBGExtPltt();
                break;
            case 6:
                GXS_BeginLoadBGExtPltt();
                v0[param1](v1->pRawData, param3, param4);
                GXS_EndLoadBGExtPltt();
                break;
            case 3:
                GX_BeginLoadOBJExtPltt();
                v0[param1](v1->pRawData, param3, param4);
                GX_EndLoadOBJExtPltt();
                break;
            case 7:
                GXS_BeginLoadOBJExtPltt();
                v0[param1](v1->pRawData, param3, param4);
                GXS_EndLoadOBJExtPltt();
                break;
            default:
                v0[param1](v1->pRawData, param3, param4);
                break;
            }
        }

        sub_020181C4(param0);
    }
}

static void sub_0200749C (void * param0, NNS_G2D_VRAM_TYPE param1, u32 param2, NNSG2dImagePaletteProxy * param3)
{
    if (param0 != NULL) {
        NNSG2dPaletteData * v0;
        NNSG2dPaletteCompressInfo * v1;
        BOOL v2;

        v2 = NNS_G2dGetUnpackedPaletteCompressInfo(param0, &v1);

        if (NNS_G2dGetUnpackedPaletteData(param0, &v0)) {
            if (v2) {
                NNS_G2dLoadPaletteEx(v0, v1, param2, param1, param3);
            } else {
                NNS_G2dLoadPalette(v0, param2, param1, param3);
            }
        }

        sub_020181C4(param0);
    }
}

static u32 sub_020074EC (void * param0, int param1, u32 param2, NNS_G2D_VRAM_TYPE param3, u32 param4, NNSG2dImageProxy * param5)
{
    static void(*const v0[])(const NNSG2dCharacterData *, u32, NNS_G2D_VRAM_TYPE, NNSG2dImageProxy *) = {
        NNS_G2dLoadImage1DMapping,
        NNS_G2dLoadImage2DMapping
    };

    u32 v1 = 0;

    if (param0 != NULL) {
        NNSG2dCharacterData * v2;

        if (NNS_G2dGetUnpackedCharacterData(param0, &v2)) {
            if (param2) {
                v2->szByte = param2;
            }

            v0[param1](v2, param4, param3, param5);
            v1 = v2->szByte;
        }

        sub_020181C4(param0);
    }

    return v1;
}

static void sub_02007534 (void * param0, int param1, u32 param2, NNS_G2D_VRAM_TYPE param3, u32 param4, NNSG2dImageProxy * param5)
{
    static void(*const v0[])(const NNSG2dCharacterData *, u32, NNS_G2D_VRAM_TYPE, NNSG2dImageProxy *) = {
        NNS_G2dLoadImage1DMapping,
        NNS_G2dLoadImage2DMapping
    };

    if (param0 != NULL) {
        NNSG2dCharacterData * v1;

        if (NNS_G2dGetUnpackedCharacterData(param0, &v1)) {
            if (param2) {
                v1->szByte = param2;
            }

            switch (param3) {
            case NNS_G2D_VRAM_TYPE_2DMAIN:
                v1->mapingType = GX_GetOBJVRamModeChar();
                break;
            case NNS_G2D_VRAM_TYPE_2DSUB:
                v1->mapingType = GXS_GetOBJVRamModeChar();
                break;
            }

            v0[param1](v1, param4, param3, param5);
        }

        sub_020181C4(param0);
    }
}

static void * sub_020075A0 (void * param0, NNSG2dCharacterData ** param1)
{
    if (param0 != NULL) {
        if (NNS_G2dGetUnpackedBGCharacterData(param0, param1) == 0) {
            sub_020181C4(param0);
            return NULL;
        }
    }

    return param0;
}

static void * sub_020075BC (void * param0, NNSG2dScreenData ** param1)
{
    if (param0 != NULL) {
        if (NNS_G2dGetUnpackedScreenData(param0, param1) == 0) {
            sub_020181C4(param0);
            return NULL;
        }
    }

    return param0;
}

static void * sub_020075D8 (void * param0, NNSG2dPaletteData ** param1)
{
    if (param0 != NULL) {
        if (NNS_G2dGetUnpackedPaletteData(param0, param1) == 0) {
            sub_020181C4(param0);
            return NULL;
        }
    }

    return param0;
}

static void * sub_020075F4 (void * param0, NNSG2dCellDataBank ** param1)
{
    if (param0 != NULL) {
        if (NNS_G2dGetUnpackedCellBank(param0, param1) == 0) {
            sub_020181C4(param0);
            return NULL;
        }
    }

    return param0;
}

static void * sub_02007610 (void * param0, NNSG2dAnimBankData ** param1)
{
    if (param0 != NULL) {
        if (NNS_G2dGetUnpackedAnimBank(param0, param1) == 0) {
            sub_020181C4(param0);
            return NULL;
        }
    }

    return param0;
}
