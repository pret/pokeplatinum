#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_0201AE08.h"
#include "struct_defs/struct_0205AA50.h"
#include "overlay061/struct_ov61_0222C884.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "unk_02017E74.h"
#include "unk_02018340.h"
#include "unk_0201D15C.h"
#include "unk_0201FE94.h"

enum {
    UnkEnum_00 = 0,
    UnkEnum_01 = 1,
};

typedef struct {
    void * unk_00;
    u32 unk_04;
    u32 unk_08;
    int unk_0C;
    int unk_10;
    u8 unk_14;
    u8 unk_15;
    u8 unk_16;
    u8 unk_17;
    u16 unk_18;
    fx32 unk_1C;
    fx32 unk_20;
    int unk_24;
    int unk_28;
} UnkStruct_02019304;

typedef struct UnkStruct_02018340_t {
    u32 unk_00;
    u16 unk_04;
    u16 unk_06;
    UnkStruct_02019304 unk_08[8];
} UnkStruct_02018340;

static u8 sub_02018F80(u8 param0, u8 param1);
static void sub_02019304(UnkStruct_02019304 * param0, u8 param1, int param2);
static void sub_020193E4(UnkStruct_02018340 * param0, u8 param1);
static void sub_020194E0(u8 param0, void * param1, u32 param2, u32 param3);
static void sub_020195B8(UnkStruct_02018340 * param0, u8 param1, const void * param2, u32 param3, u32 param4);
static void sub_020195FC(u8 param0, void * param1, u32 param2, u32 param3);
static void sub_020199E0(UnkStruct_02019304 * param0, u8 param1, u8 param2, u8 param3, u8 param4, u16 * param5, u8 param6, u8 param7, u8 param8, u8 param9, u8 param10);
static void sub_02019B54(UnkStruct_02019304 * param0, u8 param1, u8 param2, u8 param3, u8 param4, u8 * param5, u8 param6, u8 param7, u8 param8, u8 param9, u8 param10);
static void sub_02019D08(UnkStruct_02019304 * param0, u16 param1, u8 param2, u8 param3, u8 param4, u8 param5, u8 param6);
static void sub_02019DB8(UnkStruct_02019304 * param0, u8 param1, u8 param2, u8 param3, u8 param4, u8 param5);
static void sub_0201AC20(UnkStruct_0205AA50 * param0);
static void sub_0201AC4C(UnkStruct_0205AA50 * param0);
static void sub_0201AC64(UnkStruct_0205AA50 * param0);
static void sub_0201ACA0(UnkStruct_0205AA50 * param0);
static void sub_0201AD2C(UnkStruct_0205AA50 * param0);
static void sub_0201AD54(UnkStruct_0205AA50 * param0);
static void sub_0201AD68(UnkStruct_0205AA50 * param0);
static void sub_0201AD90(UnkStruct_0205AA50 * param0);
static void sub_0201C06C(UnkStruct_0205AA50 * param0, u8 param1, u8 param2, u8 param3);
static void sub_0201C158(UnkStruct_0205AA50 * param0, u8 param1, u8 param2, u8 param3);
static void sub_0201C8E0(UnkStruct_02018340 * param0, u8 param1, u8 * param2);
static void sub_0201AA58(UnkStruct_0205AA50 * param0);
static void sub_0201AADC(UnkStruct_0205AA50 * param0);
static void sub_0201AB38(UnkStruct_0205AA50 * param0);
static void sub_0201ABC8(UnkStruct_0205AA50 * param0);
static void sub_0201C684(UnkStruct_02019304 * param0, u8 param1, u16 param2);
static void sub_0201C6CC(UnkStruct_02019304 * param0, u8 param1, fx32 param2);
static void sub_0201C73C(UnkStruct_02019304 * param0, u8 param1, int param2);
static void sub_0201C3D0(UnkStruct_02018340 * param0);
static void sub_0201C2D0(UnkStruct_02018340 * param0);

UnkStruct_02018340 * sub_02018340 (u32 param0)
{
    UnkStruct_02018340 * v0 = sub_02018144(param0, sizeof(UnkStruct_02018340));

    memset(v0, 0, sizeof(UnkStruct_02018340));

    v0->unk_00 = param0;
    v0->unk_04 = 0;
    v0->unk_06 = 0;

    return v0;
}

u32 sub_02018364 (UnkStruct_02018340 * param0)
{
    return param0->unk_00;
}

void sub_02018368 (const UnkStruct_ov84_0223BA5C * param0)
{
    GX_SetGraphicsMode(param0->unk_00, param0->unk_04, param0->unk_0C);
    GXS_SetGraphicsMode(param0->unk_08);

    GX_SetBGScrOffset(GX_BGSCROFFSET_0x00000);
    GX_SetBGCharOffset(GX_BGCHAROFFSET_0x00000);

    sub_0201FF00();
    sub_0201FF68();
}

void sub_020183A0 (const UnkStruct_ov84_0223BA5C * param0, u8 param1)
{
    if (param1 == 0) {
        GX_SetGraphicsMode(param0->unk_00, param0->unk_04, param0->unk_0C);
        sub_0201FF00();
    } else {
        GXS_SetGraphicsMode(param0->unk_08);
        sub_0201FF68();
    }
}

void sub_020183C4 (UnkStruct_02018340 * param0, u8 param1, const UnkStruct_ov97_0222DB78 * param2, u8 param3)
{
    u8 v0 = sub_02018F80(param2->unk_10, param3);

    switch (param1) {
    case 0:
        sub_0201FF0C(GX_PLANEMASK_BG0, 1);
        G2_SetBG0Control((GXBGScrSizeText)v0, (GXBGColorMode)param2->unk_11, (GXBGScrBase)param2->unk_12, (GXBGCharBase)param2->unk_13, (GXBGExtPltt)param2->unk_14);
        G2_SetBG0Priority((int)param2->unk_15);
        G2_BG0Mosaic((BOOL)param2->unk_18);
        break;
    case 1:
        sub_0201FF0C(GX_PLANEMASK_BG1, 1);
        G2_SetBG1Control((GXBGScrSizeText)v0, (GXBGColorMode)param2->unk_11, (GXBGScrBase)param2->unk_12, (GXBGCharBase)param2->unk_13, (GXBGExtPltt)param2->unk_14);
        G2_SetBG1Priority((int)param2->unk_15);
        G2_BG1Mosaic((BOOL)param2->unk_18);
        break;
    case 2:
        sub_0201FF0C(GX_PLANEMASK_BG2, 1);

        switch (param3) {
        default:
        case 0:
            G2_SetBG2ControlText((GXBGScrSizeText)v0, (GXBGColorMode)param2->unk_11, (GXBGScrBase)param2->unk_12, (GXBGCharBase)param2->unk_13);
            break;
        case 1:
            G2_SetBG2ControlAffine((GXBGScrSizeAffine)v0, (GXBGAreaOver)param2->unk_16, (GXBGScrBase)param2->unk_12, (GXBGCharBase)param2->unk_13);
            break;
        case 2:
            G2_SetBG2Control256x16Pltt((GXBGScrSize256x16Pltt)v0, (GXBGAreaOver)param2->unk_16, (GXBGScrBase)param2->unk_12, (GXBGCharBase)param2->unk_13);
            break;
        }

        G2_SetBG2Priority((int)param2->unk_15);
        G2_BG2Mosaic((BOOL)param2->unk_18);
        break;
    case 3:
        sub_0201FF0C(GX_PLANEMASK_BG3, 1);

        switch (param3) {
        default:
        case 0:
            G2_SetBG3ControlText((GXBGScrSizeText)v0, (GXBGColorMode)param2->unk_11, (GXBGScrBase)param2->unk_12, (GXBGCharBase)param2->unk_13);
            break;
        case 1:
            G2_SetBG3ControlAffine((GXBGScrSizeAffine)v0, (GXBGAreaOver)param2->unk_16, (GXBGScrBase)param2->unk_12, (GXBGCharBase)param2->unk_13);
            break;
        case 2:
            G2_SetBG3Control256x16Pltt((GXBGScrSize256x16Pltt)v0, (GXBGAreaOver)param2->unk_16, (GXBGScrBase)param2->unk_12, (GXBGCharBase)param2->unk_13);
            break;
        }

        G2_SetBG3Priority((int)param2->unk_15);
        G2_BG3Mosaic((BOOL)param2->unk_18);
        break;
    case 4:
        sub_0201FF74(GX_PLANEMASK_BG0, 1);
        G2S_SetBG0Control((GXBGScrSizeText)v0, (GXBGColorMode)param2->unk_11, (GXBGScrBase)param2->unk_12, (GXBGCharBase)param2->unk_13, (GXBGExtPltt)param2->unk_14);
        G2S_SetBG0Priority((int)param2->unk_15);
        G2S_BG0Mosaic((BOOL)param2->unk_18);
        break;
    case 5:
        sub_0201FF74(GX_PLANEMASK_BG1, 1);
        G2S_SetBG1Control((GXBGScrSizeText)v0, (GXBGColorMode)param2->unk_11, (GXBGScrBase)param2->unk_12, (GXBGCharBase)param2->unk_13, (GXBGExtPltt)param2->unk_14);
        G2S_SetBG1Priority((int)param2->unk_15);
        G2S_BG1Mosaic((BOOL)param2->unk_18);
        break;
    case 6:
        sub_0201FF74(GX_PLANEMASK_BG2, 1);

        switch (param3) {
        default:
        case 0:
            G2S_SetBG2ControlText((GXBGScrSizeText)v0, (GXBGColorMode)param2->unk_11, (GXBGScrBase)param2->unk_12, (GXBGCharBase)param2->unk_13);
            break;
        case 1:
            G2S_SetBG2ControlAffine((GXBGScrSizeAffine)v0, (GXBGAreaOver)param2->unk_16, (GXBGScrBase)param2->unk_12, (GXBGCharBase)param2->unk_13);
            break;
        case 2:
            G2S_SetBG2Control256x16Pltt((GXBGScrSize256x16Pltt)v0, (GXBGAreaOver)param2->unk_16, (GXBGScrBase)param2->unk_12, (GXBGCharBase)param2->unk_13);
            break;
        }

        G2S_SetBG2Priority((int)param2->unk_15);
        G2S_BG2Mosaic((BOOL)param2->unk_18);
        break;
    case 7:
        sub_0201FF74(GX_PLANEMASK_BG3, 1);

        switch (param3) {
        default:
        case 0:
            G2S_SetBG3ControlText((GXBGScrSizeText)v0, (GXBGColorMode)param2->unk_11, (GXBGScrBase)param2->unk_12, (GXBGCharBase)param2->unk_13);
            break;
        case 1:
            G2S_SetBG3ControlAffine((GXBGScrSizeAffine)v0, (GXBGAreaOver)param2->unk_16, (GXBGScrBase)param2->unk_12, (GXBGCharBase)param2->unk_13);
            break;
        case 2:
            G2S_SetBG3Control256x16Pltt((GXBGScrSize256x16Pltt)v0, (GXBGAreaOver)param2->unk_16, (GXBGScrBase)param2->unk_12, (GXBGCharBase)param2->unk_13);
            break;
        }

        G2S_SetBG3Priority((int)param2->unk_15);
        G2S_BG3Mosaic((BOOL)param2->unk_18);
        break;
    }

    param0->unk_08[param1].unk_18 = 0;
    param0->unk_08[param1].unk_1C = FX32_ONE;
    param0->unk_08[param1].unk_20 = FX32_ONE;
    param0->unk_08[param1].unk_24 = 0;
    param0->unk_08[param1].unk_28 = 0;

    if (param2->unk_08) {
        param0->unk_08[param1].unk_00 = sub_02018144(param0->unk_00, param2->unk_08);

        MI_CpuClear16(param0->unk_08[param1].unk_00, param2->unk_08);

        param0->unk_08[param1].unk_04 = param2->unk_08;
        param0->unk_08[param1].unk_08 = param2->unk_0C;
    } else {
        param0->unk_08[param1].unk_00 = NULL;
        param0->unk_08[param1].unk_04 = 0;
        param0->unk_08[param1].unk_08 = 0;
    }

    param0->unk_08[param1].unk_15 = param2->unk_10;
    param0->unk_08[param1].unk_14 = param3;
    param0->unk_08[param1].unk_16 = param2->unk_11;

    if ((param3 == 0) && (param2->unk_11 == GX_BG_COLORMODE_16)) {
        param0->unk_08[param1].unk_17 = 0x20;
    } else {
        param0->unk_08[param1].unk_17 = 0x40;
    }

    sub_02019184(param0, param1, 0, param2->unk_00);
    sub_02019184(param0, param1, 3, param2->unk_04);
}

