#include "overlay019/ov19_021DEC04.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/struct_0205AA50.h"

#include "overlay019/ov19_021D0D80.h"
#include "overlay019/ov19_021D61B0.h"
#include "overlay019/ov19_021DA270.h"
#include "overlay019/struct_ov19_021D4DF0.h"
#include "overlay019/struct_ov19_021D5FAC.h"
#include "overlay019/struct_ov19_021D61B0_decl.h"
#include "overlay019/struct_ov19_021DA384.h"
#include "overlay019/struct_ov19_021DEC04_decl.h"
#include "overlay061/struct_ov61_0222C884.h"

#include "cell_actor.h"
#include "font.h"
#include "heap.h"
#include "inlines.h"
#include "message.h"
#include "pokemon.h"
#include "pokemon_icon.h"
#include "strbuf.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"
#include "unk_02006E3C.h"
#include "unk_02018340.h"

struct UnkStruct_ov19_021DEC04_t {
    BOOL unk_00;
    UnkStruct_ov19_021D61B0 *unk_04;
    const UnkStruct_ov19_021D4DF0 *unk_08;
    BGL *unk_0C;
    CellActorCollection *unk_10;
    UnkStruct_ov19_021DA384 *unk_14;
    u32 unk_18[2];
    CellActor *unk_20[2];
    CellActor *unk_28[2];
    CellActor *unk_30;
    CellActor *unk_34[2][5];
    void *unk_5C;
    NNSG2dCellDataBank *unk_60;
    void *unk_64;
    NNSG2dAnimBankData *unk_68;
    MessageLoader *unk_6C;
    MessageLoader *unk_70;
    Strbuf *unk_74;
    Window unk_78[7];
    u8 unk_E8[640];
    NNSG2dScreenData *unk_368;
    NNSG2dScreenData *unk_36C;
    void *unk_370;
    void *unk_374;
    int unk_378;
    int unk_37C;
    SysTask *unk_380;
};

static void ov19_021DEEFC(UnkStruct_ov19_021DEC04 *param0);
static void ov19_021DEF64(UnkStruct_ov19_021DEC04 *param0);
static void ov19_021DEFC8(UnkStruct_ov19_021DEC04 *param0);
static void ov19_021DF03C(UnkStruct_ov19_021DEC04 *param0);
static void ov19_021DF064(UnkStruct_ov19_021DEC04 *param0);
static void ov19_021DF0CC(UnkStruct_ov19_021DEC04 *param0, int param1);
static void ov19_021DF108(UnkStruct_ov19_021DEC04 *param0);
static void ov19_021DF140(UnkStruct_ov19_021DEC04 *param0);
static void ov19_021DF178(UnkStruct_ov19_021DEC04 *param0, int param1);
static void ov19_021DF250(UnkStruct_ov19_021DEC04 *param0, int param1);
static void ov19_021DF270(UnkStruct_ov19_021DEC04 *param0);
static void ov19_021DF2A8(UnkStruct_ov19_021DEC04 *param0);
static inline u32 inline_ov19_021DF3AC(Window *param0, u32 param1, const Strbuf *param2);
static void ov19_021DF2E0(UnkStruct_ov19_021DEC04 *param0);
static void ov19_021DF394(UnkStruct_ov19_021DEC04 *param0);
static void ov19_021DF3AC(UnkStruct_ov19_021DEC04 *param0, int param1);
static void ov19_021DF4D0(UnkStruct_ov19_021DEC04 *param0, int param1);
static void ov19_021DF5D0(UnkStruct_ov19_021DEC04 *param0, NARC *param1);
static void ov19_021DF730(UnkStruct_ov19_021DEC04 *param0, u32 param1);
static void ov19_021DF7D0(UnkStruct_ov19_021DEC04 *param0);
static void ov19_021DF834(UnkStruct_ov19_021DEC04 *param0);
static void ov19_021DF8C8(UnkStruct_ov19_021DEC04 *param0, int param1);
static void ov19_021DF930(SysTask *param0, void *param1);

