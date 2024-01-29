#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "message.h"
#include "struct_decls/struct_0200B358_decl.h"
#include "struct_decls/struct_020149F0_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_02022550_decl.h"
#include "strbuf.h"
#include "struct_decls/struct_020998EC_decl.h"
#include "overlay020/struct_ov20_021D16E8_decl.h"
#include "overlay020/struct_ov20_021D2128_decl.h"

#include "struct_defs/struct_0205AA50.h"
#include "overlay019/struct_ov19_021DA864.h"

#include "unk_02002B7C.h"
#include "unk_02006E3C.h"
#include "message.h"
#include "unk_0200B358.h"
#include "unk_0200DA60.h"
#include "unk_020149F0.h"
#include "unk_02014D38.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D0C8.h"
#include "unk_0201D670.h"
#include "unk_020218BC.h"
#include "strbuf.h"
#include "overlay020/ov20_021D0D80.h"
#include "overlay020/ov20_021D2098.h"
#include "overlay020/ov20_021D2EA4.h"

typedef struct {
    s16 unk_00;
    s16 unk_02;
} UnkStruct_ov20_021D34CC;

typedef struct {
    Strbuf* unk_00;
    const u16 * unk_04;
    int unk_08;
} UnkStruct_ov20_021D33C8;

typedef struct UnkStruct_ov20_021D30F8_t {
    UnkStruct_ov20_021D2128 * unk_00;
    const UnkStruct_ov20_021D16E8 * unk_04;
    const UnkStruct_020998EC * unk_08;
    Window unk_0C;
    Window unk_1C;
    Window unk_2C;
    GraphicElementData * unk_3C;
    GraphicElementData * unk_40;
    GraphicElementData * unk_44;
    MessageLoader * unk_48;
    Strbuf* unk_4C;
    UnkStruct_020149F0 * unk_50;
    UnkStruct_ov20_021D34CC unk_54[2];
    u32 unk_5C;
    u32 unk_60;
    UnkStruct_ov20_021D33C8 unk_64;
    u16 unk_70[10][16];
} UnkStruct_ov20_021D30F8;

static void ov20_021D30A4(UnkStruct_ov20_021D30F8 * param0, NARC * param1);
static void ov20_021D30F8(UnkStruct_ov20_021D30F8 * param0);
static void ov20_021D312C(UnkStruct_ov20_021D30F8 * param0);
static void ov20_021D3184(UnkStruct_ov20_021D30F8 * param0);
static u32 ov20_021D32D0(UnkStruct_ov20_021D30F8 * param0);
static void ov20_021D33C8(UnkStruct_ov20_021D33C8 * param0, UnkStruct_ov20_021D30F8 * param1);
static void ov20_021D33F4(UnkStruct_ov20_021D33C8 * param0);
static int ov20_021D3400(UnkStruct_ov20_021D33C8 * param0, Strbuf *param1);
static void ov20_021D34CC(const UnkStruct_ov20_021D34CC * param0, UnkStruct_ov20_021D34CC * param1);
static void ov20_021D34E0(const UnkStruct_ov20_021D34CC * param0, UnkStruct_ov20_021D34CC * param1);
static void ov20_021D34F4(Window * param0, const UnkStruct_ov20_021D34CC * param1);
static void ov20_021D351C(UnkStruct_ov20_021D30F8 * param0, Window * param1, const UnkStruct_ov20_021D34CC * param2, u16 param3);
static void ov20_021D375C(UnkStruct_ov20_021D30F8 * param0, BOOL param1);

UnkStruct_ov20_021D30F8 * ov20_021D2EA4 (UnkStruct_ov20_021D2128 * param0, const UnkStruct_ov20_021D16E8 * param1, const UnkStruct_020998EC * param2)
{
    UnkStruct_ov20_021D30F8 * v0 = Heap_AllocFromHeap(35, sizeof(UnkStruct_ov20_021D30F8));

    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;
    v0->unk_3C = NULL;
    v0->unk_40 = NULL;
    v0->unk_44 = NULL;
    v0->unk_4C = Strbuf_Init(128, 35);
    v0->unk_48 = MessageLoader_Init(0, 26, 437, 35);
    v0->unk_50 = sub_020149F0(35);

    return v0;
}

