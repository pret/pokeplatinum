#include "applications/pc_boxes/ov19_021DB8E4.h"

#include <nitro.h>
#include <string.h>

#include "generated/pokemon_colors.h"
#include "generated/species.h"

#include "struct_decls/pc_boxes_decl.h"

#include "applications/pc_boxes/box_app_manager.h"
#include "applications/pc_boxes/box_application.h"
#include "applications/pc_boxes/ov19_021D61B0.h"
#include "applications/pc_boxes/struct_ov19_021D61B0_decl.h"
#include "applications/pc_boxes/struct_ov19_021DA384.h"
#include "applications/pc_boxes/struct_ov19_021DBA9C.h"

#include "bg_window.h"
#include "font.h"
#include "font_special_chars.h"
#include "graphics.h"
#include "heap.h"
#include "item.h"
#include "message.h"
#include "narc.h"
#include "pc_boxes.h"
#include "pokemon.h"
#include "sprite.h"
#include "string_gf.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"

typedef struct {
    UnkStruct_ov19_021DBA9C *unk_00;
    u8 unk_04;
    u8 unk_05;
    BOOL unk_08;
} UnkStruct_ov19_021DC034;

typedef struct {
    UnkStruct_ov19_021DBA9C *unk_00;
    BgConfig *unk_04;
    fx32 unk_08;
    fx32 unk_0C;
    fx32 unk_10;
    u16 unk_14;
    u16 unk_16;
} UnkStruct_ov19_021DC29C;

static int ov19_021DBD40(UnkStruct_ov19_021DBA9C *param0);
static void ov19_021DBD4C(UnkStruct_ov19_021DBA9C *param0);
static void ov19_021DBD68(UnkStruct_ov19_021DBA9C *param0, u32 param1);
static void ov19_021DBD9C(UnkStruct_ov19_021DBA9C *param0, u32 param1, u32 param2);
static void ov19_021DBDF4(UnkStruct_ov19_021DBA9C *param0);
static void ov19_021DBEF8(UnkStruct_ov19_021DBA9C *param0);
static void ov19_021DBF18(UnkStruct_ov19_021DBA9C *param0);
static void ov19_021DBF4C(UnkStruct_ov19_021DBA9C *param0);
static void ov19_021DBFB0(UnkStruct_ov19_021DBA9C *param0);
static void ov19_021DBFC4(UnkStruct_ov19_021DBA9C *param0);
static void ov19_021DC01C(UnkStruct_ov19_021DBA9C *param0);
static void ov19_021DC034(UnkStruct_ov19_021DBA9C *param0, int param1);
static void ov19_021DC074(SysTask *param0, void *param1);
static BOOL ov19_021DC090(UnkStruct_ov19_021DBA9C *param0);
static void ov19_021DC0A0(SysTask *param0, void *param1);
static void ov19_021DC1CC(SysTask *param0, void *param1);
static void ov19_021DC37C(SysTask *param0, void *param1);
static void ov19_021DC46C(SysTask *param0, void *param1);
static void ov19_021DC4F8(UnkStruct_ov19_021DBA9C *param0, u32 param1);
static void ov19_021DC5B8(UnkStruct_ov19_021DBA9C *param0, fx32 param1);
static void ov19_021DC5E0(UnkStruct_ov19_021DBA9C *param0);

