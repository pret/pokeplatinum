#include "main_menu/ov97_02232DC8.h"

#include <nitro.h>
#include <string.h>

#include "main_menu/ov97_02232200.h"
#include "main_menu/ov97_02233408.h"
#include "main_menu/ov97_02233814.h"
#include "main_menu/struct_ov97_0223222C.h"
#include "main_menu/struct_ov97_02232254.h"
#include "main_menu/struct_ov97_02232620.h"
#include "main_menu/struct_ov97_02232AC8.h"
#include "main_menu/struct_ov97_02232E38.h"
#include "main_menu/struct_ov97_02233268.h"
#include "main_menu/struct_ov97_02233268_sub2.h"
#include "main_menu/struct_ov97_02233674.h"
#include "main_menu/struct_ov97_022339EC_sub1.h"

static BOOL ov97_02232DC8(void)
{
    WMErrCode v0;

    v0 = WM_SetIndCallback(ov97_022323B0);

    if (v0 != WM_ERRCODE_SUCCESS) {
        ov97_02233424(4);
        return 0;
    }

    return 1;
}

static void ov97_02232DE8(void)
{
    switch (ov97_02233418()) {
    case 0:
    case 2:
    case 1:
        (void)ov97_02233854();
        break;
    default:
        break;
    }
}

static void ov97_02232E00(const void *param0, u32 param1, u16 param2)
{
    const WMParentParam *v0 = ov97_02233408();

    if (param1 > v0->parentMaxSize) {
        return;
    }

    DC_FlushRange((void *)param0, param1);
    (void)ov97_02233814(param0, param1, param2);
}

static u32 ov97_02232E28(void)
{
    u32 v0;
    u32 v1;
    u32 v2;

    v0 = (u32)WM_SIZE_MP_PARENT_RECEIVE_BUFFER(64, 9, 0);
    v1 = (u32)WM_SIZE_MP_CHILD_RECEIVE_BUFFER(64, 0);
    v2 = (v0 > v1) ? v0 : v1;

    return v2;
}

static u32 ov97_02232E30(void)
{
    u32 v0;
    u32 v1;
    u32 v2;

    v0 = (s32)WM_SIZE_MP_PARENT_RECEIVE_BUFFER(64, 9, 0);
    v1 = (s32)WM_SIZE_MP_CHILD_RECEIVE_BUFFER(64, 0);
    v2 = (v0 > v1) ? v0 : v1;

    return v2;
}

void ov97_02232E38(UnkStruct_ov97_02232E38 *param0, void *param1)
{
    WMParentParam *v0 = ov97_02233408();
    UnkStruct_ov97_0223222C *v1 = ov97_02233410();
    void *v2 = param1;
    u32 v3 = (u32)param1 & 0x1F;

    if (v3) {
        v3 = 0x20 - ((u32)param1 & 0x1F);
        param1 = (void *)((u32)param1 + v3);
    }

    v1->unk_00 = (u8)0;
    v1->unk_01 = (u8)0;
    v1->unk_02 = (u8)0;
    v1->unk_03 = 4;
    v1->unk_04 = 0x400131;
    v1->unk_0C = 0;

    v1->unk_34 = param1;
    (u8 *)param1 += WM_SYSTEM_BUF_SIZE;

    v1->unk_38 = param1;
    (u8 *)param1 += v1->unk_2C = ov97_02232E28();

    v1->unk_3C = param1;
    (u8 *)param1 += v1->unk_30 = ov97_02232E30();

    v1->unk_28 = param1;
    (u8 *)param1 += sizeof(WMBssDesc);

    v1->unk_24 = param1;
    (u8 *)param1 += sizeof(WMScanParam);

    (void)WM_Init(v1->unk_34, 2);

    v1->unk_10 = ov97_02232DC8();
    v1->unk_14 = 0;
    v1->unk_18 = 0;
    v1->unk_1C = 0;
    v1->unk_20 = 0;
    v1->unk_40.unk_00.unk_00.unk_00_0 = 0xF;
    v1->unk_40.unk_00.unk_00.unk_00_8 = 0x1;
    v1->unk_40.unk_00.unk_00.unk_00_12 = 1;
    v1->unk_40.unk_00.unk_04.unk_00_0 = param0->unk_00_0;
    v1->unk_40.unk_00.unk_04.unk_00_8 = param0->unk_00_8;
    v1->unk_40.unk_00.unk_04.unk_00_12 = param0->unk_00_12;
    v1->unk_40.unk_00.unk_04.unk_00_16 = param0->unk_00_16;

    {
        const u16 *v4 = param0->unk_08;
        const u16 *v5 = param0->unk_04;
        u32 v6 = 0;

        while ((v4) && (v6 < 12)) {
            v1->unk_40.unk_08.unk_00.unk_00[v6] = *v4;
            v1->unk_40.unk_08.unk_18.unk_00[v6] = *v5;
            v6++;
            v4++;
            v5++;
        }
    }

    v1->unk_78.unk_00 = *(UnkStruct_ov97_022339EC_sub1 *)&v1->unk_40.unk_00;

    ov97_02233548();

    ov97_02233538()->unk_08 = param1;
    (u8 *)param1 += v1->unk_2C;

    ov97_02233538()->unk_0C = param1;
    (u8 *)param1 += v1->unk_30;

    (void)WM_GetNextTgid();
}