BOOL ov19_021DEC04(UnkStruct_ov19_021DEC04 **param0, UnkStruct_ov19_021D61B0 *param1, const UnkStruct_ov19_021D4DF0 *param2, BGL *param3, CellActorCollection *param4, MessageLoader *param5, NARC *param6)
{
    if (ov19_021D5E08(param2) != 4) {
        *param0 = NULL;
        return 1;
    } else {
        UnkStruct_ov19_021DEC04 *v0 = Heap_AllocFromHeap(10, sizeof(UnkStruct_ov19_021DEC04));

        if (v0) {
            v0->unk_04 = param1;
            v0->unk_08 = param2;
            v0->unk_0C = param3;
            v0->unk_10 = param4;
            v0->unk_14 = ov19_021D77D8(param1);
            v0->unk_370 = sub_020071D0(param6, 7, 1, &(v0->unk_368), 10);
            v0->unk_374 = sub_020071D0(param6, 8, 1, &(v0->unk_36C), 10);
            v0->unk_6C = param5;
            v0->unk_70 = MessageLoader_Init(1, 26, 647, 10);
            v0->unk_74 = Strbuf_Init(32, 10);
            v0->unk_380 = NULL;
            *param0 = v0;
            return 1;
        }

        return 0;
    }
}

void ov19_021DECAC(UnkStruct_ov19_021DEC04 *param0)
{
    if (param0) {
        Heap_FreeToHeap(param0->unk_370);
        Heap_FreeToHeap(param0->unk_374);
        MessageLoader_Free(param0->unk_70);
        ov19_021DF7D0(param0);
        ov19_021DF03C(param0);
        Strbuf_Free(param0->unk_74);
        Heap_FreeToHeap(param0);
    }
}

void ov19_021DECE8(UnkStruct_ov19_021DEC04 *param0, NARC *param1)
{
    if (param0) {
        ov19_021DEEFC(param0);

        sub_020070E8(param1, 132, param0->unk_0C, 5, 0, 0, 1, 10);
        sub_0200710C(param1, 129, param0->unk_0C, 5, 0, 0, 1, 10);
        sub_0200710C(param1, 130, param0->unk_0C, 6, 0, 0, 1, 10);
        sub_0200710C(param1, 131, param0->unk_0C, 7, 0, 0, 1, 10);
        sub_02007130(param1, 133, 4, 0, 0x20 * 4, 10);
        sub_02006E84(19, PokeIconPalettesFileIndex(), 5, 4 * 0x20, 4 * 0x20, 10);
        sub_02019690(4, 0x20, 0, 10);
        sub_02019CB8(param0->unk_0C, 4, 0x0, 0, 0, 32, 32, 17);

        ov19_021DEF64(param0);
        ov19_021DEFC8(param0);

        param0->unk_378 = ov19_021D5FA4(param0->unk_08);

        sub_02019448(param0->unk_0C, 4);
        ov19_021DF5D0(param0, param1);
    }
}

void ov19_021DEDDC(UnkStruct_ov19_021DEC04 *param0, BOOL param1)
{
    if (param0) {
        int v0 = ov19_021D5F9C(param0->unk_08);

        if (param1) {
            CellActor_SetAnim(param0->unk_28[v0 ^ 1], 2);
            CellActor_SetAnim(param0->unk_28[v0], 0);
        } else {
            CellActor_SetAnim(param0->unk_28[v0 ^ 1], 1);
            CellActor_SetAnim(param0->unk_28[v0], 0);
        }

        ov19_021DEEFC(param0);
    }
}

void ov19_021DEE34(UnkStruct_ov19_021DEC04 *param0)
{
    ov19_021DF834(param0);

    if (param0) {
        int v0 = ov19_021D5F9C(param0->unk_08);

        ov19_021DF8C8(param0, v0);

        switch (ov19_021D5FA4(param0->unk_08)) {
        case 0:
            ov19_021DF3AC(param0, v0);
            break;
        case 1:
            ov19_021DF178(param0, v0);
            break;
        case 2:
            ov19_021DF4D0(param0, v0);
            break;
        }
    }
}

BOOL ov19_021DEE84(UnkStruct_ov19_021DEC04 *param0)
{
    return 1;
}

