#include "overlay020/ov20_021D2EA4.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_020998EC_decl.h"

#include "overlay020/ov20_021D0D80.h"
#include "overlay020/ov20_021D2098.h"
#include "overlay020/struct_ov20_021D16E8_decl.h"
#include "overlay020/struct_ov20_021D2128_decl.h"

#include "bg_window.h"
#include "charcode.h"
#include "colored_arrow.h"
#include "font.h"
#include "graphics.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "render_window.h"
#include "sprite.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "unk_02014D38.h"

typedef struct {
    s16 unk_00;
    s16 unk_02;
} UnkStruct_ov20_021D34CC;

typedef struct {
    Strbuf *unk_00;
    const u16 *unk_04;
    int unk_08;
} UnkStruct_ov20_021D33C8;

typedef struct UnkStruct_ov20_021D30F8_t {
    UnkStruct_ov20_021D2128 *unk_00;
    const UnkStruct_ov20_021D16E8 *unk_04;
    const UnkStruct_020998EC *unk_08;
    Window unk_0C;
    Window unk_1C;
    Window unk_2C;
    Sprite *unk_3C;
    Sprite *unk_40;
    Sprite *unk_44;
    MessageLoader *unk_48;
    Strbuf *unk_4C;
    ColoredArrow *unk_50;
    UnkStruct_ov20_021D34CC unk_54[2];
    u32 unk_5C;
    u32 unk_60;
    UnkStruct_ov20_021D33C8 unk_64;
    u16 unk_70[10][16];
} UnkStruct_ov20_021D30F8;

static void ov20_021D30A4(UnkStruct_ov20_021D30F8 *param0, NARC *param1);
static void ov20_021D30F8(UnkStruct_ov20_021D30F8 *param0);
static void ov20_021D312C(UnkStruct_ov20_021D30F8 *param0);
static void ov20_021D3184(UnkStruct_ov20_021D30F8 *param0);
static u32 ov20_021D32D0(UnkStruct_ov20_021D30F8 *param0);
static void ov20_021D33C8(UnkStruct_ov20_021D33C8 *param0, UnkStruct_ov20_021D30F8 *param1);
static void ov20_021D33F4(UnkStruct_ov20_021D33C8 *param0);
static int ov20_021D3400(UnkStruct_ov20_021D33C8 *param0, Strbuf *param1);
static void ov20_021D34CC(const UnkStruct_ov20_021D34CC *param0, UnkStruct_ov20_021D34CC *param1);
static void ov20_021D34E0(const UnkStruct_ov20_021D34CC *param0, UnkStruct_ov20_021D34CC *param1);
static void ov20_021D34F4(Window *param0, const UnkStruct_ov20_021D34CC *param1);
static void ov20_021D351C(UnkStruct_ov20_021D30F8 *param0, Window *param1, const UnkStruct_ov20_021D34CC *param2, u16 param3);
static void ov20_021D375C(UnkStruct_ov20_021D30F8 *param0, BOOL param1);

UnkStruct_ov20_021D30F8 *ov20_021D2EA4(UnkStruct_ov20_021D2128 *param0, const UnkStruct_ov20_021D16E8 *param1, const UnkStruct_020998EC *param2)
{
    UnkStruct_ov20_021D30F8 *v0 = Heap_AllocFromHeap(HEAP_ID_35, sizeof(UnkStruct_ov20_021D30F8));

    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;
    v0->unk_3C = NULL;
    v0->unk_40 = NULL;
    v0->unk_44 = NULL;
    v0->unk_4C = Strbuf_Init(128, HEAP_ID_35);
    v0->unk_48 = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0437, HEAP_ID_35);
    v0->unk_50 = ColoredArrow_New(35);

    return v0;
}

void ov20_021D2EF0(UnkStruct_ov20_021D30F8 *param0)
{
    if (param0->unk_50) {
        ColoredArrow_Free(param0->unk_50);
    }

    if (param0->unk_3C) {
        Sprite_Delete(param0->unk_3C);
    }

    if (param0->unk_40) {
        Sprite_Delete(param0->unk_40);
    }

    if (param0->unk_44) {
        Sprite_Delete(param0->unk_44);
    }

    if (param0->unk_48) {
        MessageLoader_Free(param0->unk_48);
    }

    if (param0->unk_4C) {
        Strbuf_Free(param0->unk_4C);
    }

    Window_Remove(&param0->unk_0C);
    Window_Remove(&param0->unk_1C);
    Window_Remove(&param0->unk_2C);
    Heap_Free(param0);
}