void sub_02018898 (UnkStruct_02018340 * param0, u8 param1, u8 param2, u8 param3)
{
    if (param2 == 0) {
        param0->unk_08[param1].unk_16 = param3;
    }

    switch (param1) {
    case 0:
    {
        GXBg01Control v0 = G2_GetBG0Control();

        if (param2 == 1) {
            v0.screenBase = param3;
        } else if (param2 == 2) {
            v0.charBase = param3;
        }

        G2_SetBG0Control((GXBGScrSizeText)v0.screenSize, (GXBGColorMode)param0->unk_08[param1].unk_16, (GXBGScrBase)v0.screenBase, (GXBGCharBase)v0.charBase, (GXBGExtPltt)v0.bgExtPltt);
    }
    break;
    case 1:
    {
        GXBg01Control v1 = G2_GetBG1Control();

        if (param2 == 1) {
            v1.screenBase = param3;
        } else if (param2 == 2) {
            v1.charBase = param3;
        }

        G2_SetBG1Control((GXBGScrSizeText)v1.screenSize, (GXBGColorMode)param0->unk_08[param1].unk_16, (GXBGScrBase)v1.screenBase, (GXBGCharBase)v1.charBase, (GXBGExtPltt)v1.bgExtPltt);
    }
    break;
    case 2:
        switch (param0->unk_08[param1].unk_14) {
        default:
        case 0:
        {
            GXBg23ControlText v2 = G2_GetBG2ControlText();

            if (param2 == 1) {
                v2.screenBase = param3;
            } else if (param2 == 2) {
                v2.charBase = param3;
            }

            G2_SetBG2ControlText((GXBGScrSizeText)v2.screenSize, (GXBGColorMode)param0->unk_08[param1].unk_16, (GXBGScrBase)v2.screenBase, (GXBGCharBase)v2.charBase);
        }
        break;
        case 1:
        {
            GXBg23ControlAffine v3 = G2_GetBG2ControlAffine();

            if (param2 == 1) {
                v3.screenBase = param3;
            } else if (param2 == 2) {
                v3.charBase = param3;
            }

            G2_SetBG2ControlAffine((GXBGScrSizeText)v3.screenSize, (GXBGAreaOver)v3.areaOver, (GXBGScrBase)v3.screenBase, (GXBGCharBase)v3.charBase);
        }
        break;
        case 2:
        {
            GXBg23Control256x16Pltt v4 = G2_GetBG2Control256x16Pltt();

            if (param2 == 1) {
                v4.screenBase = param3;
            } else if (param2 == 2) {
                v4.charBase = param3;
            }

            G2_SetBG2Control256x16Pltt((GXBGScrSizeText)v4.screenSize, (GXBGAreaOver)v4.areaOver, (GXBGScrBase)v4.screenBase, (GXBGCharBase)v4.charBase);
        }
        break;
        }

        break;
    case 3:
        switch (param0->unk_08[param1].unk_14) {
        default:
        case 0:
        {
            GXBg23ControlText v5 = G2_GetBG3ControlText();

            if (param2 == 1) {
                v5.screenBase = param3;
            } else if (param2 == 2) {
                v5.charBase = param3;
            }

            G2_SetBG3ControlText((GXBGScrSizeText)v5.screenSize, (GXBGColorMode)param0->unk_08[param1].unk_16, (GXBGScrBase)v5.screenBase, (GXBGCharBase)v5.charBase);
        }
        break;
        case 1:
        {
            GXBg23ControlAffine v6 = G2_GetBG3ControlAffine();

            if (param2 == 1) {
                v6.screenBase = param3;
            } else if (param2 == 2) {
                v6.charBase = param3;
            }

            G2_SetBG3ControlAffine((GXBGScrSizeText)v6.screenSize, (GXBGAreaOver)v6.areaOver, (GXBGScrBase)v6.screenBase, (GXBGCharBase)v6.charBase);
        }
        break;
        case 2:
        {
            GXBg23Control256x16Pltt v7 = G2_GetBG3Control256x16Pltt();

            if (param2 == 1) {
                v7.screenBase = param3;
            } else if (param2 == 2) {
                v7.charBase = param3;
            }

            G2_SetBG3Control256x16Pltt((GXBGScrSizeText)v7.screenSize, (GXBGAreaOver)v7.areaOver, (GXBGScrBase)v7.screenBase, (GXBGCharBase)v7.charBase);
        }
        break;
        }

        break;
    case 4:
    {
        GXBg01Control v8 = G2S_GetBG0Control();

        if (param2 == 1) {
            v8.screenBase = param3;
        } else if (param2 == 2) {
            v8.charBase = param3;
        }

        G2S_SetBG0Control((GXBGScrSizeText)v8.screenSize, (GXBGColorMode)param0->unk_08[param1].unk_16, (GXBGScrBase)v8.screenBase, (GXBGCharBase)v8.charBase, (GXBGExtPltt)v8.bgExtPltt);
    }
    break;
    case 5:
    {
        GXBg01Control v9 = G2S_GetBG1Control();

        if (param2 == 1) {
            v9.screenBase = param3;
        } else if (param2 == 2) {
            v9.charBase = param3;
        }

        G2S_SetBG1Control((GXBGScrSizeText)v9.screenSize, (GXBGColorMode)param0->unk_08[param1].unk_16, (GXBGScrBase)v9.screenBase, (GXBGCharBase)v9.charBase, (GXBGExtPltt)v9.bgExtPltt);
    }
    break;
    case 6:
        switch (param0->unk_08[param1].unk_14) {
        default:
        case 0:
        {
            GXBg23ControlText v10 = G2S_GetBG2ControlText();

            if (param2 == 1) {
                v10.screenBase = param3;
            } else if (param2 == 2) {
                v10.charBase = param3;
            }

            G2S_SetBG2ControlText((GXBGScrSizeText)v10.screenSize, (GXBGColorMode)param0->unk_08[param1].unk_16, (GXBGScrBase)v10.screenBase, (GXBGCharBase)v10.charBase);
        }
        break;
        case 1:
        {
            GXBg23ControlAffine v11 = G2S_GetBG2ControlAffine();

            if (param2 == 1) {
                v11.screenBase = param3;
            } else if (param2 == 2) {
                v11.charBase = param3;
            }

            G2S_SetBG2ControlAffine((GXBGScrSizeText)v11.screenSize, (GXBGAreaOver)v11.areaOver, (GXBGScrBase)v11.screenBase, (GXBGCharBase)v11.charBase);
        }
        break;
        case 2:
        {
            GXBg23Control256x16Pltt v12 = G2S_GetBG2Control256x16Pltt();

            if (param2 == 1) {
                v12.screenBase = param3;
            } else if (param2 == 2) {
                v12.charBase = param3;
            }

            G2S_SetBG2Control256x16Pltt((GXBGScrSizeText)v12.screenSize, (GXBGAreaOver)v12.areaOver, (GXBGScrBase)v12.screenBase, (GXBGCharBase)v12.charBase);
        }
        break;
        }

        break;
    case 7:
        switch (param0->unk_08[param1].unk_14) {
        default:
        case 0:
        {
            GXBg23ControlText v13 = G2S_GetBG3ControlText();

            if (param2 == 1) {
                v13.screenBase = param3;
            } else if (param2 == 2) {
                v13.charBase = param3;
            }

            G2S_SetBG3ControlText((GXBGScrSizeText)v13.screenSize, (GXBGColorMode)param0->unk_08[param1].unk_16, (GXBGScrBase)v13.screenBase, (GXBGCharBase)v13.charBase);
        }
        break;
        case 1:
        {
            GXBg23ControlAffine v14 = G2S_GetBG3ControlAffine();

            if (param2 == 1) {
                v14.screenBase = param3;
            } else if (param2 == 2) {
                v14.charBase = param3;
            }

            G2S_SetBG3ControlAffine((GXBGScrSizeText)v14.screenSize, (GXBGAreaOver)v14.areaOver, (GXBGScrBase)v14.screenBase, (GXBGCharBase)v14.charBase);
        }
        break;
        case 2:
        {
            GXBg23Control256x16Pltt v15 = G2S_GetBG3Control256x16Pltt();

            if (param2 == 1) {
                v15.screenBase = param3;
            } else if (param2 == 2) {
                v15.charBase = param3;
            }

            G2S_SetBG3Control256x16Pltt((GXBGScrSizeText)v15.screenSize, (GXBGAreaOver)v15.areaOver, (GXBGScrBase)v15.screenBase, (GXBGCharBase)v15.charBase);
        }
        break;
        }
        break;
    }
}

static u8 sub_02018F80 (u8 param0, u8 param1)
{
    switch (param1) {
    case 0:
        if (param0 == 1) {
            return GX_BG_SCRSIZE_TEXT_256x256;
        }

        if (param0 == 2) {
            return GX_BG_SCRSIZE_TEXT_256x512;
        }

        if (param0 == 3) {
            return GX_BG_SCRSIZE_TEXT_512x256;
        }

        if (param0 == 4) {
            return GX_BG_SCRSIZE_TEXT_512x512;
        }
        break;
    case 1:
        if (param0 == 0) {
            return GX_BG_SCRSIZE_AFFINE_128x128;
        }

        if (param0 == 1) {
            return GX_BG_SCRSIZE_AFFINE_256x256;
        }

        if (param0 == 4) {
            return GX_BG_SCRSIZE_AFFINE_512x512;
        }

        if (param0 == 5) {
            return GX_BG_SCRSIZE_AFFINE_1024x1024;
        }
        break;
    case 2:
        if (param0 == 0) {
            return GX_BG_SCRSIZE_256x16PLTT_128x128;
        }

        if (param0 == 1) {
            return GX_BG_SCRSIZE_256x16PLTT_256x256;
        }

        if (param0 == 4) {
            return GX_BG_SCRSIZE_256x16PLTT_512x512;
        }

        if (param0 == 5) {
            return GX_BG_SCRSIZE_256x16PLTT_1024x1024;
        }
        break;
    }

    return 0;
}

static void sub_02018FF4 (u8 param0, u8 * param1, u8 * param2)
{
    switch (param0) {
    case 0:
        *param1 = 16;
        *param2 = 16;
        return;
    case 1:
        *param1 = 32;
        *param2 = 32;
        return;
    case 2:
        *param1 = 32;
        *param2 = 64;
        return;
    case 3:
        *param1 = 64;
        *param2 = 32;
        return;
    case 4:
        *param1 = 64;
        *param2 = 64;
        return;
    case 5:
        *param1 = 128;
        *param2 = 128;
        return;
    }
}

void sub_02019044 (UnkStruct_02018340 * param0, u8 param1)
{
    if (param0->unk_08[param1].unk_00 == NULL) {
        return;
    }

    sub_020181C4(param0->unk_08[param1].unk_00);
    param0->unk_08[param1].unk_00 = NULL;
}

void sub_02019060 (u8 param0, u8 param1)
{
    switch (param0) {
    case 0:
        G2_SetBG0Priority(param1);
        break;
    case 1:
        G2_SetBG1Priority(param1);
        break;
    case 2:
        G2_SetBG2Priority(param1);
        break;
    case 3:
        G2_SetBG3Priority(param1);
        break;
    case 4:
        G2S_SetBG0Priority(param1);
        break;
    case 5:
        G2S_SetBG1Priority(param1);
        break;
    case 6:
        G2S_SetBG2Priority(param1);
        break;
    case 7:
        G2S_SetBG3Priority(param1);
        break;
    }
}

void sub_02019120 (u8 param0, u8 param1)
{
    switch (param0) {
    case 0:
        sub_0201FF0C(GX_PLANEMASK_BG0, param1);
        break;
    case 1:
        sub_0201FF0C(GX_PLANEMASK_BG1, param1);
        break;
    case 2:
        sub_0201FF0C(GX_PLANEMASK_BG2, param1);
        break;
    case 3:
        sub_0201FF0C(GX_PLANEMASK_BG3, param1);
        break;
    case 4:
        sub_0201FF74(GX_PLANEMASK_BG0, param1);
        break;
    case 5:
        sub_0201FF74(GX_PLANEMASK_BG1, param1);
        break;
    case 6:
        sub_0201FF74(GX_PLANEMASK_BG2, param1);
        break;
    case 7:
        sub_0201FF74(GX_PLANEMASK_BG3, param1);
        break;
    }
}

void sub_02019184 (UnkStruct_02018340 * param0, u8 param1, u8 param2, int param3)
{
    int v0, v1;

    sub_02019304(&param0->unk_08[param1], param2, param3);

    v0 = param0->unk_08[param1].unk_0C;
    v1 = param0->unk_08[param1].unk_10;

    switch (param1) {
    case 0:
        G2_SetBG0Offset(v0, v1);
        return;
    case 1:
        G2_SetBG1Offset(v0, v1);
        return;
    case 2:
        if (param0->unk_08[2].unk_14 == 0) {
            G2_SetBG2Offset(v0, v1);
        } else {
            sub_020193E4(param0, 2);
        }
        return;
    case 3:
        if (param0->unk_08[3].unk_14 == 0) {
            G2_SetBG3Offset(v0, v1);
        } else {
            sub_020193E4(param0, 3);
        }
        return;
    case 4:
        G2S_SetBG0Offset(v0, v1);
        return;
    case 5:
        G2S_SetBG1Offset(v0, v1);
        return;
    case 6:
        if (param0->unk_08[6].unk_14 == 0) {
            G2S_SetBG2Offset(v0, v1);
        } else {
            sub_020193E4(param0, 6);
        }
        return;
    case 7:
        if (param0->unk_08[7].unk_14 == 0) {
            G2S_SetBG3Offset(v0, v1);
        } else {
            sub_020193E4(param0, 7);
        }

        return;
    }
}

int sub_020192EC (UnkStruct_02018340 * param0, u32 param1)
{
    return param0->unk_08[param1].unk_0C;
}

int sub_020192F8 (UnkStruct_02018340 * param0, u32 param1)
{
    return param0->unk_08[param1].unk_10;
}

static void sub_02019304 (UnkStruct_02019304 * param0, u8 param1, int param2)
{
    switch (param1) {
    case 0:
        param0->unk_0C = param2;
        break;
    case 1:
        param0->unk_0C += param2;
        break;
    case 2:
        param0->unk_0C -= param2;
        break;
    case 3:
        param0->unk_10 = param2;
        break;
    case 4:
        param0->unk_10 += param2;
        break;
    case 5:
        param0->unk_10 -= param2;
        break;
    }
}

void sub_02019348 (UnkStruct_02018340 * param0, u8 param1, const MtxFx22 * param2, int param3, int param4)
{
    switch (param1) {
    case 2:
        G2_SetBG2Affine(param2, param3, param4, param0->unk_08[param1].unk_0C, param0->unk_08[param1].unk_10);
        return;
    case 3:
        G2_SetBG3Affine(param2, param3, param4, param0->unk_08[param1].unk_0C, param0->unk_08[param1].unk_10);
        return;
    case 6:
        G2S_SetBG2Affine(param2, param3, param4, param0->unk_08[param1].unk_0C, param0->unk_08[param1].unk_10);
        return;
    case 7:
        G2S_SetBG3Affine(param2, param3, param4, param0->unk_08[param1].unk_0C, param0->unk_08[param1].unk_10);
        return;
    }
}

static void sub_020193E4 (UnkStruct_02018340 * param0, u8 param1)
{
    MtxFx22 v0;

    sub_0201D470(&v0, 0, FX32_ONE, FX32_ONE, 0);
    sub_02019348(param0, param1, &v0, 0, 0);
}

void sub_02019410 (const void * param0, void * param1, u32 param2)
{
    if (param2 == 0) {
        MI_UncompressLZ8(param0, param1);
    } else {
        if ((!((u32)param0 % 4)) && (!((u32)param1 % 4)) && (!((u16)param2 % 4))) {
            MI_CpuCopy32(param0, param1, param2);
        } else {
            MI_CpuCopy16(param0, param1, param2);
        }
    }
}

void sub_02019448 (UnkStruct_02018340 * param0, u8 param1)
{
    sub_02019460(param0, param1, param0->unk_08[param1].unk_00, param0->unk_08[param1].unk_04, param0->unk_08[param1].unk_08);
}

void sub_02019460 (UnkStruct_02018340 * param0, u8 param1, const void * param2, u32 param3, u32 param4)
{
    void * v0;

    if (param3 == 0) {
        if (param0->unk_08[param1].unk_00 != NULL) {
            v0 = param0->unk_08[param1].unk_00;
            sub_02019410(param2, v0, param3);
            sub_020194E0(param1, v0, param0->unk_08[param1].unk_08 * 0x2, param0->unk_08[param1].unk_04);
        } else {
            u32 v1;

            v1 = ((*(u32 *)param2) >> 8);
            v0 = sub_02018184(param0->unk_00, v1);

            sub_02019410(param2, v0, param3);
            sub_020194E0(param1, v0, param4 * 0x2, v1);
            sub_020181C4(v0);
        }
    } else {
        sub_020194E0(param1, (void *)param2, param4 * 0x2, param3);
    }
}

static void sub_020194E0 (u8 param0, void * param1, u32 param2, u32 param3)
{
    DC_FlushRange(param1, param3);

    switch (param0) {
    case 0:
        GX_LoadBG0Scr(param1, param2, param3);
        return;
    case 1:
        GX_LoadBG1Scr(param1, param2, param3);
        return;
    case 2:
        GX_LoadBG2Scr(param1, param2, param3);
        return;
    case 3:
        GX_LoadBG3Scr(param1, param2, param3);
        return;
    case 4:
        GXS_LoadBG0Scr(param1, param2, param3);
        return;
    case 5:
        GXS_LoadBG1Scr(param1, param2, param3);
        return;
    case 6:
        GXS_LoadBG2Scr(param1, param2, param3);
        return;
    case 7:
        GXS_LoadBG3Scr(param1, param2, param3);
        return;
    }
}

void sub_02019574 (UnkStruct_02018340 * param0, u8 param1, const void * param2, u32 param3)
{
    sub_02019410(param2, param0->unk_08[param1].unk_00, param3);
}

