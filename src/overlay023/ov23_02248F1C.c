#include "overlay023/ov23_02248F1C.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0205E884_decl.h"

#include "field/field_system.h"
#include "overlay023/ov23_02241F74.h"
#include "overlay023/struct_ov23_0224942C_decl.h"

#include "bg_window.h"
#include "comm_player_manager.h"
#include "communication_system.h"
#include "field_message.h"
#include "graphics.h"
#include "gx_layers.h"
#include "math_util.h"
#include "narc.h"
#include "player_avatar.h"
#include "render_window.h"
#include "screen_fade.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"
#include "strbuf.h"
#include "sys_task_manager.h"
#include "text.h"
#include "unk_0200679C.h"

typedef struct {
    Strbuf *unk_00[32];
    Strbuf *unk_80;
    Strbuf *unk_84[2];
    int unk_8C;
    int unk_90;
    u16 unk_94[80];
} UnkStruct_ov23_02249724;

struct UnkStruct_ov23_0224942C_t {
    int unk_00;
    int unk_04[8][2];
    int unk_44[8][3];
    int unk_A4[17][4];
    FieldSystem *fieldSystem;
    BgConfig *unk_1B8;
    SpriteList *unk_1BC;
    G2dRenderer unk_1C0;
    SpriteResourceCollection *unk_34C[4];
    SpriteResource *unk_35C[4];
    SpriteResourcesHeader unk_36C;
    Sprite *unk_390[8];
    Sprite *unk_3B0[17];
    Window unk_3F4;
    int unk_404;
    int unk_408;
    int unk_40C;
    UnkStruct_ov23_02249724 unk_410;
};

int Unk_ov23_0225776C[8][2];

static void ov23_0224944C(BgConfig *param0, Window *param1);
static void ov23_02249584(UnkStruct_ov23_0224942C *param0);
static void ov23_02249214(PlayerAvatar *const playerAvatar, int param1[][2], int param2[][3]);
static void ov23_022491CC(int param0[][2], int param1[][3]);
static void ov23_022492C8(int param0[][3], Sprite *param1[]);
static void ov23_0224944C(BgConfig *param0, Window *param1);
static void ov23_02249438(BgConfig *param0);
static void ov23_0224966C(BgConfig *param0, Window *param1, int *param2, int *param3, int *param4, UnkStruct_ov23_02249724 *param5);
static void ov23_02249724(UnkStruct_ov23_02249724 *param0);
static void ov23_02249778(UnkStruct_ov23_02249724 *param0);
static int ov23_02249844(UnkStruct_ov23_02249724 *param0, Strbuf *param1);
static Strbuf *ov23_022498C4(UnkStruct_ov23_02249724 *param0);
static int ov23_02249900(UnkStruct_ov23_02249724 *param0);
static void ov23_0224937C(int param0[][4], Sprite *param1[]);
static void ov23_02249334(int param0[][4]);

static UnkStruct_ov23_0224942C *Unk_ov23_02257768;