void ov20_021D2F50(UnkStruct_ov20_021D30F8 *param0, NARC *param1)
{
    BgConfig *v0;
    u32 v1;

    v0 = ov20_021D2E04(param0->unk_00);

    ov20_021D30A4(param0, param1);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(param1, 0, v0, 0, 0, 0, 1, HEAP_ID_35);

    v1 = Graphics_LoadTilesToBgLayerFromOpenNARC(param1, 1, v0, 0, 0, 0, 1, HEAP_ID_35);
    v1 /= 0x20;

    Window_Add(v0, &param0->unk_0C, 0, 3, 1, 27, 4, 0, v1);
    v1 += 108;

    Window_Add(v0, &param0->unk_1C, 0, 2, 21, 27, 2, 11, v1);
    v1 += 54;

    Window_Add(v0, &param0->unk_2C, 0, 23, 15, 8, 4, 11, v1);
    v1 += 32;

    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__PL_WINFRAME, 0, v0, 0, v1, 0, 0, HEAP_ID_35);
    param0->unk_60 = v1;
    v1 += 9;

    Graphics_LoadPalette(NARC_INDEX_GRAPHIC__PL_WINFRAME, 24, 0, 14 * 0x20, 0x20, HEAP_ID_35);
    LoadMessageBoxGraphics(v0, BG_LAYER_MAIN_0, v1, 15, ov20_021D2080(param0->unk_04), HEAP_ID_35);
    Window_DrawMessageBox(&param0->unk_1C, v1, 15);
    Window_PutToTilemap(&param0->unk_0C);
    Window_PutToTilemap(&param0->unk_1C);

    ov20_021D312C(param0);
    ov20_021D3228(param0);
    ov20_021D3578(param0, 0);
    ov20_021D3184(param0);

    Bg_CopyTilemapBufferToVRAM(v0, 0);
}

static void ov20_021D30A4(UnkStruct_ov20_021D30F8 *param0, NARC *param1)
{
    NNSG2dPaletteData *v0;
    void *v1;

    Graphics_LoadPaletteFromOpenNARC(param1, 6, 0, 0, 14 * 0x20, HEAP_ID_35);

    v1 = Graphics_GetPlttDataFromOpenNARC(param1, 6, &v0, HEAP_ID_35);

    MI_CpuCopy16(v0->pRawData, param0->unk_70, sizeof(param0->unk_70));
    DC_FlushRange(param0->unk_70, sizeof(param0->unk_70));

    Heap_Free(v1);
}

static void ov20_021D30F8(UnkStruct_ov20_021D30F8 *param0)
{
    if (ov20_021D1F84(param0->unk_04) == 2) {
        int v0 = 1 + ov20_021D1F9C(param0->unk_04);
        GX_LoadBGPltt(param0->unk_70[v0], 0 * 0x20, 0x20);
    } else {
        GX_LoadBGPltt(param0->unk_70[0], 0 * 0x20, 0x20);
    }
}

static void ov20_021D312C(UnkStruct_ov20_021D30F8 *param0)
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

static void ov20_021D3184(UnkStruct_ov20_021D30F8 *param0)
{
    SpriteResourcesHeader v0;
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

    Sprite_SetAnim(param0->unk_40, 13);
    param0->unk_44 = ov20_021D2E50(param0->unk_00, &v0, 250, 24, 1, NNS_G2D_VRAM_TYPE_2DMAIN);

    Sprite_SetAnim(param0->unk_44, 12);

    if (ov20_021D1F84(param0->unk_04) != 2) {
        Sprite_SetDrawFlag(param0->unk_44, 0);
        Sprite_SetDrawFlag(param0->unk_40, 0);
    }
}

void ov20_021D3228(UnkStruct_ov20_021D30F8 *param0)
{
    ov20_021D30F8(param0);
    Window_FillTilemap(&param0->unk_0C, 13);

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

    Window_LoadTiles(&param0->unk_0C);
}