void ov19_021DEE88(UnkStruct_ov19_021DEC04 *param0)
{
    if (param0) {
        param0->unk_37C = 0;
        ov19_021DF0CC(param0, param0->unk_378);
        sub_02019448(param0->unk_0C, 4);
    }
}

BOOL ov19_021DEEA8(UnkStruct_ov19_021DEC04 *param0)
{
    if (param0) {
        switch (param0->unk_37C) {
        case 0:
            ov19_021DEF64(param0);
            param0->unk_37C++;
            break;
        case 1:
            ov19_021DF2E0(param0);
            ov19_021DF064(param0);
            sub_02019448(param0->unk_0C, 4);
            param0->unk_37C++;
            break;
        case 2:
            return 1;
        }
        return 0;
    } else {
        return 1;
    }
}

static void ov19_021DEEFC(UnkStruct_ov19_021DEC04 *param0)
{
    NNSG2dScreenData *v0 = (ov19_021D5F9C(param0->unk_08) == 0) ? param0->unk_368 : param0->unk_36C;

    sub_020198E8(param0->unk_0C, 2, 0, 0, 6, 32, v0->rawData, 0, 0, 32, 32);
    sub_020198E8(param0->unk_0C, 2, 26, 0, 6, 32, v0->rawData, 26, 0, 32, 32);
    sub_02019448(param0->unk_0C, 2);
}

static void ov19_021DEF64(UnkStruct_ov19_021DEC04 *param0)
{
    switch (ov19_021D5FA4(param0->unk_08)) {
    case 0:
        sub_02019120(5, 1);
        sub_02019120(6, 0);
        sub_02019120(7, 0);
        break;
    case 1:
        sub_02019120(6, 1);
        sub_02019120(5, 0);
        sub_02019120(7, 0);
        break;
    case 2:
        sub_02019120(7, 1);
        sub_02019120(5, 0);
        sub_02019120(6, 0);
        break;
    }
}

static void ov19_021DEFC8(UnkStruct_ov19_021DEC04 *param0)
{
    static const UnkStruct_ov61_0222C884 v0[] = {
        { 4, 3, 1, 9, 2, 0, 1 },
        { 4, 20, 1, 9, 2, 1, 19 },
        { 4, 13, 4, 6, 16, 0, 37 }
    };
    int v1;

    for (v1 = 0; v1 < 7; v1++) {
        param0->unk_78[v1].unk_0C = NULL;
    }

    for (v1 = 0; v1 < NELEMS(v0); v1++) {
        sub_0201A8D4(param0->unk_0C, &param0->unk_78[0 + v1], &v0[v1]);
        sub_0201A9F4(&param0->unk_78[0 + v1]);
    }

    ov19_021DF2E0(param0);
    BGL_FillWindow(&param0->unk_78[0], 0);
    BGL_FillWindow(&param0->unk_78[1], 0);

    for (v1 = 0; v1 < NELEMS(v0); v1++) {
        sub_0201ACCC(&param0->unk_78[0 + v1]);
    }

    ov19_021DF064(param0);
}

static void ov19_021DF03C(UnkStruct_ov19_021DEC04 *param0)
{
    int v0;

    for (v0 = 0; v0 < 7; v0++) {
        if (param0->unk_78[v0].unk_0C) {
            BGL_DeleteWindow(&(param0->unk_78[v0]));
        }
    }
}

static void ov19_021DF064(UnkStruct_ov19_021DEC04 *param0)
{
    int v0 = ov19_021D5FA4(param0->unk_08);

    switch (ov19_021D5FA4(param0->unk_08)) {
    case 0:
        ov19_021DF108(param0);
        ov19_021DF3AC(param0, 0);
        ov19_021DF3AC(param0, 1);
        break;
    case 1:
        ov19_021DF178(param0, 0);
        ov19_021DF178(param0, 1);
        break;
    case 2:
        ov19_021DF270(param0);
        ov19_021DF4D0(param0, 0);
        ov19_021DF4D0(param0, 1);
        break;
    }

    param0->unk_378 = v0;
}