void sub_0201958C (UnkStruct_02018340 * param0, u8 param1, const void * param2, u32 param3, u32 param4)
{
    if (param0->unk_08[param1].unk_16 == GX_BG_COLORMODE_16) {
        sub_020195B8(param0, param1, param2, param3, param4 * 0x20);
    } else {
        sub_020195B8(param0, param1, param2, param3, param4 * 0x40);
    }
}

static void sub_020195B8 (UnkStruct_02018340 * param0, u8 param1, const void * param2, u32 param3, u32 param4)
{
    void * v0;

    if (param3 == 0) {
        u32 v1;

        v1 = ((*(u32 *)param2) >> 8);
        v0 = sub_02018184(param0->unk_00, v1);

        sub_02019410(param2, v0, param3);
        sub_020195FC(param1, v0, param4, v1);
        sub_020181C4(v0);
    } else {
        sub_020195FC(param1, (void *)param2, param4, param3);
    }
}

static void sub_020195FC (u8 param0, void * param1, u32 param2, u32 param3)
{
    DC_FlushRange(param1, param3);

    switch (param0) {
    case 0:
        GX_LoadBG0Char(param1, param2, param3);
        return;
    case 1:
        GX_LoadBG1Char(param1, param2, param3);
        return;
    case 2:
        GX_LoadBG2Char(param1, param2, param3);
        return;
    case 3:
        GX_LoadBG3Char(param1, param2, param3);
        return;
    case 4:
        GXS_LoadBG0Char(param1, param2, param3);
        return;
    case 5:
        GXS_LoadBG1Char(param1, param2, param3);
        return;
    case 6:
        GXS_LoadBG2Char(param1, param2, param3);
        return;
    case 7:
        GXS_LoadBG3Char(param1, param2, param3);
        return;
    }
}

void sub_02019690 (u8 param0, u32 param1, u32 param2, u32 param3)
{
    u32 * v0 = (u32 *)sub_02018184(param3, param1);

    memset(v0, 0, param1);

    sub_020195FC(param0, (void *)v0, param2, param1);
    sub_02018238(param3, v0);
}

void sub_020196C0 (UnkStruct_02018340 * param0, u32 param1, u32 param2, u32 param3, u32 param4)
{
    u32 * v0;
    u32 v1;

    v1 = param3 * param0->unk_08[param1].unk_17;
    v0 = (u32 *)sub_02018184(param0->unk_00, v1);

    if (param0->unk_08[param1].unk_17 == 0x20) {
        param2 = (param2 << 12) | (param2 << 8) | (param2 << 4) | param2;
        param2 |= (param2 << 16);
    } else {
        param2 = (param2 << 24) | (param2 << 16) | (param2 << 8) | param2;
    }

    MI_CpuFillFast(v0, param2, v1);

    sub_020195FC(param1, (void *)v0, param4 * param0->unk_08[param1].unk_17, v1);
    sub_020181C4(v0);
}

void sub_0201972C (u8 param0, void * param1, u16 param2, u16 param3)
{
    DC_FlushRange((void *)param1, param2);

    if (param0 < 4) {
        GX_LoadBGPltt((const void *)param1, param3, param2);
    } else {
        GXS_LoadBGPltt((const void *)param1, param3, param2);
    }
}

void sub_0201975C (u8 param0, u16 param1)
{
    sub_0201972C(param0, &param1, 2, 0);
}

static u16 sub_02019774 (u8 param0, u8 param1, u8 param2)
{
    u16 v0;

    switch (param2) {
    case 0:
        v0 = param1 * 16 + param0;
        break;
    case 1:
    case 2:
        v0 = param1 * 32 + param0;
        break;
    case 3:
        v0 = ((param0 >> 5) * 32 + param1) * 32 + (param0 & 0x1f);
        break;
    case 4:
        v0 = ((param0 >> 5) + (param1 >> 5) * 2);
        v0 *= 1024;
        v0 += (param1 & 0x1f) * 32 + (param0 & 0x1f);
        break;
    case 5:
        v0 = 0;
    }

    return v0;
}

static u16 sub_020197E0 (u8 param0, u8 param1, u8 param2, u8 param3)
{
    u8 v0 = 0;
    u16 v1 = 0;
    s16 v2 = param2 - 32;
    s16 v3 = param3 - 32;

    if (param0 / 32) {
        v0 += 1;
    }

    if (param1 / 32) {
        v0 += 2;
    }

    switch (v0) {
    case 0:
        if (v2 >= 0) {
            v1 += param1 * 32 + param0;
        } else {
            v1 += param1 * param2 + param0;
        }
        break;
    case 1:
        if (v3 >= 0) {
            v1 += 1024;
        } else {
            v1 += 32 * param3;
        }

        v1 += param1 * v2 + (param0 & 0x1F);
        break;
    case 2:
        v1 += param2 * 32;

        if (v2 >= 0) {
            v1 += (param1 & 0x1F) * 32 + param0;
        } else {
            v1 += (param1 & 0x1F) * param2 + param0;
        }
        break;
    case 3:
        v1 += (u16)param2 * 32 + (u16)32 * v3;
        v1 += (param1 & 0x1F) * v2 + (param0 & 0x1F);
        break;
    }

    return v1;
}

void sub_020198C0 (UnkStruct_02018340 * param0, u8 param1, const void * param2, u8 param3, u8 param4, u8 param5, u8 param6)
{
    sub_020198E8(param0, param1, param3, param4, param5, param6, param2, 0, 0, param5, param6);
}

void sub_020198E8 (UnkStruct_02018340 * param0, u8 param1, u8 param2, u8 param3, u8 param4, u8 param5, const void * param6, u8 param7, u8 param8, u8 param9, u8 param10)
{
    if (param0->unk_08[param1].unk_14 != 1) {
        sub_020199E0(&param0->unk_08[param1], param2, param3, param4, param5, (u16 *)param6, param7, param8, param9, param10, 0);
    } else {
        sub_02019B54(&param0->unk_08[param1], param2, param3, param4, param5, (u8 *)param6, param7, param8, param9, param10, 0);
    }
}

void sub_02019964 (UnkStruct_02018340 * param0, u8 param1, u8 param2, u8 param3, u8 param4, u8 param5, const void * param6, u8 param7, u8 param8, u8 param9, u8 param10)
{
    if (param0->unk_08[param1].unk_14 != 1) {
        sub_020199E0(&param0->unk_08[param1], param2, param3, param4, param5, (u16 *)param6, param7, param8, param9, param10, 1);
    } else {
        sub_02019B54(&param0->unk_08[param1], param2, param3, param4, param5, (u8 *)param6, param7, param8, param9, param10, 1);
    }
}

static void sub_020199E0 (UnkStruct_02019304 * param0, u8 param1, u8 param2, u8 param3, u8 param4, u16 * param5, u8 param6, u8 param7, u8 param8, u8 param9, u8 param10)
{
    u16 * v0;
    u8 v1, v2;
    u8 v3, v4;

    if (param0->unk_00 == NULL) {
        return;
    }

    v0 = (u16 *)param0->unk_00;
    sub_02018FF4(param0->unk_15, &v1, &v2);

    if (param10 == 0) {
        for (v3 = 0; v3 < param4; v3++) {
            if (((param2 + v3) >= v2) || ((param7 + v3) >= param9)) {
                break;
            }

            for (v4 = 0; v4 < param3; v4++) {
                if (((param1 + v4) >= v1) || ((param6 + v4) >= param8)) {
                    break;
                }

                v0[sub_02019774(param1 + v4, param2 + v3, param0->unk_15)] = param5[(param7 + v3) * param8 + param6 + v4];
            }
        }
    } else {
        for (v3 = 0; v3 < param4; v3++) {
            if (((param2 + v3) >= v2) || ((param7 + v3) >= param9)) {
                break;
            }

            for (v4 = 0; v4 < param3; v4++) {
                if (((param1 + v4) >= v1) || ((param6 + v4) >= param8)) {
                    break;
                }

                v0[sub_02019774(param1 + v4, param2 + v3, param0->unk_15)] = param5[sub_020197E0(param6 + v4, param7 + v3, param8, param9)];
            }
        }
    }
}

static void sub_02019B54 (UnkStruct_02019304 * param0, u8 param1, u8 param2, u8 param3, u8 param4, u8 * param5, u8 param6, u8 param7, u8 param8, u8 param9, u8 param10)
{
    u8 * v0;
    u8 v1, v2;
    u8 v3, v4;

    if (param0->unk_00 == NULL) {
        return;
    }

    v0 = (u8 *)param0->unk_00;
    sub_02018FF4(param0->unk_15, &v1, &v2);

    if (param10 == 0) {
        for (v3 = 0; v3 < param4; v3++) {
            if (((param2 + v3) >= v2) || ((param7 + v3) >= param9)) {
                break;
            }

            for (v4 = 0; v4 < param3; v4++) {
                if (((param1 + v4) >= v1) || ((param6 + v4) >= param8)) {
                    break;
                }

                v0[sub_02019774(param1 + v4, param2 + v3, param0->unk_15)] = param5[(param7 + v3) * param8 + param6 + v4];
            }
        }
    } else {
        for (v3 = 0; v3 < param4; v3++) {
            if (((param2 + v3) >= v2) || ((param7 + v3) >= param9)) {
                break;
            }

            for (v4 = 0; v4 < param3; v4++) {
                if (((param1 + v4) >= v1) || ((param6 + v4) >= param8)) {
                    break;
                }

                v0[sub_02019774(param1 + v4, param2 + v3, param0->unk_15)] = param5[sub_020197E0(param6 + v4, param7 + v3, param8, param9)];
            }
        }
    }
}

void sub_02019CB8 (UnkStruct_02018340 * param0, u8 param1, u16 param2, u8 param3, u8 param4, u8 param5, u8 param6, u8 param7)
{
    if (param0->unk_08[param1].unk_14 != 1) {
        sub_02019D08(&param0->unk_08[param1], param2, param3, param4, param5, param6, param7);
    } else {
        sub_02019DB8(&param0->unk_08[param1], (u8)param2, param3, param4, param5, param6);
    }
}

static void sub_02019D08 (UnkStruct_02019304 * param0, u16 param1, u8 param2, u8 param3, u8 param4, u8 param5, u8 param6)
{
    u16 * v0;
    u8 v1, v2;
    u8 v3, v4;

    if (param0->unk_00 == NULL) {
        return;
    }

    v0 = (u16 *)param0->unk_00;
    sub_02018FF4(param0->unk_15, &v1, &v2);

    for (v3 = param3; v3 < param3 + param5; v3++) {
        if (v3 >= v2) {
            break;
        }

        for (v4 = param2; v4 < param2 + param4; v4++) {
            if (v4 >= v1) {
                break;
            }

            {
                u16 v5 = sub_02019774(v4, v3, param0->unk_15);

                if (param6 == 17) {
                    v0[v5] = param1;
                } else if (param6 == 16) {
                    v0[v5] = (v0[v5] & 0xf000) + param1;
                } else {
                    v0[v5] = (param6 << 12) + param1;
                }
            }
        }
    }
}

static void sub_02019DB8 (UnkStruct_02019304 * param0, u8 param1, u8 param2, u8 param3, u8 param4, u8 param5)
{
    u8 * v0;
    u8 v1, v2;
    u8 v3, v4;

    if (param0->unk_00 == NULL) {
        return;
    }

    v0 = (u8 *)param0->unk_00;
    sub_02018FF4(param0->unk_15, &v1, &v2);

    for (v3 = param3; v3 < param3 + param5; v3++) {
        if (v3 >= v2) {
            break;
        }

        for (v4 = param2; v4 < param2 + param4; v4++) {
            if (v4 >= v1) {
                break;
            }

            v0[sub_02019774(v4, v3, param0->unk_15)] = param1;
        }
    }
}

void sub_02019E2C (UnkStruct_02018340 * param0, u8 param1, u8 param2, u8 param3, u8 param4, u8 param5, u8 param6)
{
    u16 * v0;
    u8 v1, v2;
    u8 v3, v4;

    if (param0->unk_08[param1].unk_00 == NULL) {
        return;
    }

    v0 = (u16 *)param0->unk_08[param1].unk_00;
    sub_02018FF4(param0->unk_08[param1].unk_15, &v1, &v2);

    for (v3 = param3; v3 < param3 + param5; v3++) {
        if (v3 >= v2) {
            break;
        }

        for (v4 = param2; v4 < param2 + param4; v4++) {
            if (v4 >= v1) {
                break;
            }

            {
                u16 v5 = sub_02019774(v4, v3, param0->unk_08[param1].unk_15);
                v0[v5] = (v0[v5] & 0xfff) | (param6 << 12);
            }
        }
    }
}

void sub_02019EBC (UnkStruct_02018340 * param0, u8 param1)
{
    if (param0->unk_08[param1].unk_00 == NULL) {
        return;
    }

    MI_CpuClear16(param0->unk_08[param1].unk_00, param0->unk_08[param1].unk_04);
    sub_02019448(param0, param1);
}

void sub_02019EE0 (UnkStruct_02018340 * param0, u8 param1, u16 param2)
{
    if (param0->unk_08[param1].unk_00 == NULL) {
        return;
    }

    MI_CpuFill16(param0->unk_08[param1].unk_00, param2, param0->unk_08[param1].unk_04);
    sub_02019448(param0, param1);
}

void sub_02019F04 (UnkStruct_02018340 * param0, u8 param1, u16 param2)
{
    if (param0->unk_08[param1].unk_00 == NULL) {
        return;
    }

    MI_CpuFill16(param0->unk_08[param1].unk_00, param2, param0->unk_08[param1].unk_04);
    sub_0201C3C0(param0, param1);
}

void * sub_02019F28 (u8 param0)
{
    switch (param0) {
    case 0:
        return G2_GetBG0CharPtr();
    case 1:
        return G2_GetBG1CharPtr();
    case 2:
        return G2_GetBG2CharPtr();
    case 3:
        return G2_GetBG3CharPtr();
    case 4:
        return G2S_GetBG0CharPtr();
    case 5:
        return G2S_GetBG1CharPtr();
    case 6:
        return G2S_GetBG2CharPtr();
    case 7:
        return G2S_GetBG3CharPtr();
    }

    return NULL;
}

void sub_02019F80 (const u8 * param0, u32 param1, u8 * param2, u8 param3)
{
    u32 v0;

    param3 <<= 4;

    for (v0 = 0; v0 < param1; v0++) {
        param2[v0 * 2] = param0[v0] & 0xf;

        if (param2[v0 * 2] != 0) {
            param2[v0 * 2] += param3;
        }

        param2[v0 * 2 + 1] = (param0[v0] >> 4) & 0xf;

        if (param2[v0 * 2 + 1] != 0) {
            param2[v0 * 2 + 1] += param3;
        }
    }
}

void * sub_02019FC0 (const u8 * param0, u32 param1, u8 param2, u32 param3)
{
    void * v0;

    v0 = sub_02018144(param3, param1 * 2);
    sub_02019F80(param0, param1, (u8 *)v0, param2);

    return v0;
}

void * sub_02019FE4 (UnkStruct_02018340 * param0, u8 param1)
{
    return param0->unk_08[param1].unk_00;
}

int sub_02019FF0 (UnkStruct_02018340 * param0, u8 param1)
{
    return param0->unk_08[param1].unk_0C;
}

u16 sub_02019FFC (UnkStruct_02018340 * param0, u8 param1)
{
    return param0->unk_08[param1].unk_18;
}