static u32 ov20_021D32D0(UnkStruct_ov20_021D30F8 *param0)
{
    Strbuf *v0 = ov20_021D1FC0(param0->unk_04, 35);
    int v1, v2, v3;
    BOOL v4;
    u16 v5;

    v1 = v2 = v3 = 0;
    v4 = 1;

    ov20_021D33C8(&param0->unk_64, param0);

    while (v4) {
        switch (ov20_021D3400(&(param0->unk_64), v0)) {
        case 0:
            Text_AddPrinterWithParamsAndColor(&param0->unk_0C, FONT_MESSAGE, v0, v1, v2, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(3, 4, 13), NULL);
            v1 += Font_CalcStrbufWidth(FONT_MESSAGE, v0, 0);
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

static void ov20_021D33C8(UnkStruct_ov20_021D33C8 *param0, UnkStruct_ov20_021D30F8 *param1)
{
    param0->unk_00 = ov20_021D1FC0(param1->unk_04, 35);
    param0->unk_04 = Strbuf_GetData(param0->unk_00);

    if (*(param0->unk_04) == 0xfffe) {
        param0->unk_08 = 1;
    } else {
        param0->unk_08 = 0;
    }
}

static void ov20_021D33F4(UnkStruct_ov20_021D33C8 *param0)
{
    Strbuf_Free(param0->unk_00);
}

static int ov20_021D3400(UnkStruct_ov20_021D33C8 *param0, Strbuf *param1)
{
    const u16 *v0 = param0->unk_04;
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
        param0->unk_04 = CharCode_SkipFormatArg(param0->unk_04);
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

static void ov20_021D34CC(const UnkStruct_ov20_021D34CC *param0, UnkStruct_ov20_021D34CC *param1)
{
    param1->unk_00 = param0->unk_00 - (96 / 2);
    param1->unk_02 = param0->unk_02 - (16 / 2);
}

static void ov20_021D34E0(const UnkStruct_ov20_021D34CC *param0, UnkStruct_ov20_021D34CC *param1)
{
    param1->unk_00 = param0->unk_00 + 3 * 8;
    param1->unk_02 = param0->unk_02 + 1 * 8;
}

static void ov20_021D34F4(Window *param0, const UnkStruct_ov20_021D34CC *param1)
{
    UnkStruct_ov20_021D34CC v0;

    ov20_021D34CC(param1, &v0);
    Window_FillRectWithColor(param0, 14, v0.unk_00, v0.unk_02, 96, 16);
}

static void ov20_021D351C(UnkStruct_ov20_021D30F8 *param0, Window *param1, const UnkStruct_ov20_021D34CC *param2, u16 param3)
{
    if (param3 != 0xffff) {
        UnkStruct_ov20_021D34CC v0;
        u32 v1;

        ov20_021D34CC(param2, &v0);
        sub_02014DB8(param3, param0->unk_4C);

        v1 = (v0.unk_00 + (96 / 2)) - (Font_CalcStrbufWidth(FONT_MESSAGE, param0->unk_4C, 0) / 2);

        Text_AddPrinterWithParamsAndColor(param1, FONT_MESSAGE, param0->unk_4C, v0.unk_00, v0.unk_02, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(5, 6, 14), NULL);
    }
}

u32 ov20_021D3574(const UnkStruct_ov20_021D30F8 *param0)
{
    return param0->unk_5C;
}

void ov20_021D3578(UnkStruct_ov20_021D30F8 *param0, u32 param1)
{
    Window_FillTilemap(&param0->unk_1C, 9);

    switch (param1) {
    case 0:

    {
        StringTemplate *v0 = StringTemplate_New(2, 60, HEAP_ID_SYSTEM);
        Strbuf *v1 = Strbuf_Init(300, HEAP_ID_SYSTEM);

        StringTemplate_SetBagPocketName(v0, 0, 0);
        MessageLoader_GetStrbuf(param0->unk_48, 0 + ov20_021D1F88(param0->unk_04), param0->unk_4C);
        StringTemplate_Format(v0, v1, param0->unk_4C);
        Text_AddPrinterWithParamsAndColor(&param0->unk_1C, FONT_MESSAGE, v1, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 9), NULL);

        Strbuf_Free(v1);
        StringTemplate_Free(v0);
    } break;
    case 2:
        MessageLoader_GetStrbuf(param0->unk_48, 6, param0->unk_4C);
        Text_AddPrinterWithParamsAndColor(&param0->unk_1C, FONT_MESSAGE, param0->unk_4C, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 9), NULL);
        break;
    case 1:
        MessageLoader_GetStrbuf(param0->unk_48, 7, param0->unk_4C);
        Text_AddPrinterWithParamsAndColor(&param0->unk_1C, FONT_MESSAGE, param0->unk_4C, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 9), NULL);
        break;
    case 3:
        MessageLoader_GetStrbuf(param0->unk_48, 8, param0->unk_4C);
        Text_AddPrinterWithParamsAndColor(&param0->unk_1C, FONT_MESSAGE, param0->unk_4C, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 9), NULL);
        break;
    }

    Window_LoadTiles(&param0->unk_1C);
}