static void ov97_02232F68(void)
{
    UnkStruct_ov97_02232AC8 *v0 = ov97_02233538();

    if (v0->unk_19 == 1) {
        if (--v0->unk_1A > 0) {
            return;
        }

        v0->unk_19 = 0;
    }

    if (v0->unk_19 == 0) {
        u32 v1 = 64 - ov97_02233614();
        u32 v2 = v1;
        int v3 = 3;

        ov97_02233674(v0->unk_08, v0->unk_04, v2, v3, v0->unk_1C);
        ov97_02232E00(v0->unk_08, v2 + ov97_02233614(), 0xFFFF);

        v0->unk_19 = 1;
        v0->unk_1A = 60;
    }
}

static void ov97_02232FC4(void)
{
    UnkStruct_ov97_02232AC8 *v0 = ov97_02233538();

    if (v0->unk_19 == 0) {
        if (v0->unk_1C == (u8)0xFD) {
            UnkStruct_ov97_02232254 *v1 = ov97_02233510();
            int v2;

            for (v2 = 0; v2 < 8; v2++) {
                if (v1->unk_00[v2].unk_09) {
                    int v3 = 0;
                    u16 v4 = (u16)(1 << v1->unk_00[v2].unk_06);

                    ov97_02233674(v0->unk_08, v0->unk_04, 0, v3, 0xFD);
                    ov97_02232E00(v0->unk_08, ov97_02233614(), v4);

                    v1->unk_00[v2].unk_09--;
                    return;
                }
            }

            if (--v0->unk_1A == 0) {
                v0->unk_19 = 2;
            }
        } else {
            u32 v5 = ov97_02232E28() - ov97_02233614();
            int v6;
            UnkStruct_ov97_02233674 *v7 = (UnkStruct_ov97_02233674 *)v0->unk_0C;

            v6 = (int)v7->unk_08.unk_00_8;

            if (v6 == 0) {
                if (v0->unk_1B == 0) {
                    v0->unk_19 = 2;
                    return;
                } else {
                    v0->unk_1B--;
                }
            }

            ov97_02233674(v0->unk_08, v0->unk_04, 0, v6, v0->unk_1C);
            ov97_02232E00(v0->unk_08, ov97_02233614(), 0xFFFF);
        }
    }
}

static void ov97_02233080(void)
{
    UnkStruct_ov97_02232AC8 *v0 = ov97_02233538();

    switch (v0->unk_18) {
    case 1:
        ov97_02232F68();
        break;
    case 2:
        ov97_02232FC4();
        break;
    }
}