void ov20_021D2EF0 (UnkStruct_ov20_021D30F8 * param0)
{
    if (param0->unk_50) {
        sub_02014A20(param0->unk_50);
    }

    if (param0->unk_3C) {
        sub_02021BD4(param0->unk_3C);
    }

    if (param0->unk_40) {
        sub_02021BD4(param0->unk_40);
    }

    if (param0->unk_44) {
        sub_02021BD4(param0->unk_44);
    }

    if (param0->unk_48) {
        MessageLoader_Free(param0->unk_48);
    }

    if (param0->unk_4C) {
        Strbuf_Free(param0->unk_4C);
    }

    BGL_DeleteWindow(&param0->unk_0C);
    BGL_DeleteWindow(&param0->unk_1C);
    BGL_DeleteWindow(&param0->unk_2C);
    Heap_FreeToHeap(param0);
}

void ov20_021D2F50 (UnkStruct_ov20_021D30F8 * param0, NARC * param1)
{
    BGL * v0;
    u32 v1;

    v0 = ov20_021D2E04(param0->unk_00);

    ov20_021D30A4(param0, param1);
    sub_0200710C(param1, 0, v0, 0, 0, 0, 1, 35);

    v1 = sub_020070E8(param1, 1, v0, 0, 0, 0, 1, 35);
    v1 /= 0x20;

    BGL_AddWindow(v0, &param0->unk_0C, 0, 3, 1, 27, 4, 0, v1);
    v1 += 108;

    BGL_AddWindow(v0, &param0->unk_1C, 0, 2, 21, 27, 2, 11, v1);
    v1 += 54;

    BGL_AddWindow(v0, &param0->unk_2C, 0, 23, 15, 8, 4, 11, v1);
    v1 += 32;

    sub_02006E3C(38, 0, v0, 0, v1, 0, 0, 35);
    param0->unk_60 = v1;
    v1 += 9;

    sub_02006E84(38, 24, 0, 14 * 0x20, 0x20, 35);
    sub_0200DD0C(v0, 0, v1, 15, ov20_021D2080(param0->unk_04), 35);
    sub_0200E010(&param0->unk_1C, v1, 15);
    sub_0201A9F4(&param0->unk_0C);
    sub_0201A9F4(&param0->unk_1C);

    ov20_021D312C(param0);
    ov20_021D3228(param0);
    ov20_021D3578(param0, 0);
    ov20_021D3184(param0);

    sub_02019448(v0, 0);
}

static void ov20_021D30A4 (UnkStruct_ov20_021D30F8 * param0, NARC * param1)
{
    NNSG2dPaletteData * v0;
    void * v1;

    sub_02007130(param1, 6, 0, 0, 14 * 0x20, 35);

    v1 = sub_020071EC(param1, 6, &v0, 35);

    MI_CpuCopy16(v0->pRawData, param0->unk_70, sizeof(param0->unk_70));
    DC_FlushRange(param0->unk_70, sizeof(param0->unk_70));

    Heap_FreeToHeap(v1);
}

static void ov20_021D30F8 (UnkStruct_ov20_021D30F8 * param0)
{
    if (ov20_021D1F84(param0->unk_04) == 2) {
        int v0 = 1 + ov20_021D1F9C(param0->unk_04);
        GX_LoadBGPltt(param0->unk_70[v0], 0 * 0x20, 0x20);
    } else {
        GX_LoadBGPltt(param0->unk_70[0], 0 * 0x20, 0x20);
    }
}

static void ov20_021D312C (UnkStruct_ov20_021D30F8 * param0)
{
    switch (ov20_021D1F84(param0->unk_04)) {
    case 0:
        param0->unk_54[0].unk_00 = 104;
        param0->unk_54[0].unk_02 = 16;
        param0->unk_5C = 1;
        break;
    case 1:
        param0->unk_54[0].unk_00 = 48;
        param0->unk_54[0].unk_02 = 16;
        param0->unk_54[1].unk_00 = 160;
        param0->unk_54[1].unk_02 = 16;
        param0->unk_5C = 2;
        break;
    case 2:
        param0->unk_5C = 0;
        break;
    }
}