BOOL ov19_021DB8E4(UnkStruct_ov19_021DBA9C *param0, UnkStruct_ov19_021D61B0 *param1, const BoxApplication *param2, BgConfig *param3, SpriteList *param4, NARC *param5)
{
    int v0;

    param0->unk_00 = param1;
    param0->unk_04 = param3;
    param0->unk_0C = param2;
    param0->unk_08 = param4;

    Graphics_LoadTilesToBgLayerFromOpenNARC(param5, 4, param3, 1, 0, 0, 1, HEAP_ID_BOX_GRAPHICS);

    {
        NNSG2dPaletteData *v1;
        void *v2;

        v2 = Graphics_GetPlttDataFromOpenNARC(param5, 27, &v1, HEAP_ID_BOX_GRAPHICS);
        MI_CpuCopy16(v1->pRawData, &(param0->unk_E4[0][0]), 0x40);
        Heap_Free(v2);

        v2 = Graphics_GetPlttDataFromOpenNARC(param5, 20, &v1, HEAP_ID_BOX_GRAPHICS);
        MI_CpuCopy16(v1->pRawData, &(param0->unk_E4[0][32]), 0x20);
        Heap_Free(v2);

        {
            int v3;
            fx32 v4, v5;

            v4 = 16 << FX32_SHIFT;
            v5 = v4 / (8 - 1);

            for (v3 = 8 - 1; v3 >= 1; v3--) {
                ov19_021D78C8(param0->unk_E4[0], param0->unk_E4[v3], 48, 0x7fff, (v4 >> FX32_SHIFT));
                v4 -= v5;
            }

            DC_FlushRange(param0->unk_E4, 8 * 96);
        }

        GX_LoadOBJPltt(param0->unk_E4[8 - 1], 13 * 0x20, 96);
        GXS_LoadOBJPltt(param0->unk_E4[0], 13 * 0x20, 96);
    }

    param0->unk_14 = Graphics_GetCharDataFromOpenNARC(param5, 17, 1, &(param0->unk_18), HEAP_ID_BOX_GRAPHICS);
    param0->unk_1C = Graphics_GetCellBankFromOpenNARC(param5, 18, 1, &(param0->unk_20), HEAP_ID_BOX_GRAPHICS);
    param0->unk_34 = Graphics_GetScrnDataFromOpenNARC(param5, 2, 1, &(param0->unk_38), HEAP_ID_BOX_GRAPHICS);
    param0->unk_2C = Graphics_GetScrnDataFromOpenNARC(param5, 3, 1, &(param0->unk_30), HEAP_ID_BOX_GRAPHICS);
    param0->unk_44 = FontSpecialChars_Init(2, 13, 4, HEAP_ID_BOX_GRAPHICS);
    param0->unk_4BFC = String_Init(500, HEAP_ID_BOX_GRAPHICS);
    param0->unk_10 = NULL;
    param0->unk_3C.pixels = param0->unk_18->pRawData;
    param0->unk_3C.width = 32;
    param0->unk_3C.height = 32;
    param0->unk_4BF8 = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_ITEM_DESCRIPTIONS, HEAP_ID_BOX_GRAPHICS);

    for (v0 = 0; v0 < 18; v0++) {
        param0->unk_48[v0] = NULL;
    }

    if ((param0->unk_14 == NULL) || (param0->unk_1C == NULL) || (param0->unk_2C == NULL) || (param0->unk_34 == NULL) || (param0->unk_44 == NULL) || (param0->unk_4BFC == NULL)) {
        return 0;
    }

    return 1;
}

void ov19_021DBA9C(UnkStruct_ov19_021DBA9C *param0)
{
    static const WindowTemplate v0[] = {
        { 1, 10, 6, 12, 2, 2, 128 },
        { 1, 3, 13, 26, 1, 2, 152 },
        { 1, 5, 25, 27, 6, 2, 178 }
    };

    param0->unk_10 = Window_New(HEAP_ID_BOX_GRAPHICS, NELEMS(v0));

    if (param0->unk_10) {
        int v1;

        for (v1 = 0; v1 < NELEMS(v0); v1++) {
            Window_AddFromTemplate(param0->unk_04, &param0->unk_10[v1], &v0[v1]);
        }
    }
}

void ov19_021DBAD0(UnkStruct_ov19_021DBA9C *param0)
{
    if (param0->unk_4BF8) {
        MessageLoader_Free(param0->unk_4BF8);
    }

    if (param0->unk_14) {
        Heap_Free(param0->unk_14);
    }

    if (param0->unk_1C) {
        Heap_Free(param0->unk_1C);
    }

    if (param0->unk_2C) {
        Heap_Free(param0->unk_2C);
    }

    if (param0->unk_34) {
        Heap_Free(param0->unk_34);
    }

    if (param0->unk_44) {
        FontSpecialChars_Free(param0->unk_44);
    }

    if (param0->unk_4BFC) {
        String_Free(param0->unk_4BFC);
    }

    if (param0->unk_10) {
        int v0;

        for (v0 = 0; v0 < 3; v0++) {
            Window_Remove(&(param0->unk_10[v0]));
        }

        Heap_Free(param0->unk_10);
    }
}