static void ov19_021DF0CC(UnkStruct_ov19_021DEC04 *param0, int param1)
{
    switch (param1) {
    case 0:
        ov19_021DF140(param0);
        ov19_021DF394(param0);
        break;
    case 1:
        ov19_021DF250(param0, 0);
        ov19_021DF250(param0, 1);
        break;
    case 2:
        ov19_021DF2A8(param0);
        ov19_021DF394(param0);
        break;
    }
}

static void ov19_021DF108(UnkStruct_ov19_021DEC04 *param0)
{
    static const UnkStruct_ov61_0222C884 v0[] = {
        { 4, 3, 4, 9, 16, 0, 133 },
        { 4, 20, 4, 9, 16, 1, 277 }
    };
    int v1;

    for (v1 = 0; v1 < NELEMS(v0); v1++) {
        sub_0201A8D4(param0->unk_0C, &param0->unk_78[3 + v1], &v0[v1]);
        sub_0201A9F4(&param0->unk_78[3 + v1]);
        BGL_FillWindow(&param0->unk_78[3 + v1], 0);
    }
}

static void ov19_021DF140(UnkStruct_ov19_021DEC04 *param0)
{
    int v0;

    for (v0 = 3; v0 <= 4; v0++) {
        if (param0->unk_78[v0].unk_0C) {
            sub_0201AA3C(&(param0->unk_78[v0]));
            BGL_DeleteWindow(&(param0->unk_78[v0]));
            param0->unk_78[v0].unk_0C = NULL;
        }
    }
}

static void ov19_021DF178(UnkStruct_ov19_021DEC04 *param0, int param1)
{
#define DEFINE_00(tx) ((128 << FX32_SHIFT) + (((((tx) - 128) << FX32_SHIFT) * 10) / 100))
#define DEFINE_01(ty) ((484 << FX32_SHIFT) + (((((ty) - 484) << FX32_SHIFT) * 10) / 100))

    static const struct {
        fx32 unk_00;
        fx32 unk_04;
        fx32 unk_08;
        fx32 unk_0C;
    } v0[] = {
        { DEFINE_00(128), DEFINE_01(438), 128 << FX32_SHIFT, 438 << FX32_SHIFT },
        { DEFINE_00(172), DEFINE_01(470), 172 << FX32_SHIFT, 470 << FX32_SHIFT },
        { DEFINE_00(155), DEFINE_01(520), 155 << FX32_SHIFT, 520 << FX32_SHIFT },
        { DEFINE_00(100), DEFINE_01(520), 100 << FX32_SHIFT, 520 << FX32_SHIFT },
        { DEFINE_00(84), DEFINE_01(470), 84 << FX32_SHIFT, 470 << FX32_SHIFT },
    };

    const UnkStruct_ov19_021D5FAC *v1;
    BOOL v2, v3, v4;

    v1 = ov19_021D5FAC(param0->unk_08, param1);
    v2 = ov19_021D5E34(param0->unk_08);
    v3 = (ov19_021D5F9C(param0->unk_08) == param1);
    v4 = ov19_021D5FB8(param0->unk_08, param1);

    if ((((v2 == 1) && (v3 == 1)) || ((v3 == 0) && (v4 == 1))) && (v1->unk_06 == 0)) {
        int v5;
        VecFx32 v6;
        const u16 *v7 = &v1->unk_16;

        v6.z = 0;

        for (v5 = 0; v5 < 5; v5++) {
            v6.x = v0[v5].unk_00 + (((v0[v5].unk_08 - v0[v5].unk_00) / 256) * (int)(*v7));
            v6.y = v0[v5].unk_04 + (((v0[v5].unk_0C - v0[v5].unk_04) / 256) * (int)(*v7));
            CellActor_SetPosition(param0->unk_34[param1][v5], &v6);
            ov19_021D78AC(param0->unk_34[param1][v5], 0);
            ov19_021D78AC(param0->unk_34[param1 ^ 1][v5], 1);
            CellActor_SetDrawFlag(param0->unk_34[param1][v5], 1);
            v7++;
        }
    } else {
        ov19_021DF250(param0, param1);
    }

#undef DEFINE_00
#undef DEFINE_01
}

static void ov19_021DF250(UnkStruct_ov19_021DEC04 *param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < 5; v0++) {
        CellActor_SetDrawFlag(param0->unk_34[param1][v0], 0);
    }
}