void ov20_021D3684(UnkStruct_ov20_021D30F8 *param0)
{
    ov20_021D375C(param0, 0);
}

void ov20_021D3690(UnkStruct_ov20_021D30F8 *param0)
{
    ov20_021D375C(param0, 1);
}

void ov20_021D369C(UnkStruct_ov20_021D30F8 *param0, BOOL param1)
{
    Sprite_SetDrawFlag(param0->unk_3C, param1);
    ov20_021D375C(param0, 1);
}

void ov20_021D36B0(UnkStruct_ov20_021D30F8 *param0)
{
    if (ov20_021D1F84(param0->unk_04) == 2) {
        Sprite_SetDrawFlag(param0->unk_40, 0);
        Sprite_SetDrawFlag(param0->unk_44, 0);
    }
}

void ov20_021D36D0(UnkStruct_ov20_021D30F8 *param0)
{
    if (ov20_021D1F84(param0->unk_04) == 2) {
        Sprite_SetDrawFlag(param0->unk_40, 1);
        Sprite_SetDrawFlag(param0->unk_44, 1);

        Sprite_SetAnim(param0->unk_40, 13);
        Sprite_SetAnim(param0->unk_44, 12);
    }
}

void ov20_021D3700(UnkStruct_ov20_021D30F8 *param0, int param1)
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

        Sprite_SetPosition(param0->unk_3C, &v0);
    }

    Sprite_SetPosition(param0->unk_3C, &v0);
    ov20_021D375C(param0, 1);
}

static void ov20_021D375C(UnkStruct_ov20_021D30F8 *param0, BOOL param1)
{
    if (param0->unk_5C != 0) {
        if (param1) {
            Sprite_SetAnim(param0->unk_3C, 0);
        } else {
            Sprite_SetAnim(param0->unk_3C, 1);
        }
    } else {
        if (param1) {
            Sprite_SetAnim(param0->unk_3C, 14);
        } else {
            Sprite_SetAnim(param0->unk_3C, 15);
        }
    }
}

void ov20_021D3790(UnkStruct_ov20_021D30F8 *param0, int param1)
{
    Window_FillTilemap(&param0->unk_2C, 9);

    MessageLoader_GetStrbuf(param0->unk_48, 9, param0->unk_4C);
    Text_AddPrinterWithParamsAndColor(&param0->unk_2C, FONT_SYSTEM, param0->unk_4C, 14, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 9), NULL);

    MessageLoader_GetStrbuf(param0->unk_48, 10, param0->unk_4C);
    Text_AddPrinterWithParamsAndColor(&param0->unk_2C, FONT_SYSTEM, param0->unk_4C, 14, 0 + 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 9), NULL);

    Window_DrawStandardFrame(&param0->unk_2C, 0, param0->unk_60, 14);
    ColoredArrow_Print(param0->unk_50, &param0->unk_2C, 0, 0 + (param1 * 16));

    Window_CopyToVRAM(&param0->unk_2C);
}

void ov20_021D381C(UnkStruct_ov20_021D30F8 *param0, int param1)
{
    Window_FillRectWithColor(&param0->unk_2C, 9, 0, 0, 14, 4 * 8);
    ColoredArrow_Print(param0->unk_50, &param0->unk_2C, 0, 0 + (param1 * 16));
}

void ov20_021D384C(UnkStruct_ov20_021D30F8 *param0)
{
    Window_EraseStandardFrame(&param0->unk_2C, 0);
    Window_ClearAndCopyToVRAM(&param0->unk_2C);
}
