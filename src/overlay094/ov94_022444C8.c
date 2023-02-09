#include <nitro.h>
#include <string.h>
#include <dwc.h>

#include "struct_decls/struct_02025E6C_decl.h"
#include "struct_decls/struct_02073C74_decl.h"
#include "struct_decls/struct_02073C74_sub1_decl.h"

#include "struct_defs/struct_0208BE5C.h"
#include "overlay094/struct_ov94_0223BA88.h"
#include "overlay094/struct_ov94_0223FD4C.h"

#include "unk_020067E8.h"
#include "heap.h"
#include "unk_02025E68.h"
#include "unk_0202DA40.h"
#include "unk_02056720.h"
#include "unk_02073C2C.h"
#include "unk_020797C8.h"
#include "party.h"
#include "unk_0207AE68.h"
#include "overlay094/ov94_0223BCB0.h"
#include "overlay094/ov94_022444C8.h"
#include "overlay095/ov95_02246C20.h"

FS_EXTERN_OVERLAY(overlay95);

static UnkStruct_02025E6C * ov94_02244870(UnkStruct_ov94_0223BA88 * param0);
static Pokemon * ov94_022448AC(UnkStruct_ov94_0223FD4C * param0, int param1);
static void ov94_022448E8(UnkStruct_ov94_0223FD4C * param0);

static const UnkStruct_0208BE5C Unk_ov94_0224636C = {
    ov95_02246C20,
    ov95_02246E7C,
    ov95_02246E1C,
    FS_OVERLAY_ID(overlay95)
};

int ov94_022444C8 (UnkStruct_ov94_0223FD4C * param0, int param1)
{
    param0->unk_1104 = sub_02073C74(62);

    switch (param0->unk_24) {
    case 7:
        param0->unk_E8.unk_00 = (BoxPokemon *)sub_02076B10((Pokemon *)param0->unk_12C.unk_00.unk_00);
        param0->unk_E8.unk_04 = param0->unk_E8.unk_00;
        param0->unk_120 = ov94_02244870(&param0->unk_12C);
        param0->unk_E8.unk_08 = param0->unk_120;
        param0->unk_E8.unk_0C = 3;
        param0->unk_E8.unk_10 = 2;
        break;
    case 8:
        param0->unk_E8.unk_04 = (BoxPokemon *)sub_02076B10((Pokemon *)param0->unk_12C.unk_00.unk_00);
        param0->unk_E8.unk_00 = param0->unk_E8.unk_04;
        param0->unk_120 = ov94_02244870(&param0->unk_12C);
        param0->unk_E8.unk_08 = param0->unk_120;
        param0->unk_E8.unk_0C = 3;
        param0->unk_E8.unk_10 = 4;
        break;
    case 10:
        param0->unk_E8.unk_04 = sub_02076B10((Pokemon *)param0->unk_12C.unk_00.unk_00);
        sub_0202DA70(param0->unk_00->unk_00, param0->unk_1104);
        param0->unk_E8.unk_00 = sub_02076B10(param0->unk_1104);
        param0->unk_120 = ov94_02244870(&param0->unk_12C);
        param0->unk_E8.unk_08 = param0->unk_120;
        param0->unk_E8.unk_0C = 3;
        param0->unk_E8.unk_10 = 1;
        break;
    case 9:
        sub_0202DA70(param0->unk_00->unk_00, param0->unk_1104);
        param0->unk_E8.unk_00 = sub_02076B10(param0->unk_1104);
        param0->unk_E8.unk_04 = (BoxPokemon *)sub_02076B10((Pokemon *)param0->unk_250[param0->unk_11C].unk_00.unk_00);
        param0->unk_120 = ov94_02244870(&param0->unk_250[param0->unk_11C]);
        param0->unk_E8.unk_08 = param0->unk_120;
        param0->unk_E8.unk_0C = 3;
        param0->unk_E8.unk_10 = 1;
        break;
    }

    param0->unk_E8.unk_14 = param0->unk_00->unk_24;
    param0->unk_B4 = sub_020067E8(&Unk_ov94_0224636C, &param0->unk_E8, 62);
    param0->unk_104 = 1;

    return 2;
}

