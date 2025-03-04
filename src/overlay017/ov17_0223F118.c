#include "overlay017/ov17_0223F118.h"

#include <nitro.h>
#include <nitro/sinit.h>
#include <string.h>

#include "generated/items.h"

#include "struct_decls/font_oam.h"
#include "struct_decls/struct_02012744_decl.h"
#include "struct_defs/struct_020127E8.h"
#include "struct_defs/struct_0207C690.h"
#include "struct_defs/struct_02095C48.h"

#include "overlay017/ov17_02252A70.h"
#include "overlay017/struct_ov17_0223F2E4.h"
#include "overlay017/struct_ov17_0223F6E8.h"
#include "overlay017/struct_ov17_0223F744.h"

#include "bg_window.h"
#include "brightness_controller.h"
#include "char_transfer.h"
#include "font.h"
#include "game_overlay.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "palette.h"
#include "pokemon.h"
#include "sprite_system.h"
#include "strbuf.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"
#include "unk_02005474.h"
#include "unk_02012744.h"
#include "unk_02024220.h"

FS_EXTERN_OVERLAY(overlay11);
FS_EXTERN_OVERLAY(overlay12);
FS_EXTERN_OVERLAY(overlay22);

static void ov17_0223F6E8(SysTask *param0, void *param1);
static void ov17_0223F15C(void);
static void ov17_0223F774(SysTask *param0, void *param1);

static const SpriteTemplate Unk_ov17_022531FC = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    { 0x0, 0x0, 0x0, 0x0, 0xFFFFFFFF, 0xFFFFFFFF },
    0x3,
    0x0
};

static const struct {
    s16 unk_00;
    s16 unk_02;
    s16 unk_04;
    u8 unk_06;
} Unk_ov17_022531CC[] = {
    { 0xD, 0xAC, 0xFFFFFFFFFFFFFE80, 0x1 },
    { 0x25, 0xA4, 0x300, 0x1 },
    { 0x40, 0xB0, 0xFFFFFFFFFFFFFF80, 0x0 },
    { 0xC0, 0xB0, 0x80, 0x0 },
    { 0xDB, 0xA4, 0xFFFFFFFFFFFFFD00, 0x1 },
    { 0xF3, 0xAC, 0x180, 0x1 }
};

static void NitroStaticInit(void)
{
    Overlay_LoadByID(FS_OVERLAY_ID(overlay11), 2);
    Overlay_LoadByID(FS_OVERLAY_ID(overlay12), 2);
    Overlay_LoadByID(FS_OVERLAY_ID(overlay22), 2);
}

GenericPointerData *ov17_0223F140(int heapID)
{
    return sub_02024220(heapID, 0, 2, 0, 2, ov17_0223F15C);
}

static void ov17_0223F15C(void)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);

    G2_SetBG0Priority(1);
    G3X_SetShading(GX_SHADING_TOON);
    G3X_AntiAlias(1);
    G3X_AlphaTest(0, 0);
    G3X_AlphaBlend(1);
    G3X_EdgeMarking(0);
    G3X_SetFog(0, GX_FOGBLEND_COLOR_ALPHA, GX_FOGSLOPE_0x8000, 0);
    G3X_SetClearColor(GX_RGB(0, 0, 0), 0, 0x7fff, 63, 0);
    G3_ViewPort(0, 0, 255, 191);
}

void ov17_0223F1E0(GenericPointerData *param0)
{
    sub_020242C4(param0);
}