static void ov23_02248F1C(SysTask *param0, void *param1)
{
    UnkStruct_ov23_0224942C *v0 = param1;
    BgConfig *v1 = v0->unk_1B8;
    int v2;

    Unk_ov23_02257768 = v0;

    switch (v0->unk_00) {
    case 0:
        ov23_0224944C(v1, &v0->unk_3F4);
        ov23_022491CC(v0->unk_04, v0->unk_44);
        ov23_02249724(&v0->unk_410);
        v0->unk_00++;
        break;
    case 1:
        ov23_02249584(v0);
        SpriteResourcesHeader_Init(&v0->unk_36C, 1000, 1000, 1000, 1000, 0xffffffff, 0xffffffff, 0, 0, v0->unk_34C[0], v0->unk_34C[1], v0->unk_34C[2], v0->unk_34C[3], NULL, NULL);

        {
            AffineSpriteListTemplate v3;

            v3.list = v0->unk_1BC;
            v3.resourceData = &v0->unk_36C;
            v3.position.x = FX32_CONST(32);
            v3.position.y = FX32_CONST(96) + (192 << FX32_SHIFT);
            v3.position.z = 0;
            v3.affineScale.x = FX32_ONE;
            v3.affineScale.y = FX32_ONE;
            v3.affineScale.z = FX32_ONE;
            v3.affineZRotation = 0;
            v3.priority = 0;
            v3.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
            v3.heapID = HEAP_ID_FIELD1;

            for (v2 = 0; v2 < (7 + 1); v2++) {
                v0->unk_390[v2] = SpriteList_AddAffine(&v3);
                Sprite_SetAnimateFlag(v0->unk_390[v2], 1);
                Sprite_SetDrawFlag(v0->unk_390[v2], FALSE);

                if (v2 == 0) {
                    Sprite_SetAnim(v0->unk_390[v2], 1);
                }
            }

            for (v2 = 0; v2 < 16 + 1; v2++) {
                v0->unk_3B0[v2] = SpriteList_AddAffine(&v3);
                Sprite_SetAnimateFlag(v0->unk_3B0[v2], 1);
                Sprite_SetDrawFlag(v0->unk_3B0[v2], FALSE);
                Sprite_SetAnim(v0->unk_3B0[v2], 2);
            }
        }

        GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
        v0->unk_00++;
        break;
    case 2:
        v0->unk_00++;
        break;
    case 3:
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 1);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 1);
        Bg_MaskPalette(BG_LAYER_SUB_0, 0);
        v0->unk_00++;
        break;
    case 4:
        v0->unk_00++;
        break;
    case 5:
        ov23_02249214(v0->fieldSystem->playerAvatar, v0->unk_04, v0->unk_44);
        ov23_022492C8(v0->unk_44, v0->unk_390);
        ov23_02249334(v0->unk_A4);
        ov23_0224937C(v0->unk_A4, v0->unk_3B0);
        ov23_0224966C(v0->unk_1B8, &v0->unk_3F4, &v0->unk_404, &v0->unk_408, &v0->unk_40C, &v0->unk_410);
        SpriteList_Update(v0->unk_1BC);
        break;
    case 6:
        if (FieldMessage_FinishedPrinting(v0->unk_404)) {
            v0->unk_00++;
        }
        break;
    case 7:
        SpriteTransfer_ResetCharTransfer(v0->unk_35C[0]);
        SpriteTransfer_ResetPlttTransfer(v0->unk_35C[1]);

        for (v2 = 0; v2 < 4; v2++) {
            SpriteResourceCollection_Delete(v0->unk_34C[v2]);
        }

        SpriteList_Delete(v0->unk_1BC);
        Window_EraseMessageBox(&v0->unk_3F4, 0);
        Window_Remove(&v0->unk_3F4);
        Bg_FreeTilemapBuffer(v1, BG_LAYER_SUB_3);

        ov23_02249438(v1);
        ov23_02249778(&v0->unk_410);

        v0->unk_00++;
        break;
    case 8:
        v0->fieldSystem->unk_6C = NULL;
        SysTask_FinishAndFreeParam(param0);
        break;
    }
}

static void ov23_022491CC(int param0[][2], int param1[][3])
{
    int v0;

    for (v0 = 0; v0 < (7 + 1); v0++) {
        param0[v0][0] = 0;
        param0[v0][1] = 0;
        param1[v0][0] = 0;
        param1[v0][1] = 0;
        param1[v0][2] = 0;

        Unk_ov23_0225776C[v0][0] = LCRNG_Next() % 500 + 50;
        Unk_ov23_0225776C[v0][1] = LCRNG_Next() % 500 + 50;
    }
}

static void ov23_02249214(PlayerAvatar *const playerAvatar, int param1[][2], int param2[][3])
{
    int v0;

    for (v0 = 0; v0 < (7 + 1); v0++) {
        param1[v0][0] = CommPlayer_XPos(v0);
        param1[v0][1] = CommPlayer_ZPos(v0);
    }

    if (CommSys_IsInitialized()) {
        if (CommSys_IsPlayerConnected(CommSys_CurNetId()) == 0) {
            param1[0][0] = Player_GetXPos(playerAvatar);
            param1[0][1] = Player_GetZPos(playerAvatar);
        } else {
            int v1 = param1[0][0];
            int v2 = param1[0][1];

            param1[0][0] = param1[CommSys_CurNetId()][0];
            param1[0][1] = param1[CommSys_CurNetId()][1];
            param1[CommSys_CurNetId()][0] = v1;
            param1[CommSys_CurNetId()][1] = v2;
        }
    }

    for (v0 = 0; v0 < (7 + 1); v0++) {
        if (!ov23_02242E58(param1[v0][0], param1[v0][1])) {
            param2[v0][0] = param1[v0][0] - 32;
            param2[v0][1] = param1[v0][1] - 64;
            param2[v0][2] = 60;
        } else {
            if (param2[v0][2] != 0) {
                if (param2[v0][0] >= 0) {
                    param2[v0][2]--;
                }
            }
        }
    }
}