u8 sub_0201A008 (UnkStruct_02018340 * param0, u8 param1)
{
    switch (param1) {
    case 0:
    {
        GXBg01Control v0 = G2_GetBG0Control();
        return (u8)v0.priority;
    }
    case 1:
    {
        GXBg01Control v1 = G2_GetBG1Control();
        return (u8)v1.priority;
    }
    case 2:
        switch (param0->unk_08[param1].unk_14) {
        default:
        case 0:
        {
            GXBg23ControlText v2 = G2_GetBG2ControlText();
            return (u8)v2.priority;
        }
        case 1:
        {
            GXBg23ControlAffine v3 = G2_GetBG2ControlAffine();
            return (u8)v3.priority;
        }
        case 2:
        {
            GXBg23Control256x16Pltt v4 = G2_GetBG2Control256x16Pltt();
            return (u8)v4.priority;
        }
        }

    case 3:
        switch (param0->unk_08[param1].unk_14) {
        default:
        case 0:
        {
            GXBg23ControlText v5 = G2_GetBG3ControlText();
            return (u8)v5.priority;
        }
        case 1:
        {
            GXBg23ControlAffine v6 = G2_GetBG3ControlAffine();
            return (u8)v6.priority;
        }
        case 2:
        {
            GXBg23Control256x16Pltt v7 = G2_GetBG3Control256x16Pltt();
            return (u8)v7.priority;
        }
        }

    case 4:
    {
        GXBg01Control v8 = G2S_GetBG0Control();
        return (u8)v8.priority;
    }
    case 5:
    {
        GXBg01Control v9 = G2S_GetBG1Control();
        return (u8)v9.priority;
    }
    case 6:
        switch (param0->unk_08[param1].unk_14) {
        default:
        case 0:
        {
            GXBg23ControlText v10 = G2S_GetBG2ControlText();
            return (u8)v10.priority;
        }
        case 1:
        {
            GXBg23ControlAffine v11 = G2S_GetBG2ControlAffine();
            return (u8)v11.priority;
        }
        case 2:
        {
            GXBg23Control256x16Pltt v12 = G2S_GetBG2Control256x16Pltt();
            return (u8)v12.priority;
        }
        }

    case 7:
        switch (param0->unk_08[param1].unk_14) {
        default:
        case 0:
        {
            GXBg23ControlText v13 = G2S_GetBG3ControlText();
            return (u8)v13.priority;
        }
        case 1:
        {
            GXBg23ControlAffine v14 = G2S_GetBG3ControlAffine();
            return (u8)v14.priority;
        }
        case 2:
        {
            GXBg23Control256x16Pltt v15 = G2S_GetBG3Control256x16Pltt();
            return (u8)v15.priority;
        }
        }
    }

    return 0;
}

void sub_0201A1E4 (const UnkStruct_0201AE08 * param0, const UnkStruct_0201AE08 * param1, u16 param2, u16 param3, u16 param4, u16 param5, u16 param6, u16 param7, u16 param8)
{
    int v0, v1, v2, v3, v4, v5, v6, v7, v8, v9;
    u8 * v10, * v11;

    if (((param1->unk_04) - (param4)) < (param6)) {
        v6 = (param1->unk_04) - (param4) + (param2);
    } else {
        v6 = (param6) + (param2);
    }

    if (((param1->unk_06) - (param5)) < (param7)) {
        v7 = (param1->unk_06) - (param5) + (param3);
    } else {
        v7 = (param7) + (param3);
    }

    v8 = ((((param0->unk_04)) + ((param0->unk_04) & 7)) >> 3);
    v9 = ((((param1->unk_04)) + ((param1->unk_04) & 7)) >> 3);

    if (param8 == 0xffff) {
        for (v2 = (param3), v3 = (param5); v2 < v7; v2++, v3++) {
            for (v0 = (param2), v1 = (param4); v0 < v6; v0++, v1++) {
                v10 = (u8 *)((param0->unk_00) + ((v0 >> 1) & 0x3) + ((v0 << 2) & 0x3fe0) + (((v2 << 2) & 0x3fe0) * v8) + ((u32)((v2 << 2) & 0x1c)));
                v11 = (u8 *)((param1->unk_00) + ((v1 >> 1) & 0x3) + ((v1 << 2) & 0x3fe0) + (((v3 << 2) & 0x3fe0) * v9) + ((u32)((v3 << 2) & 0x1c)));

                v4 = (*v10 >> ((v0 & 1) * 4)) & 0xf;
                v5 = (v1 & 1) * 4;
                *v11 = (u8)((v4 << v5) | (*v11 & (0xf0 >> v5)));
            }
        }
    } else {
        for (v2 = (param3), v3 = (param5); v2 < v7; v2++, v3++) {
            for (v0 = (param2), v1 = (param4); v0 < v6; v0++, v1++) {
                v10 = (u8 *)((param0->unk_00) + ((v0 >> 1) & 0x3) + ((v0 << 2) & 0x3fe0) + (((v2 << 2) & 0x3fe0) * v8) + ((u32)((v2 << 2) & 0x1c)));
                v11 = (u8 *)((param1->unk_00) + ((v1 >> 1) & 0x3) + ((v1 << 2) & 0x3fe0) + (((v3 << 2) & 0x3fe0) * v9) + ((u32)((v3 << 2) & 0x1c)));

                v4 = (*v10 >> ((v0 & 1) * 4)) & 0xf;

                if (v4 != (param8)) {
                    v5 = (v1 & 1) * 4;
                    *v11 = (u8)((v4 << v5) | (*v11 & (0xf0 >> v5)));
                }
            }
        }
    }
}

void sub_0201A424 (const UnkStruct_0201AE08 * param0, const UnkStruct_0201AE08 * param1, u16 param2, u16 param3, u16 param4, u16 param5, u16 param6, u16 param7, u16 param8)
{
    int v0, v1, v2, v3, v4, v5, v6, v7;
    u8 * v8;
    u8 * v9;

    if (((param1->unk_04) - (param4)) < (param6)) {
        v4 = (param1->unk_04) - (param4) + (param2);
    } else {
        v4 = (param6) + (param2);
    }

    if (((param1->unk_06) - (param5)) < (param7)) {
        v5 = (param1->unk_06) - (param5) + (param3);
    } else {
        v5 = (param7) + (param3);
    }

    v6 = ((((param0->unk_04)) + ((param0->unk_04) & 7)) >> 3);
    v7 = ((((param1->unk_04)) + ((param1->unk_04) & 7)) >> 3);

    if (param8 == 0xffff) {
        for (v2 = (param3), v3 = (param5); v2 < v5; v2++, v3++) {
            for (v0 = (param2), v1 = (param4); v0 < v4; v0++, v1++) {
                v8 = (u8 *)(((param0->unk_00)) + (v0 & 0x7) + ((v0 << 3) & 0x7fc0) + (((v2 << 3) & 0x7fc0) * v6) + ((u32)((v2 << 3) & 0x38)));
                v9 = (u8 *)(((param1->unk_00)) + (v1 & 0x7) + ((v1 << 3) & 0x7fc0) + (((v3 << 3) & 0x7fc0) * v7) + ((u32)((v3 << 3) & 0x38)));
                *v9 = *v8;
            }
        }
    } else {
        for (v2 = (param3), v3 = (param5); v2 < v5; v2++, v3++) {
            for (v0 = (param2), v1 = (param4); v0 < v4; v0++, v1++) {
                v8 = (u8 *)(((param0->unk_00)) + (v0 & 0x7) + ((v0 << 3) & 0x7fc0) + (((v2 << 3) & 0x7fc0) * v6) + ((u32)((v2 << 3) & 0x38)));
                v9 = (u8 *)(((param1->unk_00)) + (v1 & 0x7) + ((v1 << 3) & 0x7fc0) + (((v3 << 3) & 0x7fc0) * v7) + ((u32)((v3 << 3) & 0x38)));

                if (*v8 != (param8)) {
                    *v9 = *v8;
                }
            }
        }
    }
}

void sub_0201A60C (const UnkStruct_0201AE08 * param0, u16 param1, u16 param2, u16 param3, u16 param4, u8 param5)
{
    int v0, v1, v2, v3, v4;
    u8 * v5;

    v2 = param1 + param3;

    if (v2 > param0->unk_04) {
        v2 = param0->unk_04;
    }

    v3 = param2 + param4;

    if (v3 > param0->unk_06) {
        v3 = param0->unk_06;
    }

    v4 = (((param0->unk_04) + (param0->unk_04 & 7)) >> 3);

    for (v1 = param2; v1 < v3; v1++) {
        for (v0 = param1; v0 < v2; v0++) {
            v5 = (u8 *)((param0->unk_00) + ((v0 >> 1) & 0x3) + ((v0 << 2) & 0x3fe0) + (((v1 << 2) & 0x3fe0) * v4) + ((u32)((v1 << 2) & 0x1c)));

            if (v0 & 1) {
                *v5 &= 0xf;
                *v5 |= (param5 << 4);
            } else {
                *v5 &= 0xf0;
                *v5 |= param5;
            }
        }
    }
}

void sub_0201A6D0 (const UnkStruct_0201AE08 * param0, u16 param1, u16 param2, u16 param3, u16 param4, u8 param5)
{
    int v0, v1, v2, v3, v4;
    u8 * v5;

    v2 = param1 + param3;

    if (v2 > param0->unk_04) {
        v2 = param0->unk_04;
    }

    v3 = param2 + param4;

    if (v3 > param0->unk_06) {
        v3 = param0->unk_06;
    }

    v4 = (param0->unk_04 + (param0->unk_04 & 7)) >> 3;

    for (v1 = param2; v1 < v3; v1++) {
        for (v0 = param1; v0 < v2; v0++) {
            v5 = (u8 *)((param0->unk_00) + (v0 & 0x7) + ((v0 << 3) & 0x7fc0) + (((v1 << 3) & 0x7fc0) * v4) + ((u32)((v1 << 3) & 0x38)));
            *v5 = param5;
        }
    }
}

UnkStruct_0205AA50 * sub_0201A778 (u32 param0, u8 param1)
{
    UnkStruct_0205AA50 * v0;
    u16 v1;

    v0 = (UnkStruct_0205AA50 *)sub_02018144(param0, sizeof(UnkStruct_0205AA50) * param1);

    for (v1 = 0; v1 < param1; v1++) {
        sub_0201A7A0(&v0[v1]);
    }

    return v0;
}

void sub_0201A7A0 (UnkStruct_0205AA50 * param0)
{
    param0->unk_00 = NULL;
    param0->unk_04 = 0xff;
    param0->unk_05 = 0;
    param0->unk_06 = 0;
    param0->unk_07 = 0;
    param0->unk_08 = 0;
    param0->unk_09 = 0;
    param0->unk_0A_0 = 0;
    param0->unk_0C = NULL;
    param0->unk_0A_15 = UnkEnum_00;
}

u8 sub_0201A7CC (UnkStruct_0205AA50 * param0)
{
    if ((param0->unk_00 == NULL) || (param0->unk_04 == 0xff) || (param0->unk_0C == NULL)) {
        return 0;
    }

    return 1;
}

void sub_0201A7E8 (UnkStruct_02018340 * param0, UnkStruct_0205AA50 * param1, u8 param2, u8 param3, u8 param4, u8 param5, u8 param6, u8 param7, u16 param8)
{
    void * v0;
    u32 v1;

    if (param0->unk_08[param2].unk_00 == NULL) {
        return;
    }

    v1 = param5 * param6 * param0->unk_08[param2].unk_17;
    v0 = sub_02018144(param0->unk_00, v1);

    if (v0 == NULL) {
        return;
    }

    param1->unk_00 = param0;
    param1->unk_04 = param2;
    param1->unk_05 = param3;
    param1->unk_06 = param4;
    param1->unk_07 = param5;
    param1->unk_08 = param6;
    param1->unk_09 = param7;
    param1->unk_0A_0 = param8;
    param1->unk_0C = v0;
    param1->unk_0A_15 = (param0->unk_08[param2].unk_16 == GX_BG_COLORMODE_16) ? UnkEnum_00 : UnkEnum_01;
}

void sub_0201A870 (UnkStruct_02018340 * param0, UnkStruct_0205AA50 * param1, u8 param2, u8 param3, u16 param4, u8 param5)
{
    void * v0;
    u32 v1;

    v1 = (u32)(param2 * param3 * 0x20);
    v0 = sub_02018144(param0->unk_00, v1);

    param5 |= param5 << 4;
    memset(v0, param5, v1);

    if (v0 == NULL) {
        return;
    }

    param1->unk_00 = param0;
    param1->unk_07 = param2;
    param1->unk_08 = param3;
    param1->unk_0A_0 = param4;
    param1->unk_0C = v0;
    param1->unk_0A_15 = UnkEnum_00;
}

void sub_0201A8D4 (UnkStruct_02018340 * param0, UnkStruct_0205AA50 * param1, const UnkStruct_ov61_0222C884 * param2)
{
    sub_0201A7E8(
        param0, param1, param2->unk_00, param2->unk_01, param2->unk_02, param2->unk_03, param2->unk_04, param2->unk_05, param2->unk_06);
}

void sub_0201A8FC (UnkStruct_0205AA50 * param0)
{
    sub_020181C4(param0->unk_0C);

    param0->unk_00 = NULL;
    param0->unk_04 = 0xff;
    param0->unk_05 = 0;
    param0->unk_06 = 0;
    param0->unk_07 = 0;
    param0->unk_08 = 0;
    param0->unk_09 = 0;
    param0->unk_0A_0 = 0;
    param0->unk_0C = NULL;
}

void sub_0201A928 (UnkStruct_0205AA50 * param0, u8 param1)
{
    u16 v0;

    for (v0 = 0; v0 < param1; v0++) {
        if (param0[v0].unk_0C == NULL) {
            continue;
        }

        sub_020181C4(param0[v0].unk_0C);
    }

    sub_020181C4(param0);
}

static void(*const Unk_020E56CC[])(UnkStruct_0205AA50 *) = {
    sub_0201AC20,
    sub_0201AC64,
    sub_0201AC20
};

static void(*const Unk_020E56C0[])(UnkStruct_0205AA50 *) = {
    sub_0201AC4C,
    sub_0201ACA0,
    sub_0201AC4C
};

static void(*const Unk_020E56B4[])(UnkStruct_0205AA50 *) = {
    sub_0201AD2C,
    sub_0201AD68,
    sub_0201AD2C
};

static void(*const Unk_020E56A8[])(UnkStruct_0205AA50 *) = {
    sub_0201AD54,
    sub_0201AD90,
    sub_0201AD54
};

static void(*const Unk_020E569C[])(UnkStruct_0205AA50 *) = {
    sub_0201AA58,
    sub_0201AADC,
    sub_0201AA58
};

static void(*const Unk_020E56D8[])(UnkStruct_0205AA50 *) = {
    sub_0201AB38,
    sub_0201ABC8,
    sub_0201AB38
};

static const u8 Unk_020E5694[] = {
    0x10,
    0x20,
    0x20,
    0x20,
    0x20,
    0x20
};

void sub_0201A954 (UnkStruct_0205AA50 * param0)
{
    GF_ASSERT(param0 != NULL);
    GF_ASSERT(param0->unk_00 != NULL);
    GF_ASSERT(param0->unk_04 < 8);
    GF_ASSERT(param0->unk_00->unk_08[param0->unk_04].unk_14 < NELEMS(Unk_020E56CC));

    Unk_020E56CC[param0->unk_00->unk_08[param0->unk_04].unk_14](param0);
}

