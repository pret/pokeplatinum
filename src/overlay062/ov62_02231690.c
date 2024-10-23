#include "overlay062/ov62_02231690.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_0202F298_decl.h"
#include "struct_decls/struct_0202F41C_decl.h"
#include "struct_defs/sentence.h"
#include "struct_defs/sprite_template.h"
#include "struct_defs/struct_0200D0F4.h"
#include "struct_defs/struct_02030A80.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_0208B878.h"
#include "struct_defs/struct_0208C06C.h"

#include "overlay061/ov61_0222BC4C.h"
#include "overlay061/struct_ov61_0222BE20.h"
#include "overlay062/ov62_0222F2C0.h"
#include "overlay062/ov62_022300D8.h"
#include "overlay062/ov62_0224112C.h"
#include "overlay062/ov62_02248408.h"
#include "overlay062/struct_ov62_022312B0.h"
#include "overlay062/struct_ov62_022323B8.h"
#include "overlay062/struct_ov62_02233310.h"
#include "overlay062/struct_ov62_0223359C.h"
#include "overlay062/struct_ov62_02233750.h"
#include "overlay062/struct_ov62_02233828.h"
#include "overlay062/struct_ov62_02233F74.h"
#include "overlay062/struct_ov62_022349A8.h"
#include "overlay062/struct_ov62_0223CAA4.h"
#include "overlay062/struct_ov62_02248CDC.h"

#include "core_sys.h"
#include "enums.h"
#include "font.h"
#include "game_records.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "pokemon_icon.h"
#include "savedata_misc.h"
#include "strbuf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"
#include "touch_screen.h"
#include "unk_02002F38.h"
#include "unk_02005474.h"
#include "unk_02006E3C.h"
#include "unk_0200762C.h"
#include "unk_0200C6E4.h"
#include "unk_02012744.h"
#include "unk_02014A84.h"
#include "unk_02018340.h"
#include "unk_0202F1D4.h"
#include "unk_02030A80.h"
#include "unk_020393C8.h"
#include "unk_0208B284.h"

static void ov62_022349E4(Strbuf *param0, int param1);

StringTemplate *ov62_02231690(u32 param0)
{
    StringTemplate *v0 = StringTemplate_New(4, 64, param0);
    return v0;
}

int ov62_022316A0(UnkStruct_0208C06C *param0)
{
    u32 v0[] = {
        0x73fa,
        0x771f,
        0x6f7b,
        0x6fff,
        0x4ebf,
        0x575e,
        0x5b9f,
    };

    return v0[param0->unk_14.unk_48];
}

int ov62_022316D0(UnkStruct_0208C06C *param0)
{
    u32 v0[] = {
        0x1642,
        0x357f,
        0x3def,
        0x31f,
        0xbc,
        0x131,
        0x23f,
    };

    if (param0->unk_00 != 0) {
        return 0x7e05;
    }

    return v0[param0->unk_14.unk_48];
}

int ov62_02231710(UnkStruct_0208C06C *param0, int param1)
{
    int v0[] = {
        102,
        103,
        104,
        105,
        106,
        129,
        134,
    };
    int v1[] = {
        107,
        108,
        109,
        110,
        111,
        130,
        135,
    };
    int v2[] = {
        117,
        118,
        119,
        120,
        121,
        132,
        137,
    };
    int v3[] = {
        112,
        113,
        114,
        115,
        116,
        131,
        136,
    };
    int v4;

    v4 = param0->unk_14.unk_48;

    switch (param1) {
    case 0:
        return v0[v4];
    case 1:
        return v1[v4];
    case 2:
        return v2[v4];
    case 3:
        return v3[v4];
    }

    GF_ASSERT(0);

    return v0[0];
}

void ov62_022317CC(UnkStruct_0208C06C *param0, int param1)
{
    PaletteData *v0 = param0->unk_14.unk_14;
    SpriteRenderer *v1 = param0->unk_14.unk_04;
    SpriteGfxHandler *v2 = param0->unk_14.unk_08;
    NARC *v3 = param0->unk_14.unk_00;

    PaletteSys_LoadPalette(v0, 162, ov62_02231710(param0, 3), 102, 0, 0x20 * (8 + 1), 0);
    PaletteSys_LoadPalette(v0, 162, ov62_02231710(param0, 3), 102, 1, 0x20 * (8 + 1), 0);
    PaletteSys_LoadPalette(v0, 162, ov62_02231710(param0, 0), 102, 0, 0x20, 14 * 16);
    PaletteSys_LoadPalette(v0, 162, ov62_02231710(param0, 0), 102, 1, 0x20, 14 * 16);
    sub_0208B63C(param0->unk_6F0, param0->unk_14.unk_48);
    sub_0208B63C(param0->unk_6F0, param0->unk_14.unk_48);
    SpriteGfxHandler_UnloadPlttObjById(v2, 9999);
    SpriteGfxHandler_UnloadPlttObjById(v2, 10000);
    SpriteRenderer_LoadPalette(v0, 2, v1, v2, v3, ov62_02231710(param0, 2), 0, 3, NNS_G2D_VRAM_TYPE_2DMAIN, 9999);
    SpriteRenderer_LoadPalette(v0, 3, v1, v2, v3, ov62_02231710(param0, 2), 0, 3, NNS_G2D_VRAM_TYPE_2DSUB, 10000);
}

void ov62_022318E8(UnkStruct_0208C06C *param0)
{
    sub_02003A2C(param0->unk_14.unk_14, 2, 0xFFFF, 0, param0->unk_14.unk_44);
    sub_02003A2C(param0->unk_14.unk_14, 0, 0xFFFF, 0, param0->unk_14.unk_44);
    sub_02003A2C(param0->unk_14.unk_14, 3, 0xFFFF, 0, param0->unk_14.unk_44);
    sub_02003A2C(param0->unk_14.unk_14, 1, 0xFFFF, 0, param0->unk_14.unk_44);
}

u16 *ov62_Pokedex_Alphabetical(int heapID, int unused, int *pokedexLength)
{
    u32 pokedexSize;
    u16 *pokedexAlphabetical;

    pokedexAlphabetical = sub_02007068(NARC_INDEX_APPLICATION__ZUKANLIST__ZKN_DATA__ZUKAN_DATA, 13, 0, heapID, 0, &pokedexSize);
    *pokedexLength = pokedexSize / sizeof(u16);

    return pokedexAlphabetical;
}

void ov62_0223196C(UnkStruct_0208C06C *param0, BOOL param1)
{
    param0->unk_870 = param1;
}

BOOL ov62_02231974(UnkStruct_0208C06C *param0)
{
    return param0->unk_870;
}

void ov62_0223197C(UnkStruct_0208C06C *param0, int param1)
{
    Strbuf *v0;
    Window *v1 = &param0->unk_8A4;

    if (param0->unk_8A0 == 1) {
        return;
    }

    param0->unk_8A0 = 1;

    ov62_022302A8(param0, 6, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);
    G2S_BlendNone();
    BGL_SetPriority(6, 0);
    Window_Init(v1);
    BGL_AddWindow(param0->unk_14.unk_10, v1, 6, 1, 19, 30, 4, 14, 32);

    v0 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_34, param1);

    BGL_FillWindow(v1, 0xCC);
    Text_AddPrinterWithParamsAndColor(v1, FONT_SYSTEM, v0, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 12), NULL);
    sub_0201A9A4(v1);
    Strbuf_Free(v0);
}

void ov62_02231A1C(UnkStruct_0208C06C *param0)
{
    if (param0->unk_8A0 == 0) {
        return;
    }

    param0->unk_8A0 = 0;

    sub_0201ACF4(&param0->unk_8A4);
    BGL_DeleteWindow(&param0->unk_8A4);
    sub_02019EBC(param0->unk_14.unk_10, 6);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
    BGL_SetPriority(6, 2);

    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG2, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_OBJ, 7, 8);
    G2S_SetBlendAlpha(GX_BLEND_PLANEMASK_BG2, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_OBJ, 7, 8);
}

void ov62_02231A88(UnkStruct_0208C06C *param0)
{
    sub_0201ACF4(&param0->unk_8A4);
    BGL_DeleteWindow(&param0->unk_8A4);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
}

void ov62_02231AAC(UnkStruct_0208C06C *param0, int param1)
{
    Strbuf *v0;
    Window *v1 = &param0->unk_8A4;

    if (param0->unk_8A0 == 1) {
        return;
    }

    param0->unk_8A0 = 1;

    ov62_022302A8(param0, 2, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
    Window_Init(v1);
    BGL_AddWindow(param0->unk_14.unk_10, v1, 2, 1, 19, 30, 4, 14, 32);

    v0 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_34, param1);

    BGL_FillWindow(v1, 0xCC);
    Text_AddPrinterWithParamsAndColor(v1, FONT_SYSTEM, v0, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 12), NULL);
    sub_0201A9A4(v1);
    Strbuf_Free(v0);
}

void ov62_02231B3C(UnkStruct_0208C06C *param0, int param1)
{
    Strbuf *v0;
    Window *v1 = &param0->unk_8A4;

    if (param0->unk_8A0 == 0) {
        return;
    }

    v0 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_34, param1);

    BGL_FillWindow(v1, 0xCC);
    Text_AddPrinterWithParamsAndColor(v1, FONT_SYSTEM, v0, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 12), NULL);
    sub_0201A9A4(v1);
    Strbuf_Free(v0);
}

void ov62_02231B8C(UnkStruct_0208C06C *param0)
{
    if (param0->unk_8A0 == 0) {
        return;
    }

    param0->unk_8A0 = 0;

    sub_0201ACF4(&param0->unk_8A4);
    BGL_DeleteWindow(&param0->unk_8A4);
    sub_02019EBC(param0->unk_14.unk_10, 2);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
}

void ov62_02231BC4(UnkStruct_0208C06C *param0, int param1)
{
    Strbuf *v0;
    Window *v1 = &param0->unk_8A4;

    if (param0->unk_8A0 == 1) {
        return;
    }

    if (param0->unk_89C == 1) {
        return;
    }

    param0->unk_8A0 = 1;
    param0->unk_89C = 1;

    G2S_BlendNone();

    BGL_SetPriority(6, 0);
    ov62_022302A8(param0, 6, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);
    Window_Init(v1);
    BGL_AddWindow(param0->unk_14.unk_10, v1, 6, 1, 19, 30, 4, 14, 32);

    v0 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_34, param1);

    BGL_FillWindow(v1, 0xCC);
    Text_AddPrinterWithParamsAndColor(v1, FONT_SYSTEM, v0, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 12), NULL);
    sub_0201A9A4(v1);
    Strbuf_Free(v0);
}

static void ov62_02231C78(UnkStruct_ov62_022323B8 *param0, UnkStruct_0208C06C *param1);
static void ov62_02232080(UnkStruct_ov62_022323B8 *param0, UnkStruct_0208C06C *param1);
static void ov62_022320A0(UnkStruct_ov62_022323B8 *param0, int param1);
static void ov62_022320B0(UnkStruct_ov62_022323B8 *param0, UnkStruct_0208C06C *param1);
static void ov62_022320EC(UnkStruct_ov62_022323B8 *param0, UnkStruct_0208C06C *param1);
static void ov62_022321F4(UnkStruct_ov62_022323B8 *param0, int param1);
static void ov62_02232200(UnkStruct_ov62_022323B8 *param0, UnkStruct_0208C06C *param1);
static void ov62_0223226C(UnkStruct_ov62_022323B8 *param0, UnkStruct_0208C06C *param1);