static void ov23_022492C8(int param0[][3], Sprite *param1[])
{
    int v0;

    for (v0 = 0; v0 < (7 + 1); v0++) {
        if (param0[v0][2] != 0) {
            VecFx32 v1;

            v1.x = ((7 * 8 + 4) + ((((7 * 8 + 4) + 8 * 17 + 2) - (7 * 8 + 4)) * param0[v0][0]) / (32 * 14)) * FX32_ONE;
            v1.y = ((8 + 1) + ((((8 + 1) + 8 * 16) - (8 + 1)) * param0[v0][1]) / (32 * 13)) * FX32_ONE + (192 << FX32_SHIFT);
            v1.z = FX32_ONE;

            Sprite_SetPosition(param1[v0], &v1);
            Sprite_SetDrawFlag(param1[v0], TRUE);
        } else {
            Sprite_SetDrawFlag(param1[v0], FALSE);
        }
    }
}

static void ov23_02249334(int param0[][4])
{
    int v0, v1, v2, v3;

    for (v0 = 0; v0 < 16 + 1; v0++) {
        v1 = ov23_02242E78(v0);
        v2 = ov23_02242EE0(v0);
        v3 = ov23_02242F48(v0);

        if (!ov23_02242E58(v1, v2)) {
            param0[v0][0] = v1 - 32;
            param0[v0][1] = v2 - 64;
            param0[v0][2] = v3;
        } else {
            param0[v0][0] = 0;
            param0[v0][1] = 0;
            param0[v0][2] = 0;
        }
    }
}

static void ov23_0224937C(int param0[][4], Sprite *param1[])
{
    int v0;

    for (v0 = 0; v0 < 16 + 1; v0++) {
        if (param0[v0][0] != 0) {
            VecFx32 v1;

            v1.x = ((7 * 8 + 4) + ((((7 * 8 + 4) + 8 * 17 + 2) - (7 * 8 + 4)) * param0[v0][0]) / (32 * 14)) * FX32_ONE;
            v1.y = ((8 + 1) + ((((8 + 1) + 8 * 16) - (8 + 1)) * param0[v0][1]) / (32 * 13)) * FX32_ONE + (192 << FX32_SHIFT);
            v1.z = FX32_ONE;

            Sprite_SetPosition(param1[v0], &v1);

            if (param0[v0][2] != param0[v0][3]) {
                if (param0[v0][2] != 0) {
                    Sprite_SetAnim(param1[v0], param0[v0][2]);
                    Sprite_SetDrawFlag(param1[v0], TRUE);
                } else {
                    Sprite_SetDrawFlag(param1[v0], FALSE);
                }
            }
        } else {
            Sprite_SetDrawFlag(param1[v0], FALSE);
        }

        param0[v0][3] = param0[v0][2];
    }
}

UnkStruct_ov23_0224942C *ov23_02249404(FieldSystem *fieldSystem)
{
    SysTask *v1 = SysTask_StartAndAllocateParam(ov23_02248F1C, sizeof(UnkStruct_ov23_0224942C), 4, 4);
    UnkStruct_ov23_0224942C *v0 = SysTask_GetParam(v1);

    v0->fieldSystem = fieldSystem;
    v0->unk_1B8 = fieldSystem->bgConfig;

    return v0;
}

void ov23_0224942C(UnkStruct_ov23_0224942C *param0)
{
    if (param0->unk_00 == 5) {
        param0->unk_00 = 6;
    } else {
        GF_ASSERT("FALSE");
    }
}

