#include "overlay056/ov56_022561C0.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0205B43C_decl.h"
#include "struct_defs/sentence.h"
#include "struct_defs/struct_0203330C.h"
#include "struct_defs/struct_0205C22C.h"
#include "struct_defs/struct_0205C924.h"
#include "struct_defs/struct_0205C95C.h"

#include "field/field_system.h"
#include "overlay056/struct_ov56_02256468_decl.h"

#include "bg_window.h"
#include "field_message.h"
#include "field_task.h"
#include "font.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "message_util.h"
#include "pal_pad.h"
#include "save_player.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"
#include "strbuf.h"
#include "string_template.h"
#include "sys_task_manager.h"
#include "system.h"
#include "text.h"
#include "touch_screen.h"
#include "trainer_info.h"
#include "unk_0200679C.h"
#include "unk_02014A84.h"
#include "unk_02033200.h"
#include "unk_0205B33C.h"

FS_EXTERN_OVERLAY(overlay56);

typedef struct {
    u16 unk_00;
    u16 unk_02;
    u16 unk_04;
    u16 unk_06;
} UnkStruct_ov56_02256294;

typedef struct {
    Window unk_00;
    Window unk_10;
    Window unk_20;
    int unk_30;
    int unk_34;
} UnkStruct_ov56_022562EC;

struct UnkStruct_ov56_02256468_t {
    int unk_00;
    UnkStruct_0205C22C *unk_04;
    UnkStruct_0205B43C *unk_08;
    FieldSystem *fieldSystem;
    TrainerInfo *unk_10;
    BgConfig *unk_14;
    StringTemplate *unk_18;
    MessageLoader *unk_1C;
    u16 *unk_20;
    NNSG2dScreenData *unk_24;
    SpriteList *unk_28;
    G2dRenderer unk_2C;
    SpriteResourceCollection *unk_1B8[4];
    SpriteResource *unk_1C8[4];
    SpriteResourcesHeader unk_1D8;
    Sprite *unk_1FC[8];
    int unk_21C;
    int unk_220;
    int unk_224;
    int unk_228;
    UnkStruct_ov56_022562EC unk_22C[3];
    UnkStruct_0205C95C *unk_2D4;
    UnkStruct_ov56_02256294 unk_2D8;
    int unk_2E0;
    int unk_2E4;
    BOOL unk_2E8;
    u8 unk_2EC;
    s8 unk_2ED;
    u8 unk_2EE;
    u8 unk_2EF;
    BOOL unk_2F0;
    u16 unk_2F4[2];
    SysTask *unk_2F8;
};

static void ov56_02256294(UnkStruct_ov56_02256468 *param0);
static void ov56_022564E4(BgConfig *param0);
static void ov56_02256508(BgConfig *param0);
static void ov56_02256634(UnkStruct_ov56_02256468 *param0);
static void ov56_02256704(UnkStruct_ov56_02256468 *param0);
static void ov56_022562EC(BgConfig *param0, UnkStruct_ov56_022562EC *param1);
static void ov56_022563E8(UnkStruct_ov56_022562EC *param0);
static void ov56_022568E0(UnkStruct_ov56_02256468 *param0);
static void ov56_022567FC(UnkStruct_ov56_02256468 *param0, int param1, UnkStruct_0205C924 *param2);
static void ov56_02256D04(UnkStruct_ov56_02256468 *param0);
static void ov56_022569E0(UnkStruct_ov56_02256468 *param0);
static void ov56_02256994(Sprite *param0, int param1);
static void ov56_02257098(UnkStruct_ov56_02256468 *param0);
static void ov56_02256EE8(UnkStruct_ov56_02256468 *param0, u32 param1, Sentence *param2, TrainerInfo *param3);
static int ov56_02256FC8(UnkStruct_ov56_02256468 *param0, Sentence *param1, int param2);
static int ov56_022567E4(UnkStruct_0205C95C *param0, int param1);
static int ov56_022567F0(int param0, int param1);
static int ov56_02256A68(UnkStruct_ov56_02256468 *param0);
static int ov56_02256BC0(UnkStruct_ov56_02256468 *param0);
static void ov56_02257100(UnkStruct_ov56_02256468 *param0);
static void ov56_02257048(UnkStruct_ov56_02256468 *param0, TrainerInfo *param1, Sentence *param2, u32 param3);
static Strbuf *ov56_02256E5C(PalPad *param0, u32 param1, StringTemplate *param2, MessageLoader *param3, TrainerInfo *param4);
static void ov56_02256D64(BgConfig *param0, NNSG2dScreenData *param1, UnkStruct_ov56_022562EC *param2, int param3, int param4, int *param5);
static void ov56_0225710C(UnkStruct_ov56_02256468 *param0);
static void ov56_0225712C(UnkStruct_ov56_02256468 *param0);
static BOOL ov56_02257174(const UnkStruct_ov56_02256468 *param0);
static void ov56_0225717C(UnkStruct_ov56_02256468 *param0, BOOL param1);
static BOOL ov56_02257184(const UnkStruct_ov56_02256468 *param0);
static void ov56_0225718C(UnkStruct_ov56_02256468 *param0, int param1);
static void ov56_022571D0(UnkStruct_ov56_02256468 *param0);