static void ov20_021D3184 (UnkStruct_ov20_021D30F8 * param0)
{
    UnkStruct_ov19_021DA864 v0;
    UnkStruct_ov20_021D34CC v1;

    if (param0->unk_5C) {
        ov20_021D34E0(&param0->unk_54[0], &v1);
    } else {
        v1.unk_00 = 128;
        v1.unk_02 = 24;
    }

    ov20_021D2E0C(param0->unk_00, &v0, 0, 0);
    param0->unk_3C = ov20_021D2E50(param0->unk_00, &v0, v1.unk_00, v1.unk_02, 0, NNS_G2D_VRAM_TYPE_2DMAIN);

    ov20_021D375C(param0, 1);
    param0->unk_40 = ov20_021D2E50(param0->unk_00, &v0, 6, 24, 1, NNS_G2D_VRAM_TYPE_2DMAIN);

    sub_02021D6C(param0->unk_40, 13);
    param0->unk_44 = ov20_021D2E50(param0->unk_00, &v0, 250, 24, 1, NNS_G2D_VRAM_TYPE_2DMAIN);

    sub_02021D6C(param0->unk_44, 12);

    if (ov20_021D1F84(param0->unk_04) != 2) {
        sub_02021CAC(param0->unk_44, 0);
        sub_02021CAC(param0->unk_40, 0);
    }
}

void ov20_021D3228 (UnkStruct_ov20_021D30F8 * param0)
{
    ov20_021D30F8(param0);
    BGL_FillWindow(&param0->unk_0C, 13);

    switch (ov20_021D1F84(param0->unk_04)) {
    case 0:
        ov20_021D34F4(&param0->unk_0C, &param0->unk_54[0]);
        ov20_021D351C(param0, &param0->unk_0C, &(param0->unk_54[0]), ov20_021D1FA8(param0->unk_04, 0));
        break;
    case 1:
        ov20_021D34F4(&param0->unk_0C, &param0->unk_54[0]);
        ov20_021D34F4(&param0->unk_0C, &param0->unk_54[1]);
        ov20_021D351C(param0, &param0->unk_0C, &(param0->unk_54[0]), ov20_021D1FA8(param0->unk_04, 0));
        ov20_021D351C(param0, &param0->unk_0C, &(param0->unk_54[1]), ov20_021D1FA8(param0->unk_04, 1));
        break;
    case 2:
        param0->unk_5C = ov20_021D32D0(param0);
        break;
    }

    sub_0201ACCC(&param0->unk_0C);
}

static u32 ov20_021D32D0 (UnkStruct_ov20_021D30F8 * param0)
{
    Strbuf* v0 = ov20_021D1FC0(param0->unk_04, 35);
    int v1, v2, v3;
    BOOL v4;
    u16 v5;

    v1 = v2 = v3 = 0;
    v4 = 1;

    ov20_021D33C8(&param0->unk_64, param0);

    while (v4) {
        switch (ov20_021D3400(&(param0->unk_64), v0)) {
        case 0:
            sub_0201D78C(&param0->unk_0C, 1, v0, v1, v2, 0xff, (u32)(((3 & 0xff) << 16) | ((4 & 0xff) << 8) | ((13 & 0xff) << 0)), NULL);
            v1 += sub_02002D7C(1, v0, 0);
            break;
        case 1:
            v1 += 2;
            param0->unk_54[v3].unk_00 = v1 + (96 / 2);
            param0->unk_54[v3].unk_02 = v2 + (16 / 2);
            ov20_021D34F4(&param0->unk_0C, &(param0->unk_54[v3]));
            v5 = ov20_021D1FA8(param0->unk_04, v3);

            if (v5 != 0xffff) {
                ov20_021D351C(param0, &param0->unk_0C, &(param0->unk_54[v3]), v5);
            }

            v3++;
            v1 += (2 + 96);
            break;
        case 2:
            v2 += 16;
            v1 = 0;
            break;
        case 3:
            v4 = 0;
            break;
        }
    }

    ov20_021D33F4(&param0->unk_64);
    Strbuf_Free(v0);

    return v3;
}

static void ov20_021D33C8 (UnkStruct_ov20_021D33C8 * param0, UnkStruct_ov20_021D30F8 * param1)
{
    param0->unk_00 = ov20_021D1FC0(param1->unk_04, 35);
    param0->unk_04 = Strbuf_GetData(param0->unk_00);

    if (*(param0->unk_04) == 0xfffe) {
        param0->unk_08 = 1;
    } else {
        param0->unk_08 = 0;
    }
}

static void ov20_021D33F4 (UnkStruct_ov20_021D33C8 * param0)
{
    Strbuf_Free(param0->unk_00);
}