void ov19_021DBB48(UnkStruct_ov19_021DBA9C *param0)
{
    param0->unk_E0 = BoxApp_GetBoxSelectionBoxID(param0->unk_0C);
    ov19_021DBDF4(param0);
    ov19_021DC034(param0, 0);
}

BOOL ov19_021DBB68(UnkStruct_ov19_021DBA9C *param0)
{
    return ov19_021DC090(param0);
}

void ov19_021DBB70(UnkStruct_ov19_021DBA9C *param0)
{
    param0->unk_E0 = BoxApp_GetBoxSelectionBoxID(param0->unk_0C);

    ov19_021DBF18(param0);
    ov19_021DBF4C(param0);
    ov19_021DBFC4(param0);
}

void ov19_021DBB94(UnkStruct_ov19_021DBA9C *param0)
{
    ov19_021DC034(param0, 1);
}

BOOL ov19_021DBBA0(UnkStruct_ov19_021DBA9C *param0)
{
    return ov19_021DC090(param0);
}

void ov19_021DBBA8(UnkStruct_ov19_021DBA9C *param0, u32 param1, u32 param2, NNS_G2D_VRAM_TYPE param3, NNSG2dImageProxy *param4)
{
    const PCBoxes *pcBoxes;
    BoxPokemon *boxMon;
    u32 v2, v3, v4, species;
    u8 color, v7;
    int v8;

    pcBoxes = BoxApp_GetPCBoxes(param0->unk_0C);
    v8 = PCBoxes_GetWallpaper(pcBoxes, param1);

    if (v8 >= (16 + 8)) {
        v8 -= 8;
    }

    color = 13 * 0x10 + v8;
    Bitmap_FillRect8bpp(&(param0->unk_3C), 9, 10, 14, 12, color);

    for (v3 = 0, v4 = 0; v3 < 5; v3++) {
        for (v2 = 0; v2 < 6; v2++) {
            boxMon = PCBoxes_GetBoxMonAt(pcBoxes, param1, v4++);
            v7 = BoxPokemon_EnterDecryptionContext(boxMon);
            species = BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES, NULL);

            if (species) {
                if (BoxPokemon_GetValue(boxMon, MON_DATA_IS_EGG, NULL) == FALSE) {
                    u16 form = BoxPokemon_GetValue(boxMon, MON_DATA_FORM, NULL);

                    color = SpeciesData_GetFormValue(species, form, SPECIES_DATA_BODY_COLOR);
                } else {
                    color = (species != SPECIES_MANAPHY) ? MON_COLOR_WHITE : MON_COLOR_BLUE;
                }

                {
                    static const u8 v10[] = {
                        0xe,
                        0xf,
                        0x5,
                        0x4,
                        0xd,
                        0xc,
                        0x3,
                        0xb,
                        0xa,
                        0x9,
                    };

                    color = 14 * 0x10 + v10[color];
                }

                Bitmap_FillRect8bpp(&(param0->unk_3C), 10 + v2 * 2, 11 + v3 * 2, 2, 2, color);
            }

            BoxPokemon_ExitDecryptionContext(boxMon, v7);
        }
    }

    if (param4) {
        switch (param3) {
        case NNS_G2D_VRAM_TYPE_2DMAIN:
            param0->unk_18->mappingType = GX_GetOBJVRamModeChar();
            break;
        case NNS_G2D_VRAM_TYPE_2DSUB:
            param0->unk_18->mappingType = GXS_GetOBJVRamModeChar();
            break;
        }

        NNS_G2dLoadImage1DMapping(param0->unk_18, param2 * 0x20, param3, param4);
    } else {
        DC_FlushRange(param0->unk_18->pRawData, param0->unk_18->szByte);

        switch (param3) {
        case NNS_G2D_VRAM_TYPE_2DMAIN:
            GX_LoadOBJ(param0->unk_18->pRawData, param2 * 0x20, param0->unk_18->szByte);
            break;
        case NNS_G2D_VRAM_TYPE_2DSUB:
            GXS_LoadOBJ(param0->unk_18->pRawData, param2 * 0x20, param0->unk_18->szByte);
            break;
        }
    }
}

NNSG2dCellDataBank *ov19_021DBD3C(UnkStruct_ov19_021DBA9C *param0)
{
    return param0->unk_20;
}