static void ov56_022561C0(SysTask *param0, void *param1)
{
    UnkStruct_ov56_02256468 *v0 = param1;
    BgConfig *v1 = v0->unk_14;
    int v2;

    if (v0->fieldSystem->unk_80 == NULL) {
        return;
    }

    switch (v0->unk_00) {
    case 0:
        ov56_02256508(v1);
        ov56_02256294(v0);
        SetAutorepeat(4, 8);
        ov56_0225710C(v0);
        ov56_0225717C(v0, 1);
        v0->unk_00++;
        break;
    case 1:
        ov56_02256634(v0);
        ov56_02256704(v0);
        Font_UseImmediateGlyphAccess(FONT_MESSAGE, 4);
        ov56_022562EC(v0->unk_14, v0->unk_22C);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 1);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 1);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 1);
        ov56_02257100(v0);
        v0->unk_00++;
        break;
    case 2:
        ov56_0225712C(v0);
        ov56_02257098(v0);
        ov56_022569E0(v0);
        ov56_02256D04(v0);
        ov56_022568E0(v0);
        ov56_022571D0(v0);
        SpriteList_Update(v0->unk_28);
        break;
    case 3:
        break;
    }
}

static void ov56_02256294(UnkStruct_ov56_02256468 *param0)
{
    int v0;

    param0->unk_2E8 = 0;
    param0->unk_2D8.unk_00 = 0;
    param0->unk_2D8.unk_02 = 0;
    param0->unk_2D8.unk_04 = 0;
    param0->unk_2D8.unk_06 = 0;
    param0->unk_18 = StringTemplate_Default(HEAP_ID_FIELD);
    param0->unk_1C = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNION_ROOM, HEAP_ID_FIELD);
    param0->unk_20 = Graphics_GetScrnData(NARC_INDEX_GRAPHIC__UNIONROOM, 3, 1, &(param0->unk_24), 4);
}

static void ov56_022562EC(BgConfig *param0, UnkStruct_ov56_022562EC *param1)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        Window_Add(param0, &param1[v0].unk_00, 4 + v0, 1, 1 + v0 * 8, 8, 2, 12, (32 * 5) + v0 * (8 * 2));
        Window_FillTilemap(&param1[v0].unk_00, 0x0);

        Window_CopyToVRAM(&param1[v0].unk_00);

        Window_Add(param0, &param1[v0].unk_10, 4 + v0, 2, 3 + v0 * 8, 27, 5, 12, ((32 * 5) + (8 * 2) * 3) + v0 * (27 * 5));
        Window_FillTilemap(&param1[v0].unk_10, 0x0);
        Window_CopyToVRAM(&param1[v0].unk_10);

        Window_Add(param0, &param1[v0].unk_20, 4 + v0, 12, 1 + v0 * 8, 15, 2, 12, (((32 * 5) + (8 * 2) * 3) + (27 * 5) * 3) + v0 * (15 * 2));
        Window_FillTilemap(&param1[v0].unk_20, 0x0);
        Window_CopyToVRAM(&param1[v0].unk_20);
    }
}

static void ov56_022563E8(UnkStruct_ov56_022562EC *param0)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        Window_Remove(&param0[v0].unk_10);
        Window_Remove(&param0[v0].unk_00);
        Window_Remove(&param0[v0].unk_20);
    }
}