static int ov20_021D3400 (UnkStruct_ov20_021D33C8 * param0, Strbuf *param1)
{
    const u16 * v0 = param0->unk_04;
    int v1;

    switch (param0->unk_08) {
    case 0:
        while (param0->unk_08 == 0) {
            switch (*(param0->unk_04)) {
            case 0xe000:
                param0->unk_08 = 2;
                break;
            case 0xffff:
                param0->unk_08 = 3;
                break;
            case 0xfffe:
                param0->unk_08 = 1;
                break;
            default:
                param0->unk_04++;
                break;
            }
        }

        Strbuf_CopyNumChars(param1, v0, (param0->unk_04 - v0) + 1);
        return 0;
    case 1:
        param0->unk_04 = sub_0201D0C8(param0->unk_04);
        v1 = 1;
        break;
    case 2:
        param0->unk_04++;
        v1 = 2;
        break;
    case 3:
    default:
        return 3;
    }

    switch (*(param0->unk_04)) {
    case 0xe000:
        param0->unk_08 = 2;
        break;
    case 0xffff:
        param0->unk_08 = 3;
        break;
    case 0xfffe:
        param0->unk_08 = 1;
        break;
    default:
        param0->unk_08 = 0;
        break;
    }

    return v1;
}

static void ov20_021D34CC (const UnkStruct_ov20_021D34CC * param0, UnkStruct_ov20_021D34CC * param1)
{
    param1->unk_00 = param0->unk_00 - (96 / 2);
    param1->unk_02 = param0->unk_02 - (16 / 2);
}

static void ov20_021D34E0 (const UnkStruct_ov20_021D34CC * param0, UnkStruct_ov20_021D34CC * param1)
{
    param1->unk_00 = param0->unk_00 + 3 * 8;
    param1->unk_02 = param0->unk_02 + 1 * 8;
}

static void ov20_021D34F4 (Window * param0, const UnkStruct_ov20_021D34CC * param1)
{
    UnkStruct_ov20_021D34CC v0;

    ov20_021D34CC(param1, &v0);
    BGL_WindowColor(param0, 14, v0.unk_00, v0.unk_02, 96, 16);
}

static void ov20_021D351C (UnkStruct_ov20_021D30F8 * param0, Window * param1, const UnkStruct_ov20_021D34CC * param2, u16 param3)
{
    if (param3 != 0xffff) {
        UnkStruct_ov20_021D34CC v0;
        u32 v1;

        ov20_021D34CC(param2, &v0);
        sub_02014DB8(param3, param0->unk_4C);

        v1 = (v0.unk_00 + (96 / 2)) - (sub_02002D7C(1, param0->unk_4C, 0) / 2);

        sub_0201D78C(param1, 1, param0->unk_4C, v0.unk_00, v0.unk_02, 0xff, (u32)(((5 & 0xff) << 16) | ((6 & 0xff) << 8) | ((14 & 0xff) << 0)), NULL);
    }
}

u32 ov20_021D3574 (const UnkStruct_ov20_021D30F8 * param0)
{
    return param0->unk_5C;
}

void ov20_021D3578 (UnkStruct_ov20_021D30F8 * param0, u32 param1)
{
    BGL_FillWindow(&param0->unk_1C, 9);

    switch (param1) {
    case 0:

    {
        UnkStruct_0200B358 * v0 = sub_0200B368(2, 60, 0);
        Strbuf* v1 = Strbuf_Init(300, 0);

        sub_0200B7B4(v0, 0, 0);
        MessageLoader_GetStrbuf(param0->unk_48, 0 + ov20_021D1F88(param0->unk_04), param0->unk_4C);
        sub_0200C388(v0, v1, param0->unk_4C);
        sub_0201D78C(&param0->unk_1C, 1, v1, 0, 0, 0xff, (u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((9 & 0xff) << 0)), NULL);

        Strbuf_Free(v1);
        sub_0200B3F0(v0);
    }
    break;
    case 2:
        MessageLoader_GetStrbuf(param0->unk_48, 6, param0->unk_4C);
        sub_0201D78C(&param0->unk_1C, 1, param0->unk_4C, 0, 0, 0xff, (u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((9 & 0xff) << 0)), NULL);
        break;
    case 1:
        MessageLoader_GetStrbuf(param0->unk_48, 7, param0->unk_4C);
        sub_0201D78C(&param0->unk_1C, 1, param0->unk_4C, 0, 0, 0xff, (u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((9 & 0xff) << 0)), NULL);
        break;
    case 3:
        MessageLoader_GetStrbuf(param0->unk_48, 8, param0->unk_4C);
        sub_0201D78C(&param0->unk_1C, 1, param0->unk_4C, 0, 0, 0xff, (u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((9 & 0xff) << 0)), NULL);
        break;
    }

    sub_0201ACCC(&param0->unk_1C);
}

