#include "unk_020528D0.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0203A790_decl.h"
#include "struct_defs/struct_02099F80.h"

#include "field/field_system.h"

#include "bg_window.h"
#include "brightness_controller.h"
#include "field_map_change.h"
#include "field_overworld_state.h"
#include "field_system.h"
#include "field_task.h"
#include "field_transition.h"
#include "font.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "location.h"
#include "message.h"
#include "party.h"
#include "pokemon.h"
#include "render_window.h"
#include "save_player.h"
#include "screen_fade.h"
#include "script_manager.h"
#include "sound_playback.h"
#include "strbuf.h"
#include "string_template.h"
#include "system.h"
#include "text.h"
#include "unk_0203A7D8.h"
#include "unk_020553DC.h"
#include "unk_02070428.h"

typedef struct {
    int unk_00;
    FieldSystem *fieldSystem;
    BgConfig *unk_08;
    Window unk_0C;
    MessageLoader *unk_1C;
    StringTemplate *unk_20;
} UnkStruct_02052AA4;

static void sub_02052914(FieldSystem *fieldSystem, FieldTask *task);
static BOOL sub_020529C4(FieldTask *task);
static void sub_02052AA4(UnkStruct_02052AA4 *param0, u16 param1, u8 param2, u8 param3);

static const WindowTemplate Unk_020EC2F0 = {
    0x3,
    0x4,
    0x5,
    0x19,
    0xF,
    0xD,
    0x1
};

static void sub_020528D0(BgConfig *param0)
{
    static const UnkStruct_02099F80 v0 = {
        GX_VRAM_BG_128_B,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_128_C,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_64_E,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_0_A,
        GX_VRAM_TEXPLTT_01_FG
    };
    static const GraphicsModes v1 = {
        GX_DISPMODE_GRAPHICS,
        GX_BGMODE_0,
        GX_BGMODE_0,
        GX_BG0_AS_2D
    };
    static const BgTemplate v2 = {
        0,
        0,
        0x800,
        0,
        1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0xf800,
        GX_BG_CHARBASE_0x00000,
        GX_BG_EXTPLTT_01,
        1,
        0,
        0,
        0
    };

    GXLayers_SetBanks(&v0);
    SetAllGraphicsModes(&v1);
    Bg_InitFromTemplate(param0, BG_LAYER_MAIN_3, &v2, 0);
    Graphics_LoadPalette(NARC_INDEX_GRAPHIC__PL_FONT, 6, 0, 13 * 0x20, 0x20, HEAP_ID_FIELDMAP);
}

static void sub_02052914(FieldSystem *fieldSystem, FieldTask *task)
{
    UnkStruct_02052AA4 *v0 = Heap_AllocFromHeap(HEAP_ID_FIELDMAP, sizeof(UnkStruct_02052AA4));

    if (v0 == NULL) {
        GF_ASSERT(FALSE);
    }

    memset(v0, 0, sizeof(UnkStruct_02052AA4));

    v0->unk_00 = 0;
    v0->fieldSystem = fieldSystem;
    v0->unk_08 = BgConfig_New(HEAP_ID_FIELDMAP);

    sub_020528D0(v0->unk_08);

    v0->unk_1C = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0373, HEAP_ID_FIELDMAP);
    v0->unk_20 = StringTemplate_Default(HEAP_ID_FIELDMAP);

    Window_AddFromTemplate(v0->unk_08, &v0->unk_0C, &Unk_020EC2F0);
    StringTemplate_SetPlayerName(v0->unk_20, 0, SaveData_GetTrainerInfo(FieldSystem_GetSaveData(fieldSystem)));

    if (fieldSystem->location->mapId == MAP_HEADER_TWINLEAF_TOWN_PLAYER_HOUSE_1F) {
        sub_02052AA4(v0, 4, 0, 0);
    } else {
        sub_02052AA4(v0, 3, 0, 0);
    }

    Window_CopyToVRAM(&v0->unk_0C);
    FieldTask_InitCall(task, sub_020529C4, v0);

    return;
}