static int ov19_021DBD40(UnkStruct_ov19_021DBA9C *param0)
{
    int v0 = param0->unk_E0 - (7 / 2);

    if (v0 < 0) {
        v0 += 18;
    }

    return v0;
}

static void ov19_021DBD4C(UnkStruct_ov19_021DBA9C *param0)
{
    int v0;

    for (v0 = 0; v0 < 18; v0++) {
        param0->unk_4BE4[v0] = 0;
    }
}

static void ov19_021DBD68(UnkStruct_ov19_021DBA9C *param0, u32 param1)
{
    MI_CpuCopy32(param0->unk_18->pRawData, param0->unk_3E4[param1], 1024);
    DC_FlushRange(param0->unk_3E4, 1024);
    param0->unk_4BE4[param1] = 1;
}

static void ov19_021DBD9C(UnkStruct_ov19_021DBA9C *param0, u32 param1, u32 param2)
{
    u32 v0 = 1584 + 32 * param1;

    if (param0->unk_4BE4[param2]) {
        GX_LoadOBJ(param0->unk_3E4[param2], v0 * 0x20, 1024);
    } else {
        NNSG2dImageProxy v1;

        NNS_G2dInitImageProxy(&v1);
        ov19_021DBBA8(param0, param2, v0, NNS_G2D_VRAM_TYPE_2DMAIN, &v1);
        ov19_021DBD68(param0, param2);
    }
}

static void ov19_021DBDF4(UnkStruct_ov19_021DBA9C *param0)
{
    SpriteResourcesHeader v0;
    UnkStruct_ov19_021DA384 *v1;
    NNSG2dImageProxy v2;
    VecFx32 v3;
    int v4, v5;

    ov19_021DBD4C(param0);
    v1 = ov19_021D77D8(param0->unk_00);
    ov19_021D783C(&v0, NULL, ov19_021D77D0(param0->unk_00), param0->unk_20, v1->unk_04, 0);
    v5 = ov19_021DBD40(param0);

    for (v4 = 0; v4 < 7; v4++) {
        NNS_G2dInitImageProxy(&v2);
        ov19_021DBBA8(param0, v5, 1584 + 32 * v4, NNS_G2D_VRAM_TYPE_2DMAIN, &v2);

        v0.imageProxy = &v2;
        param0->unk_48[v4] = ov19_021D785C(param0->unk_08, &v0, 512, 256, 11, NNS_G2D_VRAM_TYPE_2DMAIN);

        GF_ASSERT(param0->unk_48[v4] != NULL);

        Sprite_SetDrawFlag(param0->unk_48[v4], FALSE);
        VEC_Set(&v3, FX32_CONST(32 + v4 * 32), FX32_CONST(88), 0);
        Sprite_SetPosition(param0->unk_48[v4], &v3);
        ov19_021DBD68(param0, v5);

        if (++v5 >= 18) {
            v5 = 0;
        }
    }

    for (v4 = 0; v4 < MAX_PC_BOXES; v4++) {
        param0->unk_94[v4] = PCBoxes_CountMonsInBox(BoxApp_GetPCBoxes(param0->unk_0C), v4);
    }
}

static void ov19_021DBEF8(UnkStruct_ov19_021DBA9C *param0)
{
    int v0;

    for (v0 = 0; v0 < 7; v0++) {
        if (param0->unk_48[v0] != NULL) {
            Sprite_Delete(param0->unk_48[v0]);
            param0->unk_48[v0] = NULL;
        }
    }
}

static void ov19_021DBF18(UnkStruct_ov19_021DBA9C *param0)
{
    int v0, v1;

    v0 = ov19_021DBD40(param0);

    for (v1 = 0; v1 < 7; v1++) {
        ov19_021DBD9C(param0, v1, v0);
        Sprite_SetDrawFlag(param0->unk_48[v1], TRUE);

        if (++v0 >= 18) {
            v0 = 0;
        }
    }
}

static void ov19_021DBF4C(UnkStruct_ov19_021DBA9C *param0)
{
    const PCBoxes *pcBoxes;
    Window *v1;
    u32 v2, v3;

    pcBoxes = BoxApp_GetPCBoxes(param0->unk_0C);
    v1 = &param0->unk_10[0];

    PCBoxes_BufferBoxName(pcBoxes, param0->unk_E0, param0->unk_4BFC);

    v2 = Font_CalcStringWidth(FONT_SYSTEM, param0->unk_4BFC, 0);
    v3 = 48 - (v2 / 2);

    Window_FillTilemap(v1, 7);
    Text_AddPrinterWithParamsAndColor(v1, FONT_SYSTEM, param0->unk_4BFC, v3, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(2, 8, 7), NULL);
    Window_LoadTiles(v1);
}