void ov20_021D3684 (UnkStruct_ov20_021D30F8 * param0)
{
    ov20_021D375C(param0, 0);
}

void ov20_021D3690 (UnkStruct_ov20_021D30F8 * param0)
{
    ov20_021D375C(param0, 1);
}

void ov20_021D369C (UnkStruct_ov20_021D30F8 * param0, BOOL param1)
{
    sub_02021CAC(param0->unk_3C, param1);
    ov20_021D375C(param0, 1);
}

void ov20_021D36B0 (UnkStruct_ov20_021D30F8 * param0)
{
    if (ov20_021D1F84(param0->unk_04) == 2) {
        sub_02021CAC(param0->unk_40, 0);
        sub_02021CAC(param0->unk_44, 0);
    }
}

void ov20_021D36D0 (UnkStruct_ov20_021D30F8 * param0)
{
    if (ov20_021D1F84(param0->unk_04) == 2) {
        sub_02021CAC(param0->unk_40, 1);
        sub_02021CAC(param0->unk_44, 1);

        sub_02021D6C(param0->unk_40, 13);
        sub_02021D6C(param0->unk_44, 12);
    }
}

void ov20_021D3700 (UnkStruct_ov20_021D30F8 * param0, int param1)
{
    VecFx32 v0;

    if (param0->unk_5C) {
        UnkStruct_ov20_021D34CC v1;

        ov20_021D34E0(&param0->unk_54[param1], &v1);
        v0.x = v1.unk_00 * FX32_ONE;
        v0.y = v1.unk_02 * FX32_ONE;
        v0.z = 0;
    } else {
        v0.x = 128 * FX32_ONE;
        v0.y = 24 * FX32_ONE;
        v0.z = 0;

        sub_02021C50(param0->unk_3C, &v0);
    }

    sub_02021C50(param0->unk_3C, &v0);
    ov20_021D375C(param0, 1);
}

static void ov20_021D375C (UnkStruct_ov20_021D30F8 * param0, BOOL param1)
{
    if (param0->unk_5C != 0) {
        if (param1) {
            sub_02021D6C(param0->unk_3C, 0);
        } else {
            sub_02021D6C(param0->unk_3C, 1);
        }
    } else {
        if (param1) {
            sub_02021D6C(param0->unk_3C, 14);
        } else {
            sub_02021D6C(param0->unk_3C, 15);
        }
    }
}

void ov20_021D3790 (UnkStruct_ov20_021D30F8 * param0, int param1)
{
    BGL_FillWindow(&param0->unk_2C, 9);

    MessageLoader_GetStrbuf(param0->unk_48, 9, param0->unk_4C);
    sub_0201D78C(&param0->unk_2C, 0, param0->unk_4C, 14, 0, 0xff, (u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((9 & 0xff) << 0)), NULL);

    MessageLoader_GetStrbuf(param0->unk_48, 10, param0->unk_4C);
    sub_0201D78C(&param0->unk_2C, 0, param0->unk_4C, 14, 0 + 16, 0xff, (u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((9 & 0xff) << 0)), NULL);

    Window_Show(&param0->unk_2C, 0, param0->unk_60, 14);
    sub_02014A58(param0->unk_50, &param0->unk_2C, 0, 0 + (param1 * 16));

    sub_0201A954(&param0->unk_2C);
}

void ov20_021D381C (UnkStruct_ov20_021D30F8 * param0, int param1)
{
    BGL_WindowColor(&param0->unk_2C, 9, 0, 0, 14, 4 * 8);
    sub_02014A58(param0->unk_50, &param0->unk_2C, 0, 0 + (param1 * 16));
}

void ov20_021D384C (UnkStruct_ov20_021D30F8 * param0)
{
    Window_Clear(&param0->unk_2C, 0);
    sub_0201ACF4(&param0->unk_2C);
}