void ov17_0223F1E8(int param0, BgConfig *param1, SpriteManager *param2, UnkStruct_02012744 *param3, UnkStruct_ov17_0223F2E4 *param4, const Strbuf *param5, enum Font param6, TextColor param7, int param8, int param9, int param10, int param11, int param12, int param13, int param14)
{
    UnkStruct_020127E8 v0;
    Window v1;
    CharTransferAllocation v2;
    int v3;
    FontOAM *v4;
    int v5, v6;
    int v7 = 0;

    {
        v5 = Font_CalcStrbufWidth(param6, param5, v7);
        v6 = v5 / 8;

        if (FX_ModS32(v5, 8) != 0) {
            v6++;
        }
    }

    {
        Window_Init(&v1);
        Window_AddToTopLeftCorner(param1, &v1, v6, 16 / 8, 0, 0);
        Text_AddPrinterWithParamsColorAndSpacing(&v1, param6, param5, 0, 0, TEXT_SPEED_NO_TRANSFER, param7, v7, 0, NULL);
    }

    v3 = sub_02012898(&v1, NNS_G2D_VRAM_TYPE_2DMAIN, param0);
    CharTransfer_AllocRange(v3, 1, NNS_G2D_VRAM_TYPE_2DMAIN, &v2);

    if (param12 == 1) {
        param10 -= v5 / 2;
    }

    param11 += 0 - 8;

    v0.unk_00 = param3;
    v0.unk_04 = &v1;
    v0.unk_08 = SpriteManager_GetSpriteList(param2);
    v0.unk_0C = SpriteManager_FindPlttResourceProxy(param2, param9);
    v0.unk_10 = NULL;
    v0.unk_14 = v2.offset;
    v0.unk_18 = param10;
    v0.unk_1C = param11;
    v0.unk_20 = param13;
    v0.unk_24 = param14;
    v0.unk_28 = NNS_G2D_VRAM_TYPE_2DMAIN;
    v0.unk_2C = param0;

    v4 = sub_020127E8(&v0);

    if (param8 != 0) {
        sub_02012A90(v4, param8);
    }

    sub_020128C4(v4, param10, param11);
    Window_Remove(&v1);

    param4->unk_00 = v4;
    param4->unk_04 = v2;
    param4->unk_10 = v5;
}

void ov17_0223F2E4(UnkStruct_ov17_0223F2E4 *param0)
{
    sub_02012870(param0->unk_00);
    CharTransfer_ClearRange(&param0->unk_04);
}

void ov17_0223F2F8(UnkStruct_ov17_0223F2E4 *param0, int param1, int param2, int param3)
{
    if (param3 == 1) {
        param1 -= param0->unk_10 / 2;
    }

    param2 += 0 - 8;
    sub_020128C4(param0->unk_00, param1, param2);
}

Strbuf *ov17_0223F310(u32 param0, u32 param1)
{
    MessageLoader *v0;
    Strbuf *v1;

    v0 = MessageLoader_Init(1, 26, 207, param1);
    v1 = MessageLoader_GetNewStrbuf(v0, param0);

    MessageLoader_Free(v0);
    return v1;
}

void ov17_0223F334(UnkStruct_02095C48 *param0, int param1)
{
    u8 *v0;
    int v1;

    v0 = ov17_02252A9C(param1, param0->unk_00.unk_112);

    for (v1 = 0; v1 < 4; v1++) {
        param0->unk_00.unk_118[v1].unk_02 = ov17_02252A70(param0->unk_00.unk_E8[v1], v0);
    }

    Heap_FreeToHeap(v0);
}