static void ov19_021DF270(UnkStruct_ov19_021DEC04 *param0)
{
    static const UnkStruct_ov61_0222C884 v0[] = {
        { 4, 1, 4, 11, 12, 0, 133 },
        { 4, 20, 4, 11, 12, 1, 265 }
    };
    int v1;

    for (v1 = 0; v1 < NELEMS(v0); v1++) {
        sub_0201A8D4(param0->unk_0C, &param0->unk_78[5 + v1], &v0[v1]);
        sub_0201A9F4(&param0->unk_78[5 + v1]);
        BGL_FillWindow(&param0->unk_78[5 + v1], 0);
    }
}

static void ov19_021DF2A8(UnkStruct_ov19_021DEC04 *param0)
{
    int v0;

    for (v0 = 5; v0 <= 6; v0++) {
        if (param0->unk_78[v0].unk_0C) {
            sub_0201AA3C(&(param0->unk_78[v0]));
            BGL_DeleteWindow(&(param0->unk_78[v0]));
            param0->unk_78[v0].unk_0C = NULL;
        }
    }
}

static inline u32 inline_ov19_021DF3AC(Window *param0, u32 param1, const Strbuf *param2)
{
    return ((param0->unk_07 * 8) - Font_CalcStrbufWidth(param1, param2, 0)) / 2;
}