static void ov23_02249438(BgConfig *param0)
{
    Bg_FreeTilemapBuffer(param0, BG_LAYER_SUB_0);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_SUB_1);
}

static void ov23_0224944C(BgConfig *param0, Window *param1)
{
    SetScreenColorBrightness(DS_SCREEN_SUB, COLOR_BLACK);
    ov23_02249438(param0);

    {
        BgTemplate v0 = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0x7000,
            .charBase = GX_BG_CHARBASE_0x04000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 1,
            .areaOver = 0,
            .mosaic = FALSE,
        };

        Bg_InitFromTemplate(param0, BG_LAYER_SUB_0, &v0, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 0);
    }
    {
        BgTemplate v1 = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0x7800,
            .charBase = GX_BG_CHARBASE_0x04000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 2,
            .areaOver = 0,
            .mosaic = FALSE,
        };

        Bg_InitFromTemplate(param0, BG_LAYER_SUB_1, &v1, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 0);
    }
    {
        BgTemplate v2 = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0x6800,
            .charBase = GX_BG_CHARBASE_0x00000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 0,
            .areaOver = 0,
            .mosaic = FALSE,
        };

        Bg_InitFromTemplate(param0, BG_LAYER_SUB_3, &v2, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 0);
        Bg_ClearTilemap(param0, BG_LAYER_SUB_3);
    }

    {
        NARC *v3;

        v3 = NARC_ctor(NARC_INDEX_DATA__UNDERG_RADAR, HEAP_ID_FIELD1);

        Graphics_LoadPaletteFromOpenNARC(v3, 0, 4, 0, 0x20 * 2, HEAP_ID_FIELD1);
        Graphics_LoadTilesToBgLayerFromOpenNARC(v3, 1, param0, 4, 0, 32 * 5 * 0x20, 0, HEAP_ID_FIELD1);
        Graphics_LoadTilemapToBgLayerFromOpenNARC(v3, 2, param0, 4, 0, 32 * 24 * 2, 0, HEAP_ID_FIELD1);
        NARC_dtor(v3);
    }

    FieldMessage_LoadTextPalettes(4, FALSE);
    Bg_ClearTilesRange(7, 32, 0, HEAP_ID_FIELD1);
    FieldMessage_AddWindow(param0, param1, 7);
    Window_FillTilemap(param1, 0);
    Graphics_LoadPalette(NARC_INDEX_DATA__UG_TRAP, 52, 4, 10 * 0x20, 4 * 0x20, HEAP_ID_FIELD1);
    ResetScreenMasterBrightness(DS_SCREEN_SUB);
}

static void ov23_02249584(UnkStruct_ov23_0224942C *param0)
{
    int v0;

    param0->unk_1BC = SpriteList_InitRendering((7 + 1) + 16 + 1, &param0->unk_1C0, HEAP_ID_FIELD1);

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_34C[v0] = SpriteResourceCollection_New(1, v0, HEAP_ID_FIELD1);
    }

    {
        NARC *v1;

        v1 = NARC_ctor(NARC_INDEX_DATA__UNDERG_RADAR, HEAP_ID_FIELD1);

        param0->unk_35C[0] = SpriteResourceCollection_AddTilesFrom(param0->unk_34C[0], v1, 4, 0, 1000, NNS_G2D_VRAM_TYPE_2DSUB, HEAP_ID_FIELD1);
        param0->unk_35C[1] = SpriteResourceCollection_AddPaletteFrom(param0->unk_34C[1], v1, 3, 0, 1000, NNS_G2D_VRAM_TYPE_2DSUB, 2, HEAP_ID_FIELD1);
        param0->unk_35C[2] = SpriteResourceCollection_AddFrom(param0->unk_34C[2], v1, 5, 0, 1000, 2, HEAP_ID_FIELD1);
        param0->unk_35C[3] = SpriteResourceCollection_AddFrom(param0->unk_34C[3], v1, 6, 0, 1000, 3, HEAP_ID_FIELD1);

        NARC_dtor(v1);
    }

    SpriteTransfer_RequestCharAtEnd(param0->unk_35C[0]);
    SpriteTransfer_RequestPlttFreeSpace(param0->unk_35C[1]);
}