UnkStruct_ov56_02256468 *ov56_02256410(FieldSystem *fieldSystem)
{
    SysTask *v1 = SysTask_StartAndAllocateParam(ov56_022561C0, sizeof(UnkStruct_ov56_02256468), 4, 4);
    UnkStruct_ov56_02256468 *v0 = SysTask_GetParam(v1);

    v0->fieldSystem = fieldSystem;
    v0->unk_14 = fieldSystem->bgConfig;
    v0->unk_04 = fieldSystem->unk_80;
    v0->unk_08 = fieldSystem->unk_7C;
    v0->unk_10 = SaveData_GetTrainerInfo(fieldSystem->saveData);
    v0->unk_00 = 0;
    v0->unk_2F8 = v1;
    v0->unk_2D4 = fieldSystem->unk_80->unk_478;

    return v0;
}

void ov56_02256468(UnkStruct_ov56_02256468 *param0)
{
    if (param0->unk_00 == 2) {
        BgConfig *v0 = param0->unk_14;
        int v1;

        param0->unk_00 = 3;

        Font_UseLazyGlyphAccess(FONT_MESSAGE);
        SpriteTransfer_ResetCharTransfer(param0->unk_1C8[0]);
        SpriteTransfer_ResetPlttTransfer(param0->unk_1C8[1]);

        for (v1 = 0; v1 < 4; v1++) {
            SpriteResourceCollection_Delete(param0->unk_1B8[v1]);
        }

        SpriteList_Delete(param0->unk_28);
        MessageLoader_Free(param0->unk_1C);
        StringTemplate_Free(param0->unk_18);

        ov56_022563E8(param0->unk_22C);
        ov56_022564E4(v0);

        Heap_FreeToHeap(param0->unk_20);
        SysTask_FinishAndFreeParam(param0->unk_2F8);
    } else {
        GF_ASSERT(0);
    }
}

static void ov56_022564E4(BgConfig *param0)
{
    Bg_FreeTilemapBuffer(param0, BG_LAYER_SUB_0);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_SUB_1);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_SUB_2);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_SUB_3);
}

static void ov56_02256508(BgConfig *param0)
{
    ov56_022564E4(param0);

    {
        BgTemplate v0 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x6000,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(param0, BG_LAYER_SUB_0, &v0, 0);
        Bg_ClearTilemap(param0, BG_LAYER_SUB_0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 0);
    }

    {
        BgTemplate v1 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x6800,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            2,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(param0, BG_LAYER_SUB_1, &v1, 0);
        Bg_ClearTilemap(param0, BG_LAYER_SUB_1);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 0);
    }

    {
        BgTemplate v2 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x7000,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            2,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(param0, BG_LAYER_SUB_2, &v2, 0);
        Bg_ClearTilemap(param0, BG_LAYER_SUB_2);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
    }

    {
        BgTemplate v3 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x7800,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            2,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(param0, BG_LAYER_SUB_3, &v3, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 0);
    }

    Graphics_LoadPalette(NARC_INDEX_GRAPHIC__UNIONROOM, 0, 4, 0, 0x20 * 3, HEAP_ID_FIELD);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__UNIONROOM, 2, param0, 7, 0, (32 * 5) * 0x20, 1, HEAP_ID_FIELD);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__UNIONROOM, 4, param0, 7, 0, 32 * 24 * 2, 1, HEAP_ID_FIELD);
    FieldMessage_LoadTextPalettes(4, FALSE);
}

static void ov56_02256634(UnkStruct_ov56_02256468 *param0)
{
    int v0;

    param0->unk_28 = SpriteList_InitRendering(10, &param0->unk_2C, HEAP_ID_FIELD);

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_1B8[v0] = SpriteResourceCollection_New(1, v0, HEAP_ID_FIELD);
    }

    param0->unk_1C8[0] = SpriteResourceCollection_AddTiles(param0->unk_1B8[0], 74, 5, 1, 999, NNS_G2D_VRAM_TYPE_2DSUB, HEAP_ID_FIELD);
    param0->unk_1C8[1] = SpriteResourceCollection_AddPalette(param0->unk_1B8[1], 74, 1, 0, 999, NNS_G2D_VRAM_TYPE_2DSUB, 1, HEAP_ID_FIELD);
    param0->unk_1C8[2] = SpriteResourceCollection_Add(param0->unk_1B8[2], 74, 6, 1, 999, 2, HEAP_ID_FIELD);
    param0->unk_1C8[3] = SpriteResourceCollection_Add(param0->unk_1B8[3], 74, 7, 1, 999, 3, HEAP_ID_FIELD);

    SpriteTransfer_RequestCharAtEnd(param0->unk_1C8[0]);
    SpriteTransfer_RequestPlttFreeSpace(param0->unk_1C8[1]);
}