static void ov62_02231C78(UnkStruct_ov62_022323B8 *param0, UnkStruct_0208C06C *param1)
{
    int v0;
    int v1;
    Window *v2;
    Strbuf *v3;

    {
        const s16 Unk_ov62_02248A28[][4] = {
            { 0x4, 0x4, 0x18, 0x2 },
            { 0xF, 0x8, 0x5, 0x2 },
            { 0x10, 0x8, 0xD, 0x2 },
            { 0x4, 0xB, 0xB, 0x2 },
            { 0x4, 0xD, 0x18, 0x2 },
            { 0x4, 0xF, 0x18, 0x2 },
            { 0x4, 0x11, 0xB, 0x2 },
            { 0x4, 0x13, 0x18, 0x4 },
            { 0xFF, 0x0, 0x0, 0x0 },
            { 0x4, 0x15, 0x18, 0x2 }
        };

        const int Unk_ov62_022489F8[] = {
            0x14,
            0x14,
            0x14,
            0x14,
            0x14,
            0x14,
            0x14,
            0x14,
            0x14,
            0x14,
            0x14,
            0x14
        };

        v1 = 1;

        for (v0 = 0; v0 < 8; v0++) {
            v2 = &param0->unk_0C[v0];
            v3 = MessageLoader_GetNewStrbuf(param1->unk_14.unk_34, Unk_ov62_022489F8[v0]);
            Window_Init(v2);
            BGL_AddWindow(param1->unk_14.unk_10, v2, 2, Unk_ov62_02248A28[v0][0], Unk_ov62_02248A28[v0][1], Unk_ov62_02248A28[v0][2], Unk_ov62_02248A28[v0][3], 14, v1);
            BGL_FillWindow(v2, 0x00);
            Text_AddPrinterWithParamsAndColor(v2, FONT_SYSTEM, v3, ov62_0223429C(v2, v3), 0, (0xff), ((u32)(((15 & (0xff)) << 16) | ((13 & (0xff)) << 8) | ((0 & (0xff)) << 0))), NULL);
            sub_0201A9A4(v2);
            v1 += (Unk_ov62_02248A28[v0][2] * Unk_ov62_02248A28[v0][3]);
            Strbuf_Free(v3);
        }
    }

    {
        Strbuf *v6;
        Strbuf *v7;
        Strbuf *v8;
        StringTemplate *v9;
        Window *v10;
        UnkStruct_02030A80 *v11;

        v11 = param0->unk_00;
        v9 = ov62_02231690(102);

        v10 = &param0->unk_0C[0];
        v6 = sub_02030B94(v11, 102);
        ov62_022349A8(param1, v6);
        v7 = MessageLoader_GetNewStrbuf(param1->unk_14.unk_34, 13);
        v8 = Strbuf_Init(255, 102);

        StringTemplate_SetStrbuf(v9, 0, v6, 0, 1, 2);
        StringTemplate_Format(v9, v8, v7);

        BGL_FillWindow(v10, 0x00);
        Text_AddPrinterWithParamsAndColor(v10, FONT_SYSTEM, v8, ov62_0223429C(v10, v8), 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 0), NULL);
        sub_0201A9A4(v10);

        Strbuf_Free(v6);
        Strbuf_Free(v7);
        Strbuf_Free(v8);
        StringTemplate_ClearArgs(v9);

        {
            int v12 = sub_02030CCC(v11);

            v10 = &param0->unk_0C[2];
            v6 = MessageLoader_GetNewStrbuf(param1->unk_14.unk_34, 15);
            v7 = sub_02030B94(v11, 102);
            ov62_022349A8(param1, v7);
            v8 = Strbuf_Init(255, 102);

            StringTemplate_SetMonthName(v9, 0, v12);
            StringTemplate_Format(v9, v8, v6);

            BGL_FillWindow(v10, 0x00);
            Text_AddPrinterWithParamsAndColor(v10, FONT_SYSTEM, v8, ov62_0223429C(v10, v8), 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 0), NULL);
            sub_0201A9A4(v10);

            Strbuf_Free(v6);
            Strbuf_Free(v7);
            Strbuf_Free(v8);
            StringTemplate_ClearArgs(v9);
        }

        {
            v10 = &param0->unk_0C[3];
            v8 = MessageLoader_GetNewStrbuf(param1->unk_14.unk_34, 16);
            BGL_FillWindow(v10, 0x00);
            Text_AddPrinterWithParamsAndColor(v10, FONT_SYSTEM, v8, ov62_0223429C(v10, v8), 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 0), NULL);
            sub_0201A9A4(v10);
            Strbuf_Free(v8);

            {
                int v13 = sub_02030BFC(v11);
                int v14 = sub_02030C08(v11);

                v10 = &param0->unk_0C[4];
                BGL_FillWindow(v10, 0x00);
                if (v13 == 0) {
                    v8 = MessageLoader_GetNewStrbuf(param1->unk_14.unk_34, 21);

                    Text_AddPrinterWithParamsAndColor(v10, FONT_SYSTEM, v8, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 0), NULL);
                    sub_0201A9A4(v10);
                    Strbuf_Free(v8);
                } else {
                    v8 = Strbuf_Init(255, 102);
                    v6 = MessageLoader_GetNewStrbuf(param1->unk_14.unk_34, 22);
                    StringTemplate_SetCountryName(v9, 0, v13);
                    StringTemplate_Format(v9, v8, v6);

                    Text_AddPrinterWithParamsAndColor(v10, FONT_SYSTEM, v8, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 0), NULL);
                    sub_0201A9A4(v10);
                    Strbuf_Free(v8);
                    Strbuf_Free(v6);
                    if (v14 != 0) {
                        v10 = &param0->unk_0C[5];
                        BGL_FillWindow(v10, 0x00);
                        v8 = Strbuf_Init(255, 102);
                        v6 = MessageLoader_GetNewStrbuf(param1->unk_14.unk_34, 23);
                        StringTemplate_SetCityName(v9, 0, v13, v14);
                        StringTemplate_Format(v9, v8, v6);

                        Text_AddPrinterWithParamsAndColor(v10, FONT_SYSTEM, v8, 4, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 0), NULL);
                        sub_0201A9A4(v10);
                        Strbuf_Free(v8);
                        Strbuf_Free(v6);
                    }
                }

                StringTemplate_ClearArgs(v9);
            }
        }

        {
            v10 = &param0->unk_0C[6];
            v8 = MessageLoader_GetNewStrbuf(param1->unk_14.unk_34, 17);
            BGL_FillWindow(v10, 0x00);
            Text_AddPrinterWithParamsAndColor(v10, FONT_SYSTEM, v8, ov62_0223429C(v10, v8), 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 0), NULL);
            sub_0201A9A4(v10);
            Strbuf_Free(v8);

            {
                Sentence v15;

                v10 = &param0->unk_0C[7];

                v8 = sub_02030C28(v11, &v15, 102);
                if (v8 == NULL) {
                    v8 = sub_02014B34(&v15, 102);
                }

                BGL_FillWindow(v10, 0x00);
                Text_AddPrinterWithParamsAndColor(v10, FONT_SYSTEM, v8, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 0), NULL);
                sub_0201A9A4(v10);

                Strbuf_Free(v8);
            }
        }

        StringTemplate_Free(v9);
    }
}

static void ov62_02232080(UnkStruct_ov62_022323B8 *param0, UnkStruct_0208C06C *param1)
{
    int v0;

    for (v0 = 0; v0 < 8; v0++) {
        sub_0201ACF4(&param0->unk_0C[v0]);
        BGL_DeleteWindow(&param0->unk_0C[v0]);
    }
}

static void ov62_022320A0(UnkStruct_ov62_022323B8 *param0, int param1)
{
    if (param0->unk_04) {
        SpriteActor_EnableObject(param0->unk_04, param1);
    }
}

static void ov62_022320B0(UnkStruct_ov62_022323B8 *param0, UnkStruct_0208C06C *param1)
{
    SpriteGfxHandler_UnloadCharObjById(param1->unk_14.unk_08, 100000);
    SpriteGfxHandler_UnloadPlttObjById(param1->unk_14.unk_08, 100000);
    SpriteGfxHandler_UnloadCellObjById(param1->unk_14.unk_08, 100000);
    SpriteGfxHandler_UnloadAnimObjById(param1->unk_14.unk_08, 100000);

    if (param0->unk_04) {
        sub_0200D0F4(param0->unk_04);
        param0->unk_04 = NULL;
    }
}

static void ov62_022320EC(UnkStruct_ov62_022323B8 *param0, UnkStruct_0208C06C *param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    u8 v4;
    SpriteRenderer *v5;
    SpriteGfxHandler *v6;
    PaletteData *v7;
    SpriteTemplate v8;

    v5 = param1->unk_14.unk_04;
    v6 = param1->unk_14.unk_08;
    v7 = param1->unk_14.unk_14;

    v4 = sub_0200CD7C(v7, 2, v5, v6, 19, PokeIconPalettesFileIndex(), 0, 3, NNS_G2D_VRAM_TYPE_2DMAIN, 100000);

    {
        int v9 = PokeIcon64KCellsFileIndex();
        sub_0200CE0C(v5, v6, 19, v9, 0, 100000);
    }

    {
        int v10 = PokeIcon64KAnimationFileIndex();
        sub_0200CE3C(v5, v6, 19, v10, 0, 100000);
    }

    {
        int v11;

        v1 = sub_02030BBC(param0->unk_00);
        v3 = sub_02030BCC(param0->unk_00);
        v0 = sub_02030BEC(param0->unk_00);

        if (v1 == 0) {
            return;
        }

        v11 = PokeIconSpriteIndex(v1, v0, v3);

        sub_0200D888(v5, v6, 19, v11, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 100000);

        v8.x = 72 + 4;
        v8.y = 64 - 4;
        v8.z = 0;
        v8.animIdx = 0;
        v8.priority = 0;
        v8.plttIdx = 0;
        v8.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
        v8.bgPriority = 0;
        v8.transferToVRAM = FALSE;
        v8.resources[0] = 100000;
        v8.resources[1] = 100000;
        v8.resources[2] = 100000;
        v8.resources[3] = 100000;
        v8.resources[4] = SPRITE_RESOURCE_NONE;
        v8.resources[5] = SPRITE_RESOURCE_NONE;

        param0->unk_04 = SpriteActor_LoadResources(param1->unk_14.unk_04, param1->unk_14.unk_08, &v8);
        v2 = PokeIconPaletteIndex(v1, v3, v0);

        sub_0200D430(param0->unk_04, v4 + v2);
        sub_0200D364(param0->unk_04, 1);
    }
}

static void ov62_022321F4(UnkStruct_ov62_022323B8 *param0, int param1)
{
    SpriteActor_EnableObject(param0->unk_08, param1);
}

static void ov62_02232200(UnkStruct_ov62_022323B8 *param0, UnkStruct_0208C06C *param1)
{
    SpriteGfxHandler_UnloadCharObjById(param1->unk_14.unk_08, 165535);
    SpriteGfxHandler_UnloadPlttObjById(param1->unk_14.unk_08, 165535);
    SpriteGfxHandler_UnloadCellObjById(param1->unk_14.unk_08, 165535);
    SpriteGfxHandler_UnloadAnimObjById(param1->unk_14.unk_08, 165535);
    sub_0200D0F4(param0->unk_08);
}

static const int Unk_ov62_02248AD8[16][4] = {
    { 0x3, 0x3C, 0x11, 0x12 },
    { 0x5, 0x6, 0x13, 0x14 },
    { 0xB, 0x18, 0x15, 0x16 },
    { 0x1F, 0x39, 0x17, 0x18 },
    { 0x32, 0x30, 0x19, 0x1A },
    { 0x33, 0xE, 0x1B, 0x1C },
    { 0x3E, 0x20, 0x1D, 0x1E },
    { 0x46, 0x31, 0x1F, 0x20 },
    { 0x6, 0x3, 0x21, 0x22 },
    { 0x7, 0xA, 0x23, 0x24 },
    { 0xD, 0x24, 0x25, 0x26 },
    { 0xE, 0x19, 0x27, 0x28 },
    { 0x23, 0x55, 0x29, 0x2A },
    { 0x25, 0x23, 0x2B, 0x2C },
    { 0x2A, 0x12, 0x2D, 0x2E },
    { 0x3F, 0x21, 0x2F, 0x30 }
};

int ov62_02232234(int param0, int param1)
{
    int v0 = param0;

    if ((param0 > 16) || (param0 < 0)) {
        GF_ASSERT(0);
        v0 = 0;
    }

    if (param1 == 4) {
        return 316 + v0;
    }

    if (param1 >= 5) {
        return 0;
    }

    return Unk_ov62_02248AD8[v0][param1];
}

static void ov62_0223226C(UnkStruct_ov62_022323B8 *param0, UnkStruct_0208C06C *param1)
{
    int v0;
    SpriteRenderer *v1;
    SpriteGfxHandler *v2;
    PaletteData *v3;
    SpriteTemplate v4;
    int v5 = 13;
    int v6 = 14;
    int v7 = 9;
    int v8 = 10;

    v0 = sub_02030BAC(param0->unk_00);
    v1 = param1->unk_14.unk_04;
    v2 = param1->unk_14.unk_08;
    v3 = param1->unk_14.unk_14;

    if (param1->unk_86C == 0) {
        if (v0 == 1) {
            v5 = 15;
            v6 = 16;
        }
    } else {
        int v9 = sub_02030CDC(param0->unk_00);

        if (v9 >= 16) {
            v9 = 0;
        }

        v5 = ov62_02232234(v9, 2);
        v6 = ov62_02232234(v9, 3);
    }

    sub_0200CD7C(v3, 2, v1, v2, 146, v5, 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 165535);
    sub_0200CE0C(v1, v2, 146, v7, 0, 165535);
    sub_0200CE3C(v1, v2, 146, v8, 0, 165535);
    sub_0200D888(v1, v2, 146, v6, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 165535);

    v4.x = 40;
    v4.y = 56 + 4;
    v4.z = 0;
    v4.animIdx = 0;
    v4.priority = 0;
    v4.plttIdx = 0;
    v4.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v4.bgPriority = 0;
    v4.transferToVRAM = FALSE;
    v4.resources[0] = 165535;
    v4.resources[1] = 165535;
    v4.resources[2] = 165535;
    v4.resources[3] = 165535;
    v4.resources[4] = SPRITE_RESOURCE_NONE;
    v4.resources[5] = SPRITE_RESOURCE_NONE;

    param0->unk_08 = SpriteActor_LoadResources(param1->unk_14.unk_04, param1->unk_14.unk_08, &v4);
    sub_0200D364(param0->unk_08, 1);
    sub_0200D330(param0->unk_08);
}

void ov62_02232378(UnkStruct_ov62_022323B8 *param0, UnkStruct_0208C06C *param1)
{
    ov62_02231C78(param0, param1);
    ov62_0223226C(param0, param1);
    ov62_022320EC(param0, param1);
}

void ov62_02232394(UnkStruct_ov62_022323B8 *param0, UnkStruct_0208C06C *param1)
{
    ov62_02232080(param0, param1);
    ov62_022323B8(param0, 0);
    ov62_02232200(param0, param1);
    ov62_022320B0(param0, param1);
}