int ov94_02244678 (UnkStruct_ov94_0223FD4C * param0, int param1)
{
    int v0 = 3;

    switch (param0->unk_2C) {
    case 0:
        if (sub_02006844(param0->unk_B4)) {
            sub_02006814(param0->unk_B4);

            if (param0->unk_24 == 9) {
                Pokemon * v1 = ov94_022448AC(param0, param0->unk_24);
                int v2 = sub_02074470(v1, 6, NULL);
                int v3;
                int v4;

                v3 = sub_02076B94(NULL, v1, 1, v2, &v4);

                if (v3 != 0) {
                    param0->unk_100 = sub_0207AE68(NULL, v1, v3, param0->unk_00->unk_24, param0->unk_00->unk_3C, param0->unk_00->unk_10, param0->unk_00->unk_30, param0->unk_00->unk_28, sub_02056B24(param0->unk_00->unk_20), v4, 0x4, 62);
                    param0->unk_2C = 1;
                } else {
                    ov94_0223C4C0(param0, 1, 0);
                    v0 = 4;
                }
            } else if ((param0->unk_24 == 8) || (param0->unk_24 == 10)) {
                Pokemon * v1 = ov94_022448AC(param0, param0->unk_24);
                Pokemon * v5 = sub_02073C74(62);

                sub_0202DA70(param0->unk_00->unk_00, v5);

                if ((sub_02074470(v1, 5, NULL) != sub_02074470(v5, 5, NULL)) || (sub_02074470(v1, 0, NULL) != sub_02074470(v5, 0, NULL))) {
                    int v6 = sub_02074470(v1, 6, NULL);
                    int v7;
                    int v8;

                    v7 = sub_02076B94(NULL, v1, 1, v6, &v8);

                    if (v7 != 0) {
                        param0->unk_100 = sub_0207AE68(NULL, v1, v7, param0->unk_00->unk_24, param0->unk_00->unk_3C, param0->unk_00->unk_10, param0->unk_00->unk_30, param0->unk_00->unk_28, sub_02056B24(param0->unk_00->unk_20), v8, 0x4, 62);
                        param0->unk_2C = 1;
                    } else {
                        ov94_0223C4C0(param0, 1, 0);
                        v0 = 4;
                    }
                } else {
                    ov94_0223C4C0(param0, 1, 0);
                    v0 = 4;
                }

                Heap_FreeToHeap(v5);
            } else {
                ov94_0223C4C0(param0, 1, 0);
                v0 = 4;
            }
        }
        break;
    case 1:
        if (sub_0207B0D0(param0->unk_100)) {
            sub_0207B0E0(param0->unk_100);
            ov94_022448E8(param0);
            GX_SetVisibleWnd(GX_WNDMASK_NONE);
            ov94_0223C4C0(param0, 7, 12);
            v0 = 4;
        }
        break;
    }

    return v0;
}

int ov94_0224484C (UnkStruct_ov94_0223FD4C * param0, int param1)
{
    Heap_FreeToHeap(param0->unk_1104);
    Heap_FreeToHeap(param0->unk_120);
    ov94_0223C4C8(param0);

    return 1;
}

static UnkStruct_02025E6C * ov94_02244870 (UnkStruct_ov94_0223BA88 * param0)
{
    UnkStruct_02025E6C * v0 = sub_02025E6C(62);

    sub_02025E8C(v0);
    sub_02025EC0(v0, param0->unk_10C);
    sub_02025FD0(v0, param0->unk_122);
    sub_02025FDC(v0, param0->unk_123);

    return v0;
}

static Pokemon * ov94_022448AC (UnkStruct_ov94_0223FD4C * param0, int param1)
{
    if (param1 == 9) {
        return (Pokemon *)param0->unk_250[param0->unk_11C].unk_00.unk_00;
    } else if (param1 == 10) {
        return (Pokemon *)param0->unk_12C.unk_00.unk_00;
    } else if (param1 == 8) {
        return (Pokemon *)param0->unk_12C.unk_00.unk_00;
    }

    GF_ASSERT(0);
    return NULL;
}

static void ov94_022448E8 (UnkStruct_ov94_0223FD4C * param0)
{
    Pokemon * v0 = ov94_022448AC(param0, param0->unk_24);

    if (param0->unk_124.unk_00 == 18) {
        sub_020775EC(v0, Party_GetPokemonBySlotIndex(param0->unk_00->unk_08, param0->unk_124.unk_04));
    } else {
        int v1 = 0, v2 = 0;

        sub_02079968(param0->unk_00->unk_0C, param0->unk_124.unk_00, param0->unk_124.unk_04);
        sub_020799F0(param0->unk_00->unk_0C, &v1, &v2);
        sub_020798A0(param0->unk_00->unk_0C, v1, sub_02076B10(v0));
    }
}