static void ov19_021DBFB0(UnkStruct_ov19_021DBA9C *param0)
{
    Window *v0 = &param0->unk_10[0];

    Window_FillTilemap(v0, 7);
    Window_LoadTiles(v0);
}

static void ov19_021DBFC4(UnkStruct_ov19_021DBA9C *param0)
{
    s32 v0, v1;
    Window *v2 = &param0->unk_10[1];
    Window_FillTilemap(v2, 4);
    v0 = ov19_021DBD40(param0);

    for (v1 = 0; v1 < 7; v1++) {
        FontSpecialChars_DrawPartyScreenHPText(param0->unk_44, param0->unk_94[v0], 2, 2, v2, 32 * v1, 0);

        if (++v0 >= 18) {
            v0 = 0;
        }
    }

    Window_LoadTiles(v2);
}

static void ov19_021DC01C(UnkStruct_ov19_021DBA9C *param0)
{
    Window *v0 = &param0->unk_10[1];

    Window_FillTilemap(v0, 4);
    Window_LoadTiles(v0);
}

static void ov19_021DC034(UnkStruct_ov19_021DBA9C *param0, int param1)
{
    static const SysTaskFunc v0[] = {
        ov19_021DC0A0,
        ov19_021DC1CC,
    };
    UnkStruct_ov19_021DC034 *v1 = Heap_Alloc(HEAP_ID_BOX_GRAPHICS, sizeof(UnkStruct_ov19_021DC034));

    if (v1) {
        v1->unk_00 = param0;
        v1->unk_04 = 0;
        v1->unk_05 = 0;

        param0->unk_DC = SysTask_Start(v0[param1], v1, 0);

        if (param0->unk_DC == NULL) {
            Heap_Free(v1);
        }
    }
}

static void ov19_021DC074(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021DC034 *v0 = (UnkStruct_ov19_021DC034 *)param1;

    v0->unk_00->unk_DC = NULL;

    Heap_Free(v0);
    SysTask_Done(param0);
}

static BOOL ov19_021DC090(UnkStruct_ov19_021DBA9C *param0)
{
    return param0->unk_DC == NULL;
}

static void ov19_021DC0A0(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021DC034 *v0 = (UnkStruct_ov19_021DC034 *)param1;
    UnkStruct_ov19_021DBA9C *v1 = v0->unk_00;

    switch (v0->unk_04) {
    case 0:
        v0->unk_05 += 1;

        if ((v0->unk_05 * 2) < 10) {
            u32 v2 = 5 + (10 / 2);

            Bg_LoadToTilemapRect(v1->unk_04, 1, v1->unk_30->rawData, 0, v2 - v0->unk_05, 32, v0->unk_05);
            Bg_CopyToTilemapRect(v1->unk_04, 1, 0, v2, 32, v0->unk_05, v1->unk_30->rawData, 0, 10 - v0->unk_05, 32, 10);
        } else {
            Bg_LoadToTilemapRect(v1->unk_04, 1, v1->unk_30->rawData, 0, 5, 32, 10);
            v0->unk_04++;
        }

        Bg_CopyTilemapBufferToVRAM(v1->unk_04, 1);
        v0->unk_05 = 8 - 1;
        break;
    case 1:
        GX_LoadOBJPltt(v1->unk_E4[v0->unk_05], 13 * 0x20, 96);
        ov19_021DBF18(v1);
        v0->unk_04++;
        break;
    case 2:
        if (v0->unk_05) {
            v0->unk_05--;
        }

        GX_LoadOBJPltt(v1->unk_E4[v0->unk_05], 13 * 0x20, 96);

        if (v0->unk_05 == 0) {
            Window_PutToTilemap(&v1->unk_10[0]);
            Window_PutToTilemap(&v1->unk_10[1]);
            ov19_021DBF4C(v1);
            ov19_021DBFC4(v1);
            Bg_CopyTilemapBufferToVRAM(v1->unk_04, 1);
            v0->unk_04++;
        }
        break;
    case 3:
        ov19_021DC074(param0, v0);
        break;
    }
}