void ov62_022323B8(UnkStruct_ov62_022323B8 *param0, int param1)
{
    ov62_022320A0(param0, param1);
    ov62_022321F4(param0, param1);
}

static void ov62_022323CC(UnkStruct_ov62_02233310 *param0, UnkStruct_0208C06C *param1)
{
    Strbuf *v0;
    Strbuf *v1;
    StringTemplate *v2;
    Window *v3;
    int v4 = sub_02030BFC(param1->unk_88C[0]);
    int v5 = sub_02030C08(param1->unk_88C[0]);

    v3 = &param0->unk_18;

    if ((v4 == 0) && (v5 == 0)) {
        v0 = MessageLoader_GetNewStrbuf(param1->unk_14.unk_34, 125);
    } else {
        v2 = ov62_02231690(102);

        if (v5 != 0) {
            v0 = Strbuf_Init(255, 102);
            v1 = MessageLoader_GetNewStrbuf(param1->unk_14.unk_34, 23);
            StringTemplate_SetCityName(v2, 0, v4, v5);
            StringTemplate_Format(v2, v0, v1);
        } else {
            v0 = Strbuf_Init(255, 102);
            v1 = MessageLoader_GetNewStrbuf(param1->unk_14.unk_34, 22);
            StringTemplate_SetCountryName(v2, 0, v4);
            StringTemplate_Format(v2, v0, v1);
        }

        Strbuf_Free(v1);
        StringTemplate_Free(v2);
    }

    Text_AddPrinterWithParamsAndColor(v3, FONT_SYSTEM, v0, 0, 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 0), NULL);
    sub_0201A9A4(v3);
    Strbuf_Free(v0);
}

void ov62_022324A0(UnkStruct_ov62_02233310 *param0, UnkStruct_0208C06C *param1, const UnkStruct_ov62_02248CDC *param2)
{
    int v0;
    Window *v1;
    Strbuf *v2;

    v1 = &param0->unk_18;

    param0->unk_04 = param2->unk_04;
    param0->unk_00 = 0;
    param0->unk_0C = 0;
    param0->unk_10 = param2->unk_24;
    param0->unk_28 = param2;
    param0->unk_34 = param1->unk_14.unk_34;
    param0->unk_14 = (param0->unk_04 / param0->unk_10) + 1;

    if (param0->unk_04 < param0->unk_10) {
        param0->unk_10 = param0->unk_04;
        param0->unk_38.unk_08 = param0->unk_10 - 1;
        param0->unk_38.unk_0C = param0->unk_10 - 1;
    }

    Window_Init(v1);
    BGL_AddWindow(param1->unk_14.unk_10, v1, param2->unk_20, param2->unk_0C, param2->unk_10, param2->unk_14, param2->unk_18, 14, param2->unk_1C);
    BGL_FillWindow(v1, 0x0);

    for (v0 = 0; v0 < param0->unk_10; v0++) {
        v2 = MessageLoader_GetNewStrbuf(param0->unk_34, param2->unk_00[v0].unk_00);

        Text_AddPrinterWithParamsAndColor(v1, FONT_SYSTEM, v2, 0, (param2->unk_08 * 16) * v0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 0), NULL);
        Strbuf_Free(v2);

        if (param2->unk_00[v0].unk_00 == 16) {
            ov62_022323CC(param0, param1);
        }
    }

    sub_0201A9A4(v1);
}

void ov62_02232594(UnkStruct_ov62_02233310 *param0, UnkStruct_0208C06C *param1, MessageLoader *param2, const UnkStruct_ov62_02248CDC *param3)
{
    int v0;
    Window *v1;
    Strbuf *v2;

    v1 = &param0->unk_18;

    param0->unk_04 = param3->unk_04;
    param0->unk_00 = 0;
    param0->unk_0C = 0;
    param0->unk_10 = param3->unk_24;
    param0->unk_28 = param3;

    if (param2) {
        param0->unk_34 = param2;
    } else {
        param0->unk_34 = param1->unk_14.unk_34;
    }

    param0->unk_14 = (param0->unk_04 / param0->unk_10) + 1;
    param0->unk_38.unk_08 = param0->unk_10 / 2;
    param0->unk_38.unk_0C = param0->unk_10 / 2;

    if (param0->unk_04 < param0->unk_10) {
        param0->unk_10 = param0->unk_04;
        param0->unk_38.unk_08 = param0->unk_10 - 1;
        param0->unk_38.unk_0C = param0->unk_10 - 1;
    }

    Window_Init(v1);
    BGL_AddWindow(param1->unk_14.unk_10, v1, param3->unk_20, param3->unk_0C, param3->unk_10, param3->unk_14, param3->unk_18, 14, param3->unk_1C);
    BGL_FillWindow(v1, 0x0);

    if (param3->unk_00) {
        for (v0 = 0; v0 < param0->unk_10; v0++) {
            v2 = MessageLoader_GetNewStrbuf(param0->unk_34, param3->unk_00[v0].unk_00);
            Text_AddPrinterWithParamsAndColor(v1, FONT_SYSTEM, v2, 0, (param3->unk_08 * 16) * v0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 0), NULL);
            Strbuf_Free(v2);
        }
    } else {
        int v3;
        Strbuf *v4;
        Strbuf *v5;
        Strbuf *v6;
        int v7;

        for (v0 = 0; v0 < param0->unk_10; v0++) {
            v4 = Strbuf_Init(255, 102);
            v5 = Strbuf_Init(255, 102);
            v6 = MessageLoader_GetNewStrbuf(param1->unk_14.unk_34, 99);

            Strbuf_FormatInt(v5, (v0 + 1), 2, 1, 1);
            Strbuf_CopyChars(v4, param1->unk_8B4.unk_1D58[v0]->unk_00.unk_00);
            ov62_022349A8(param1, v4);

            v7 = Font_CalcStrbufWidth(FONT_SYSTEM, v5, 0);

            Text_AddPrinterWithParamsAndColor(v1, FONT_SYSTEM, v5, 16 - v7, 4 + (v0 * 24), TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 0), NULL);
            Text_AddPrinterWithParamsAndColor(v1, FONT_SYSTEM, v6, 16, 4 + (v0 * 24), TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 0), NULL);
            Text_AddPrinterWithParamsAndColor(v1, FONT_SYSTEM, v4, 22, 4 + (v0 * 24), TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 0), NULL);
            Strbuf_Free(v4);
            Strbuf_Free(v5);
            Strbuf_Free(v6);
        }
    }

    sub_0201A9A4(v1);
}

void ov62_02232778(UnkStruct_ov62_02233310 *param0, UnkStruct_0208C06C *param1, MessageLoader *param2, const UnkStruct_ov62_02248CDC *param3, int param4, int param5, Strbuf *param6)
{
    int v0;
    Window *v1;
    Strbuf *v2;
    Strbuf *v3;
    Strbuf *v4;
    Strbuf *v5;
    Strbuf *v6;
    StringTemplate *v7;
    int v8 = 0;
    u64 v9 = 0;
    int v10[30] = { 0 };
    Strbuf *v11;

    v1 = &param0->unk_18;

    param0->unk_04 = param3->unk_04;
    param0->unk_00 = 0;

    param0->unk_0C = 0;
    param0->unk_10 = param3->unk_24;
    param0->unk_28 = param3;
    if (param2) {
        param0->unk_34 = param2;
    } else {
        param0->unk_34 = param1->unk_14.unk_34;
    }

    param0->unk_14 = (param0->unk_04 / param0->unk_10) + 1;
    if (param0->unk_04 < param0->unk_10) {
        param0->unk_10 = param0->unk_04;
        param0->unk_38.unk_08 = param0->unk_10 - 1;
        param0->unk_38.unk_0C = param0->unk_10 - 1;
    }

    param0->unk_38.unk_08 = param0->unk_10 / 2;
    param0->unk_38.unk_0C = param0->unk_10 / 2;

    Window_Init(v1);
    BGL_AddWindow(param1->unk_14.unk_10, v1, param3->unk_20, param3->unk_0C, param3->unk_10, param3->unk_14, param3->unk_18, 14, param3->unk_1C);
    BGL_FillWindow(v1, 0x00);

    v7 = ov62_02231690(102);

    u64 v12 = param0->unk_28->unk_00[0].unk_08;
    int v13[] = { 16, 12, 20 };

    v9 = v12;
    v10[0] = v8;

    for (v0 = 1; v0 < v13[param5]; v0++) {
        u64 v14 = param0->unk_28->unk_00[v0].unk_08;

        if (v14 == v9) {
            v10[v0] = v8;
        } else {
            v9 = v14;
            v10[v0] = v0;
            v8 = v0;
        }
    }

    for (v0 = 0; v0 < param0->unk_10; v0++) {
        v3 = MessageLoader_GetNewStrbuf(param1->unk_14.unk_34, 88 + param5);

        v4 = Strbuf_Init(255, 102);
        v6 = Strbuf_Init(255, 102);
        v11 = Strbuf_Init(255, 102);

        switch (param5) {
        case 0:
            int v15 = param0->unk_28->unk_00[v0].unk_04;
            v5 = MessageLoader_GetNewStrbuf(param0->unk_34, v15);
            StringTemplate_SetStrbuf(v7, 1, v5, 0, 1, 2);
            break;
        case 1:
            int v16 = param0->unk_28->unk_00[v0].unk_04;
            v5 = Strbuf_Init(255, 102);
            StringTemplate_SetMonthName(v7, 1, v16);
            break;
        case 2:
            u16 v17[255];
            int v18 = param0->unk_28->unk_00[v0].unk_04;
            v5 = Strbuf_Init(255, 102);
            MessageLoader_GetSpeciesName(v18, 102, v17);
            Strbuf_CopyChars(v5, v17);
            StringTemplate_SetStrbuf(v7, 1, v5, 0, 1, 2);
            break;
        }

        u64 v19 = param0->unk_28->unk_00[v0].unk_08;

        Strbuf_FormatU64(v11, v19, ov62_0223438C(v19), 0, 1);

        Strbuf_FormatInt(v4, v10[v0] + 1, 2, 1, 1);
        StringTemplate_SetStrbuf(v7, 0, v4, 0, 1, 2);
        StringTemplate_Format(v7, v6, v3);

        Text_AddPrinterWithParamsAndColor(v1, FONT_SYSTEM, v6, 0, v0 * (16 * param0->unk_28->unk_08), TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 0), NULL);
        if (param0->unk_28->unk_08 == 2) {
            if (param6) {
                StringTemplate_SetStrbuf(v7, 2, v11, 0, 1, 2);
                StringTemplate_Format(v7, v6, param6);
                Text_AddPrinterWithParamsAndColor(v1, FONT_SYSTEM, v6, 16, (v0 * (16 * param0->unk_28->unk_08)) + 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 0), NULL);
            }
        }

        Strbuf_Free(v3);
        Strbuf_Free(v4);
        Strbuf_Free(v5);
        Strbuf_Free(v6);

        Strbuf_Free(v11);

        StringTemplate_ClearArgs(v7);
    }

    sub_0201A9A4(v1);
    StringTemplate_Free(v7);
}

void ov62_02232AAC(UnkStruct_ov62_02233310 *param0, UnkStruct_0208C06C *param1, const UnkStruct_ov62_02248CDC *param2, Strbuf *param3[20][2])
{
    int v0;
    Window *v1;

    v1 = &param0->unk_18;

    param0->unk_04 = param2->unk_04;
    param0->unk_00 = 0;
    param0->unk_0C = 0;
    param0->unk_10 = param2->unk_24;
    param0->unk_28 = param2;
    param0->unk_34 = param1->unk_14.unk_34;
    param0->unk_14 = (param0->unk_04 / param0->unk_10) + 1;
    param0->unk_38.unk_08 = param0->unk_10 / 2;
    param0->unk_38.unk_0C = param0->unk_10 / 2;

    if (param0->unk_04 < param0->unk_10) {
        param0->unk_10 = param0->unk_04;
        param0->unk_38.unk_08 = param0->unk_10 - 1;
        param0->unk_38.unk_0C = param0->unk_10 - 1;
    }

    param0->unk_48 = 1;

    Window_Init(v1);
    BGL_AddWindow(param1->unk_14.unk_10, v1, param2->unk_20, param2->unk_0C, param2->unk_10, param2->unk_14, param2->unk_18, 14, param2->unk_1C);
    BGL_FillWindow(v1, 0x0);

    for (v0 = 0; v0 < param0->unk_10; v0++) {
        Text_AddPrinterWithParamsAndColor(v1, FONT_SYSTEM, param3[v0][0], 0, ((param2->unk_08 * 8) * v0) + 4, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 0), NULL);
        Text_AddPrinterWithParamsAndColor(v1, FONT_SYSTEM, param3[v0][1], 136, ((param2->unk_08 * 8) * v0) + 4, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 0), NULL);
    }

    sub_0201A9A4(v1);
}