void sub_0201A9A4 (UnkStruct_0205AA50 * param0)
{
    GF_ASSERT(param0 != NULL);
    GF_ASSERT(param0->unk_00 != NULL);
    GF_ASSERT(param0->unk_04 < 8);
    GF_ASSERT(param0->unk_00->unk_08[param0->unk_04].unk_14 < NELEMS(Unk_020E56C0));

    Unk_020E56C0[param0->unk_00->unk_08[param0->unk_04].unk_14](param0);
}

void sub_0201A9F4 (UnkStruct_0205AA50 * param0)
{
    Unk_020E569C[param0->unk_00->unk_08[param0->unk_04].unk_14](param0);
}

void sub_0201AA10 (UnkStruct_0205AA50 * param0, u32 param1, u32 param2)
{
    u32 v0, v1;

    v0 = param0->unk_07;
    v1 = param0->unk_08;

    param0->unk_07 = param1;
    param0->unk_08 = param2;

    Unk_020E569C[param0->unk_00->unk_08[param0->unk_04].unk_14](param0);

    param0->unk_07 = v0;
    param0->unk_08 = v1;
}

void sub_0201AA3C (UnkStruct_0205AA50 * param0)
{
    Unk_020E56D8[param0->unk_00->unk_08[param0->unk_04].unk_14](param0);
}

static void sub_0201AA58 (UnkStruct_0205AA50 * param0)
{
    if (param0->unk_00->unk_08[param0->unk_04].unk_00) {
        u32 v0, v1, v2, v3, v4, v5, v6;
        u16 * v7;

        v6 = 32;
        v7 = (u16 *)(param0->unk_00->unk_08[param0->unk_04].unk_00);
        v4 = param0->unk_0A_0;
        v2 = param0->unk_05 + param0->unk_07;
        v3 = param0->unk_06 + param0->unk_08;

        for (v1 = param0->unk_06; v1 < v3; v1++) {
            for (v0 = param0->unk_05; v0 < v2; v0++) {
                v5 = ((v1 & 0x20) * 32) + ((v0 & 0x20) * 32) + ((v1 & 0x1f) * v6) + (v0 & 0x1f);
                v7[v5] = v4 | (param0->unk_09 << 12);
                v4++;
            }
        }
    }
}

static void sub_0201AADC (UnkStruct_0205AA50 * param0)
{
    if (param0->unk_00->unk_08[param0->unk_04].unk_00) {
        int v0, v1, v2, v3;
        u8 * v4;

        v3 = Unk_020E5694[param0->unk_00->unk_08[param0->unk_04].unk_15];
        v4 = (u8 *)(param0->unk_00->unk_08[param0->unk_04].unk_00) + param0->unk_06 * v3 + param0->unk_05;
        v2 = param0->unk_0A_0;

        for (v1 = 0; v1 < param0->unk_08; v1++) {
            for (v0 = 0; v0 < param0->unk_07; v0++) {
                v4[v0] = v2++;
            }

            v4 += v3;
        }
    }
}

static void sub_0201AB38 (UnkStruct_0205AA50 * param0)
{
    if (param0->unk_00->unk_08[param0->unk_04].unk_00) {
        u32 v0, v1, v2, v3, v4, v5;
        u16 * v6;

        v5 = Unk_020E5694[param0->unk_00->unk_08[param0->unk_04].unk_15];
        v6 = (u16 *)(param0->unk_00->unk_08[param0->unk_04].unk_00);
        v2 = param0->unk_05 + param0->unk_07;
        v3 = param0->unk_06 + param0->unk_08;

        for (v1 = param0->unk_06; v1 < v3; v1++) {
            for (v0 = param0->unk_05; v0 < v2; v0++) {
                v4 = ((v1 & 0x20) * 32) + ((v0 & 0x20) * 32) + ((v1 & 0x1f) * v5) + (v0 & 0x1f);
                v6[v4] = 0x0;
            }
        }
    }
}

static void sub_0201ABC8 (UnkStruct_0205AA50 * param0)
{
    if (param0->unk_00->unk_08[param0->unk_04].unk_00) {
        int v0, v1, v2;
        u8 * v3;

        v2 = Unk_020E5694[param0->unk_00->unk_08[param0->unk_04].unk_15];
        v3 = (u8 *)(param0->unk_00->unk_08[param0->unk_04].unk_00) + param0->unk_06 * v2 + param0->unk_05;

        for (v1 = 0; v1 < param0->unk_08; v1++) {
            for (v0 = 0; v0 < param0->unk_07; v0++) {
                v3[v0] = 0;
            }

            v3 += v2;
        }
    }
}

static void sub_0201AC20 (UnkStruct_0205AA50 * param0)
{
    sub_0201AA58(param0);
    sub_0201ACCC(param0);
    sub_02019460(param0->unk_00, param0->unk_04, param0->unk_00->unk_08[param0->unk_04].unk_00, param0->unk_00->unk_08[param0->unk_04].unk_04, param0->unk_00->unk_08[param0->unk_04].unk_08);
}

static void sub_0201AC4C (UnkStruct_0205AA50 * param0)
{
    sub_0201AA58(param0);
    sub_0201C3C0(param0->unk_00, param0->unk_04);
    sub_0201ACCC(param0);
}

static void sub_0201AC64 (UnkStruct_0205AA50 * param0)
{
    sub_0201AADC(param0);

    sub_02019460(param0->unk_00, param0->unk_04, param0->unk_00->unk_08[param0->unk_04].unk_00, param0->unk_00->unk_08[param0->unk_04].unk_04, param0->unk_00->unk_08[param0->unk_04].unk_08);
    sub_0201958C(param0->unk_00, param0->unk_04, param0->unk_0C, (u32)(param0->unk_07 * param0->unk_08 * 0x40), (u32)param0->unk_0A_0);
}

static void sub_0201ACA0 (UnkStruct_0205AA50 * param0)
{
    sub_0201AADC(param0);

    sub_0201C3C0(param0->unk_00, param0->unk_04);
    sub_0201958C(param0->unk_00, param0->unk_04, param0->unk_0C, (u32)(param0->unk_07 * param0->unk_08 * 0x40), (u32)param0->unk_0A_0);
}

void sub_0201ACCC (UnkStruct_0205AA50 * param0)
{
    u32 v0 = param0->unk_07 * param0->unk_08 * param0->unk_00->unk_08[param0->unk_04].unk_17;
    sub_0201958C(param0->unk_00, param0->unk_04, param0->unk_0C, v0, param0->unk_0A_0);
}

void sub_0201ACF4 (UnkStruct_0205AA50 * param0)
{
    Unk_020E56B4[param0->unk_00->unk_08[param0->unk_04].unk_14](param0);
}

void sub_0201AD10 (UnkStruct_0205AA50 * param0)
{
    Unk_020E56A8[param0->unk_00->unk_08[param0->unk_04].unk_14](param0);
}

static void sub_0201AD2C (UnkStruct_0205AA50 * param0)
{
    sub_0201AB38(param0);
    sub_02019460(param0->unk_00, param0->unk_04, param0->unk_00->unk_08[param0->unk_04].unk_00, param0->unk_00->unk_08[param0->unk_04].unk_04, param0->unk_00->unk_08[param0->unk_04].unk_08);
}

static void sub_0201AD54 (UnkStruct_0205AA50 * param0)
{
    sub_0201AB38(param0);
    sub_0201C3C0(param0->unk_00, param0->unk_04);
}

static void sub_0201AD68 (UnkStruct_0205AA50 * param0)
{
    sub_0201ABC8(param0);
    sub_02019460(param0->unk_00, param0->unk_04, param0->unk_00->unk_08[param0->unk_04].unk_00, param0->unk_00->unk_08[param0->unk_04].unk_04, param0->unk_00->unk_08[param0->unk_04].unk_08);
}

static void sub_0201AD90 (UnkStruct_0205AA50 * param0)
{
    sub_0201ABC8(param0);
    sub_0201C3C0(param0->unk_00, param0->unk_04);
}

void sub_0201ADA4 (UnkStruct_0205AA50 * param0, u8 param1)
{
    u32 v0;
    u32 v1;

    if (param0->unk_00->unk_08[param0->unk_04].unk_17 == 0x20) {
        param1 = (param1 << 4) | param1;
    }

    v1 = (param1 << 24) | (param1 << 16) | (param1 << 8) | param1;
    v0 = param0->unk_00->unk_08[param0->unk_04].unk_17 * param0->unk_07 * param0->unk_08;

    MI_CpuFillFast(param0->unk_0C, v1, v0);
}

void sub_0201ADDC (UnkStruct_0205AA50 * param0, void * param1, u16 param2, u16 param3, u16 param4, u16 param5, u16 param6, u16 param7, u16 param8, u16 param9)
{
    sub_0201AE08(param0, param1, param2, param3, param4, param5, param6, param7, param8, param9, 0);
}

void sub_0201AE08 (UnkStruct_0205AA50 * param0, void * param1, u16 param2, u16 param3, u16 param4, u16 param5, u16 param6, u16 param7, u16 param8, u16 param9, u16 param10)
{
    UnkStruct_0201AE08 v0;
    UnkStruct_0201AE08 v1;

    v0.unk_00 = (u8 *)param1;
    v0.unk_04 = param4;
    v0.unk_06 = param5;
    v1.unk_00 = (u8 *)param0->unk_0C;
    v1.unk_04 = (u16)(param0->unk_07 * 0x8);
    v1.unk_06 = (u16)(param0->unk_08 * 0x8);

    if (param0->unk_00->unk_08[param0->unk_04].unk_16 == GX_BG_COLORMODE_16) {
        sub_0201A1E4(&v0, &v1, param2, param3, param6, param7, param8, param9, param10);
    } else {
        sub_0201A424(&v0, &v1, param2, param3, param6, param7, param8, param9, param10);
    }
}

void sub_0201AE78 (UnkStruct_0205AA50 * param0, u8 param1, u16 param2, u16 param3, u16 param4, u16 param5)
{
    UnkStruct_0201AE08 v0;

    v0.unk_00 = (u8 *)param0->unk_0C;
    v0.unk_04 = (u16)(param0->unk_07 * 0x8);
    v0.unk_06 = (u16)(param0->unk_08 * 0x8);

    if (param0->unk_00->unk_08[param0->unk_04].unk_16 == GX_BG_COLORMODE_16) {
        sub_0201A60C((const UnkStruct_0201AE08 *)&v0, param2, param3, param4, param5, param1);
    } else {
        sub_0201A6D0((const UnkStruct_0201AE08 *)&v0, param2, param3, param4, param5, param1);
    }
}