void ov17_0223F374(UnkStruct_02095C48 *param0)
{
    int v0, v1, v2, v3, v4;
    u32 v5;
    s32 v6, v7;

    for (v0 = 0; v0 < 4; v0++) {
        v5 = Pokemon_GetValue(param0->unk_00.unk_00[v0], MON_DATA_HELD_ITEM, NULL);
        v6 = 100;

        switch (param0->unk_00.unk_10F) {
        case 0:
            v1 = Pokemon_GetValue(param0->unk_00.unk_00[v0], MON_DATA_COOL, NULL);
            v2 = Pokemon_GetValue(param0->unk_00.unk_00[v0], MON_DATA_TOUGH, NULL);
            v3 = Pokemon_GetValue(param0->unk_00.unk_00[v0], MON_DATA_BEAUTY, NULL);

            switch (v5) {
            case ITEM_RED_SCARF:
                v6 = 110;
                break;
            case ITEM_BLUE_SCARF:
            case ITEM_YELLOW_SCARF:
                v6 = 105;
                break;
            }
            break;
        case 1:
            v1 = Pokemon_GetValue(param0->unk_00.unk_00[v0], MON_DATA_BEAUTY, NULL);
            v2 = Pokemon_GetValue(param0->unk_00.unk_00[v0], MON_DATA_COOL, NULL);
            v3 = Pokemon_GetValue(param0->unk_00.unk_00[v0], MON_DATA_CUTE, NULL);

            switch (v5) {
            case ITEM_BLUE_SCARF:
                v6 = 110;
                break;
            case ITEM_RED_SCARF:
            case ITEM_PINK_SCARF:
                v6 = 105;
                break;
            }
            break;
        case 2:
            v1 = Pokemon_GetValue(param0->unk_00.unk_00[v0], MON_DATA_CUTE, NULL);
            v2 = Pokemon_GetValue(param0->unk_00.unk_00[v0], MON_DATA_BEAUTY, NULL);
            v3 = Pokemon_GetValue(param0->unk_00.unk_00[v0], MON_DATA_SMART, NULL);

            switch (v5) {
            case ITEM_PINK_SCARF:
                v6 = 110;
                break;
            case ITEM_BLUE_SCARF:
            case ITEM_GREEN_SCARF:
                v6 = 105;
                break;
            }
            break;
        case 3:
            v1 = Pokemon_GetValue(param0->unk_00.unk_00[v0], MON_DATA_SMART, NULL);
            v2 = Pokemon_GetValue(param0->unk_00.unk_00[v0], MON_DATA_CUTE, NULL);
            v3 = Pokemon_GetValue(param0->unk_00.unk_00[v0], MON_DATA_TOUGH, NULL);

            switch (v5) {
            case ITEM_GREEN_SCARF:
                v6 = 110;
                break;
            case ITEM_PINK_SCARF:
            case ITEM_YELLOW_SCARF:
                v6 = 105;
                break;
            }
            break;
        case 4:
            v1 = Pokemon_GetValue(param0->unk_00.unk_00[v0], MON_DATA_TOUGH, NULL);
            v2 = Pokemon_GetValue(param0->unk_00.unk_00[v0], MON_DATA_SMART, NULL);
            v3 = Pokemon_GetValue(param0->unk_00.unk_00[v0], MON_DATA_COOL, NULL);

            switch (v5) {
            case ITEM_YELLOW_SCARF:
                v6 = 110;
                break;
            case ITEM_GREEN_SCARF:
            case ITEM_RED_SCARF:
                v6 = 105;
                break;
            }

            break;
        default:
            GF_ASSERT(FALSE);
            return;
        }

        v4 = Pokemon_GetValue(param0->unk_00.unk_00[v0], MON_DATA_SHEEN, NULL);
        v7 = v1 + ((v2 + v3 + v4) / 2);
        v7 = v7 * v6 / 100;

        param0->unk_00.unk_118[v0].unk_00 = v7;
    }
}

void ov17_0223F560(SpriteSystem *param0, SpriteManager *param1, PaletteData *param2, int param3, int param4, int param5, int param6)
{
    if (param3 != -1) {
        SpriteSystem_LoadCharResObj(param0, param1, NARC_INDEX_CONTEST__GRAPHIC__CONTEST_OBJ, 73, TRUE, NNS_G2D_VRAM_TYPE_2DMAIN, param3);
    }

    if (param4 != -1) {
        SpriteSystem_LoadPaletteBuffer(param2, PLTTBUF_MAIN_OBJ, param0, param1, NARC_INDEX_CONTEST__GRAPHIC__CONTEST_OBJ, 7, 0, TRUE, NNS_G2D_VRAM_TYPE_2DMAIN, param4);
    }

    if (param5 != -1) {
        SpriteSystem_LoadCellResObj(param0, param1, NARC_INDEX_CONTEST__GRAPHIC__CONTEST_OBJ, 74, TRUE, param5);
    }

    if (param6 != -1) {
        SpriteSystem_LoadAnimResObj(param0, param1, NARC_INDEX_CONTEST__GRAPHIC__CONTEST_OBJ, 75, TRUE, param6);
    }
}

void ov17_0223F5E8(SpriteManager *param0, int param1, int param2, int param3, int param4)
{
    if (param1 != -1) {
        SpriteManager_UnloadCharObjById(param0, param1);
    }

    if (param2 != -1) {
        SpriteManager_UnloadPlttObjById(param0, param2);
    }

    if (param3 != -1) {
        SpriteManager_UnloadCellObjById(param0, param3);
    }

    if (param4 != -1) {
        SpriteManager_UnloadAnimObjById(param0, param4);
    }
}