static void ov23_0224966C(BgConfig *param0, Window *param1, int *param2, int *param3, int *param4, UnkStruct_ov23_02249724 *param5)
{
    Strbuf *v0;

    while (ov23_02242D60(param5->unk_80)) {
        ov23_02249844(param5, param5->unk_80);
    }

    switch (*param3) {
    case 0:
        if ((v0 = ov23_022498C4(param5)) != NULL) {
            *param2 = Text_AddPrinterWithParams(
                param1, FONT_MESSAGE, v0, 0, 16, TEXT_SPEED_FAST, NULL);
            *param3 = 1;
        }
        break;
    case 1:
        if (FieldMessage_FinishedPrinting(*param2)) {
            *param3 = 2;
            *param4 = 0;
        }
        break;
    case 2:
        if (ov23_02249900(param5) == 0) {
            Window_Scroll(param1, 0, 2, 0x0);
            Window_CopyToVRAM(param1);

            if (++(*param4) >= 8) {
                *param4 = 0;
                *param3 = 0;
            }
        }
        break;
    }
}

static void ov23_02249724(UnkStruct_ov23_02249724 *param0)
{
    int v0;

    for (v0 = 0; v0 < 32; v0++) {
        param0->unk_00[v0] = Strbuf_Init(50 * 2, HEAP_ID_FIELD1);
    }

    param0->unk_8C = 0;
    param0->unk_90 = 0;
    param0->unk_80 = Strbuf_Init(50 * 2, HEAP_ID_FIELD1);

    for (v0 = 0; v0 < 2; v0++) {
        param0->unk_84[v0] = Strbuf_Init(20 * 2 * 2, HEAP_ID_FIELD1);
    }
}

static void ov23_02249778(UnkStruct_ov23_02249724 *param0)
{
    int v0;

    for (v0 = 0; v0 < 32; v0++) {
        Strbuf_Free(param0->unk_00[v0]);
    }

    Strbuf_Free(param0->unk_80);

    for (v0 = 0; v0 < 2; v0++) {
        Strbuf_Free(param0->unk_84[v0]);
    }
}

static int ov23_022497B0(UnkStruct_ov23_02249724 *param0, Strbuf *param1)
{
    int v0, v1, v2;

    Strbuf_ToChars(param1, param0->unk_94, 20 * 2 * 2);

    v1 = 0;
    v0 = 0;

    while (param0->unk_94[v0] != 0xffff) {
        if (param0->unk_94[v0] == 0xe000) {
            v1++;
            v2 = v0;
        }

        v0++;
    }

    GF_ASSERT(v1 < 2);

    if (v1 == 0) {
        Strbuf_Copy(param0->unk_84[0], param1);
        return 1;
    } else {
        param0->unk_94[v2] = 0xffff;
        Strbuf_CopyChars(param0->unk_84[0], param0->unk_94);
        Strbuf_CopyChars(param0->unk_84[1], &param0->unk_94[v2 + 1]);
    }

    return 2;
}

static int ov23_02249844(UnkStruct_ov23_02249724 *param0, Strbuf *param1)
{
    int v0, v1, v2;

    v2 = ov23_022497B0(param0, param1);
    v0 = param0->unk_8C;

    for (v1 = 0; v1 < v2; v1++) {
        if (++v0 == 32) {
            v0 = 0;
        }

        if (v0 == param0->unk_90) {
            return 0;
        }
    }

    for (v1 = 0; v1 < v2; v1++) {
        Strbuf_Copy(param0->unk_00[param0->unk_8C], param0->unk_84[v1]);
        param0->unk_8C++;

        if (param0->unk_8C == 32) {
            param0->unk_8C = 0;
        }
    }

    return 1;
}

static Strbuf *ov23_022498C4(UnkStruct_ov23_02249724 *param0)
{
    int v0;

    if (param0->unk_8C != param0->unk_90) {
        v0 = param0->unk_90;

        if (++param0->unk_90 == 32) {
            param0->unk_90 = 0;
        }

        return param0->unk_00[v0];
    }

    return NULL;
}

static int ov23_02249900(UnkStruct_ov23_02249724 *param0)
{
    if (param0->unk_8C != param0->unk_90) {
        return 0;
    }

    return 1;
}