void sub_0201AED0 (UnkStruct_0205AA50 * param0, const u8 * param1, u16 param2, u16 param3, u16 param4, u16 param5, u16 param6)
{
    u8 * v0;
    u16 v1, v2;
    int v3, v4;
    u8 v5;

    v0 = (u8 *)param0->unk_0C;
    v1 = (u16)(param0->unk_07 * 0x8);
    v2 = (u16)(param0->unk_08 * 0x8);

    if (((v1) - (param4)) < (param2)) {
        v3 = (v1) - (param4);
    } else {
        v3 = (param2);
    }

    if (((v2) - (param5)) < (param3)) {
        v4 = (v2) - (param5);
    } else {
        v4 = (param3);
    }

    v5 = 0;

    if (v3 > 8) {
        v5 |= 1;
    }

    if (v4 > 8) {
        v5 |= 2;
    }

    if (param0->unk_0A_15 == UnkEnum_00) {
        switch (v5) {
        case 0:
        {
            int v7, v8, v9, v10, v17;
            u8 v11;
            u8 v12;
            u8 v13;
            u8 * v14;
            const u8 * v15;
            u32 v16;

            v15 = (param1) + (0 / 8 * 0x40) + (0 / 8 * 0x20);

            if (0 == 0) {
                v10 = (param5) + 0; v13 = (u8)((param6) & 0xff);
            } else {
                v10 = (param5) + 0;

                for (v9 = 0; v9 < 8; v9++) {
                    if ((((param6) >> v9) & 1) != 0) {
                        v10++;
                    }
                }

                v13 = (u8)((param6) >> 8);
            }

            for (v9 = 0; v9 < v4; v9++) {
                v16 = *(u32 *)v15; v12 = (u8)((v13 >> v9) & 1);

                for (v7 = 0, v8 = (param4) + 0; v7 < v3; v7++, v8++) {
                    v14 = (u8 *)(((v0)) + ((v8 >> 1) & 0x3) + ((v8 << 2) & 0x3fe0) + (((v10 << 2) & 0x3fe0) * ((((v1)) + ((v1) & 7)) >> 3)) + ((u32)((v10 << 2) & 0x1c))); v11 = (u8)((v16 >> (v7 * 4)) & 0xf);

                    if (v11 != 0) {
                        v17 = (v8 & 1) * 4; v11 = (u8)((v11 << v17) | (*v14 & (0xf0 >> v17))); *v14 = v11;

                        if (v12 != 0) {
                            v14 = (u8 *)(((v0)) + ((v8 >> 1) & 0x3) + ((v8 << 2) & 0x3fe0) + ((((v10 + 1) << 2) & 0x3fe0) * ((((v1)) + ((v1) & 7)) >> 3)) + ((u32)(((v10 + 1) << 2) & 0x1c))); *v14 = v11;
                        }
                    }
                }

                if (v12 != 0) {
                    v10 += 2;
                } else {
                    v10++;
                }

                v15 += 4;
            }
        };
            return;
        case 1:
        {
            int v7, v8, v9, v10, v17;
            u8 v11;
            u8 v12;
            u8 v13;
            u8 * v14;
            const u8 * v15;
            u32 v16;

            v15 = (param1) + (0 / 8 * 0x40) + (0 / 8 * 0x20);

            if (0 == 0) {
                v10 = (param5) + 0; v13 = (u8)((param6) & 0xff);
            } else {
                v10 = (param5) + 0;

                for (v9 = 0; v9 < 8; v9++) {
                    if ((((param6) >> v9) & 1) != 0) {
                        v10++;
                    }
                }

                v13 = (u8)((param6) >> 8);
            }

            for (v9 = 0; v9 < v4; v9++) {
                v16 = *(u32 *)v15; v12 = (u8)((v13 >> v9) & 1);

                for (v7 = 0, v8 = (param4) + 0; v7 < 8; v7++, v8++) {
                    v14 = (u8 *)(((v0)) + ((v8 >> 1) & 0x3) + ((v8 << 2) & 0x3fe0) + (((v10 << 2) & 0x3fe0) * ((((v1)) + ((v1) & 7)) >> 3)) + ((u32)((v10 << 2) & 0x1c))); v11 = (u8)((v16 >> (v7 * 4)) & 0xf);

                    if (v11 != 0) {
                        v17 = (v8 & 1) * 4; v11 = (u8)((v11 << v17) | (*v14 & (0xf0 >> v17))); *v14 = v11;

                        if (v12 != 0) {
                            v14 = (u8 *)(((v0)) + ((v8 >> 1) & 0x3) + ((v8 << 2) & 0x3fe0) + ((((v10 + 1) << 2) & 0x3fe0) * ((((v1)) + ((v1) & 7)) >> 3)) + ((u32)(((v10 + 1) << 2) & 0x1c))); *v14 = v11;
                        }
                    }
                }

                if (v12 != 0) {
                    v10 += 2;
                } else {
                    v10++;
                }

                v15 += 4;
            }
        };
            {
                int v7, v8, v9, v10, v17;
                u8 v11;
                u8 v12;
                u8 v13;
                u8 * v14;
                const u8 * v15;
                u32 v16;

                v15 = (param1) + (0 / 8 * 0x40) + (8 / 8 * 0x20);

                if (0 == 0) {
                    v10 = (param5) + 0; v13 = (u8)((param6) & 0xff);
                } else {
                    v10 = (param5) + 0;

                    for (v9 = 0; v9 < 8; v9++) {
                        if ((((param6) >> v9) & 1) != 0) {
                            v10++;
                        }
                    }

                    v13 = (u8)((param6) >> 8);
                }

                for (v9 = 0; v9 < v4; v9++) {
                    v16 = *(u32 *)v15; v12 = (u8)((v13 >> v9) & 1);

                    for (v7 = 0, v8 = (param4) + 8; v7 < v3 - 8; v7++, v8++) {
                        v14 = (u8 *)(((v0)) + ((v8 >> 1) & 0x3) + ((v8 << 2) & 0x3fe0) + (((v10 << 2) & 0x3fe0) * ((((v1)) + ((v1) & 7)) >> 3)) + ((u32)((v10 << 2) & 0x1c))); v11 = (u8)((v16 >> (v7 * 4)) & 0xf);

                        if (v11 != 0) {
                            v17 = (v8 & 1) * 4; v11 = (u8)((v11 << v17) | (*v14 & (0xf0 >> v17))); *v14 = v11;

                            if (v12 != 0) {
                                v14 = (u8 *)(((v0)) + ((v8 >> 1) & 0x3) + ((v8 << 2) & 0x3fe0) + ((((v10 + 1) << 2) & 0x3fe0) * ((((v1)) + ((v1) & 7)) >> 3)) + ((u32)(((v10 + 1) << 2) & 0x1c))); *v14 = v11;
                            }
                        }
                    }

                    if (v12 != 0) {
                        v10 += 2;
                    } else {
                        v10++;
                    }

                    v15 += 4;
                }
            }
            return;
        case 2:
        {
            int v7, v8, v9, v10, v17;
            u8 v11;
            u8 v12;
            u8 v13;
            u8 * v14;
            const u8 * v15;
            u32 v16;

            v15 = (param1) + (0 / 8 * 0x40) + (0 / 8 * 0x20);

            if (0 == 0) {
                v10 = (param5) + 0; v13 = (u8)((param6) & 0xff);
            } else {
                v10 = (param5) + 0;

                for (v9 = 0; v9 < 8; v9++) {
                    if ((((param6) >> v9) & 1) != 0) {
                        v10++;
                    }
                }

                v13 = (u8)((param6) >> 8);
            }

            for (v9 = 0; v9 < 8; v9++) {
                v16 = *(u32 *)v15; v12 = (u8)((v13 >> v9) & 1);

                for (v7 = 0, v8 = (param4) + 0; v7 < v3; v7++, v8++) {
                    v14 = (u8 *)(((v0)) + ((v8 >> 1) & 0x3) + ((v8 << 2) & 0x3fe0) + (((v10 << 2) & 0x3fe0) * ((((v1)) + ((v1) & 7)) >> 3)) + ((u32)((v10 << 2) & 0x1c))); v11 = (u8)((v16 >> (v7 * 4)) & 0xf);

                    if (v11 != 0) {
                        v17 = (v8 & 1) * 4; v11 = (u8)((v11 << v17) | (*v14 & (0xf0 >> v17))); *v14 = v11;

                        if (v12 != 0) {
                            v14 = (u8 *)(((v0)) + ((v8 >> 1) & 0x3) + ((v8 << 2) & 0x3fe0) + ((((v10 + 1) << 2) & 0x3fe0) * ((((v1)) + ((v1) & 7)) >> 3)) + ((u32)(((v10 + 1) << 2) & 0x1c))); *v14 = v11;
                        }
                    }
                }

                if (v12 != 0) {
                    v10 += 2;
                } else {
                    v10++;
                }

                v15 += 4;
            }
        };
            {
                int v7, v8, v9, v10, v17;
                u8 v11;
                u8 v12;
                u8 v13; u8 * v14; const u8 * v15; u32 v16; v15 = (param1) + (8 / 8 * 0x40) + (0 / 8 * 0x20);

                if (8 == 0) {
                    v10 = (param5) + 8; v13 = (u8)((param6) & 0xff);
                } else {
                    v10 = (param5) + 8;

                    for (v9 = 0; v9 < 8; v9++) {
                        if ((((param6) >> v9) & 1) != 0) {
                            v10++;
                        }
                    }

                    v13 = (u8)((param6) >> 8);
                }

                for (v9 = 0; v9 < v4 - 8; v9++) {
                    v16 = *(u32 *)v15; v12 = (u8)((v13 >> v9) & 1);

                    for (v7 = 0, v8 = (param4) + 0; v7 < v3; v7++, v8++) {
                        v14 = (u8 *)(((v0)) + ((v8 >> 1) & 0x3) + ((v8 << 2) & 0x3fe0) + (((v10 << 2) & 0x3fe0) * ((((v1)) + ((v1) & 7)) >> 3)) + ((u32)((v10 << 2) & 0x1c))); v11 = (u8)((v16 >> (v7 * 4)) & 0xf);

                        if (v11 != 0) {
                            v17 = (v8 & 1) * 4; v11 = (u8)((v11 << v17) | (*v14 & (0xf0 >> v17))); *v14 = v11;

                            if (v12 != 0) {
                                v14 = (u8 *)(((v0)) + ((v8 >> 1) & 0x3) + ((v8 << 2) & 0x3fe0) + ((((v10 + 1) << 2) & 0x3fe0) * ((((v1)) + ((v1) & 7)) >> 3)) + ((u32)(((v10 + 1) << 2) & 0x1c))); *v14 = v11;
                            }
                        }
                    }

                    if (v12 != 0) {
                        v10 += 2;
                    } else {
                        v10++;
                    }

                    v15 += 4;
                }
            }
            return;
        case 3:
        {
            int v7, v8, v9, v10, v17;
            u8 v11;
            u8 v12;
            u8 v13;
            u8 * v14;
            const u8 * v15;
            u32 v16;

            v15 = (param1) + (0 / 8 * 0x40) + (0 / 8 * 0x20);

            if (0 == 0) {
                v10 = (param5) + 0; v13 = (u8)((param6) & 0xff);
            } else {
                v10 = (param5) + 0;

                for (v9 = 0; v9 < 8; v9++) {
                    if ((((param6) >> v9) & 1) != 0) {
                        v10++;
                    }
                }

                v13 = (u8)((param6) >> 8);
            }

            for (v9 = 0; v9 < 8; v9++) {
                v16 = *(u32 *)v15; v12 = (u8)((v13 >> v9) & 1);

                for (v7 = 0, v8 = (param4) + 0; v7 < 8; v7++, v8++) {
                    v14 = (u8 *)(((v0)) + ((v8 >> 1) & 0x3) + ((v8 << 2) & 0x3fe0) + (((v10 << 2) & 0x3fe0) * ((((v1)) + ((v1) & 7)) >> 3)) + ((u32)((v10 << 2) & 0x1c))); v11 = (u8)((v16 >> (v7 * 4)) & 0xf);

                    if (v11 != 0) {
                        v17 = (v8 & 1) * 4; v11 = (u8)((v11 << v17) | (*v14 & (0xf0 >> v17))); *v14 = v11;

                        if (v12 != 0) {
                            v14 = (u8 *)(((v0)) + ((v8 >> 1) & 0x3) + ((v8 << 2) & 0x3fe0) + ((((v10 + 1) << 2) & 0x3fe0) * ((((v1)) + ((v1) & 7)) >> 3)) + ((u32)(((v10 + 1) << 2) & 0x1c))); *v14 = v11;
                        }
                    }
                }

                if (v12 != 0) {
                    v10 += 2;
                } else {
                    v10++;
                }

                v15 += 4;
            }
        };
            {
                int v7, v8, v9, v10, v17;
                u8 v11;
                u8 v12;
                u8 v13;
                u8 * v14;
                const u8 * v15;
                u32 v16;

                v15 = (param1) + (0 / 8 * 0x40) + (8 / 8 * 0x20);

                if (0 == 0) {
                    v10 = (param5) + 0; v13 = (u8)((param6) & 0xff);
                } else {
                    v10 = (param5) + 0;

                    for (v9 = 0; v9 < 8; v9++) {
                        if ((((param6) >> v9) & 1) != 0) {
                            v10++;
                        }
                    }

                    v13 = (u8)((param6) >> 8);
                }

                for (v9 = 0; v9 < 8; v9++) {
                    v16 = *(u32 *)v15; v12 = (u8)((v13 >> v9) & 1);

                    for (v7 = 0, v8 = (param4) + 8; v7 < v3 - 8; v7++, v8++) {
                        v14 = (u8 *)(((v0)) + ((v8 >> 1) & 0x3) + ((v8 << 2) & 0x3fe0) + (((v10 << 2) & 0x3fe0) * ((((v1)) + ((v1) & 7)) >> 3)) + ((u32)((v10 << 2) & 0x1c))); v11 = (u8)((v16 >> (v7 * 4)) & 0xf);

                        if (v11 != 0) {
                            v17 = (v8 & 1) * 4; v11 = (u8)((v11 << v17) | (*v14 & (0xf0 >> v17))); *v14 = v11;

                            if (v12 != 0) {
                                v14 = (u8 *)(((v0)) + ((v8 >> 1) & 0x3) + ((v8 << 2) & 0x3fe0) + ((((v10 + 1) << 2) & 0x3fe0) * ((((v1)) + ((v1) & 7)) >> 3)) + ((u32)(((v10 + 1) << 2) & 0x1c))); *v14 = v11;
                            }
                        }
                    }

                    if (v12 != 0) {
                        v10 += 2;
                    } else {
                        v10++;
                    }

                    v15 += 4;
                }
            }
            {
                int v7, v8, v9, v10, v17;
                u8 v11;
                u8 v12;
                u8 v13;
                u8 * v14;
                const u8 * v15;
                u32 v16;

                v15 = (param1) + (8 / 8 * 0x40) + (0 / 8 * 0x20);

                if (8 == 0) {
                    v10 = (param5) + 8; v13 = (u8)((param6) & 0xff);
                } else {
                    v10 = (param5) + 8;

                    for (v9 = 0; v9 < 8; v9++) {
                        if ((((param6) >> v9) & 1) != 0) {
                            v10++;
                        }
                    }

                    v13 = (u8)((param6) >> 8);
                }

                for (v9 = 0; v9 < v4 - 8; v9++) {
                    v16 = *(u32 *)v15; v12 = (u8)((v13 >> v9) & 1);

                    for (v7 = 0, v8 = (param4) + 0; v7 < 8; v7++, v8++) {
                        v14 = (u8 *)(((v0)) + ((v8 >> 1) & 0x3) + ((v8 << 2) & 0x3fe0) + (((v10 << 2) & 0x3fe0) * ((((v1)) + ((v1) & 7)) >> 3)) + ((u32)((v10 << 2) & 0x1c))); v11 = (u8)((v16 >> (v7 * 4)) & 0xf);

                        if (v11 != 0) {
                            v17 = (v8 & 1) * 4; v11 = (u8)((v11 << v17) | (*v14 & (0xf0 >> v17))); *v14 = v11;

                            if (v12 != 0) {
                                v14 = (u8 *)(((v0)) + ((v8 >> 1) & 0x3) + ((v8 << 2) & 0x3fe0) + ((((v10 + 1) << 2) & 0x3fe0) * ((((v1)) + ((v1) & 7)) >> 3)) + ((u32)(((v10 + 1) << 2) & 0x1c))); *v14 = v11;
                            }
                        }
                    }

                    if (v12 != 0) {
                        v10 += 2;
                    } else {
                        v10++;
                    }

                    v15 += 4;
                }
            }
            {
                int v7, v8, v9, v10, v17;
                u8 v11;
                u8 v12;
                u8 v13;
                u8 * v14;
                const u8 * v15;
                u32 v16;

                v15 = (param1) + (8 / 8 * 0x40) + (8 / 8 * 0x20);

                if (8 == 0) {
                    v10 = (param5) + 8; v13 = (u8)((param6) & 0xff);
                } else {
                    v10 = (param5) + 8;

                    for (v9 = 0; v9 < 8; v9++) {
                        if ((((param6) >> v9) & 1) != 0) {
                            v10++;
                        }
                    }

                    v13 = (u8)((param6) >> 8);
                }

                for (v9 = 0; v9 < v4 - 8; v9++) {
                    v16 = *(u32 *)v15; v12 = (u8)((v13 >> v9) & 1);

                    for (v7 = 0, v8 = (param4) + 8; v7 < v3 - 8; v7++, v8++) {
                        v14 = (u8 *)(((v0)) + ((v8 >> 1) & 0x3) + ((v8 << 2) & 0x3fe0) + (((v10 << 2) & 0x3fe0) * ((((v1)) + ((v1) & 7)) >> 3)) + ((u32)((v10 << 2) & 0x1c))); v11 = (u8)((v16 >> (v7 * 4)) & 0xf);

                        if (v11 != 0) {
                            v17 = (v8 & 1) * 4; v11 = (u8)((v11 << v17) | (*v14 & (0xf0 >> v17))); *v14 = v11;

                            if (v12 != 0) {
                                v14 = (u8 *)(((v0)) + ((v8 >> 1) & 0x3) + ((v8 << 2) & 0x3fe0) + ((((v10 + 1) << 2) & 0x3fe0) * ((((v1)) + ((v1) & 7)) >> 3)) + ((u32)(((v10 + 1) << 2) & 0x1c))); *v14 = v11;
                            }
                        }
                    }

                    if (v12 != 0) {
                        v10 += 2;
                    } else {
                        v10++;
                    }

                    v15 += 4;
                }
            }
            return;
        }
    } else {
        u8 * v6 = sub_02019FC0(param1, param2 * 4 * param3 * 8, param0->unk_09, param0->unk_00->unk_00);

        switch (v5) {
        case 0:
        {
            int v7, v8, v9, v10;
            u8 v11;
            u8 v12;
            u8 v13;
            u8 * v14;
            const u8 * v15;
            u8 * v16;

            v15 = (v6) + (0 / 8 * 0x80) + (0 / 8 * 0x40);

            if (0 == 0) {
                v10 = (param5) + 0; v13 = (u8)((param6) & 0xff);
            } else {
                v10 = (param5) + 0;

                for (v9 = 0; v9 < 8; v9++) {
                    if ((((param6) >> v9) & 1) != 0) {
                        v10++;
                    }
                }

                v13 = (u8)((param6) >> 8);
            }

            for (v9 = 0; v9 < v4; v9++) {
                v16 = (u8 *)v15; v12 = (u8)((v13 >> v9) & 1);

                for (v7 = 0, v8 = (param4) + 0; v7 < v3; v7++, v8++) {
                    v14 = (u8 *)(((v0)) + (v8 & 0x7) + ((v8 << 3) & 0x7fc0) + (((v10 << 3) & 0x7fc0) * ((((v1)) + ((v1) & 7)) >> 3)) + ((u32)((v10 << 3) & 0x38))); v11 = v16[v7];

                    if (v11 != 0) {
                        *v14 = v11;

                        if (v12 != 0) {
                            v14 = (u8 *)(((v0)) + (v8 & 0x7) + ((v8 << 3) & 0x7fc0) + ((((v10 + 1) << 3) & 0x7fc0) * ((((v1)) + ((v1) & 7)) >> 3)) + ((u32)(((v10 + 1) << 3) & 0x38))); *v14 = v11;
                        }
                    }
                }

                if (v12 != 0) {
                    v10 += 2;
                } else {
                    v10++;
                }

                v15 += 8;
            }
        };
            break;
        case 1:
        {
            int v7, v8, v9, v10;
            u8 v11;
            u8 v12;
            u8 v13;
            u8 * v14;
            const u8 * v15;
            u8 * v16;

            v15 = (v6) + (0 / 8 * 0x80) + (0 / 8 * 0x40);

            if (0 == 0) {
                v10 = (param5) + 0; v13 = (u8)((param6) & 0xff);
            } else {
                v10 = (param5) + 0;

                for (v9 = 0; v9 < 8; v9++) {
                    if ((((param6) >> v9) & 1) != 0) {
                        v10++;
                    }
                }

                v13 = (u8)((param6) >> 8);
            }

            for (v9 = 0; v9 < v4; v9++) {
                v16 = (u8 *)v15; v12 = (u8)((v13 >> v9) & 1);

                for (v7 = 0, v8 = (param4) + 0; v7 < 8; v7++, v8++) {
                    v14 = (u8 *)(((v0)) + (v8 & 0x7) + ((v8 << 3) & 0x7fc0) + (((v10 << 3) & 0x7fc0) * ((((v1)) + ((v1) & 7)) >> 3)) + ((u32)((v10 << 3) & 0x38))); v11 = v16[v7];

                    if (v11 != 0) {
                        *v14 = v11;

                        if (v12 != 0) {
                            v14 = (u8 *)(((v0)) + (v8 & 0x7) + ((v8 << 3) & 0x7fc0) + ((((v10 + 1) << 3) & 0x7fc0) * ((((v1)) + ((v1) & 7)) >> 3)) + ((u32)(((v10 + 1) << 3) & 0x38))); *v14 = v11;
                        }
                    }
                }

                if (v12 != 0) {
                    v10 += 2;
                } else {
                    v10++;
                }

                v15 += 8;
            }
        };
            {
                int v7, v8, v9, v10;
                u8 v11;
                u8 v12;
                u8 v13;
                u8 * v14;
                const u8 * v15;
                u8 * v16;

                v15 = (v6) + (0 / 8 * 0x80) + (8 / 8 * 0x40);

                if (0 == 0) {
                    v10 = (param5) + 0; v13 = (u8)((param6) & 0xff);
                } else {
                    v10 = (param5) + 0;

                    for (v9 = 0; v9 < 8; v9++) {
                        if ((((param6) >> v9) & 1) != 0) {
                            v10++;
                        }
                    }

                    v13 = (u8)((param6) >> 8);
                }

                for (v9 = 0; v9 < v4; v9++) {
                    v16 = (u8 *)v15; v12 = (u8)((v13 >> v9) & 1);

                    for (v7 = 0, v8 = (param4) + 8; v7 < v3 - 8; v7++, v8++) {
                        v14 = (u8 *)(((v0)) + (v8 & 0x7) + ((v8 << 3) & 0x7fc0) + (((v10 << 3) & 0x7fc0) * ((((v1)) + ((v1) & 7)) >> 3)) + ((u32)((v10 << 3) & 0x38))); v11 = v16[v7];

                        if (v11 != 0) {
                            *v14 = v11;

                            if (v12 != 0) {
                                v14 = (u8 *)(((v0)) + (v8 & 0x7) + ((v8 << 3) & 0x7fc0) + ((((v10 + 1) << 3) & 0x7fc0) * ((((v1)) + ((v1) & 7)) >> 3)) + ((u32)(((v10 + 1) << 3) & 0x38))); *v14 = v11;
                            }
                        }
                    }

                    if (v12 != 0) {
                        v10 += 2;
                    } else {
                        v10++;
                    }

                    v15 += 8;
                }
            }
            break;
        case 2:
        {
            int v7, v8, v9, v10; u8 v11; u8 v12; u8 v13; u8 * v14; const u8 * v15; u8 * v16; v15 = (v6) + (0 / 8 * 0x80) + (0 / 8 * 0x40);

            if (0 == 0) {
                v10 = (param5) + 0; v13 = (u8)((param6) & 0xff);
            } else {
                v10 = (param5) + 0;

                for (v9 = 0; v9 < 8; v9++) {
                    if ((((param6) >> v9) & 1) != 0) {
                        v10++;
                    }
                }

                v13 = (u8)((param6) >> 8);
            }

            for (v9 = 0; v9 < 8; v9++) {
                v16 = (u8 *)v15; v12 = (u8)((v13 >> v9) & 1);

                for (v7 = 0, v8 = (param4) + 0; v7 < v3; v7++, v8++) {
                    v14 = (u8 *)(((v0)) + (v8 & 0x7) + ((v8 << 3) & 0x7fc0) + (((v10 << 3) & 0x7fc0) * ((((v1)) + ((v1) & 7)) >> 3)) + ((u32)((v10 << 3) & 0x38))); v11 = v16[v7];

                    if (v11 != 0) {
                        *v14 = v11;

                        if (v12 != 0) {
                            v14 = (u8 *)(((v0)) + (v8 & 0x7) + ((v8 << 3) & 0x7fc0) + ((((v10 + 1) << 3) & 0x7fc0) * ((((v1)) + ((v1) & 7)) >> 3)) + ((u32)(((v10 + 1) << 3) & 0x38))); *v14 = v11;
                        }
                    }
                }

                if (v12 != 0) {
                    v10 += 2;
                } else {
                    v10++;
                }

                v15 += 8;
            }
        };
            {
                int v7, v8, v9, v10;
                u8 v11;
                u8 v12;
                u8 v13;
                u8 * v14;
                const u8 * v15;
                u8 * v16;

                v15 = (v6) + (8 / 8 * 0x80) + (0 / 8 * 0x40);

                if (8 == 0) {
                    v10 = (param5) + 8; v13 = (u8)((param6) & 0xff);
                } else {
                    v10 = (param5) + 8;

                    for (v9 = 0; v9 < 8; v9++) {
                        if ((((param6) >> v9) & 1) != 0) {
                            v10++;
                        }
                    }

                    v13 = (u8)((param6) >> 8);
                }

                for (v9 = 0; v9 < v4 - 8; v9++) {
                    v16 = (u8 *)v15; v12 = (u8)((v13 >> v9) & 1);

                    for (v7 = 0, v8 = (param4) + 0; v7 < v3; v7++, v8++) {
                        v14 = (u8 *)(((v0)) + (v8 & 0x7) + ((v8 << 3) & 0x7fc0) + (((v10 << 3) & 0x7fc0) * ((((v1)) + ((v1) & 7)) >> 3)) + ((u32)((v10 << 3) & 0x38))); v11 = v16[v7];

                        if (v11 != 0) {
                            *v14 = v11;

                            if (v12 != 0) {
                                v14 = (u8 *)(((v0)) + (v8 & 0x7) + ((v8 << 3) & 0x7fc0) + ((((v10 + 1) << 3) & 0x7fc0) * ((((v1)) + ((v1) & 7)) >> 3)) + ((u32)(((v10 + 1) << 3) & 0x38))); *v14 = v11;
                            }
                        }
                    }

                    if (v12 != 0) {
                        v10 += 2;
                    } else {
                        v10++;
                    }

                    v15 += 8;
                }
            }
            break;
        case 3:
        {
            int v7, v8, v9, v10;
            u8 v11;
            u8 v12;
            u8 v13;
            u8 * v14;
            const u8 * v15;
            u8 * v16;

            v15 = (v6) + (0 / 8 * 0x80) + (0 / 8 * 0x40);

            if (0 == 0) {
                v10 = (param5) + 0; v13 = (u8)((param6) & 0xff);
            } else {
                v10 = (param5) + 0;

                for (v9 = 0; v9 < 8; v9++) {
                    if ((((param6) >> v9) & 1) != 0) {
                        v10++;
                    }
                }

                v13 = (u8)((param6) >> 8);
            }

            for (v9 = 0; v9 < 8; v9++) {
                v16 = (u8 *)v15; v12 = (u8)((v13 >> v9) & 1);

                for (v7 = 0, v8 = (param4) + 0; v7 < 8; v7++, v8++) {
                    v14 = (u8 *)(((v0)) + (v8 & 0x7) + ((v8 << 3) & 0x7fc0) + (((v10 << 3) & 0x7fc0) * ((((v1)) + ((v1) & 7)) >> 3)) + ((u32)((v10 << 3) & 0x38))); v11 = v16[v7];

                    if (v11 != 0) {
                        *v14 = v11;

                        if (v12 != 0) {
                            v14 = (u8 *)(((v0)) + (v8 & 0x7) + ((v8 << 3) & 0x7fc0) + ((((v10 + 1) << 3) & 0x7fc0) * ((((v1)) + ((v1) & 7)) >> 3)) + ((u32)(((v10 + 1) << 3) & 0x38))); *v14 = v11;
                        }
                    }
                }

                if (v12 != 0) {
                    v10 += 2;
                } else {
                    v10++;
                }

                v15 += 8;
            }
        };
            {
                int v7, v8, v9, v10;
                u8 v11;
                u8 v12;
                u8 v13;
                u8 * v14;
                const u8 * v15;
                u8 * v16;

                v15 = (v6) + (0 / 8 * 0x80) + (8 / 8 * 0x40);

                if (0 == 0) {
                    v10 = (param5) + 0; v13 = (u8)((param6) & 0xff);
                } else {
                    v10 = (param5) + 0;

                    for (v9 = 0; v9 < 8; v9++) {
                        if ((((param6) >> v9) & 1) != 0) {
                            v10++;
                        }
                    }

                    v13 = (u8)((param6) >> 8);
                }

                for (v9 = 0; v9 < 8; v9++) {
                    v16 = (u8 *)v15; v12 = (u8)((v13 >> v9) & 1);

                    for (v7 = 0, v8 = (param4) + 8; v7 < v3 - 8; v7++, v8++) {
                        v14 = (u8 *)(((v0)) + (v8 & 0x7) + ((v8 << 3) & 0x7fc0) + (((v10 << 3) & 0x7fc0) * ((((v1)) + ((v1) & 7)) >> 3)) + ((u32)((v10 << 3) & 0x38))); v11 = v16[v7];

                        if (v11 != 0) {
                            *v14 = v11;

                            if (v12 != 0) {
                                v14 = (u8 *)(((v0)) + (v8 & 0x7) + ((v8 << 3) & 0x7fc0) + ((((v10 + 1) << 3) & 0x7fc0) * ((((v1)) + ((v1) & 7)) >> 3)) + ((u32)(((v10 + 1) << 3) & 0x38))); *v14 = v11;
                            }
                        }
                    }

                    if (v12 != 0) {
                        v10 += 2;
                    } else {
                        v10++;
                    }

                    v15 += 8;
                }
            }
            {
                int v7, v8, v9, v10;
                u8 v11;
                u8 v12;
                u8 v13;
                u8 * v14;
                const u8 * v15;
                u8 * v16;

                v15 = (v6) + (8 / 8 * 0x80) + (0 / 8 * 0x40);

                if (8 == 0) {
                    v10 = (param5) + 8; v13 = (u8)((param6) & 0xff);
                } else {
                    v10 = (param5) + 8;

                    for (v9 = 0; v9 < 8; v9++) {
                        if ((((param6) >> v9) & 1) != 0) {
                            v10++;
                        }
                    }

                    v13 = (u8)((param6) >> 8);
                }

                for (v9 = 0; v9 < v4 - 8; v9++) {
                    v16 = (u8 *)v15; v12 = (u8)((v13 >> v9) & 1);

                    for (v7 = 0, v8 = (param4) + 0; v7 < 8; v7++, v8++) {
                        v14 = (u8 *)(((v0)) + (v8 & 0x7) + ((v8 << 3) & 0x7fc0) + (((v10 << 3) & 0x7fc0) * ((((v1)) + ((v1) & 7)) >> 3)) + ((u32)((v10 << 3) & 0x38))); v11 = v16[v7];

                        if (v11 != 0) {
                            *v14 = v11;

                            if (v12 != 0) {
                                v14 = (u8 *)(((v0)) + (v8 & 0x7) + ((v8 << 3) & 0x7fc0) + ((((v10 + 1) << 3) & 0x7fc0) * ((((v1)) + ((v1) & 7)) >> 3)) + ((u32)(((v10 + 1) << 3) & 0x38))); *v14 = v11;
                            }
                        }
                    }

                    if (v12 != 0) {
                        v10 += 2;
                    } else {
                        v10++;
                    }

                    v15 += 8;
                }
            }
            {
                int v7, v8, v9, v10; u8 v11; u8 v12; u8 v13; u8 * v14; const u8 * v15; u8 * v16; v15 = (v6) + (8 / 8 * 0x80) + (8 / 8 * 0x40);

                if (8 == 0) {
                    v10 = (param5) + 8; v13 = (u8)((param6) & 0xff);
                } else {
                    v10 = (param5) + 8;

                    for (v9 = 0; v9 < 8; v9++) {
                        if ((((param6) >> v9) & 1) != 0) {
                            v10++;
                        }
                    }

                    v13 = (u8)((param6) >> 8);
                }

                for (v9 = 0; v9 < v4 - 8; v9++) {
                    v16 = (u8 *)v15; v12 = (u8)((v13 >> v9) & 1);

                    for (v7 = 0, v8 = (param4) + 8; v7 < v3 - 8; v7++, v8++) {
                        v14 = (u8 *)(((v0)) + (v8 & 0x7) + ((v8 << 3) & 0x7fc0) + (((v10 << 3) & 0x7fc0) * ((((v1)) + ((v1) & 7)) >> 3)) + ((u32)((v10 << 3) & 0x38))); v11 = v16[v7];

                        if (v11 != 0) {
                            *v14 = v11;

                            if (v12 != 0) {
                                v14 = (u8 *)(((v0)) + (v8 & 0x7) + ((v8 << 3) & 0x7fc0) + ((((v10 + 1) << 3) & 0x7fc0) * ((((v1)) + ((v1) & 7)) >> 3)) + ((u32)(((v10 + 1) << 3) & 0x38))); *v14 = v11;
                            }
                        }
                    }

                    if (v12 != 0) {
                        v10 += 2;
                    } else {
                        v10++;
                    }

                    v15 += 8;
                }
            }
            break;
        }

        sub_020181C4(v6);
    }
}