void ov17_0223F630(UnkStruct_ov17_0223F6E8 *param0, SpriteSystem *param1, SpriteManager *param2, int param3, int param4, int param5, int param6, int param7, int param8, int param9, u32 param10)
{
    int v0;
    SpriteTemplate v1;

    GF_ASSERT(NELEMS(Unk_ov17_022531CC) == 6);

    v1 = Unk_ov17_022531FC;

    v1.resources[0] = param3;
    v1.resources[1] = param4;
    v1.resources[2] = param5;
    v1.resources[3] = param6;
    v1.plttIdx = param7;
    v1.priority = param8;
    v1.bgPriority = param9;

    for (v0 = 0; v0 < 6; v0++) {
        param0->unk_00[v0] = SpriteSystem_NewSprite(param1, param2, &v1);

        ManagedSprite_SetPositionXY(param0->unk_00[v0], Unk_ov17_022531CC[v0].unk_00, Unk_ov17_022531CC[v0].unk_02);
        ManagedSprite_SetAnim(param0->unk_00[v0], Unk_ov17_022531CC[v0].unk_06);
        ManagedSprite_SetAffineOverwriteMode(param0->unk_00[v0], AFFINE_OVERWRITE_MODE_NORMAL);
        Sprite_TickFrame(param0->unk_00[v0]->sprite);
    }

    param0->unk_18 = SysTask_Start(ov17_0223F6E8, param0, param10);
}

void ov17_0223F6C4(UnkStruct_ov17_0223F6E8 *param0)
{
    int v0;

    for (v0 = 0; v0 < 6; v0++) {
        Sprite_DeleteAndFreeResources(param0->unk_00[v0]);
    }

    SysTask_Done(param0->unk_18);
    param0->unk_18 = NULL;
}

static void ov17_0223F6E8(SysTask *param0, void *param1)
{
    UnkStruct_ov17_0223F6E8 *v0 = param1;
    int v1;

    for (v1 = 0; v1 < 6; v1++) {
        ManagedSprite_OffsetAffineZRotation(v0->unk_00[v1], Unk_ov17_022531CC[v1].unk_04);
    }
}

UnkStruct_ov17_0223F744 *ov17_0223F70C(int param0, PaletteData *param1, const u16 *param2, int param3, int param4, u32 param5)
{
    UnkStruct_ov17_0223F744 *v0;

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_ov17_0223F744));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov17_0223F744));

    v0->unk_04 = param1;
    v0->unk_0C = param2;
    v0->unk_10 = param3;
    v0->unk_12 = param4;
    v0->unk_00 = SysTask_Start(ov17_0223F774, v0, param5);

    return v0;
}

void ov17_0223F744(UnkStruct_ov17_0223F744 *param0)
{
    GF_ASSERT(param0->unk_00 != NULL);

    SysTask_Done(param0->unk_00);
    Heap_FreeToHeap(param0);
}

BOOL ov17_0223F760(void)
{
    if (BrightnessController_IsTransitionComplete(BRIGHTNESS_MAIN_SCREEN) == TRUE) {
        return 1;
    }

    return 0;
}

static void ov17_0223F774(SysTask *param0, void *param1)
{
    UnkStruct_ov17_0223F744 *v0 = param1;

    if (BrightnessController_IsTransitionComplete(BRIGHTNESS_MAIN_SCREEN) == FALSE) {
        return;
    }

    v0->unk_08++;

    if (v0->unk_08 > v0->unk_0C[v0->unk_11]) {
        BrightnessController_StartTransition(6, 0, 4, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), BRIGHTNESS_MAIN_SCREEN);
        Sound_PlayEffect(1528);

        v0->unk_08 = 0;
        v0->unk_11++;

        if (v0->unk_11 >= v0->unk_10) {
            if (v0->unk_12 == 0) {
                ov17_0223F744(v0);
                return;
            } else if (v0->unk_12 != 0xff) {
                v0->unk_12--;
            }

            v0->unk_11 = 0;
        }
    }
}