static void ov19_021DC1CC(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021DC034 *v0 = (UnkStruct_ov19_021DC034 *)param1;
    UnkStruct_ov19_021DBA9C *v1 = v0->unk_00;

    switch (v0->unk_04) {
    case 0:
        ov19_021DBEF8(v1);
        ov19_021DBFB0(v1);
        ov19_021DC01C(v1);
        v0->unk_04++;
        break;
    case 1:
        Bg_FillTilemapRect(v1->unk_04, 1, 0x0, 0, 5, 32, 10, 17);
        v0->unk_05 += 1;

        if ((v0->unk_05 * 2) < 10) {
            u32 v2 = 5 + (10 / 2);

            Bg_LoadToTilemapRect(v1->unk_04, 1, v1->unk_30->rawData, 0, 5 + v0->unk_05, 32, (10 / 2) - v0->unk_05);
            Bg_CopyToTilemapRect(v1->unk_04, 1, 0, v2, 32, (10 / 2) - v0->unk_05, v1->unk_30->rawData, 0, 10 - v0->unk_05, 32, 10);
        } else {
            v0->unk_04++;
        }

        Bg_CopyTilemapBufferToVRAM(v1->unk_04, 1);
        break;
    case 2:
        ov19_021DC074(param0, v0);
    }
}

void ov19_021DC29C(UnkStruct_ov19_021DBA9C *param0)
{
    UnkStruct_ov19_021DC29C *v0 = Heap_Alloc(HEAP_ID_BOX_GRAPHICS, sizeof(UnkStruct_ov19_021DC29C));

    if (v0) {
        u32 v1 = BoxApp_GetCursorOrPreviewedItem(param0->unk_0C);

        Bg_SetOffset(param0->unk_04, BG_LAYER_MAIN_1, 3, 0);
        Bg_LoadToTilemapRect(param0->unk_04, 1, param0->unk_38->rawData, 0, 24, 32, 7);
        Window_FillTilemap(&param0->unk_10[2], 4);
        MessageLoader_GetString(param0->unk_4BF8, v1, param0->unk_4BFC);
        Text_AddPrinterWithParamsAndColor(&param0->unk_10[2], FONT_SYSTEM, param0->unk_4BFC, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(2, 1, 4), NULL);
        Window_CopyToVRAM(&param0->unk_10[2]);

        ov19_021DC4F8(param0, v1);

        v0->unk_16 = 0;
        v0->unk_00 = param0;
        v0->unk_04 = param0->unk_04;
        v0->unk_08 = (0 << FX32_SHIFT);
        v0->unk_0C = 56 << FX32_SHIFT;
        v0->unk_10 = (v0->unk_0C - v0->unk_08) / 6;
        v0->unk_14 = 6;

        param0->unk_DC = ov19_021D77C8(ov19_021DC37C, v0, 0);
    }
}

BOOL ov19_021DC364(UnkStruct_ov19_021DBA9C *param0)
{
    return param0->unk_DC == NULL;
}

static void ov19_021DC374(void *param0)
{
    UnkStruct_ov19_021DBA9C *v0 = param0;
    v0->unk_DC = NULL;
}

static void ov19_021DC37C(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021DC29C *v0 = param1;

    switch (v0->unk_16) {
    case 0:
        v0->unk_16++;
        break;
    case 1:
        if (v0->unk_14) {
            v0->unk_14--;
            v0->unk_08 += v0->unk_10;
            Bg_SetOffset(v0->unk_04, BG_LAYER_MAIN_1, 3, (v0->unk_08 >> FX32_SHIFT));
            ov19_021DC5B8(v0->unk_00, (224 << FX32_SHIFT) - v0->unk_08);
        } else {
            Bg_SetOffset(v0->unk_04, BG_LAYER_MAIN_1, 3, (v0->unk_0C >> FX32_SHIFT));
            ov19_021DC5B8(v0->unk_00, (224 << FX32_SHIFT) - v0->unk_0C);
            ov19_021D79B8(v0, ov19_021DC374, v0->unk_00);
            SysTask_Done(param0);
        }
        break;
    }
}