void sub_0201C04C (UnkStruct_0205AA50 * param0, u8 param1, u8 param2, u8 param3)
{
    if (param0->unk_00->unk_08[param0->unk_04].unk_16 == GX_BG_COLORMODE_16) {
        sub_0201C06C(param0, param1, param2, param3);
    } else {
        sub_0201C158(param0, param1, param2, param3);
    }
}

static void sub_0201C06C (UnkStruct_0205AA50 * param0, u8 param1, u8 param2, u8 param3)
{
    u8 * v0;
    int v1, v2, v3;
    int v4, v5;
    int v6, v7;
    int v8;

    v0 = (u8 *)param0->unk_0C;
    v4 = (param3 << 24) | (param3 << 16) | (param3 << 8) | (param3 << 0);
    v5 = param0->unk_08 * param0->unk_07 * 0x20;
    v6 = param0->unk_07;

    switch (param1) {
    case 0:
        for (v1 = 0; v1 < v5; v1 += 0x20) {
            v7 = param2;

            for (v8 = 0; v8 < 8; v8++) {
                v2 = v1 + (v8 << 2);
                v3 = v1 + (((v6 * (v7 & 0xfffffff8)) | (v7 & 0x7)) << 2);

                if (v3 < v5) {
                    *(u32 *)(v0 + v2) = *(u32 *)(v0 + v3);
                } else {
                    *(u32 *)(v0 + v2) = v4;
                }

                v7++;
            }
        }

        break;
    case 1:
        v0 += v5 - 4;

        for (v1 = 0; v1 < v5; v1 += 0x20) {
            v7 = param2;

            for (v8 = 0; v8 < 8; v8++) {
                v2 = v1 + (v8 << 2);
                v3 = v1 + (((v6 * (v7 & 0xfffffff8)) | (v7 & 0x7)) << 2);

                if (v3 < v5) {
                    *(u32 *)(v0 - v2) = *(u32 *)(v0 - v3);
                } else {
                    *(u32 *)(v0 - v2) = v4;
                }

                v7++;
            }
        }
        break;
    case 2:
        break;
    case 3:
        break;
    }
}