static const int Unk_ov56_02257238[] = {
    0x0,
    0xA0,
    0x60
};

static void ov56_02256704(UnkStruct_ov56_02256468 *param0)
{
    int v0;

    SpriteResourcesHeader_Init(&param0->unk_1D8, 999, 999, 999, 999, 0xffffffff, 0xffffffff, 0, 0, param0->unk_1B8[0], param0->unk_1B8[1], param0->unk_1B8[2], param0->unk_1B8[3], NULL, NULL);

    {
        AffineSpriteListTemplate v1;

        v1.list = param0->unk_28;
        v1.resourceData = &param0->unk_1D8;
        v1.position.z = 0;
        v1.affineScale.x = FX32_ONE;
        v1.affineScale.y = FX32_ONE;
        v1.affineScale.z = FX32_ONE;
        v1.affineZRotation = 0;
        v1.priority = 0;
        v1.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
        v1.heapID = HEAP_ID_FIELD;

        for (v0 = 0; v0 < 3; v0++) {
            v1.position.x = FX32_CONST(256 - 24);
            v1.position.y = FX32_CONST(Unk_ov56_02257238[v0]) + (192 << FX32_SHIFT);

            param0->unk_1FC[v0] = SpriteList_AddAffine(&v1);

            Sprite_SetAnimateFlag(param0->unk_1FC[v0], 1);
            Sprite_SetAnim(param0->unk_1FC[v0], v0);
        }
    }
}

static int ov56_022567E4(UnkStruct_0205C95C *param0, int param1)
{
    param1++;

    if (param1 == 30) {
        param1 = 0;
    }

    return param1;
}

static int ov56_022567F0(int param0, int param1)
{
    int v0 = param0 + param1;

    if (v0 >= 30) {
        v0 -= 30;
    }

    return v0;
}