void ov19_021DC3F4(UnkStruct_ov19_021DBA9C *param0)
{
    UnkStruct_ov19_021DC29C *v0 = Heap_Alloc(HEAP_ID_BOX_GRAPHICS, sizeof(UnkStruct_ov19_021DC29C));

    if (v0) {
        v0->unk_16 = 0;
        v0->unk_00 = param0;
        v0->unk_04 = param0->unk_04;
        v0->unk_08 = 56 << FX32_SHIFT;
        v0->unk_0C = 0 << FX32_SHIFT;
        v0->unk_10 = (v0->unk_0C - v0->unk_08) / 6;
        v0->unk_14 = 6;
        param0->unk_DC = ov19_021D77C8(ov19_021DC46C, v0, 0);
    }
}

BOOL ov19_021DC43C(UnkStruct_ov19_021DBA9C *param0)
{
    if (param0->unk_DC == NULL) {
        Bg_SetOffset(param0->unk_04, BG_LAYER_MAIN_1, 3, 0);
        ov19_021DC5E0(param0);
        return 1;
    }

    return 0;
}

static void ov19_021DC464(void *param0)
{
    UnkStruct_ov19_021DBA9C *v0 = param0;
    v0->unk_DC = NULL;
}

static void ov19_021DC46C(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021DC29C *v0 = param1;

    if (v0->unk_14) {
        v0->unk_14--;
        v0->unk_08 += v0->unk_10;
        Bg_SetOffset(v0->unk_04, BG_LAYER_MAIN_1, 3, (v0->unk_08 >> FX32_SHIFT));
        ov19_021DC5B8(v0->unk_00, (224 << FX32_SHIFT) - v0->unk_08);
    } else {
        Bg_SetOffset(v0->unk_04, BG_LAYER_MAIN_1, 3, (v0->unk_0C >> FX32_SHIFT));
        ov19_021DC5B8(v0->unk_00, (224 << FX32_SHIFT) - v0->unk_0C);
        Bg_FillTilemapRect(v0->unk_04, 1, 0x0, 0, 0, 32, 32, 17);
        Bg_CopyTilemapBufferToVRAM(v0->unk_04, 1);
        ov19_021D79B8(v0, ov19_021DC464, v0->unk_00);
        SysTask_Done(param0);
    }
}

static void ov19_021DC4F8(UnkStruct_ov19_021DBA9C *param0, u32 param1)
{
    if (param1 != 0) {
        SpriteResourcesHeader v0;
        UnkStruct_ov19_021DA384 *v1;
        NNSG2dImageProxy v2;
        NNSG2dCharacterData *v3;
        void *v4;

        v1 = ov19_021D77D8(param0->unk_00);
        ov19_021D783C(&v0, &v2, ov19_021D77D0(param0->unk_00), v1->unk_1C, v1->unk_20, 0);
        NNS_G2dInitImageProxy(&v2);

        v4 = Graphics_GetCharData(NARC_INDEX_ITEMTOOL__ITEMDATA__ITEM_ICON, Item_FileID(param1, 1), 0, &v3, HEAP_ID_BOX_GRAPHICS);
        v3->mappingType = GX_GetOBJVRamModeChar();
        NNS_G2dLoadImage1DMapping(v3, 1520 * 0x20, NNS_G2D_VRAM_TYPE_2DMAIN, &v2);

        Graphics_LoadPalette(NARC_INDEX_ITEMTOOL__ITEMDATA__ITEM_ICON, Item_FileID(param1, 2), 1, 6 * 0x20, 0x20, HEAP_ID_BOX_GRAPHICS);
        param0->unk_90 = ov19_021D785C(param0->unk_08, &v0, 18, 224, 0, NNS_G2D_VRAM_TYPE_2DMAIN);

        if (param0->unk_90) {
            Sprite_SetExplicitPalette(param0->unk_90, 6);
        }

        Heap_Free(v4);
    }
}

static void ov19_021DC5B8(UnkStruct_ov19_021DBA9C *param0, fx32 param1)
{
    if (param0->unk_90) {
        VecFx32 v0;

        v0.x = 18 << FX32_SHIFT;
        v0.y = param1;
        v0.z = 0;

        Sprite_SetPosition(param0->unk_90, &v0);
    }
}

static void ov19_021DC5E0(UnkStruct_ov19_021DBA9C *param0)
{
    if (param0->unk_90) {
        Sprite_Delete(param0->unk_90);
    }
}