static void ov97_022330A0(void)
{
    UnkStruct_ov97_02232620 *v0 = ov97_02233508();

    switch (ov97_02233418()) {
    case 6:
        if (v0->unk_1C0) {
            v0->unk_1C0--;
        }
        break;
    case 11:
        ov97_02233080();
        break;
    default:
        break;
    }
}

static void ov97_022330CC(void)
{
    switch (ov97_02233418()) {
    case 10:
        ov97_02233080();
        break;
    default:
        break;
    }
}

void ov97_022330DC(void)
{
    if (ov97_02233418() == 12) {
        return;
    }

    if (ov97_02233430() == 12) {
        if (ov97_02233418() == 7) {
            ov97_02233AD8();
        }

        return;
    }

    switch (ov97_02233448()) {
    case 1:
        ov97_022330A0();
        break;
    case 2:
        ov97_022330CC();
        break;
    default: {
        UnkStruct_ov97_0223222C *v0 = ov97_02233410();

        switch (ov97_02233418()) {
        case 0:
            break;
        case 1:
            break;
        case 5:
            break;
        case 6:
        case 7:
            break;
        case 8:
            break;
        case 9:
            break;
        default:
            break;
        }
    }
    }
}

void ov97_02233120()
{
    ov97_02233518();
    ov97_02233454(1);
    ov97_02232DE8();
}

static u32 ov97_02233134(void)
{
    int v0 = ov97_02233448();
    u32 v1 = 0;

    if (v0 == 1) {
        UnkStruct_ov97_02232620 *v2 = ov97_02233508();

        if (v2->unk_1C3_4 == 1) {
            u32 v3;

            for (v3 = 0; v3 < 8; v3++) {
                if (v2->unk_00[v3].unk_00.unk_00.val2 != 0) {
                    v1++;
                }
            }
        }
    }

    return v1;
}

BOOL ov97_0223316C(u32 param0)
{
    if ((ov97_02233448() == 1) && (ov97_02233418() == 7)) {
        UnkStruct_ov97_02232620 *v0 = ov97_02233508();

        if ((v0->unk_1C3_4 == 1) && (v0->unk_00[param0].unk_00.unk_00.val2)) {
            return 1;
        }
    }

    return 0;
}

void ov97_022331A8(u32 param0)
{
    if ((ov97_02233448() == 1) && (ov97_02233418() == 7)) {
        UnkStruct_ov97_02232620 *v0 = ov97_02233508();

        if ((v0->unk_1C3_4 == 1) && (v0->unk_00[param0].unk_00.unk_00.val2)) {
            v0->unk_1C3_0 = (u8)param0;
            v0->unk_1C0 = 120;

            ov97_02233938();
        }
    }
}

static u32 ov97_022331F8(void)
{
    int v0 = ov97_02233448();
    u32 v1 = 0;

    if (v0 == 2) {
        UnkStruct_ov97_02232254 *v2 = ov97_02233510();

        if (v2->unk_60 == 2) {
            u32 i;

            for (i = 0; i < 8; i++) {
                if ((v2->unk_00[i].unk_00.unk_00.val2 != 0) && (v2->unk_00[i].unk_0A)) {
                    v1++;
                }
            }
        }
    }

    return v1;
}

u32 ov97_02233230(void)
{
    UnkStruct_ov97_0223222C *v0 = ov97_02233410();

    if (!v0->unk_20) {
        return (u32)WM_GetLinkLevel();
    } else {
        return 0;
    }
}

u32 ov97_02233248(void)
{
    int v0 = ov97_02233448();
    u32 v1;

    switch (v0) {
    case 1:
        v1 = ov97_02233134();
        break;
    case 2:
        v1 = ov97_022331F8();
        break;
    default:
        v1 = 0;
        break;
    }

    return v1;
}

void ov97_02233268(void)
{
    UnkStruct_ov97_02232AC8 *v0 = ov97_02233538();
    UnkStruct_ov97_02233268 *v1 = ov97_02233590();

    if (ov97_02233448() == 1) {
        v0->unk_18 = 1;
        v0->unk_19 = 0;
        v0->unk_00 = (void *)&v1->unk_08;
        v0->unk_04 = (void *)&v1->unk_08;
        v0->unk_10 = 0;
        v0->unk_14 = 0;
        v0->unk_1A = 120;
        v0->unk_1B = 0;
        v0->unk_1C = (u8)0xFD;
    }
}