int ov62_02232BB4(UnkStruct_ov62_02233310 *param0, UnkStruct_0208C06C *param1, Strbuf *param2[20][2])
{
    int v0;
    int v1 = 0;
    Window *v2;

    if (param0->unk_38.unk_00 == param0->unk_0C) {
        return v1;
    }
    if (param0->unk_10 == param0->unk_04) {
        return v1;
    }

    v2 = &param0->unk_18;

    BGL_FillWindow(v2, 0x0);
    {
        int v3;
        int v4 = 0;
        int v5;

        if (param0->unk_38.unk_04 >= param0->unk_38.unk_08) {
            v4 = param0->unk_38.unk_00 - param0->unk_38.unk_08;
            if (param0->unk_38.unk_00 >= (param0->unk_04 - (param0->unk_38.unk_08 + 1))) {
                v4 = param0->unk_04 - param0->unk_10;
            }
        }

        for (v3 = 0; v3 < param0->unk_10; v3++) {
            if (param2[v4 + v3][0] == NULL) {
                continue;
            }

            Text_AddPrinterWithParamsAndColor(v2, FONT_SYSTEM, param2[v4 + v3][0], 0, ((param0->unk_28->unk_08 * 8) * v3) + 4, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 0), NULL);
            Text_AddPrinterWithParamsAndColor(v2, FONT_SYSTEM, param2[v4 + v3][1], 136, ((param0->unk_28->unk_08 * 8) * v3) + 4, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 0), NULL);
        }
    }
    sub_0201A954(v2);

    param0->unk_0C = param0->unk_38.unk_00;

    return v1;
}

const int Unk_ov62_02248904[] = {
    0x10,
    0xC,
    0x14
};