static BOOL sub_020529C4(FieldTask *task)
{
    UnkStruct_02052AA4 *v0 = FieldTask_GetEnv(task);

    switch (v0->unk_00) {
    case 0:
        StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_UNK_1, FADE_TYPE_MAX, FADE_TO_BLACK, 8, 1, HEAP_ID_FIELD_TASK);
        v0->unk_00++;
        break;
    case 1:
        if (IsScreenFadeDone()) {
            v0->unk_00++;
        }
        break;
    case 2:
        if ((gSystem.pressedKeys & PAD_BUTTON_A) || (gSystem.pressedKeys & PAD_BUTTON_B)) {
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_0, FADE_TYPE_UNK_0, FADE_TO_BLACK, 8, 1, HEAP_ID_FIELD_TASK);
            v0->unk_00++;
        }
        break;
    case 3:
        if (IsScreenFadeDone()) {
            Window_FillTilemap(&v0->unk_0C, 0);
            v0->unk_00++;
        }
        break;
    case 4:
        Window_EraseMessageBox(&v0->unk_0C, 0);
        Window_Remove(&v0->unk_0C);
        StringTemplate_Free(v0->unk_20);
        MessageLoader_Free(v0->unk_1C);
        Bg_FreeTilemapBuffer(v0->unk_08, BG_LAYER_MAIN_3);
        Heap_Free(v0->unk_08);
        Heap_Free(v0);

        return 1;
    }

    return 0;
}

static void sub_02052AA4(UnkStruct_02052AA4 *param0, u16 param1, u8 param2, u8 param3)
{
    Strbuf *v0 = Strbuf_Init(1024, HEAP_ID_FIELDMAP);
    Strbuf *v1 = Strbuf_Init(1024, HEAP_ID_FIELDMAP);

    Window_FillTilemap(&param0->unk_0C, 0);
    MessageLoader_GetStrbuf(param0->unk_1C, param1, v0);
    StringTemplate_Format(param0->unk_20, v1, v0);

    {
        u32 v2 = Font_CalcMaxLineWidth(FONT_SYSTEM, v1, 0);
        param2 = (u8)(param0->unk_0C.width * 8 - v2) / 2 - 4;
    }

    Text_AddPrinterWithParamsAndColor(&param0->unk_0C, FONT_SYSTEM, v1, param2, param3, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 2, 0), NULL);
    Strbuf_Free(v0);
    Strbuf_Free(v1);

    return;
}

BOOL sub_02052B2C(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    int *state = FieldTask_GetState(task);

    switch (*state) {
    case 0: {
        if ((fieldSystem != NULL) && (fieldSystem->saveData != NULL)) {
            Party_SetGiratinaForm(SaveData_GetParty(fieldSystem->saveData), GIRATINA_FORM_ALTERED);
        }
    }

        {
            Location location;
            FieldOverworldState *fieldState = SaveData_GetFieldOverworldState(fieldSystem->saveData);
            u16 warpId = FieldOverworldState_GetWarpId(fieldState);

            sub_0203A824(warpId, &location);
            sub_0203A7F0(warpId, FieldOverworldState_GetExitLocation(fieldState));
            FieldTask_ChangeMapByLocation(task, &location);
            FieldSystem_ClearPartnerTrainer(fieldSystem);
        }
        (*state)++;
        break;
    case 1:
        Sound_FadeOutBGM(0, 20);
        (*state)++;
        break;
    case 2:
        if (Sound_IsFadeActive() == FALSE) {
            sub_020553DC();
            (*state)++;
        }
        break;
    case 3:
        BrightnessController_SetScreenBrightness(-16, ((GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD) ^ GX_BLEND_PLANEMASK_BG3), BRIGHTNESS_MAIN_SCREEN);
        BrightnessController_SetScreenBrightness(-16, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), BRIGHTNESS_SUB_SCREEN);
        sub_02052914(fieldSystem, task);
        (*state)++;
        break;
    case 4:
        FieldTransition_StartMap(task);
        (*state)++;
        break;
    case 5:
        BrightnessController_SetScreenBrightness(0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), BRIGHTNESS_BOTH_SCREENS);

        if (sub_0203A7EC()
            == FieldOverworldState_GetWarpId(SaveData_GetFieldOverworldState(fieldSystem->saveData))) {
            ScriptManager_Start(task, 2020, NULL, NULL);
        } else {
            ScriptManager_Start(task, 2021, NULL, NULL);
        }

        (*state)++;
        break;
    case 6:
        return 1;
    }

    return 0;
}

void sub_02052C5C(FieldTask *task)
{
    FieldTask_InitCall(task, sub_02052B2C, NULL);
}