static void ov56_022567FC(UnkStruct_ov56_02256468 *param0, int param1, UnkStruct_0205C924 *param2)
{
    param0->unk_22C[param1].unk_30 = param2->unk_10;

    Bg_CopyToTilemapRect(param0->unk_14, 7, 0, param1 * 8, 32, 8, param0->unk_24->rawData, 0, 24 * param0->unk_22C[param1].unk_30, 32, 48);
    Window_FillTilemap(&param0->unk_22C[param1].unk_00, 0x0);
    Window_FillTilemap(&param0->unk_22C[param1].unk_10, 0x0);
    Window_FillTilemap(&param0->unk_22C[param1].unk_20, 0x0);
    Text_AddPrinterWithParamsAndColor(&param0->unk_22C[param1].unk_00, FONT_MESSAGE, param2->unk_00, 0, 1, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Text_AddPrinterWithParamsAndColor(&param0->unk_22C[param1].unk_10, FONT_MESSAGE, param2->unk_04, 0, 6, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Window_ScheduleCopyToVRAM(&param0->unk_22C[param1].unk_00);
    Window_ScheduleCopyToVRAM(&param0->unk_22C[param1].unk_10);

    if (param2->unk_08) {
        Text_AddPrinterWithParamsAndColor(&param0->unk_22C[param1].unk_20, FONT_MESSAGE, param2->unk_08, 0, 1, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    }

    Window_ScheduleCopyToVRAM(&param0->unk_22C[param1].unk_20);
}

static void ov56_022568E0(UnkStruct_ov56_02256468 *param0)
{
    int v0, v1;
    int v2 = ov56_022567F0(param0->unk_2D4->unk_34C, param0->unk_2D8.unk_04);
    int v3 = param0->unk_2D4->unk_348;

    if (v3 > 3) {
        v3 = 3;
    }

    if (param0->unk_2D8.unk_04 != param0->unk_2E0) {
        ov56_02257100(param0);
        param0->unk_2E0 = param0->unk_2D8.unk_04;
    }

    if (param0->unk_2E8 == 1) {
        for (v0 = 0; v0 < v3; v0++) {
            ov56_022567FC(param0, v0, &param0->unk_2D4->unk_00[v2]);
            v2 = ov56_022567E4(param0->unk_2D4, v2);
        }

        DC_FlushRange((void *)Bg_GetTilemapBuffer(param0->unk_14, 7), 32 * 24 * 2);
        Bg_CopyTilemapBufferRangeToVRAM(param0->unk_14, 7, Bg_GetTilemapBuffer(param0->unk_14, 7), 32 * 24 * 2, 0);

        param0->unk_2E8 = 0;
    }
}

static const TouchScreenRect Unk_ov56_02257264[] = {
    { 0x0, 0x20, 0xE8, 0xF8 },
    { 0xA0, 0x20, 0xE8, 0xF8 },
    { 0x0, 0x40, 0x0, 0xE8 },
    { 0x40, 0x80, 0x0, 0xE8 },
    { 0x80, 0xC0, 0x0, 0xE8 },
    { 0x30, 0x90, 0xE8, 0x100 },
    { 0xff, 0x0, 0x0, 0x0 }
};

static const TouchScreenRect Unk_ov56_02257250[] = {
    { 0x30, 0x90, 0xE8, 0x100 },
    { 0x0, 0x40, 0x0, 0xE8 },
    { 0x40, 0x80, 0x0, 0xE8 },
    { 0x80, 0xC0, 0x0, 0xE8 },
    { 0xff, 0x0, 0x0, 0x0 }
};

static void ov56_02256994(Sprite *param0, int param1)
{
    VecFx32 v0;

    v0.x = FX32_CONST(256 - 24);
    v0.y = FX32_CONST(param1) + (192 << FX32_SHIFT);
    v0.z = 0;

    Sprite_SetPosition(param0, &v0);
}

static void ov56_022569E0(UnkStruct_ov56_02256468 *param0)
{
    param0->unk_2D8.unk_00 = param0->unk_2D4->unk_348;

    if ((param0->unk_2D8.unk_00 > 3) && (param0->unk_2D8.unk_02 <= 3)) {
        param0->unk_2D8.unk_06 = 1;
        param0->unk_2D8.unk_04 = param0->unk_2D8.unk_00 - 3;
    }

    Sprite_SetDrawFlag(param0->unk_1FC[2], param0->unk_2D8.unk_06);

    if (param0->unk_2D8.unk_06) {
        if (ov56_02257184(param0) == 1) {
            int v0, v1;

            v1 = (8 * 4 + 16) + (param0->unk_2D8.unk_04 * (192 - 8 * 8 - 16 * 2)) / (param0->unk_2D8.unk_00 - 3);
            ov56_02256994(param0->unk_1FC[2], v1);
        }
    }

    param0->unk_2D8.unk_02 = param0->unk_2D8.unk_00;
}

static int ov56_02256A68(UnkStruct_ov56_02256468 *param0)
{
    int v0, v1, v2, v3;
    WMBssDesc *v4;
    UnkStruct_0203330C *v5;

    v0 = TouchScreen_CheckRectangleHeld(Unk_ov56_02257264);
    v3 = ov56_02257174(param0);

    if (v0 != 0xffffffff) {
        switch (v0) {
        case 0:
            ov56_0225718C(param0, v0);

            if (v3 == 1) {
                if (param0->unk_2D8.unk_04 != 0) {
                    Sound_PlayEffect(SEQ_SE_DP_BUTTON3);
                    param0->unk_2D8.unk_04--;
                }

                param0->unk_228 = v0 - 2;
            }
            break;
        case 1:
            ov56_0225718C(param0, v0);

            if (v3 == 1) {
                if (param0->unk_2D8.unk_04 < param0->unk_2D8.unk_00 - 3) {
                    Sound_PlayEffect(SEQ_SE_DP_BUTTON3);
                    param0->unk_2D8.unk_04++;
                }

                param0->unk_228 = v0 - 2;
            }
            break;
        case 5:
            param0->unk_228 = v0 - 2;
            break;
        default:
            if (gSystem.touchPressed == 0) {
                break;
            }

            if (param0->unk_2D4->unk_348 >= (v0 - 1)) {
                v2 = ov56_022567F0(param0->unk_2D4->unk_34C, param0->unk_2D8.unk_04 + v0 - 2);

                for (v1 = 0; v1 < 10; v1++) {
                    v4 = sub_02033F3C(v1);

                    if (v4 != NULL) {
                        v5 = (UnkStruct_0203330C *)&v4->gameInfo.userGameInfo;

                        if ((param0->unk_04->unk_0C[v1].unk_01 == 2) && (v5->unk_00 == param0->unk_2D4->unk_00[v2].unk_0C)) {
                            Sound_PlayEffect(SEQ_SE_DP_BUTTON3);
                            param0->unk_04->unk_0C[v1].unk_03 = 1;
                            break;
                        }
                    }
                }

                {
                    TrainerInfo *v6 = sub_02033F9C();

                    if (param0->unk_2D4->unk_00[v2].unk_0C == TrainerInfo_ID(v6)) {
                        Sound_PlayEffect(SEQ_SE_DP_BUTTON3);
                        param0->unk_04->unk_0C[50].unk_03 = 1;
                    }
                }
            }

            param0->unk_228 = v0 - 2;
            break;
        }
    }

    return v0;
}

static int ov56_02256BC0(UnkStruct_ov56_02256468 *param0)
{
    int v0 = TouchScreen_CheckRectangleHeld(Unk_ov56_02257250);

    if (v0 != 0xffffffff) {
        u32 v1, v2;

        switch (v0) {
        case 0:
            ov56_0225717C(param0, 0);
            TouchScreen_GetHoldState(&v1, &v2);
            ov56_02256994(param0->unk_1FC[2], v2);

            if (param0->unk_2D8.unk_00 > 3) {
                int v3, v4;

                v3 = (192 - 8 * 8 - 16 * 2) / (param0->unk_2D8.unk_00 - 2);

                for (v4 = 0; v4 < param0->unk_2D8.unk_00 - 2; v4++) {
                    if ((v2 >= (8 * 4 + 16) + v3 * v4) && (v2 < (8 * 4 + 16) + v3 * (v4 + 1))) {
                        param0->unk_2D8.unk_04 = v4;
                        break;
                    }
                }
            }
            break;
        default:
            if (param0->unk_2D4->unk_348 >= v0) {
                if (param0->unk_228 == (v0 - 1)) {
                    if (param0->unk_22C[v0 - 1].unk_34 < 2 * 2 + 1) {
                        param0->unk_22C[v0 - 1].unk_34++;
                    }
                }
            }
            break;
        }
    } else {
        ov56_0225717C(param0, 1);
    }

    return v0;
}

static void ov56_02256C84(UnkStruct_ov56_02256468 *param0)
{
    if (gSystem.heldKeys & PAD_BUTTON_L) {
        ov56_0225718C(param0, 0);

        if (gSystem.pressedKeysRepeatable & PAD_BUTTON_L) {
            if (param0->unk_2D8.unk_04 != 0) {
                param0->unk_2D8.unk_04--;
                Sound_PlayEffect(SEQ_SE_DP_BUTTON3);
            }
        }
    } else if (gSystem.heldKeys & PAD_BUTTON_R) {
        ov56_0225718C(param0, 1);

        if (gSystem.pressedKeysRepeatable & PAD_BUTTON_R) {
            if (param0->unk_2D8.unk_04 < param0->unk_2D8.unk_00 - 3) {
                param0->unk_2D8.unk_04++;
                Sound_PlayEffect(SEQ_SE_DP_BUTTON3);
            }
        }
    }
}

static void ov56_02256D04(UnkStruct_ov56_02256468 *param0)
{
    int v0 = 0xffffffff;

    if (!FieldSystem_IsRunningTask(param0->fieldSystem)) {
        int v1;

        v1 = ov56_02256A68(param0);
        v0 = ov56_02256BC0(param0);

        if ((v1 == 0xffffffff) && (v0 == 0xffffffff)) {
            ov56_02256C84(param0);
        }
    }

    ov56_02256D64(param0->unk_14, param0->unk_24, param0->unk_22C, v0 - 1, param0->unk_2D4->unk_348, &param0->unk_2E4);
}

static const int Unk_ov56_02257244[] = {
    0x0,
    0x3,
    0x5
};

static void ov56_02256D64(BgConfig *param0, NNSG2dScreenData *param1, UnkStruct_ov56_022562EC *param2, int param3, int param4, int *param5)
{
    int v0, v1 = 0;

    if (param4 > 3) {
        param4 = 3;
    }

    for (v0 = 0; v0 < param4; v0++) {
        if (param3 != v0) {
            if (param2[v0].unk_34 != 0) {
                param2[v0].unk_34--;
            }
        }

        v1 += param2[v0].unk_34;
    }

    if ((v1 == 0) && (*param5 == 0)) {
        *param5 = v1;
        return;
    }

    *param5 = v1;

    for (v0 = 0; v0 < param4; v0++) {
        int v2 = param2[v0].unk_34 / 2;

        Bg_CopyToTilemapRect(param0, 7, 0, v0 * 8, 32, 8, param1->rawData, 0, 24 * param2[v0].unk_30 + 8 * v2, 32, 48);
        Bg_SetOffset(param0, BG_LAYER_SUB_0 + v0, 3, Unk_ov56_02257244[v2]);
    }

    DC_FlushRange((void *)Bg_GetTilemapBuffer(param0, 7), 32 * 24 * 2);
    Bg_CopyTilemapBufferRangeToVRAM(param0, 7, Bg_GetTilemapBuffer(param0, 7), 32 * 24 * 2, 0);
}

static Strbuf *ov56_02256E5C(PalPad *param0, u32 param1, StringTemplate *param2, MessageLoader *param3, TrainerInfo *param4)
{
    Strbuf *v0 = NULL;
    Strbuf *v1;
    int v2 = 0;

    if (param1 != TrainerInfo_ID(param4)) {
        v2 = PalPad_TrainerIsFriend(param0, param1);
    }

    if (v2 > 0) {
        if (v2 == 1) {
            StringTemplate_SetPlayerName(param2, 0, param4);
        } else if (v2 >= 2) {
            int v3 = v2 - 2;

            v1 = Strbuf_Init(10, HEAP_ID_89);

            Strbuf_CopyChars(v1, PalPad_GetTrainerNamePointer(param0, v3));
            StringTemplate_SetStrbuf(param2, 0, v1, 0, 0, PalPad_GetTrainerRegionCode(param0, v3));
            Strbuf_Free(v1);
        }

        v0 = MessageUtil_ExpandedStrbuf(param2, param3, 208, HEAP_ID_89);
    }

    return v0;
}

static void ov56_02256EE8(UnkStruct_ov56_02256468 *param0, u32 param1, Sentence *param2, TrainerInfo *param3)
{
    UnkStruct_0205C95C *v0 = param0->unk_2D4;
    PalPad *v1 = param0->unk_04->unk_474;
    int *v2;

    if (v0->unk_348 == 30) {
        v2 = &v0->unk_34C;
    } else {
        v2 = &v0->unk_348;
    }

    if (v0->unk_00[*v2].unk_04 != NULL) {
        Strbuf_Free(v0->unk_00[*v2].unk_04);
    }

    if (v0->unk_00[*v2].unk_08 != NULL) {
        Strbuf_Free(v0->unk_00[*v2].unk_08);
    }

    Strbuf_CopyChars(v0->unk_00[*v2].unk_00, TrainerInfo_Name(param3));

    v0->unk_00[*v2].unk_14 = *param2;
    v0->unk_00[*v2].unk_0C = param1;
    v0->unk_00[*v2].unk_10 = TrainerInfo_Gender(param3);
    v0->unk_00[*v2].unk_04 = sub_02014B34(param2, HEAP_ID_89);
    v0->unk_00[*v2].unk_08 = ov56_02256E5C(v1, param1, param0->unk_18, param0->unk_1C, param0->unk_10);

    (*v2)++;

    if (v0->unk_34C == 30) {
        v0->unk_34C = 0;
    }
}

static int ov56_02256FC8(UnkStruct_ov56_02256468 *param0, Sentence *param1, int param2)
{
    int v0, v1;

    if (!sub_02014BBC(param1)) {
        return 0;
    }

    for (v0 = 0; v0 < param0->unk_2D4->unk_348; v0++) {
        if (param2 == param0->unk_2D4->unk_00[v0].unk_0C) {
            if (sub_02014C88(param1, &param0->unk_2D4->unk_00[v0].unk_14)) {
                break;
            }
        }
    }

    if ((v0 != param0->unk_2D4->unk_348) && (param0->unk_2D4->unk_348 != 0)) {
        return 0;
    }

    if (param2 == param0->unk_2D4->unk_00[v0].unk_0C) {
        (void)0;
    } else if (sub_02014C88(param1, &param0->unk_2D4->unk_00[v0].unk_14)) {
        (void)0;
    }

    return 1;
}

static void ov56_02257048(UnkStruct_ov56_02256468 *param0, TrainerInfo *param1, Sentence *param2, u32 param3)
{
    int v0 = 0;

    if (param0->unk_2D8.unk_04 == param0->unk_2D8.unk_00 - 3) {
        v0 = 1;
    }

    ov56_02256EE8(param0, param3, param2, param1);

    if (param0->unk_2D8.unk_06) {
        if (v0) {
            param0->unk_2D8.unk_04 = param0->unk_2D4->unk_348 - 3;
        }
    }

    ov56_02257100(param0);
}

static void ov56_02257098(UnkStruct_ov56_02256468 *param0)
{
    int v0, v1;
    WMBssDesc *v2;
    UnkStruct_0203330C *v3;
    Sentence *v4;
    TrainerInfo *v5;
    Sentence v6;

    if (FieldSystem_IsRunningTask(param0->fieldSystem)) {
        return;
    }

    for (v0 = 0; v0 < 16; v0++) {
        v2 = sub_02033F3C(v0);

        if (v2 != NULL) {
            v3 = (UnkStruct_0203330C *)&v2->gameInfo.userGameInfo;
            v4 = (Sentence *)&v3->unk_08;

            if (ov56_02256FC8(param0, v4, v3->unk_00)) {
                ov56_02257048(param0, sub_02033FB0(v0), v4, v3->unk_00);
            }
        }
    }

    if ((v4 = sub_0205C028(param0->unk_08)) != NULL) {
        u32 v7 = TrainerInfo_ID(param0->unk_10);
        ov56_02257048(param0, param0->unk_10, v4, v7);
    }
}

static void ov56_02257100(UnkStruct_ov56_02256468 *param0)
{
    param0->unk_2E8 = 1;
}

static void ov56_0225710C(UnkStruct_ov56_02256468 *param0)
{
    param0->unk_2EC = 0;
    param0->unk_2EE = 8;
    param0->unk_2EF = 4;
    param0->unk_2ED = param0->unk_2EE;
}

static void ov56_0225712C(UnkStruct_ov56_02256468 *param0)
{
    param0->unk_2EC = 0;

    if (gSystem.touchPressed) {
        param0->unk_2EC = 1;
    } else {
        if (gSystem.touchHeld) {
            param0->unk_2ED--;

            if (param0->unk_2ED < 0) {
                param0->unk_2EC = 1;
                param0->unk_2ED = param0->unk_2EF;
            }
        } else {
            param0->unk_2ED = param0->unk_2EE;
        }
    }
}

static BOOL ov56_02257174(const UnkStruct_ov56_02256468 *param0)
{
    return param0->unk_2EC;
}

static void ov56_0225717C(UnkStruct_ov56_02256468 *param0, BOOL param1)
{
    param0->unk_2F0 = param1;
}

static BOOL ov56_02257184(const UnkStruct_ov56_02256468 *param0)
{
    return param0->unk_2F0;
}

static void ov56_0225718C(UnkStruct_ov56_02256468 *param0, int param1)
{
    u16 v0;
    u16 v1;

    v0 = Sprite_GetAnimFrame(param0->unk_1FC[param1]);
    v1 = Sprite_GetActiveAnim(param0->unk_1FC[param1]);

    if ((v0 > 1) || (v1 != param1 + 4)) {
        Sprite_SetAnim(param0->unk_1FC[param1], param1 + 4);
    }

    param0->unk_2F4[param1] = 1;
}

static void ov56_022571D0(UnkStruct_ov56_02256468 *param0)
{
    int v0;
    u16 v1;

    for (v0 = 0; v0 < 2; v0++) {
        v1 = Sprite_GetAnimFrame(param0->unk_1FC[v0]);

        if (param0->unk_2F4[v0] == 1) {
            if (v1 >= 1) {
                Sprite_SetAnimateFlag(param0->unk_1FC[v0], 0);
            }

            param0->unk_2F4[v0] = 0;
        } else {
            if (Sprite_GetAnimateFlag(param0->unk_1FC[v0]) == 0) {
                Sprite_SetAnimateFlag(param0->unk_1FC[v0], 1);
                Sprite_SetAnimFrame(param0->unk_1FC[v0], 1 + 1);
            }
        }
    }
}