static void ov19_021DF2E0(UnkStruct_ov19_021DEC04 *param0)
{
    static const u16 v0[] = {
        35,
        36,
        37,
        38,
        39,
        40,
        41,
        42,
    };
    Window *v1 = &param0->unk_78[2];
    int v2;

    BGL_FillWindow(v1, 0);

    switch (ov19_021D5FA4(param0->unk_08)) {
    case 0:
        for (v2 = 0; v2 < NELEMS(v0); v2++) {
            MessageLoader_GetStrbuf(param0->unk_6C, v0[v2], param0->unk_74);
            Text_AddPrinterWithParamsAndColor(v1, FONT_SYSTEM, param0->unk_74, inline_ov19_021DF3AC(v1, 0, param0->unk_74), 0 + 16 * v2, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
        }
        break;
    case 2:
        MessageLoader_GetStrbuf(param0->unk_6C, 43, param0->unk_74);
        Text_AddPrinterWithParamsAndColor(v1, FONT_SYSTEM, param0->unk_74, inline_ov19_021DF3AC(v1, 0, param0->unk_74), 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
        break;
    }

    sub_0201ACCC(v1);
}

static void ov19_021DF394(UnkStruct_ov19_021DEC04 *param0)
{
    Window *v0 = &param0->unk_78[2];

    BGL_FillWindow(v0, 0);
    sub_0201ACCC(v0);
}

static void ov19_021DF3AC(UnkStruct_ov19_021DEC04 *param0, int param1)
{
    Window *v0;
    const UnkStruct_ov19_021D5FAC *v1;
    BOOL v2, v3, v4;

    v0 = &(param0->unk_78[3 + param1]);
    v1 = ov19_021D5FAC(param0->unk_08, param1);
    v2 = ov19_021D5E34(param0->unk_08);
    v3 = ov19_021D5F9C(param0->unk_08) == param1;
    v4 = ov19_021D5FB8(param0->unk_08, param1);

    BGL_FillWindow(v0, 0);

    if (((v2 == 1) && (v3 == 1)) || ((v3 == 0) && (v4 == 1))) {
        int v5;

        if (v1->unk_06 == 0) {
            const u16 *v6 = &v1->unk_08;

            Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v1->unk_2C, inline_ov19_021DF3AC(v0, 0, v1->unk_2C), 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);

            for (v5 = 0; v5 < 7; v5++) {
                Strbuf_FormatInt(param0->unk_74, v6[v5], 3, 0, 1);
                Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, param0->unk_74, inline_ov19_021DF3AC(v0, 0, param0->unk_74), (1 + v5) * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
            }
        } else {
            MessageLoader_GetStrbuf(param0->unk_6C, 44, param0->unk_74);

            for (v5 = 0; v5 < 8; v5++) {
                Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, param0->unk_74, inline_ov19_021DF3AC(v0, 0, param0->unk_74), v5 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
            }
        }
    }

    sub_0201ACCC(v0);
}

static void ov19_021DF4D0(UnkStruct_ov19_021DEC04 *param0, int param1)
{
    Window *v0;
    const UnkStruct_ov19_021D5FAC *v1;
    BOOL v2, v3, v4;

    v0 = &(param0->unk_78[5 + param1]);
    v1 = ov19_021D5FAC(param0->unk_08, param1);
    v2 = ov19_021D5E34(param0->unk_08);
    v3 = (ov19_021D5F9C(param0->unk_08) == param1);
    v4 = ov19_021D5FB8(param0->unk_08, param1);

    BGL_FillWindow(v0, 0);

    if (((v2 == 1) && (v3 == 1)) || ((v3 == 0) && (v4 == 1))) {
        int v5;

        if (v1->unk_06 == 0) {
            for (v5 = 0; v5 < 4; v5++) {
                if (v1->unk_20[v5]) {
                    MessageLoader_GetStrbuf(param0->unk_70, v1->unk_20[v5], param0->unk_74);
                    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, param0->unk_74, inline_ov19_021DF3AC(v0, 0, param0->unk_74), 4 + 24 * v5, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
                }
            }
        } else {
            MessageLoader_GetStrbuf(param0->unk_6C, 44, param0->unk_74);

            for (v5 = 0; v5 < 4; v5++) {
                Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, param0->unk_74, inline_ov19_021DF3AC(v0, 0, param0->unk_74), 4 + 24 * v5, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
            }
        }
    }

    sub_0201ACCC(v0);
}

static void ov19_021DF5D0(UnkStruct_ov19_021DEC04 *param0, NARC *param1)
{
    static const struct {
        s16 unk_00;
        s16 unk_02;
    } v0[] = {
        { 0, 568 },
        { 256, 568 },
    };
    NNSG2dImageProxy v1;
    CellActorResourceData v2;
    u32 v3, v4, v5;

    param0->unk_5C = sub_02007204(param1, 135, 1, &(param0->unk_60), 10);
    param0->unk_64 = sub_02007220(param1, 136, 1, &(param0->unk_68), 10);

    sub_02007130(param1, 137, 5, 0, 0x20 * 3, 10);
    NNS_G2dInitImageProxy(&v1);
    v3 = sub_0200718C(param1, 134, 1, 0, 0, NNS_G2D_VRAM_TYPE_2DSUB, 0, 10, &v1);
    ov19_021D783C(&v2, &v1, ov19_021D77D0(param0->unk_04), param0->unk_60, param0->unk_68, 1);

    for (v4 = 0; v4 < 2; v4++) {
        param0->unk_28[v4] = ov19_021D785C(param0->unk_10, &v2, v0[v4].unk_00, v0[v4].unk_02, 0, NNS_G2D_VRAM_TYPE_2DSUB);

        CellActor_SetExplicitPalette(param0->unk_28[v4], v4);
        CellActor_SetAnim(param0->unk_28[v4], 0);

        for (v5 = 0; v5 < 5; v5++) {
            param0->unk_34[v4][v5] = ov19_021D785C(param0->unk_10, &v2, 0, 0, 0, NNS_G2D_VRAM_TYPE_2DSUB);
            CellActor_SetAnim(param0->unk_34[v4][v5], 5 + v4);
            CellActor_SetExplicitPalette(param0->unk_34[v4][v5], v4);
            CellActor_SetDrawFlag(param0->unk_34[v4][v5], 0);
        }
    }

    CellActor_SetFlipMode(param0->unk_28[1], 1);
    param0->unk_30 = ov19_021D785C(param0->unk_10, &v2, 128, 176 + 384, 0, NNS_G2D_VRAM_TYPE_2DSUB);
    CellActor_SetAnim(param0->unk_30, 3);
    CellActor_SetExplicitPalette(param0->unk_30, 2);
    param0->unk_380 = SysTask_Start(ov19_021DF930, param0, 1);

    ov19_021DF730(param0, v3);
}

static void ov19_021DF730(UnkStruct_ov19_021DEC04 *param0, u32 param1)
{
    static const struct {
        s16 unk_00;
        s16 unk_02;
    } v0[] = {
        { 112, 394 },
        { 144, 394 },
    };
    NNSG2dImageProxy v1;
    CellActorResourceData v2;
    int v3;

    ov19_021D783C(&v2, &v1, ov19_021D77D0(param0->unk_04), ov19_021DA80C(param0->unk_14), ov19_021DA810(param0->unk_14), 1);

    for (v3 = 0; v3 < 2; v3++) {
        param0->unk_18[v3] = param1 + (v3 * (4 * 4) * 0x20);
        NNS_G2dInitImageProxy(&v1);
        NNS_G2dSetImageLocation(&v1, NNS_G2D_VRAM_TYPE_2DSUB, param0->unk_18[v3]);
        v1.attr.mappingType = GXS_GetOBJVRamModeChar();
        param0->unk_20[v3] = ov19_021D785C(param0->unk_10, &v2, v0[v3].unk_00, v0[v3].unk_02, 1 - v3, NNS_G2D_VRAM_TYPE_2DSUB);
        CellActor_SetDrawFlag(param0->unk_20[v3], 0);
    }
}

static void ov19_021DF7D0(UnkStruct_ov19_021DEC04 *param0)
{
    int v0, v1;

    if (param0->unk_380) {
        SysTask_Done(param0->unk_380);
    }

    for (v0 = 0; v0 < 2; v0++) {
        CellActor_Delete(param0->unk_20[v0]);
        CellActor_Delete(param0->unk_28[v0]);

        for (v1 = 0; v1 < 5; v1++) {
            CellActor_Delete(param0->unk_34[v0][v1]);
        }
    }

    CellActor_Delete(param0->unk_30);
    Heap_FreeToHeap(param0->unk_5C);
    Heap_FreeToHeap(param0->unk_64);
}

static void ov19_021DF834(UnkStruct_ov19_021DEC04 *param0)
{
    int v0 = ov19_021D5F9C(param0->unk_08);
    const UnkStruct_ov19_021D5FAC *v1 = ov19_021D5FAC(param0->unk_08, v0);
    CellActor *v2 = param0->unk_20[v0];
    BoxPokemon *v3 = (BoxPokemon *)(v1->unk_00);
    NNSG2dCharacterData *v4;

    if (ov19_021D5E34(param0->unk_08)) {
        u32 v5 = 4 + PokeIconPaletteIndex(v1->unk_04, v1->unk_07, v1->unk_06);

        ov19_021DA744(param0->unk_14, param0->unk_E8, BoxPokemon_IconSpriteIndex(v3), sizeof(param0->unk_E8));

        NNS_G2dGetUnpackedCharacterData(param0->unk_E8, &v4);
        DC_FlushRange(v4->pRawData, (4 * 4) * 0x20);
        GXS_LoadOBJ(v4->pRawData, param0->unk_18[v0], (4 * 4) * 0x20);

        CellActor_SetExplicitPalette(v2, v5);
        CellActor_SetDrawFlag(v2, 1);
    } else {
        CellActor_SetDrawFlag(v2, 0);
    }
}

static void ov19_021DF8C8(UnkStruct_ov19_021DEC04 *param0, int param1)
{
    Window *v0;

    param1 = ov19_021D5F9C(param0->unk_08);
    v0 = &(param0->unk_78[0 + param1]);

    BGL_FillWindow(v0, 0);

    if (ov19_021D5E34(param0->unk_08)) {
        const UnkStruct_ov19_021D5FAC *v1 = ov19_021D5FAC(param0->unk_08, param1);
        Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v1->unk_28, inline_ov19_021DF3AC(v0, 0, v1->unk_28), 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    }

    sub_0201ACCC(v0);
}

static void ov19_021DF930(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021DEC04 *v0 = param1;
    BOOL v1 = ov19_021D5FC0(v0->unk_08);

    if (CellActor_GetActiveAnim(v0->unk_30) == 3) {
        if (v1) {
            CellActor_SetAnim(v0->unk_30, 4);
        }
    } else {
        if (v1 == 0) {
            CellActor_SetAnim(v0->unk_30, 3);
        }
    }
}