void ov97_0223329C(void)
{
    UnkStruct_ov97_02232AC8 *v0 = ov97_02233538();
    UnkStruct_ov97_02233268 *v1 = ov97_02233590();

    v0->unk_18 = 1;
    v0->unk_19 = 0;
    v0->unk_00 = (void *)&v1->unk_08;
    v0->unk_04 = (void *)&v1->unk_08;
    v0->unk_10 = sizeof(UnkStruct_ov97_02233268_sub2);
    v0->unk_14 = sizeof(UnkStruct_ov97_02233268_sub2);
    v0->unk_1A = 120;
    v0->unk_1B = 0;
    v0->unk_1C = (u8)0xFE;
}

void ov97_022332C8(void *param0, u32 param1, u32 param2)
{
    UnkStruct_ov97_02232AC8 *v0 = ov97_02233538();

    if ((int)param2 > 0xF0) {
        return;
    }

    v0->unk_18 = 2;
    v0->unk_19 = 3;
    v0->unk_00 = param0;
    v0->unk_04 = param0;
    v0->unk_10 = param1;
    v0->unk_14 = 0;
    v0->unk_1A = 120;
    v0->unk_1B = 0;
    v0->unk_1C = (u8)param2;
}

BOOL ov97_022332F4(void)
{
    u32 v0 = 0;

    switch (ov97_02233448()) {
    case 1:
    case 2: {
        switch (ov97_02233418()) {
        case 11:
        case 10: {
            UnkStruct_ov97_02232AC8 *v1 = ov97_02233538();

            if (v1->unk_19 == 2) {
                return 1;
            }
        } break;
        }
    } break;
    }

    return 0;
}

BOOL ov97_02233320(void)
{
    u32 v0 = 0;

    switch (ov97_02233448()) {
    case 1:
    case 2: {
        switch (ov97_02233418()) {
        case 11:
        case 10: {
            UnkStruct_ov97_02232AC8 *v1 = ov97_02233538();

            if (v1->unk_19 == 2) {
                return 1;
            }
        } break;
        }
    } break;
    }

    return 0;
}

BOOL ov97_0223334C(void)
{
    switch (ov97_02233448()) {
    case 1:
    case 2: {
        switch (ov97_02233418()) {
        case 11:
        case 10: {
            UnkStruct_ov97_02232AC8 *v0 = ov97_02233538();

            if (v0->unk_19 == 0) {
                UnkStruct_ov97_02233674 *v1 = (UnkStruct_ov97_02233674 *)v0->unk_0C;

                if ((v1->unk_08.unk_00_8 == 0) && (v0->unk_1B < 4)) {
                    return 1;
                }
            }
        } break;
        }
    } break;
    }

    return 0;
}

BOOL ov97_02233388(void)
{
    switch (ov97_02233448()) {
    case 2: {
        UnkStruct_ov97_02232254 *v0 = ov97_02233510();
        int v1;

        for (v1 = 0; v1 < 8; v1++) {
            if (v0->unk_00[v1].unk_00.unk_00.val2) {
                if (v0->unk_00[v1].unk_0A) {
                    return 1;
                }
            }
        }

        return 0;
    } break;

    default:
        return ov97_022334CC();
        break;
    }
}

void ov97_022333BC(void)
{
    ov97_0223343C(12);

    switch (ov97_02233418()) {
    case 0:
    case 1:
        WM_Finish();
        ov97_022334F0(1);
        break;
    case 9:
        if (!ov97_022334CC()) {
            UnkStruct_ov97_0223222C *v0 = ov97_02233410();

            ov97_02233AD8();
            v0->unk_1C = 1;
        }
        break;
    }
}

BOOL ov97_022333FC(void)
{
    UnkStruct_ov97_0223222C *v0 = ov97_02233410();
    return v0->unk_20;
}