static void sub_0201C158 (UnkStruct_0205AA50 * param0, u8 param1, u8 param2, u8 param3)
{
    u8 * v0;
    int v1, v2, v3;
    int v4, v5;
    int v6, v7;
    int v8;

    v0 = (u8 *)param0->unk_0C;
    v4 = (param3 << 24) | (param3 << 16) | (param3 << 8) | param3;
    v5 = param0->unk_08 * param0->unk_07 * 0x40;
    v6 = param0->unk_07;

    switch (param1) {
    case 0:
        for (v1 = 0; v1 < v5; v1 += 0x40) {
            v7 = param2;

            for (v8 = 0; v8 < 8; v8++) {
                v2 = v1 + (v8 << 3);
                v3 = v1 + (((v6 * (v7 & 0xfffffff8)) | (v7 & 0x7)) << 3);

                if (v3 < v5) {
                    *(u32 *)(v0 + v2) = *(u32 *)(v0 + v3);
                } else {
                    *(u32 *)(v0 + v2) = v4;
                }

                v2 += 4;
                v3 += 4;

                if (v3 < v5 + 4) {
                    *(u32 *)(v0 + v2) = *(u32 *)(v0 + v3);
                } else {
                    *(u32 *)(v0 + v2) = v4;
                }

                v7++;
            }
        }
        break;
    case 1:
        v0 += (v5 - 8);

        for (v1 = 0; v1 < v5; v1 += 0x40) {
            v7 = param2;

            for (v8 = 0; v8 < 8; v8++) {
                v2 = v1 + (v8 << 3);
                v3 = v1 + (((v6 * (v7 & 0xfffffff8)) | (v7 & 0x7)) << 3);

                if (v3 < v5) {
                    *(u32 *)(v0 - v2) = *(u32 *)(v0 - v3);
                } else {
                    *(u32 *)(v0 - v2) = v4;
                }

                v2 -= 4;
                v3 -= 4;

                if (v3 < v5 - 4) {
                    *(u32 *)(v0 - v2) = *(u32 *)(v0 - v3);
                } else {
                    *(u32 *)(v0 - v2) = v4;
                }

                v7++;
            }
        }
        break;
    case 2:
        break;
    case 3:
        break;
    }
}

UnkStruct_02018340 * sub_0201C28C (UnkStruct_0205AA50 * param0)
{
    return param0->unk_00;
}

u8 sub_0201C290 (UnkStruct_0205AA50 * param0)
{
    return param0->unk_04;
}

u8 sub_0201C294 (UnkStruct_0205AA50 * param0)
{
    return param0->unk_07;
}

u8 sub_0201C298 (UnkStruct_0205AA50 * param0)
{
    return param0->unk_08;
}

u8 sub_0201C29C (UnkStruct_0205AA50 * param0)
{
    return param0->unk_05;
}

u8 sub_0201C2A0 (UnkStruct_0205AA50 * param0)
{
    return param0->unk_06;
}

u16 sub_0201C2A4 (UnkStruct_0205AA50 * param0)
{
    return param0->unk_0A_0;
}

void sub_0201C2AC (UnkStruct_0205AA50 * param0, u8 param1)
{
    param0->unk_05 = param1;
}

void sub_0201C2B0 (UnkStruct_0205AA50 * param0, u8 param1)
{
    param0->unk_06 = param1;
}

void sub_0201C2B4 (UnkStruct_0205AA50 * param0, u8 param1)
{
    param0->unk_09 = param1;
}

void sub_0201C2B8 (UnkStruct_02018340 * param0)
{
    sub_0201C3D0(param0);
    sub_0201C2D0(param0);

    param0->unk_04 = 0;
    param0->unk_06 = 0;
}

static void sub_0201C2D0 (UnkStruct_02018340 * param0)
{
    if ((param0->unk_06 & 1) != 0) {
        sub_020194E0(0, param0->unk_08[0].unk_00, param0->unk_08[0].unk_08 * 0x2, param0->unk_08[0].unk_04);
    }

    if ((param0->unk_06 & 2) != 0) {
        sub_020194E0(1, param0->unk_08[1].unk_00, param0->unk_08[1].unk_08 * 0x2, param0->unk_08[1].unk_04);
    }

    if ((param0->unk_06 & 4) != 0) {
        sub_020194E0(2, param0->unk_08[2].unk_00, param0->unk_08[2].unk_08 * 0x2, param0->unk_08[2].unk_04);
    }

    if ((param0->unk_06 & 8) != 0) {
        sub_020194E0(3, param0->unk_08[3].unk_00, param0->unk_08[3].unk_08 * 0x2, param0->unk_08[3].unk_04);
    }

    if ((param0->unk_06 & 16) != 0) {
        sub_020194E0(4, param0->unk_08[4].unk_00, param0->unk_08[4].unk_08 * 0x2, param0->unk_08[4].unk_04);
    }

    if ((param0->unk_06 & 32) != 0) {
        sub_020194E0(5, param0->unk_08[5].unk_00, param0->unk_08[5].unk_08 * 0x2, param0->unk_08[5].unk_04);
    }

    if ((param0->unk_06 & 64) != 0) {
        sub_020194E0(6, param0->unk_08[6].unk_00, param0->unk_08[6].unk_08 * 0x2, param0->unk_08[6].unk_04);
    }

    if ((param0->unk_06 & 128) != 0) {
        sub_020194E0(7, param0->unk_08[7].unk_00, param0->unk_08[7].unk_08 * 0x2, param0->unk_08[7].unk_04);
    }
}

void sub_0201C3C0 (UnkStruct_02018340 * param0, u8 param1)
{
    param0->unk_06 |= (1 << param1);
}

static void sub_0201C3D0 (UnkStruct_02018340 * param0)
{
    if ((param0->unk_04 & 1) != 0) {
        G2_SetBG0Offset(param0->unk_08[0].unk_0C, param0->unk_08[0].unk_10);
    }

    if ((param0->unk_04 & 2) != 0) {
        G2_SetBG1Offset(param0->unk_08[1].unk_0C, param0->unk_08[1].unk_10);
    }

    if ((param0->unk_04 & 4) != 0) {
        if (param0->unk_08[2].unk_14 == 0) {
            G2_SetBG2Offset(param0->unk_08[2].unk_0C, param0->unk_08[2].unk_10);
        } else {
            MtxFx22 v0;

            sub_0201D470(&v0, param0->unk_08[2].unk_18, param0->unk_08[2].unk_1C, param0->unk_08[2].unk_20, 2);
            G2_SetBG2Affine(&v0, param0->unk_08[2].unk_24, param0->unk_08[2].unk_28, param0->unk_08[2].unk_0C, param0->unk_08[2].unk_10);
        }
    }

    if ((param0->unk_04 & 8) != 0) {
        if (param0->unk_08[3].unk_14 == 0) {
            G2_SetBG3Offset(param0->unk_08[3].unk_0C, param0->unk_08[3].unk_10);
        } else {
            MtxFx22 v1;

            sub_0201D470(&v1, param0->unk_08[3].unk_18, param0->unk_08[3].unk_1C, param0->unk_08[3].unk_20, 2);
            G2_SetBG3Affine(&v1, param0->unk_08[3].unk_24, param0->unk_08[3].unk_28, param0->unk_08[3].unk_0C, param0->unk_08[3].unk_10);
        }
    }

    if ((param0->unk_04 & 16) != 0) {
        G2S_SetBG0Offset(param0->unk_08[4].unk_0C, param0->unk_08[4].unk_10);
    }

    if ((param0->unk_04 & 32) != 0) {
        G2S_SetBG1Offset(param0->unk_08[5].unk_0C, param0->unk_08[5].unk_10);
    }

    if ((param0->unk_04 & 64) != 0) {
        if (param0->unk_08[6].unk_14 == 0) {
            G2S_SetBG2Offset(param0->unk_08[6].unk_0C, param0->unk_08[6].unk_10);
        } else {
            MtxFx22 v2;

            sub_0201D470(&v2, param0->unk_08[6].unk_18, param0->unk_08[6].unk_1C, param0->unk_08[6].unk_20, 2);
            G2S_SetBG2Affine(&v2, param0->unk_08[6].unk_24, param0->unk_08[6].unk_28, param0->unk_08[6].unk_0C, param0->unk_08[6].unk_10);
        }
    }

    if ((param0->unk_04 & 128) != 0) {
        if (param0->unk_08[7].unk_14 == 0) {
            G2S_SetBG3Offset(param0->unk_08[7].unk_0C, param0->unk_08[7].unk_10);
        } else {
            MtxFx22 v3;

            sub_0201D470(&v3, param0->unk_08[7].unk_18, param0->unk_08[7].unk_1C, param0->unk_08[7].unk_20, 2);
            G2S_SetBG3Affine(&v3, param0->unk_08[7].unk_24, param0->unk_08[7].unk_28, param0->unk_08[7].unk_0C, param0->unk_08[7].unk_10);
        }
    }
}

void sub_0201C63C (UnkStruct_02018340 * param0, u8 param1, u8 param2, int param3)
{
    sub_02019304(&param0->unk_08[param1], param2, param3);
    param0->unk_04 |= (1 << param1);
}

void sub_0201C660 (UnkStruct_02018340 * param0, u8 param1, u8 param2, u16 param3)
{
    sub_0201C684(&param0->unk_08[param1], param2, param3);
    param0->unk_04 |= (1 << param1);
}

static void sub_0201C684 (UnkStruct_02019304 * param0, u8 param1, u16 param2)
{
    switch (param1) {
    case 0:
        param0->unk_18 = param2;
        break;
    case 1:
        param0->unk_18 += param2;
        break;
    case 2:
        param0->unk_18 -= param2;
        break;
    }
}

void sub_0201C6A8 (UnkStruct_02018340 * param0, u8 param1, u8 param2, fx32 param3)
{
    sub_0201C6CC(&param0->unk_08[param1], param2, param3);
    param0->unk_04 |= (1 << param1);
}

static void sub_0201C6CC (UnkStruct_02019304 * param0, u8 param1, fx32 param2)
{
    switch (param1) {
    case 3:
        param0->unk_1C = param2;
        break;
    case 4:
        param0->unk_1C += param2;
        break;
    case 5:
        param0->unk_1C -= param2;
        break;
    case 6:
        param0->unk_20 = param2;
        break;
    case 7:
        param0->unk_20 += param2;
        break;
    case 8:
        param0->unk_20 -= param2;
        break;
    }
}

void sub_0201C718 (UnkStruct_02018340 * param0, u8 param1, u8 param2, int param3)
{
    sub_0201C73C(&param0->unk_08[param1], param2, param3);
    param0->unk_04 |= (1 << param1);
}

static void sub_0201C73C (UnkStruct_02019304 * param0, u8 param1, int param2)
{
    switch (param1) {
    case 9:
        param0->unk_24 = param2;
        break;
    case 10:
        param0->unk_24 += param2;
        break;
    case 11:
        param0->unk_24 -= param2;
        break;
    case 12:
        param0->unk_28 = param2;
        break;
    case 13:
        param0->unk_28 += param2;
        break;
    case 14:
        param0->unk_28 -= param2;
        break;
    }
}

u8 sub_0201C784 (UnkStruct_02018340 * param0, u8 param1, u16 param2, u16 param3, u16 * param4)
{
    u8 * v0;
    u16 v1;
    u8 v2, v3;
    u8 v4;
    u8 v5;

    if (param0->unk_08[param1].unk_00 == NULL) {
        return 0;
    }

    v1 = sub_02019774((u8)(param2 >> 3), (u8)(param3 >> 3), param0->unk_08[param1].unk_15);
    v0 = (u8 *)sub_02019F28(param1);
    v2 = (u8)(param2 & 7);
    v3 = (u8)(param3 & 7);

    if (param0->unk_08[param1].unk_16 == GX_BG_COLORMODE_16) {
        u16 * v6;
        u8 * v7;

        v6 = (u16 *)param0->unk_08[param1].unk_00;
        v7 = sub_02018184(param0->unk_00, 64);

        v0 += ((v6[v1] & 0x3ff) << 5);

        for (v5 = 0; v5 < 32; v5++) {
            v7[(v5 << 1)] = v0[v5] & 0xf;
            v7[(v5 << 1) + 1] = v0[v5] >> 4;
        }

        sub_0201C8E0(param0, (u8)((v6[v1] >> 10) & 3), v7);
        v4 = v7[v2 + (v3 << 3)];
        sub_020181C4(v7);

        if ((param4[0] & (1 << v4)) != 0) {
            return 1;
        }
    } else {
        if (param0->unk_08[param1].unk_14 != 1) {
            u16 * v8;
            u8 * v9;

            v8 = (u16 *)param0->unk_08[param1].unk_00;
            v9 = sub_02018184(param0->unk_00, 64);

            memcpy(v9, &v0[(v8[v1] & 0x3ff) << 6], 64);
            sub_0201C8E0(param0, (u8)((v8[v1] >> 10) & 3), v9);

            v4 = v9[v2 + (v3 << 3)];
            sub_020181C4(v9);
        } else {
            u8 * v10 = (u8 *)param0->unk_08[param1].unk_00;

            v4 = v0[(v10[v1] << 6) + v2 + (v3 << 3)];
        }

        v5 = 0;

        while (TRUE) {
            if (param4[v5] == 0xffff) {
                break;
            }

            if ((u8)param4[v5] == v4) {
                return 1;
            }
        }
    }

    return 0;
}

static void sub_0201C8E0 (UnkStruct_02018340 * param0, u8 param1, u8 * param2)
{
    u8 * v0;
    u8 v1, v2;

    if (param1 == 0) {
        return;
    }

    v0 = sub_02018184(param0->unk_00, 64);

    if (param1 & 1) {
        for (v1 = 0; v1 < 8; v1++) {
            for (v2 = 0; v2 < 8; v2++) {
                v0[v1 * 8 + v2] = param2[v1 * 8 + (7 - v2)];
            }
        }

        memcpy(param2, v0, 64);
    }

    if (param1 & 2) {
        for (v1 = 0; v1 < 8; v1++) {
            memcpy(&v0[v1 * 8], &param2[(7 - v1) * 8], 8);
        }

        memcpy(param2, v0, 64);
    }

    sub_020181C4(v0);
}