// clang-format off
asm int ov62_02232C78 (UnkStruct_ov62_02233310 * param0, UnkStruct_0208C06C * param1, int param2, int param3, Strbuf *param4)
{
    push {r4, r5, r6, r7, lr}
    sub sp, #0x1fc
    sub sp, #0xe8
    add r4, r0, #0
    ldr r0, [sp, #0x2f8]
    str r1, [sp, #0x10]
    str r0, [sp, #0x2f8]
    mov r0, #8
    ldrsh r1, [r4, r0]
    ldr r0, [r4, #0xc]
    str r3, [sp, #0x14]
    cmp r1, r0
    bne _02232C9A
    add sp, #0x1fc
    add sp, #0xe8
    mov r0, #0
    pop {r4, r5, r6, r7, pc}
 _02232C9A:
    ldr r1, [r4, #0x10]
    ldr r0, [r4, #4]
    cmp r1, r0
    bne _02232CAA
    add sp, #0x1fc
    add sp, #0xe8
    mov r0, #0
    pop {r4, r5, r6, r7, pc}
 _02232CAA:
    add r0, r4, #0
    str r0, [sp, #0x58]
    add r0, #0x18
    str r0, [sp, #0x58]
    mov r0, #0x66
    bl ov62_02231690
    add r5, r0, #0
    ldr r0, [sp, #0x58]
    mov r1, #0
    bl BGL_FillWindow
    mov r0, #0
    str r0, [sp, #0x44]
    str r0, [sp, #0x40]
    mov r0, #8
    ldrsh r0, [r4, r0]
    ldr r1, [r4, #0x10]
    add r3, sp, #0x26c
    str r0, [sp, #0x18]
    add r0, r0, r1
    str r0, [sp, #0x34]
    ldr r0, [sp, #0x44]
    mov r2, #7
    add r1, r0, #0
 _02232CDC:
    stmia r3 !, {r0, r1}
    stmia r3 !, {r0, r1}
    sub r2, r2, #1
    bne _02232CDC
    stmia r3 !, {r0, r1}
    ldr r1, [r4, #4]
    ldr r0, [sp, #0x34]
    cmp r0, r1
    blt _02232CF6
    ldr r0, [r4, #0x10]
    str r1, [sp, #0x34]
    sub r0, r1, r0
    str r0, [sp, #0x18]
 _02232CF6:
    ldr r3, = Unk_ov62_02248904
    add r2, sp, #0x60
    ldmia r3 !, {r0, r1}
    add r7, r2, #0
    stmia r2 !, {r0, r1}
    ldr r0, [r3, #0]
    mov r6, #1
    str r0, [r2, #0]
    ldr r0, [r4, #0x28]
    ldr r1, [r0, #0]
    ldr r0, [r1, #8]
    str r0, [sp, #0x38]
    ldr r0, [r1, #0xc]
    str r0, [sp, #0x3c]
    mov r0, #0
    str r0, [sp, #0x26c]
    ldr r0, [sp, #0x14]
    lsl r0, r0, #2
    ldr r1, [r7, r0]
    cmp r1, #1
    ble _02232D5C
    add r0, r1, #0
    mov r2, #0x10
    add r3, sp, #0x270
    mov ip, r0
 _02232D28:
    ldr r0, [r4, #0x28]
    ldr r0, [r0, #0]
    add r0, r0, r2
    ldr r1, [r0, #0xc]
    ldr r7, [r0, #8]
    ldr r0, [sp, #0x3c]
    str r1, [sp, #0x5c]
    eor r1, r0
    ldr r0, [sp, #0x38]
    eor r0, r7
    orr r0, r1
    bne _02232D46
    ldr r0, [sp, #0x40]
    str r0, [r3, #0]
    b _02232D50
 _02232D46:
    ldr r0, [sp, #0x5c]
    str r7, [sp, #0x38]
    str r0, [sp, #0x3c]
    str r6, [r3, #0]
    str r6, [sp, #0x40]
 _02232D50:
    add r6, r6, #1
    mov r0, ip
    add r2, #0x10
    add r3, r3, #4
    cmp r6, r0
    blt _02232D28
 _02232D5C:
    ldr r1, [sp, #0x18]
    ldr r0, [sp, #0x34]
    cmp r1, r0
    blt _02232D66
    b _02232F46
 _02232D66:
    add r0, r1, #0
    lsl r6, r0, #4
    add r1, sp, #0x26c
    lsl r0, r0, #2
    add r0, r1, r0
    str r0, [sp, #0x20]
    ldr r0, [sp, #0x14]
    str r0, [sp, #0x1c]
    add r0, #0x58
    str r0, [sp, #0x1c]
 _02232D7A:
    ldr r0, [sp, #0x10]
    ldr r1, [sp, #0x1c]
    ldr r0, [r0, #0x48]
    bl MessageLoader_GetNewStrbuf
    str r0, [sp, #0x54]
    mov r0, #0xff
    mov r1, #0x66
    bl Strbuf_Init
    str r0, [sp, #0x50]
    mov r0, #0xff
    mov r1, #0x66
    bl Strbuf_Init
    add r7, r0, #0
    mov r0, #0xff
    mov r1, #0x66
    bl Strbuf_Init
    str r0, [sp, #0x48]
    ldr r0, [sp, #0x14]
    cmp r0, #0
    beq _02232DB4
    cmp r0, #1
    beq _02232DDA
    cmp r0, #2
    beq _02232DFA
    b _02232E34
 _02232DB4:
    ldr r1, [r4, #0x28]
    ldr r0, [r4, #0x34]
    ldr r1, [r1, #0]
    add r1, r1, r6
    ldr r1, [r1, #4]
    bl MessageLoader_GetNewStrbuf
    str r0, [sp, #0x4c]
    mov r0, #1
    str r0, [sp]
    mov r0, #2
    str r0, [sp, #4]
    ldr r2, [sp, #0x4c]
    add r0, r5, #0
    mov r1, #1
    mov r3, #0
    bl StringTemplate_SetStrbuf
    b _02232E34
 _02232DDA:
    ldr r0, [r4, #0x28]
    mov r1, #0x66
    ldr r0, [r0, #0]
    add r0, r0, r6
    ldr r0, [r0, #4]
    str r0, [sp, #0x30]
    mov r0, #0xff
    bl Strbuf_Init
    str r0, [sp, #0x4c]
    ldr r2, [sp, #0x30]
    add r0, r5, #0
    mov r1, #1
    bl StringTemplate_SetMonthName
    b _02232E34
 _02232DFA:
    ldr r0, [r4, #0x28]
    mov r1, #0x66
    ldr r0, [r0, #0]
    add r0, r0, r6
    ldr r0, [r0, #4]
    str r0, [sp, #0x2c]
    mov r0, #0xff
    bl Strbuf_Init
    str r0, [sp, #0x4c]
    ldr r0, [sp, #0x2c]
    mov r1, #0x66
    add r2, sp, #0x6c
    bl MessageLoader_GetSpeciesName
    ldr r0, [sp, #0x4c]
    add r1, sp, #0x6c
    bl Strbuf_CopyChars
    mov r0, #1
    str r0, [sp]
    mov r0, #2
    str r0, [sp, #4]
    ldr r2, [sp, #0x4c]
    add r0, r5, #0
    mov r1, #1
    mov r3, #0
    bl StringTemplate_SetStrbuf
 _02232E34:
    ldr r0, [r4, #0x28]
    ldr r0, [r0, #0]
    add r1, r0, r6
    ldr r0, [r1, #8]
    str r0, [sp, #0x24]
    ldr r0, [r1, #0xc]
    str r0, [sp, #0x28]
    ldr r0, [sp, #0x24]
    ldr r1, [sp, #0x28]
    bl ov62_0223438C
    add r3, r0, #0
    mov r0, #0
    str r0, [sp]
    mov r0, #1
    str r0, [sp, #4]
    ldr r0, [sp, #0x48]
    ldr r1, [sp, #0x24]
    ldr r2, [sp, #0x28]
    bl Strbuf_FormatU64
    mov r0, #1
    str r0, [sp]
    ldr r1, [sp, #0x20]
    ldr r0, [sp, #0x50]
    ldr r1, [r1, #0]
    mov r2, #2
    add r1, r1, #1
    mov r3, #1
    bl Strbuf_FormatInt
    mov r0, #1
    str r0, [sp]
    mov r0, #2
    mov r1, #0
    str r0, [sp, #4]
    ldr r2, [sp, #0x50]
    add r0, r5, #0
    add r3, r1, #0
    bl StringTemplate_SetStrbuf
    ldr r2, [sp, #0x54]
    add r0, r5, #0
    add r1, r7, #0
    bl StringTemplate_Format
    ldr r0, [r4, #0x28]
    add r2, r7, #0
    ldr r0, [r0, #8]
    lsl r1, r0, #4
    ldr r0, [sp, #0x44]
    mul r1, r0
    str r1, [sp]
    mov r0, #0xff
    str r0, [sp, #4]
    ldr r0, = 0xF0D00
              mov r1, #0
    str r0, [sp, #8]
    mov r0, #0
    str r0, [sp, #0xc]
    ldr r0, [sp, #0x58]
    add r3, r1, #0
    bl Text_AddPrinterWithParamsAndColor
    ldr r0, [r4, #0x28]
    ldr r0, [r0, #8]
    cmp r0, #2
    bne _02232F06
    ldr r0, [sp, #0x2f8]
    cmp r0, #0
    beq _02232F06
    mov r0, #1
    str r0, [sp]
    mov r0, #2
    str r0, [sp, #4]
    ldr r2, [sp, #0x48]
    add r0, r5, #0
    mov r1, #2
    mov r3, #0
    bl StringTemplate_SetStrbuf
    ldr r2, [sp, #0x2f8]
    add r0, r5, #0
    add r1, r7, #0
    bl StringTemplate_Format
    ldr r0, [r4, #0x28]
    add r2, r7, #0
    ldr r0, [r0, #8]
    mov r3, #0x10
    lsl r1, r0, #4
    ldr r0, [sp, #0x44]
    mul r1, r0
    add r1, #0x10
    str r1, [sp]
    mov r0, #0xff
    str r0, [sp, #4]
    ldr r0, = 0xF0D00
              mov r1, #0
    str r0, [sp, #8]
    mov r0, #0
    str r0, [sp, #0xc]
    ldr r0, [sp, #0x58]
    bl Text_AddPrinterWithParamsAndColor
 _02232F06:
    ldr r0, [sp, #0x44]
    add r0, r0, #1
    str r0, [sp, #0x44]
    ldr r0, [sp, #0x54]
    bl Strbuf_Free
    ldr r0, [sp, #0x50]
    bl Strbuf_Free
    ldr r0, [sp, #0x4c]
    bl Strbuf_Free
    add r0, r7, #0
    bl Strbuf_Free
    ldr r0, [sp, #0x48]
    bl Strbuf_Free
    add r0, r5, #0
    bl StringTemplate_ClearArgs
    ldr r0, [sp, #0x20]
    add r6, #0x10
    add r0, r0, #4
    str r0, [sp, #0x20]
    ldr r0, [sp, #0x18]
    add r1, r0, #1
    ldr r0, [sp, #0x34]
    str r1, [sp, #0x18]
    cmp r1, r0
    bge _02232F46
    b _02232D7A
 _02232F46:
    ldr r0, [sp, #0x58]
    bl sub_0201A9A4
    add r0, r5, #0
    bl StringTemplate_Free
    mov r0, #8
    ldrsh r0, [r4, r0]
    str r0, [r4, #0xc]
    mov r0, #0
    add sp, #0x1fc
    add sp, #0xe8
    pop {r4, r5, r6, r7, pc}
}
// clang-format on

int ov62_02232F68(UnkStruct_ov62_02233310 *param0, UnkStruct_0208C06C *param1)
{
    int v0;
    int v1 = 0;
    Window *v2;
    Strbuf *v3;

    if (param0->unk_28->unk_28 != NULL) {
        for (v0 = 0; v0 < param0->unk_10; v0++) {
            if (TouchScreen_LocationPressed(&param0->unk_28->unk_28[v0])) {
                ov62_02234520(param1);
                v1 = param0->unk_28->unk_00[param0->unk_08 + v0].unk_04;
            }
        }
    }

    if (param0->unk_08 == param0->unk_0C) {
        return v1;
    }

    if (param0->unk_10 == param0->unk_04) {
        return v1;
    }

    v2 = &param0->unk_18;

    BGL_FillWindow(v2, 0x0);

    {
        int v4 = 0;
        int v5 = param0->unk_08;
        int v6 = v5 + param0->unk_10;

        if (v6 >= param0->unk_04) {
            v5 = param0->unk_04 - param0->unk_10;
            v6 = param0->unk_04;
        }

        for (v0 = v5; v0 < v6; v0++) {
            v3 = MessageLoader_GetNewStrbuf(param0->unk_34, param0->unk_28->unk_00[v0].unk_00);
            Text_AddPrinterWithParamsAndColor(v2, FONT_SYSTEM, v3, 0, (param0->unk_28->unk_08 * 16) * v4, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 0), NULL);
            Strbuf_Free(v3);
            v4++;
        }
    }

    sub_0201A954(v2);
    param0->unk_0C = param0->unk_08;

    return v1;
}

int ov62_02233064(UnkStruct_ov62_02233310 *param0, UnkStruct_0208C06C *param1)
{
    int v0;
    int v1 = 0;
    Window *v2;
    Strbuf *v3;

    if (param0->unk_38.unk_00 == param0->unk_0C) {
        return v1;
    }

    if (param0->unk_10 == param0->unk_04) {
        return v1;
    }

    v2 = &param0->unk_18;
    BGL_FillWindow(v2, 0x0);

    {
        int v4;
        int v5 = 0;
        int v6;
        Strbuf *v7;
        Strbuf *v8;
        Strbuf *v9;
        int v10;
        int v11;

        if (param0->unk_38.unk_04 >= param0->unk_38.unk_08) {
            v5 = param0->unk_38.unk_00 - param0->unk_38.unk_08;

            if (param0->unk_38.unk_00 >= (param0->unk_04 - (param0->unk_38.unk_08 + 1))) {
                v5 = param0->unk_04 - param0->unk_10;
            }
        }

        for (v4 = 0; v4 < param0->unk_10; v4++) {
            v7 = Strbuf_Init(255, 102);
            v8 = Strbuf_Init(255, 102);
            v9 = MessageLoader_GetNewStrbuf(param1->unk_14.unk_34, 99);

            Strbuf_FormatInt(v8, (v5 + v4 + 1), 2, 1, 1);
            Strbuf_CopyChars(v7, param1->unk_8B4.unk_1D58[v5 + v4]->unk_00.unk_00);
            ov62_022349A8(param1, v7);

            v10 = Font_CalcStrbufWidth(FONT_SYSTEM, v8, 0);

            Text_AddPrinterWithParamsAndColor(v2, FONT_SYSTEM, v8, 16 - v10, 4 + (v4 * 24), TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 0), NULL);
            Text_AddPrinterWithParamsAndColor(v2, FONT_SYSTEM, v9, 16, 4 + (v4 * 24), TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 0), NULL);
            Text_AddPrinterWithParamsAndColor(v2, FONT_SYSTEM, v7, 22, 4 + (v4 * 24), TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 0), NULL);
            Strbuf_Free(v7);
            Strbuf_Free(v8);
            Strbuf_Free(v9);
        }
    }

    sub_0201A954(v2);
    param0->unk_0C = param0->unk_38.unk_00;

    return v1;
}

void ov62_022331C8(UnkStruct_ov62_02233310 *param0, s16 param1)
{
    s16 v0 = 0;
    int v1 = 0xFF;

    if (param1 < 0) {
        if (param0->unk_38.unk_00 > 0) {
            param0->unk_38.unk_00--;
            v1 = 0;
            Sound_PlayEffect(1370);
        }
    } else if (param1 > 0) {
        if (param0->unk_38.unk_00 < param0->unk_04 - 1) {
            param0->unk_38.unk_00++;
            v1 = 1;
            Sound_PlayEffect(1370);
        }
    }

    switch (v1) {
    case 0:
        if (param0->unk_38.unk_00 < param0->unk_38.unk_0C) {
            v0 = param0->unk_38.unk_00;
        } else if (param0->unk_38.unk_00 >= (param0->unk_04 - param0->unk_38.unk_0C)) {
            v0 = param0->unk_38.unk_0C + 1;

            if (param0->unk_38.unk_00 >= (param0->unk_04 - param0->unk_38.unk_0C)) {
                v0 += (param0->unk_38.unk_00 - (param0->unk_04 - param0->unk_38.unk_0C));
            }
        } else {
            v0 = param0->unk_38.unk_0C;

            if (param0->unk_38.unk_00 <= param0->unk_38.unk_0C) {
                v0 += (param0->unk_38.unk_00 - param0->unk_38.unk_0C);
            }
        }
        break;
    case 1:
        if (param0->unk_38.unk_00 <= param0->unk_38.unk_08) {
            v0 = param0->unk_38.unk_00;
        } else {
            v0 = param0->unk_38.unk_08;
            if (param0->unk_38.unk_00 >= (param0->unk_04 - param0->unk_38.unk_08)) {
                v0 += (param0->unk_38.unk_00 - (param0->unk_04 - param0->unk_38.unk_08 - 1));
            }
        }
        break;
    }

    if (v0 < 0) {
        GF_ASSERT(0);
    }

    if (v1 != 0xFF) {
        param0->unk_38.unk_04 = v0;
    }

    {
        s16 v2 = 0;

        if (param0->unk_38.unk_04 >= param0->unk_38.unk_08) {
            v2 = param0->unk_38.unk_00 - param0->unk_38.unk_08;

            if (param0->unk_38.unk_00 >= (param0->unk_04 - (param0->unk_38.unk_08 + 1))) {
                v2 = param0->unk_04 - param0->unk_10;
            }
        }

        param0->unk_08 = v2;
        ov62_0223349C(param0);
    }
}

void ov62_022332AC(UnkStruct_ov62_02233310 *param0, s16 param1)
{
    s16 v0 = param0->unk_08;

    param0->unk_08 += param1;

    if (param0->unk_08 < 0) {
        param0->unk_08 = 0;
    }

    if (param0->unk_10 == param0->unk_04) {
        param0->unk_08 = 0;
    }

    if (param0->unk_08 + param0->unk_10 > param0->unk_04) {
        param0->unk_08 = param0->unk_04 - param0->unk_10;
    }

    if (v0 != param0->unk_08) {
        Sound_PlayEffect(1370);
    }

    ov62_02233454(param0);
}

void ov62_022332FC(UnkStruct_ov62_02233310 *param0)
{
    sub_0201ACF4(&param0->unk_18);
    BGL_DeleteWindow(&param0->unk_18);
}

void ov62_02233310(UnkStruct_ov62_02233310 *param0)
{
    memset(param0, 0, sizeof(UnkStruct_ov62_02233310));
}

void ov62_0223331C(UnkStruct_ov62_02233310 *param0, UnkStruct_0208C06C *param1, int param2)
{
    CellActorData *v0;
    SpriteTemplate v1;
    NARC *v2 = param1->unk_14.unk_00;
    BGL *v3 = param1->unk_14.unk_10;
    SpriteRenderer *v4 = param1->unk_14.unk_04;
    SpriteGfxHandler *v5 = param1->unk_14.unk_08;
    PaletteData *v6 = param1->unk_14.unk_14;

    SpriteRenderer_LoadCharResObjFromOpenNarc(v4, v5, v2, 127, 0, param2, 200000);
    SpriteRenderer_LoadCellResObjFromOpenNarc(v4, v5, v2, 126, 0, 200000);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(v4, v5, v2, 125, 0, 200000);

    v1.x = 128;
    v1.y = 96;
    v1.z = 0;
    v1.animIdx = 0;
    v1.priority = 1;
    v1.plttIdx = 0;
    v1.vramType = param2;
    v1.bgPriority = 1;
    v1.transferToVRAM = FALSE;
    v1.resources[4] = SPRITE_RESOURCE_NONE;
    v1.resources[5] = SPRITE_RESOURCE_NONE;
    v1.resources[0] = 200000;
    v1.resources[2] = 200000;
    v1.resources[3] = 200000;

    if (param2 == NNS_G2D_VRAM_TYPE_2DMAIN) {
        v1.resources[1] = 9999;
    } else {
        v1.resources[1] = 10000;
    }

    param0->unk_2C[0] = SpriteActor_LoadResources(param1->unk_14.unk_04, param1->unk_14.unk_08, &v1);
    param0->unk_2C[1] = SpriteActor_LoadResources(param1->unk_14.unk_04, param1->unk_14.unk_08, &v1);

    sub_0200D41C(param0->unk_2C[0], 2);
    sub_0200D41C(param0->unk_2C[1], 2);
    sub_0200D364(param0->unk_2C[0], 0);
    sub_0200D364(param0->unk_2C[1], 0);
    sub_0200D330(param0->unk_2C[0]);
    sub_0200D330(param0->unk_2C[1]);
    sub_0200D7D4(param0->unk_2C[1], 2);

    if (param2 == 1) {
        SpriteActor_SetSpritePositionXY(param0->unk_2C[0], 256 / 2, 24);
        SpriteActor_SetSpritePositionXY(param0->unk_2C[1], 256 / 2, 120);
    } else {
        SpriteActor_SetSpritePositionXY(param0->unk_2C[0], 256 / 2, 24 + 64);
        SpriteActor_SetSpritePositionXY(param0->unk_2C[1], 256 / 2, 120 + 64);
    }

    ov62_02233454(param0);
}

void ov62_02233434(UnkStruct_ov62_02233310 *param0, s16 param1, s16 param2)
{
    SpriteActor_SetSpritePositionXY(param0->unk_2C[0], 256 / 2, param1);
    SpriteActor_SetSpritePositionXY(param0->unk_2C[1], 256 / 2, param2);
}

void ov62_02233454(UnkStruct_ov62_02233310 *param0)
{
    SpriteActor_EnableObject(param0->unk_2C[0], 1);
    SpriteActor_EnableObject(param0->unk_2C[1], 1);

    if (param0->unk_08 == 0) {
        SpriteActor_EnableObject(param0->unk_2C[0], 0);
    }

    if (param0->unk_08 + param0->unk_10 >= param0->unk_04) {
        SpriteActor_EnableObject(param0->unk_2C[1], 0);
    }

    sub_0200D33C(param0->unk_2C[0]);
    sub_0200D33C(param0->unk_2C[1]);
}

void ov62_0223349C(UnkStruct_ov62_02233310 *param0)
{
    SpriteActor_EnableObject(param0->unk_2C[0], 1);
    SpriteActor_EnableObject(param0->unk_2C[1], 1);

    if (param0->unk_08 == 0) {
        SpriteActor_EnableObject(param0->unk_2C[0], 0);
    }

    if (param0->unk_08 + param0->unk_10 >= param0->unk_04) {
        SpriteActor_EnableObject(param0->unk_2C[1], 0);
    }

    if (param0->unk_10 >= param0->unk_04) {
        SpriteActor_EnableObject(param0->unk_2C[0], 0);
        SpriteActor_EnableObject(param0->unk_2C[1], 0);
    }

    sub_0200D33C(param0->unk_2C[0]);
    sub_0200D33C(param0->unk_2C[1]);
}

void ov62_022334FC(UnkStruct_ov62_02233310 *param0, UnkStruct_0208C06C *param1)
{
    SpriteGfxHandler_UnloadCharObjById(param1->unk_14.unk_08, 200000);
    SpriteGfxHandler_UnloadCellObjById(param1->unk_14.unk_08, 200000);
    SpriteGfxHandler_UnloadAnimObjById(param1->unk_14.unk_08, 200000);
    sub_0200D0F4(param0->unk_2C[0]);
    sub_0200D0F4(param0->unk_2C[1]);
}

static CellActorData *ov62_0223352C(UnkStruct_ov62_0223359C *param0, UnkStruct_0208C06C *param1, int param2, int param3)
{
    CellActorData *v0;
    SpriteTemplate v1;

    v1.x = 128;
    v1.y = 96;
    v1.z = 0;
    v1.animIdx = 0;
    v1.priority = 1;
    v1.plttIdx = 0;
    v1.vramType = param2;
    v1.bgPriority = 1;
    v1.transferToVRAM = FALSE;
    v1.resources[4] = SPRITE_RESOURCE_NONE;
    v1.resources[5] = SPRITE_RESOURCE_NONE;
    v1.resources[0] = 11924;
    v1.resources[2] = 11924;
    v1.resources[3] = 11924;

    if (param2 == NNS_G2D_VRAM_TYPE_2DMAIN) {
        v1.resources[1] = 9999;
    } else {
        v1.resources[1] = 10000;
    }

    v0 = SpriteActor_LoadResources(param1->unk_14.unk_04, param1->unk_14.unk_08, &v1);
    sub_0200D41C(v0, 2);
    sub_0200D364(v0, param3);
    sub_0200D330(v0);

    return v0;
}

static void ov62_0223359C(UnkStruct_ov62_0223359C *param0)
{
    sub_0200D0F4(param0->unk_18[0]);
    sub_0200D0F4(param0->unk_18[1]);
}

void ov62_022335B0(UnkStruct_ov62_0223359C *param0, UnkStruct_0208C06C *param1)
{
    ov62_022335BC(param0, param1, 5);
}

void ov62_022335BC(UnkStruct_ov62_0223359C *param0, UnkStruct_0208C06C *param1, int param2)
{
    param0->unk_18[0] = ov62_0223352C(param0, param1, 2, param2);
    param0->unk_18[1] = ov62_0223352C(param0, param1, 2, param2);

    SpriteActor_SetSpritePositionXY(param0->unk_18[0], 0 + 24, 72 + 64);
    SpriteActor_SetSpritePositionXY(param0->unk_18[1], 256 - 24, 72 + 64);
}

void ov62_022335F4(UnkStruct_ov62_0223359C *param0)
{
    memset(param0, 0, sizeof(UnkStruct_ov62_0223359C));
}

void ov62_02233600(UnkStruct_ov62_0223359C *param0)
{
    ov62_0223359C(param0);
}

void ov62_02233608(UnkStruct_ov62_0223359C *param0, u32 param1)
{
    s32 v0 = param1 - param0->unk_0C;

    if ((v0 * v0) >= (16 * 16)) {
        if (v0 < 0) {
            param0->unk_10 = -1;
        } else {
            param0->unk_10 = +1;
        }
        param0->unk_0C = param1;
    } else {
        param0->unk_10 = 0;
    }
}

static const TouchScreenHitTable Unk_ov62_022488F0[] = {
    { 0x8, 0x80, 0x8, 0x20 },
    { 0x8, 0x80, 0xE0, 0xF8 }
};

void ov62_02233638(UnkStruct_ov62_0223359C *param0, UnkStruct_ov62_02233310 *param1)
{
    if (param1->unk_48) {
        if (param1->unk_04 < 2) {
            param0->unk_14 = 0;
        } else {
            param0->unk_14 = 1;
        }
    } else {
        if (param1->unk_10 >= param1->unk_04) {
            param0->unk_14 = 0;
        } else {
            param0->unk_14 = 1;
        }
    }
}

void ov62_02233664(UnkStruct_ov62_0223359C *param0)
{
    u32 v0, v1;
    s16 v2;
    BOOL v3;
    BOOL v4 = 0;

    v3 = TouchScreen_GetHoldState(&v0, &v1);

    if (param0->unk_14) {
        sub_0200D33C(param0->unk_18[0]);
        sub_0200D33C(param0->unk_18[1]);
    }

    if ((param0->unk_04 == 0) && (v3 == 0)) {
        param0->unk_04 = 0;
        param0->unk_00 = 0;
        param0->unk_08 = 0;
        param0->unk_0C = 0;
        param0->unk_10 = 0;
        return;
    }

    if (TouchScreen_LocationHeld(&Unk_ov62_022488F0[0])
        || TouchScreen_LocationHeld(&Unk_ov62_022488F0[1])) {
        v4 = 1;
    }

    if (v4) {
        if (!param0->unk_04) {
            param0->unk_04 = 1;
            param0->unk_08 = v0;
            param0->unk_0C = v1;
            param0->unk_00 = 2;
        } else {
            param0->unk_00--;
            ov62_02233608(param0, v1);
        }
    } else {
        if (param0->unk_04) {
            param0->unk_04 = 0;
            param0->unk_00 = 0;
            param0->unk_08 = 0;
            param0->unk_0C = 0;
        }
    }
}

void ov62_02233704(UnkStruct_0208C06C *param0, u32 param1)
{
    GameRecords *v0;

    v0 = SaveData_GetGameRecordsPtr(param0->unk_830);
    GameRecords_IncrementTrainerScore(v0, param1);
}

void ov62_0223371C(UnkStruct_0208C06C *param0)
{
    int v0;

    sub_0202F1F8(param0->unk_830, 119, &v0);

    {
        UnkStruct_02030A80 *v1 = (UnkStruct_02030A80 *)(&param0->unk_8B4.unk_00->unk_00);
        UnkStruct_0202F41C *v2 = (UnkStruct_0202F41C *)(&param0->unk_8B4.unk_00->unk_80);
        UnkStruct_0202F298 *v3 = (UnkStruct_0202F298 *)(&param0->unk_8B4.unk_00->unk_E4);
        sub_0202FE20(v1, v2, v3, NULL, param0->unk_830);
    }
}

static void ov62_02233750(SysTask *param0, void *param1)
{
    UnkStruct_ov62_02233750 *v0 = param1;

    ov62_0222F824(v0->unk_00);
    sub_02039720();
    v0->unk_04 = 1;
    SysTask_Done(param0);
}

void ov62_0223376C(UnkStruct_0208C06C *param0, int param1)
{
    param0->unk_52C.unk_00 = param1;
    param0->unk_52C.unk_04 = 0;

    SysTask_ExecuteOnVBlank(ov62_02233750, &param0->unk_52C, 4);
}

BOOL ov62_02233790(UnkStruct_0208C06C *param0)
{
    return param0->unk_52C.unk_04;
}

static void ov62_02233798(SysTask *param0, void *param1)
{
    UnkStruct_0208C06C *v0 = param1;

    if (v0->unk_14.unk_08 == NULL) {
        return;
    }

    if (ov62_02234534(v0) == 1) {
        return;
    }

    if (v0->unk_14.unk_510 == 1) {
        return;
    }

    v0->unk_14.unk_510 = 1;

    sub_02008A94(v0->unk_14.unk_50);
    sub_0200C7EC(v0->unk_14.unk_08);
    sub_0200C800();

    v0->unk_14.unk_510 = 0;
}

void ov62_022337D4(UnkStruct_0208C06C *param0)
{
    param0->unk_41E8 = SysTask_ExecuteOnVBlank(ov62_02233798, param0, 5);
}

BOOL ov62_022337F0(UnkStruct_0208C06C *param0, int param1, u8 param2)
{
    int v0;

    v0 = ov62_02248598(param0->unk_830, param1, param2, &param0->unk_834, &param0->unk_836);

    if ((v0 == 0) || (v0 == 1)) {
        return 0;
    }

    return 1;
}

void ov62_0223381C(UnkStruct_0208C06C *param0, BOOL param1)
{
    param0->unk_874 = param1;
}

void ov62_02233828(void *param0, const UnkStruct_ov62_0223CAA4 *param1)
{
    UnkStruct_0208C06C *v0 = param0;
    UnkStruct_ov62_02233828 *v1 = &v0->unk_8B4;

    if (param1->unk_00 == 1) {
        (void)0;
    } else {
        v1->unk_3900 = ov61_0222BE20(ov62_0224112C(v0), v1->unk_1D58, 30);

        {
            int v2;

            for (v2 = 0; v2 < v1->unk_3900; v2++) {
                GF_ASSERT(v0->unk_8B4.unk_1D58[v2] != NULL);
                MI_CpuCopy8(v0->unk_8B4.unk_1D58[v2], &v0->unk_8B4.unk_1DD0[v2], sizeof(UnkStruct_ov61_0222BE20));
                v0->unk_8B4.unk_3904[v2] = v0->unk_8B4.unk_1D58[v2]->unk_80.unk_27;
            }
        }
    }
}

void ov62_022338A8(UnkStruct_0208C06C *param0)
{
    int v0;
    int v1;

    for (v0 = 0; v0 < 4; v0++) {
        sub_0202F298(param0->unk_830, 102, &v1, NULL, v0);

        switch (v1) {
        case 0:
            param0->unk_87C[v0] = NULL;
            param0->unk_88C[v0] = NULL;

            if (v0 == 0) {
                param0->unk_88C[v0] = sub_02030A80(102);
                sub_02030AA0(param0->unk_88C[v0], param0->unk_830);
            }
            break;
        case 2:
            param0->unk_87C[v0] = NULL;
            param0->unk_88C[v0] = NULL;

            if (v0 == 0) {
                param0->unk_88C[v0] = sub_02030A80(102);
                sub_02030AA0(param0->unk_88C[v0], param0->unk_830);
            }
            break;
        case 3:
            param0->unk_87C[v0] = NULL;
            param0->unk_88C[v0] = NULL;

            if (v0 == 0) {
                param0->unk_88C[v0] = sub_02030A80(102);
                sub_02030AA0(param0->unk_88C[v0], param0->unk_830);
            }
            break;
        case 1:
            param0->unk_87C[v0] = sub_0202FD88(102);

            if (v0 == 0) {
                param0->unk_88C[v0] = sub_02030A80(102);
                sub_02030AA0(param0->unk_88C[v0], param0->unk_830);
            } else {
                param0->unk_88C[v0] = sub_0202FDB8(102);
            }
            break;
        }
        if (sub_0202F250() == 1) {
            sub_0202F22C();
        }
    }
}

void ov62_022339A0(UnkStruct_0208C06C *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_87C[v0] != NULL) {
            Heap_FreeToHeap(param0->unk_87C[v0]);
            param0->unk_87C[v0] = NULL;
        }

        if (param0->unk_88C[v0] != NULL) {
            Heap_FreeToHeap(param0->unk_88C[v0]);
            param0->unk_88C[v0] = NULL;
        }
    }
}

void ov62_022339DC(UnkStruct_0208C06C *param0)
{
    SpriteRenderer *v0;
    SpriteGfxHandler *v1;
    PaletteData *v2;

    v0 = param0->unk_14.unk_04;
    v1 = param0->unk_14.unk_08;
    v2 = param0->unk_14.unk_14;

    sub_0200CD7C(v2, 2, v0, v1, 19, PokeIconPalettesFileIndex(), 0, 3, NNS_G2D_VRAM_TYPE_2DMAIN, 100000);
    sub_0200CE0C(v0, v1, 19, PokeIcon64KCellsFileIndex(), 0, 100000);
    sub_0200CE3C(v0, v1, 19, PokeIcon64KAnimationFileIndex(), 0, 100000);
}

void ov62_02233A44(UnkStruct_0208C06C *param0)
{
    SpriteGfxHandler_UnloadPlttObjById(param0->unk_14.unk_08, 100000);
    SpriteGfxHandler_UnloadCellObjById(param0->unk_14.unk_08, 100000);
    SpriteGfxHandler_UnloadAnimObjById(param0->unk_14.unk_08, 100000);
}

NARC *ov62_02233A68(int param0)
{
    NARC *v0;

    v0 = NARC_ctor(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, 102);
    return v0;
}

void ov62_02233A74(NARC *param0)
{
    NARC_dtor(param0);
}

CellActorData *ov62_02233A7C(UnkStruct_0208C06C *param0, NARC *param1, int param2, int param3, int param4, int param5)
{
    CellActorData *v0;
    SpriteRenderer *v1;
    SpriteGfxHandler *v2;
    PaletteData *v3;
    SpriteTemplate v4;
    int v5;

    v1 = param0->unk_14.unk_04;
    v2 = param0->unk_14.unk_08;
    v3 = param0->unk_14.unk_14;

    if (param3 == 0) {
        return NULL;
    }

    sub_0200D8E8(v1, v2, param1, PokeIconSpriteIndex(param3, param5, param4), 0, NNS_G2D_VRAM_TYPE_2DMAIN, 100000 + param2);

    v4.x = 0;
    v4.y = -48;
    v4.z = 0;
    v4.animIdx = 0;
    v4.priority = 0;
    v4.plttIdx = 0;
    v4.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v4.bgPriority = 0;
    v4.transferToVRAM = FALSE;
    v4.resources[0] = 100000 + param2;
    v4.resources[1] = 100000;
    v4.resources[2] = 100000;
    v4.resources[3] = 100000;
    v4.resources[4] = SPRITE_RESOURCE_NONE;
    v4.resources[5] = SPRITE_RESOURCE_NONE;

    v0 = SpriteActor_LoadResources(v1, v2, &v4);
    v5 = PokeIconPaletteIndex(param3, param4, param5);

    sub_0200D430(v0, 4 + v5);
    sub_0200D364(v0, 1);
    sub_0200D330(v0);

    return v0;
}

void ov62_02233B24(UnkStruct_0208C06C *param0, int param1, CellActorData *param2)
{
    int v0;

    if (param2 == NULL) {
        return;
    }

    SpriteGfxHandler_UnloadCharObjById(param0->unk_14.unk_08, 100000 + param1);
    sub_0200D0F4(param2);
}

void ov62_02233B40(UnkStruct_0208C06C *param0, int param1, CellActorData *param2)
{
    int v0;

    if (param2 == NULL) {
        return;
    }

    sub_0200D0F4(param2);
}

static void ov62_02233B50(UnkStruct_ov62_02233F74 *param0, UnkStruct_0208C06C *param1)
{
    int v0;
    int v1;
    Window *v2;
    Strbuf *v3;

    {
        s16 v4[][4] = {
            { 0x4, 0x4, 0x18, 0x2 },
            { 0x4, 0x6, 0x18, 0x4 },
            { 0x4, 0xB, 0x5, 0x2 },
            { 0x4, 0xD, 0x5, 0x2 },
            { 0x4, 0x15, 0x18, 0x2 }
        };

        int v5[] = {
            0x14, 0x14, 0x14, 0xA, 0x14, 0x14
        };

        v1 = 1;

        for (v0 = 0; v0 < 5; v0++) {
            if (v4[v0][0] == 0xFF) {
                break;
            }

            v2 = &param0->unk_3C[v0];
            v3 = MessageLoader_GetNewStrbuf(param1->unk_14.unk_34, v5[v0]);

            Window_Init(v2);
            BGL_AddWindow(param1->unk_14.unk_10, v2, 2, v4[v0][0], v4[v0][1], v4[v0][2], v4[v0][3], 14, v1);
            BGL_FillWindow(v2, 0x0);
            Text_AddPrinterWithParamsAndColor(v2, FONT_SYSTEM, v3, ov62_0223429C(v2, v3), 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 0), NULL);
            sub_0201A9A4(v2);

            v1 += (v4[v0][2] * v4[v0][3]);

            Strbuf_Free(v3);
        }
    }

    {
        Strbuf *v6;
        Strbuf *v7;
        Strbuf *v8;
        StringTemplate *v9;
        Window *v10;
        UnkStruct_02030A80 *v11;

        v11 = param0->unk_00;
        v9 = ov62_02231690(102);

        v10 = &param0->unk_3C[0];
        v6 = sub_02030B94(v11, 102);
        ov62_022349A8(param1, v6);
        v7 = MessageLoader_GetNewStrbuf(param1->unk_14.unk_34, 7);
        v8 = Strbuf_Init(255, 102);

        StringTemplate_SetStrbuf(v9, 0, v6, 0, 1, GAME_LANGUAGE);
        StringTemplate_Format(v9, v8, v7);
        BGL_FillWindow(v10, 0x0);
        Text_AddPrinterWithParamsAndColor(v10, FONT_SYSTEM, v8, ov62_0223429C(v10, v8), 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 0), NULL);
        sub_0201A9A4(v10);
        Strbuf_Free(v6);
        Strbuf_Free(v7);
        Strbuf_Free(v8);
        StringTemplate_ClearArgs(v9);

        {
            int v12 = sub_0202FE98(param0->unk_04, 3, 0);

            v10 = &param0->unk_3C[1];
            v8 = MessageLoader_GetNewStrbuf(param1->unk_14.unk_34, 132 + v12);

            BGL_FillWindow(v10, 0x0);
            Text_AddPrinterWithParamsAndColor(v10, FONT_SYSTEM, v8, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 0), NULL);
            sub_0201A9A4(v10);
            Strbuf_Free(v8);
            StringTemplate_ClearArgs(v9);
        }

        {
            int v13 = sub_0202FE98(param0->unk_04, 2, 0);

            if (v13 != 0) {
                v10 = &param0->unk_3C[2];
                v6 = Strbuf_Init(255, 102);
                v7 = MessageLoader_GetNewStrbuf(param1->unk_14.unk_34, 9);
                v8 = Strbuf_Init(255, 102);

                Strbuf_FormatInt(v6, v13, 4, 0, 1);
                StringTemplate_SetStrbuf(v9, 0, v6, 0, 1, GAME_LANGUAGE);
                StringTemplate_Format(v9, v8, v7);
                BGL_FillWindow(v10, 0x0);
                Text_AddPrinterWithParamsAndColor(v10, FONT_SYSTEM, v8, ov62_0223429C(v10, v8), 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 0), NULL);
                sub_0201A9A4(v10);
                Strbuf_Free(v6);
                Strbuf_Free(v7);
                Strbuf_Free(v8);
                StringTemplate_ClearArgs(v9);
            } else {
                v10 = &param0->unk_3C[3];
                BGL_FillWindow(v10, 0x0);
                sub_0201A9A4(v10);
            }
        }

        {
            u64 v14 = sub_0202FE98(param0->unk_04, 4, 0);
            u64 v15 = v14;
            u32 v16[3];
            Strbuf *v17 = Strbuf_Init(255, 102);
            Strbuf *v18 = Strbuf_Init(255, 102);
            Strbuf *v19 = Strbuf_Init(255, 102);

            v10 = &param0->unk_3C[4];
            v16[0] = v15 % 100000;
            v15 /= 100000;
            v16[1] = v15 % 100000;
            v15 /= 100000;
            v16[2] = v15;

            {
                int v20 = (v16[2] / 10) % 10;

                if ((v20 == 0) && (v14 != 0)) {
                    v7 = MessageLoader_GetNewStrbuf(param1->unk_14.unk_34, 12);
                } else {
                    v7 = MessageLoader_GetNewStrbuf(param1->unk_14.unk_34, 11);
                }
            }

            v8 = Strbuf_Init(255, 102);

            Strbuf_FormatInt(v17, v16[0], 5, 2, 1);
            Strbuf_FormatInt(v18, v16[1], 5, 2, 1);
            Strbuf_FormatInt(v19, v16[2], 2, 2, 1);
            StringTemplate_SetStrbuf(v9, 2, v17, 0, 1, GAME_LANGUAGE);
            StringTemplate_SetStrbuf(v9, 1, v18, 0, 1, GAME_LANGUAGE);
            StringTemplate_SetStrbuf(v9, 0, v19, 0, 1, GAME_LANGUAGE);
            StringTemplate_Format(v9, v8, v7);
            BGL_FillWindow(v10, 0x0);
            Text_AddPrinterWithParamsAndColor(v10, FONT_SYSTEM, v8, ov62_0223429C(v10, v8), 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 0), NULL);
            sub_0201A9A4(v10);
            Strbuf_Free(v17);
            Strbuf_Free(v18);
            Strbuf_Free(v19);
            Strbuf_Free(v7);
            Strbuf_Free(v8);
            StringTemplate_ClearArgs(v9);
        }

        StringTemplate_Free(v9);
    }
}

static void ov62_02233F74(UnkStruct_ov62_02233F74 *param0, UnkStruct_0208C06C *param1)
{
    int v0;

    for (v0 = 0; v0 < 5; v0++) {
        sub_0201ACF4(&param0->unk_3C[v0]);
        BGL_DeleteWindow(&param0->unk_3C[v0]);
    }
}

BOOL ov62_02233F94(UnkStruct_0202F41C *param0)
{
    int v0;
    BOOL v1 = 0;

    v0 = sub_0202FE98(param0, 3, 0);

    switch (v0) {
    case UnkEnum_0202F510_17:
    case UnkEnum_0202F510_20:
    case UnkEnum_0202F510_23:
    case UnkEnum_0202F510_26:
    case UnkEnum_0202F510_29:
    case UnkEnum_0202F510_32:
    case UnkEnum_0202F510_14:
        v1 = 1;
        break;
    default:
        v1 = 0;
        break;
    }

    return v1;
}

static BOOL ov62_02233FE0(UnkStruct_ov62_02233F74 *param0)
{
    return ov62_02233F94(param0->unk_04);
}

int ov62_02233FEC(UnkStruct_ov62_02233F74 *param0)
{
    if (ov62_02233FE0(param0) == 1) {
        return 81;
    }

    return 82;
}

static void ov62_02234000(UnkStruct_ov62_02233F74 *param0, UnkStruct_0208C06C *param1)
{
    int v0;
    int v1;
    int v2;
    int v3 = 0;
    SpriteTemplate v4;
    int v5;
    int v6;
    int v7[12];
    int v8[12];
    int v9;
    SpriteRenderer *v10;
    SpriteGfxHandler *v11;
    PaletteData *v12;
    s16 v13[][12][2] = {
        {
            { 11 * 8, 13 * 8 },
            { 14 * 8, 13 * 8 },
            { 17 * 8, 13 * 8 },
            { 20 * 8, 13 * 8 },
            { 23 * 8, 13 * 8 },
            { 26 * 8, 13 * 8 },
            { 3 * 8, 19 * 8 },
            { 6 * 8, 19 * 8 },
            { 9 * 8, 19 * 8 },
            { 12 * 8, 19 * 8 },
            { 15 * 8, 19 * 8 },
            { 18 * 8, 19 * 8 },
        },
        {
            { 3 * 8, 17 * 8 },
            { 6 * 8, 17 * 8 },
            { 9 * 8, 17 * 8 },
            { 5 * 8, 20 * 8 },
            { 8 * 8, 20 * 8 },
            { 11 * 8, 20 * 8 },
            { 18 * 8, 17 * 8 },
            { 21 * 8, 17 * 8 },
            { 24 * 8, 17 * 8 },
            { 20 * 8, 20 * 8 },
            { 23 * 8, 20 * 8 },
            { 26 * 8, 20 * 8 },
        },
    };

    v10 = param1->unk_14.unk_04;
    v11 = param1->unk_14.unk_08;
    v12 = param1->unk_14.unk_14;

    sub_0200CD7C(v12, 2, v10, v11, 19, PokeIconPalettesFileIndex(), 0, 3, NNS_G2D_VRAM_TYPE_2DMAIN, 100000);

    {
        int v14 = PokeIcon64KCellsFileIndex();
        sub_0200CE0C(v10, v11, 19, v14, 0, 100000);
    }

    {
        int v15 = PokeIcon64KAnimationFileIndex();
        sub_0200CE3C(v10, v11, 19, v15, 0, 100000);
    }

    {
        int v16 = 0;
        int v17 = 0;
        int v18 = 0;
        int v19 = 6;
        int v20 = 0;
        int v21 = v19;

        v9 = 0;

        if (ov62_02233FE0(param0) == 1) {
            v19 = 3;
            v21 = 3;
            v9 = 1;
        }

        do {
            for (v0 = v20; v0 < v21; v0++) {
                v7[v16] = 0xFF;
                v17 = sub_0202FE98(param0->unk_04, 0, v0);
                v18 = sub_0202FE98(param0->unk_04, 1, v0);

                if (v17 == 0) {
                    continue;
                }

                v7[v16] = v17;
                v8[v16] = v18;

                v16++;
            }

            for (v0 = v16; v0 < v21; v0++) {
                v7[v16] = 0;
                v8[v16] = 0;
                v16++;
            }

            v20 += v19;
            v21 += v19;
        } while (v21 <= 12);
    }

    for (v0 = 0; v0 < 12; v0++) {
        param0->unk_0C[v0] = NULL;
        v1 = v7[v0];

        if (v1 == 0) {
            continue;
        }

        v2 = v8[v0];
        v6 = PokeIconSpriteIndex(v1, 0, v2);

        sub_0200D888(v10, v11, 19, v6, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 100000 + v3);

        v4.x = v13[v9][v0][0] + 12 - 4;
        v4.y = v13[v9][v0][1] - 12;
        v4.z = 0;
        v4.animIdx = 0;
        v4.priority = 0;
        v4.plttIdx = 0;
        v4.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
        v4.bgPriority = 0;
        v4.transferToVRAM = FALSE;
        v4.resources[0] = 100000 + v3;
        v4.resources[1] = 100000;
        v4.resources[2] = 100000;
        v4.resources[3] = 100000;
        v4.resources[4] = SPRITE_RESOURCE_NONE;
        v4.resources[5] = SPRITE_RESOURCE_NONE;

        param0->unk_0C[v3] = SpriteActor_LoadResources(param1->unk_14.unk_04, param1->unk_14.unk_08, &v4);

        v5 = PokeIconPaletteIndex(v1, v2, 0);
        sub_0200D430(param0->unk_0C[v3], 4 + v5);
        sub_0200D364(param0->unk_0C[v3], 1);
        sub_0200D330(param0->unk_0C[v3]);
        sub_0200D474(param0->unk_0C[v3], 12 - v0);
        v3++;
    }
}

void ov62_02234214(UnkStruct_ov62_02233F74 *param0, UnkStruct_0208C06C *param1)
{
    ov62_02233B50(param0, param1);
    ov62_02234000(param0, param1);
}

void ov62_02234228(UnkStruct_ov62_02233F74 *param0, UnkStruct_0208C06C *param1)
{
    int v0;

    SpriteGfxHandler_UnloadPlttObjById(param1->unk_14.unk_08, 100000);
    SpriteGfxHandler_UnloadCellObjById(param1->unk_14.unk_08, 100000);
    SpriteGfxHandler_UnloadAnimObjById(param1->unk_14.unk_08, 100000);

    for (v0 = 0; v0 < 12; v0++) {
        if (param0->unk_0C[v0]) {
            SpriteGfxHandler_UnloadCharObjById(param1->unk_14.unk_08, 100000 + v0);
            sub_0200D0F4(param0->unk_0C[v0]);
            param0->unk_0C[v0] = NULL;
        }
    }

    ov62_02233F74(param0, param1);
}

void ov62_0223427C(UnkStruct_ov62_02233F74 *param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < 12; v0++) {
        if (param0->unk_0C[v0]) {
            SpriteActor_EnableObject(param0->unk_0C[v0], param1);
        }
    }
}

int ov62_0223429C(Window *param0, Strbuf *param1)
{
    int v0 = Font_CalcStrbufWidth(FONT_SYSTEM, param1, 0);
    int v1 = (sub_0201C294(param0) * 8 - v0) / 2;

    return v1;
}

void ov62_022342BC(UnkStruct_0208C06C *param0)
{
    param0->unk_834 = 0;
    param0->unk_836 = 0;
}

BOOL ov62_022342CC(UnkStruct_0208C06C *param0)
{
    MiscSaveBlock *v0 = SaveData_MiscSaveBlock(param0->unk_830);
    u32 v1, v2;
    u8 v3;

    MiscSaveBlock_ExtraSaveKey(v0, 2 + param0->unk_86C, &v1, &v2, &v3);
    MiscSaveBlock_SetExtraSaveKey(v0, 2 + param0->unk_86C, 0xffffffff, 0xffffffff, v3);

    return 1;
}

void ov62_02234314(void)
{
    BGL_SetPriority(0, 1);
    BGL_SetPriority(1, 3);
    BGL_SetPriority(2, 0);
    BGL_SetPriority(3, 1);
    BGL_SetPriority(4, 1);
    BGL_SetPriority(5, 3);
    BGL_SetPriority(6, 0);
    BGL_SetPriority(7, 1);
}

void ov62_02234358(UnkStruct_0208C06C *param0, UnkStruct_0208B878 *param1, s16 param2, s16 param3)
{
    if (param0->unk_14.unk_30 == 0) {
        sub_0208B9E0(param1, 1);
    }

    sub_0208B8B0(param1, 1);

    {
        sub_0208B948(param1, param2, param3);
        sub_0208B8B8(param1, param2, param3);
    }
}

int ov62_0223438C(u64 param0)
{
    int v0 = 1;
    u64 v1 = param0;

    while (v1 > 1) {
        v1 /= 10;
        v0++;
    }

    return v0;
}

void ov62_022343B8(UnkStruct_0208C06C *param0, int param1, int param2)
{
    sub_0200710C(param0->unk_14.unk_00, param1, param0->unk_14.unk_10, param2, 0, 0, 0, 102);
}

static void ov62_022343D8(SysTask *param0, void *param1)
{
    UnkStruct_0208C06C *v0 = param1;
    s16 v1;

    if ((++v0->unk_41D8.unk_04) >= 7) {
        SysTask_Done(param0);
        v0->unk_41D8.unk_04 = 0;
        v0->unk_41D8.unk_00 = 0;
        sub_0208BA54(v0->unk_41D8.unk_08);
        sub_0208BA08(v0->unk_41D8.unk_08, 0, 0);
        sub_0208B8B0(v0->unk_41D8.unk_08, 0);
        sub_0208B9E0(v0->unk_41D8.unk_08, 0);
        return;
    }

    v1 = (6 + (v0->unk_41D8.unk_04 * 2));
    sub_0208BA08(v0->unk_41D8.unk_08, v1, v1);
}

static void ov62_02234440(UnkStruct_0208C06C *param0)
{
    u32 v0, v1;
    s16 v2 = 0;

    if (param0->unk_41D8.unk_00 == 1) {
        if (param0->unk_41D8.unk_0C) {
            SysTask_Done(param0->unk_41D8.unk_0C);
        }

        param0->unk_41D8.unk_0C = NULL;
    }

    if (gCoreSys.unk_65 == 0) {
        param0->unk_41D8.unk_08 = param0->unk_6F4;
    } else {
        param0->unk_41D8.unk_08 = param0->unk_6F0;
    }

    param0->unk_41D8.unk_00 = 1;
    param0->unk_41D8.unk_04 = 0;

    TouchScreen_GetTapState(&v0, &v1);
    sub_0208BA30(param0->unk_41D8.unk_08);
    sub_0208B8B0(param0->unk_41D8.unk_08, 1);
    sub_0208B9E0(param0->unk_41D8.unk_08, 1);
    sub_0208B8B8(param0->unk_41D8.unk_08, v0, v1 + v2);
    sub_0208B948(param0->unk_41D8.unk_08, v0, v1 + v2);

    param0->unk_41D8.unk_0C = SysTask_Start(ov62_022343D8, param0, 4096);

    if (param0->unk_41D8.unk_0C != NULL) {
        ov62_022343D8(param0->unk_41D8.unk_0C, param0);
    } else {
        param0->unk_41D8.unk_00 = 0;
        sub_0208B9E0(param0->unk_41D8.unk_08, 0);
        GF_ASSERT(0);
    }
}

void ov62_02234520(UnkStruct_0208C06C *param0)
{
    ov62_02234440(param0);
    Sound_PlayEffect(1379);
}

BOOL ov62_02234534(UnkStruct_0208C06C *param0)
{
    return param0->unk_14.unk_514;
}

void ov62_02234540(UnkStruct_0208C06C *param0, BOOL param1)
{
    param0->unk_14.unk_514 = param1;
}

void ov62_0223454C(UnkStruct_0208C06C *param0, UnkStruct_ov62_022312B0 *param1, int param2, int param3, s16 param4, s16 param5, s16 param6, s16 param7, int param8, BOOL param9)
{
    param1->unk_08 = ov62_022313E0(param0, param2);

    ov62_0223118C(param1, &param0->unk_14, param2);
    ov62_0223124C(param1, &param0->unk_14, param3);
    SpriteActor_SetSpritePositionXY(param1->unk_08, param4, param5);
    sub_020128C4(param1->unk_0C, param6, param7);
    sub_020129D0(param1->unk_0C, param9);
    sub_0200D364(param1->unk_08, param8);
}

void ov62_022345A8(UnkStruct_ov62_022312B0 *param0)
{
    ov62_022312B0(param0);
    sub_0200D0F4(param0->unk_08);
}

int ov62_022345B8(UnkStruct_0208C06C *param0, int param1, int param2, int param3)
{
    param0->unk_14.unk_4F0.unk_00 = param0->unk_04;
    param0->unk_14.unk_4F0.unk_04 = param0->unk_08;
    param0->unk_14.unk_4F0.unk_08 = *param0->unk_10;
    param0->unk_14.unk_4F0.unk_18 = 1;

    {
        int v0 = 194;

        switch (param3) {
        case 0:
            switch (param2) {
            case 0:
                v0 = 244;
                break;
            case 1:
                v0 = 245;
                break;
            case 2:
                v0 = 246;
                break;
            case 3:
                v0 = 247;
                break;
            case 4:
                v0 = 248;
                break;
            case 5:
                v0 = 249;
                break;
            case 6:
                v0 = 250;
                break;
            case 7:
                v0 = 251;
                break;
            case 8:
                v0 = 252;
                break;
            case 9:
                v0 = 253;
                break;
            case 10:
                v0 = 254;
                break;
            case 11:
                v0 = 255;
                break;
            case 12:
                v0 = 256;
                break;
            case 13:
                v0 = 257;
                break;
            case 14:
                v0 = 258;
                break;
            default:
                GF_ASSERT(0);
                break;
            }
            break;
        case 1:
            switch (param2) {
            case 0:
                v0 = 259;
                break;
            case 1:
                v0 = 260;
                break;
            case 2:
                v0 = 261;
                break;
            case 3:
                v0 = 262;
                break;
            case 4:
                v0 = 263;
                break;
            case 5:
                v0 = 264;
                break;
            case 6:
                v0 = 265;
                break;
            case 7:
                v0 = 266;
                break;
            case 8:
                v0 = 267;
                break;
            case 9:
                v0 = 268;
                break;
            default:
                GF_ASSERT(0);
                break;
            }
            break;
        case 2: {
            switch (param1) {
            case 0:
                switch (param2) {
                case 0:
                    v0 = 194;
                    break;
                case 1:
                    v0 = 195;
                    break;
                case 2:
                    v0 = 196;
                    break;
                case 3:
                    v0 = 197;
                    break;
                case 4:
                    v0 = 198;
                    break;
                case 5:
                    v0 = 199;
                    break;
                default:
                    GF_ASSERT(0);
                    break;
                }
                break;
            case 1:
                switch (param2) {
                case 0:
                    v0 = 200;
                    break;
                case 1:
                    v0 = 201;
                    break;
                case 2:
                    v0 = 202;
                    break;
                case 3:
                    v0 = 203;
                    break;
                default:
                    GF_ASSERT(0);
                    break;
                }
                break;
            case 2:
                switch (param2) {
                case 0:
                    v0 = 204;
                    break;
                case 1:
                    v0 = 205;
                    break;
                case 2:
                    v0 = 206;
                    break;
                case 3:
                    v0 = 207;
                    break;
                case 4:
                    v0 = 208;
                    break;
                case 5:
                    v0 = 209;
                    break;
                case 6:
                    v0 = 210;
                    break;
                default:
                    GF_ASSERT(0);
                    break;
                }
                break;
            case 3:
                switch (param2) {
                case 0:
                    v0 = 211;
                    break;
                case 1:
                    v0 = 212;
                    break;
                case 2:
                    v0 = 213;
                    break;
                case 3:
                    v0 = 214;
                    break;
                default:
                    GF_ASSERT(0);
                    break;
                }
                break;
            case 4:
                switch (param2) {
                case 0:
                    v0 = 215;
                    break;
                case 1:
                    v0 = 216;
                    break;
                case 2:
                    v0 = 217;
                    break;
                default:
                    GF_ASSERT(0);
                    break;
                }
                break;
            case 5:
                switch (param2) {
                case 0:
                    v0 = 218;
                    break;
                case 1:
                    v0 = 219;
                    break;
                case 2:
                    v0 = 220;
                    break;
                case 3:
                    v0 = 221;
                    break;
                case 4:
                    v0 = 222;
                    break;
                case 5:
                    v0 = 223;
                    break;
                default:
                    GF_ASSERT(0);
                    break;
                }
                break;
            case 6:
                switch (param2) {
                case 0:
                    v0 = 224;
                    break;
                case 1:
                    v0 = 225;
                    break;
                case 2:
                    v0 = 226;
                    break;
                case 3:
                    v0 = 227;
                    break;
                case 4:
                    v0 = 228;
                    break;
                case 5:
                    v0 = 229;
                    break;
                case 6:
                    v0 = 230;
                    break;
                case 7:
                    v0 = 231;
                    break;
                default:
                    GF_ASSERT(0);
                    break;
                }
                break;
            case 7:
                switch (param2) {
                case 0:
                    v0 = 232;
                    break;
                case 1:
                    v0 = 233;
                    break;
                case 2:
                    v0 = 234;
                    break;
                case 3:
                    v0 = 235;
                    break;
                default:
                    GF_ASSERT(0);
                    break;
                }
                break;
            case 8:
                switch (param2) {
                case 0:
                    v0 = 236;
                    break;
                case 1:
                    v0 = 237;
                    break;
                case 2:
                    v0 = 238;
                    break;
                case 3:
                    v0 = 239;
                    break;
                default:
                    GF_ASSERT(0);
                    break;
                }
                break;
            default:
                GF_ASSERT(0);
                break;
            }
        } break;
        }

        param0->unk_14.unk_4F0.unk_0C = v0;
    }

    return param0->unk_14.unk_4F0.unk_0C;
}

void ov62_022348B8(UnkStruct_0208C06C *param0, int param1, int param2, int param3)
{
    param0->unk_14.unk_4F0.unk_00 = param0->unk_04;
    param0->unk_14.unk_4F0.unk_04 = param0->unk_08;
    param0->unk_14.unk_4F0.unk_08 = *param0->unk_10;
    param0->unk_14.unk_4F0.unk_10 = 0;
    param0->unk_14.unk_4F0.unk_14 = 0;
    param0->unk_14.unk_4F0.unk_0C = ov62_022345B8(param0, param1, param2, param3);
    param0->unk_14.unk_4F0.unk_18 = 1;
    *param0->unk_10 = 18;
}

void ov62_022348FC(UnkStruct_0208C06C *param0)
{
    switch (param0->unk_14.unk_4F0.unk_10) {
    case 0:
        if (param0->unk_14.unk_4F0.unk_14 < 8) {
            param0->unk_14.unk_4F0.unk_14++;
        } else {
            ov62_02231AAC(param0, param0->unk_14.unk_4F0.unk_0C);
            param0->unk_14.unk_4F0.unk_10++;
        }

        break;
    case 1:
        if (TouchScreen_Tapped()) {
            ov62_02231B8C(param0);
            param0->unk_14.unk_4F0.unk_10++;
        }

        break;
    default:
        if (param0->unk_14.unk_4F0.unk_14 > 0) {
            param0->unk_14.unk_4F0.unk_14--;
        } else {
            *param0->unk_10 = param0->unk_14.unk_4F0.unk_08;
        }

        break;
    }
}

BOOL ov62_02234970(UnkStruct_0208C06C *param0, u64 param1)
{
    u64 v0;
    int v1;

    for (v1 = 1; v1 < 4; v1++) {
        if (param0->unk_87C[v1] == NULL) {
            continue;
        }

        v0 = sub_0202FE98(param0->unk_87C[v1], 4, 0);

        if (v0 == param1) {
            return 1;
        }
    }

    return 0;
}

void ov62_022349A8(UnkStruct_0208C06C *param0, Strbuf *param1)
{
    UnkStruct_ov62_022349A8 *v0 = ov62_0224112C(param0);
    Strbuf *v1;
    int v2 = 64;

    v1 = Strbuf_Init(v2, v0->unk_144);

    if (Font_AreAllCharsValid(FONT_SYSTEM, param1, v1) == 0) {
        ov62_022349E4(param1, v0->unk_144);
    }

    Strbuf_Free(v1);
}

static void ov62_022349E4(Strbuf *param0, int param1)
{
    MessageLoader *v0;

    Strbuf_Clear(param0);
    v0 = MessageLoader_Init(1, 26, 10, param1);

    MessageLoader_GetStrbuf(v0, 332, param0);
    MessageLoader_Free(v0);
}
