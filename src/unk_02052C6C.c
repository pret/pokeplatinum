#include "unk_02052C6C.h"

#include <nitro.h>
#include <string.h>

#include "generated/game_records.h"

#include "struct_defs/struct_0202DF8C.h"
#include "struct_defs/struct_0203E234.h"
#include "struct_defs/struct_0203E274.h"
#include "struct_defs/struct_02099F80.h"

#include "field/field_system.h"
#include "savedata/save_table.h"

#include "bg_window.h"
#include "field_message.h"
#include "field_overworld_state.h"
#include "field_task.h"
#include "game_options.h"
#include "game_records.h"
#include "gx_layers.h"
#include "heap.h"
#include "item_use_pokemon.h"
#include "location.h"
#include "message.h"
#include "message_util.h"
#include "party.h"
#include "pokedex.h"
#include "render_window.h"
#include "rtc.h"
#include "save_player.h"
#include "savedata.h"
#include "screen_fade.h"
#include "sound_playback.h"
#include "strbuf.h"
#include "string_template.h"
#include "system_flags.h"
#include "trainer_info.h"
#include "unk_0202DF8C.h"
#include "unk_0203D1B8.h"
#include "unk_02054884.h"
#include "unk_020559DC.h"
#include "vars_flags.h"

typedef struct {
    BOOL unk_00;
    UnkStruct_0203E234 unk_04;
    UnkStruct_0203E274 unk_10;
    Window unk_1C;
    Strbuf *unk_2C;
    void *unk_30;
    int unk_34;
    int unk_38;
} UnkStruct_0205300C;

static void sub_02052F28(FieldSystem *fieldSystem, UnkStruct_0205300C *param1);
static void sub_02052FA8(FieldSystem *fieldSystem, UnkStruct_0205300C *param1);
static void sub_02053028(FieldSystem *fieldSystem, UnkStruct_0205300C *param1, int param2);
static void sub_0205300C(UnkStruct_0205300C *param0);
static void sub_02053098(FieldSystem *fieldSystem, UnkStruct_0205300C *param1);
static BOOL sub_02052FFC(UnkStruct_0205300C *param0);

static void sub_02052C6C(FieldSystem *fieldSystem, BOOL param1)
{
    HallOfFame *v0;
    Party *v1;
    RTCDate v2;
    int v3;

    v0 = SaveData_HallOfFame(fieldSystem->saveData, 11, &v3);

    if ((v3 != 1) || !param1) {
        HallOfFame_Init(v0);
    }

    v1 = SaveData_GetParty(fieldSystem->saveData);

    GetCurrentDate(&v2);
    sub_0202DFA8(v0, v1, &v2);
    SaveData_SaveHallOfFame(fieldSystem->saveData, v0);
    Heap_Free(v0);
}

static BOOL sub_02052CBC(FieldTask *param0)
{
    Location *v0;
    VarsFlags *v1;
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);
    UnkStruct_0205300C *v3 = FieldTask_GetEnv(param0);
    int *v4 = FieldTask_GetState(param0);
    UnkStruct_0203E234 *v5 = &v3->unk_04;

    switch (*v4) {
    case 0:
        sub_0203E234(fieldSystem, v5);
        (*v4)++;
        break;
    case 1:
        if (!FieldSystem_IsRunningApplication(fieldSystem)) {
            Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_FIELD1, 0x20000);
            sub_02052F28(fieldSystem, v3);
            StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_UNK_1, FADE_TYPE_UNK_1, FADE_TO_BLACK, 8, 1, HEAP_ID_FIELD3);
            (*v4)++;
        }
        break;
    case 2:
        if (IsScreenFadeDone()) {
            if (SaveData_OverwriteCheck(fieldSystem->saveData) == 0) {
                sub_02052FA8(fieldSystem, v3);
                (*v4)++;
            } else {
                (*v4) = 7;
            }
        }
        break;
    case 3:
        if (sub_02052FFC(v3)) {
            (*v4)++;
        }
        break;
    case 4: {
        int v6;

        Party_HealAllMembers(SaveData_GetParty(fieldSystem->saveData));
        SaveData_SetFullSaveRequired();
        v6 = SaveData_Save(fieldSystem->saveData);
        sub_02052C6C(fieldSystem, v3->unk_00);
        sub_0205300C(v3);
        sub_02053028(fieldSystem, v3, v6);
        (*v4)++;
    } break;
    case 5:
        if (sub_02052FFC(v3)) {
            Sound_PlayEffect(SEQ_SE_DP_SAVE);
            v3->unk_38 = 18;
            (*v4)++;
        }
        break;
    case 6:
        if (v3->unk_38) {
            v3->unk_38--;
        } else {
            (*v4)++;
        }
        break;
    case 7:
        StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_UNK_0, FADE_TYPE_UNK_0, FADE_TO_BLACK, 8, 1, HEAP_ID_FIELD3);
        (*v4)++;
        break;
    case 8:
        if (IsScreenFadeDone()) {
            sub_02053098(fieldSystem, v3);
            sub_0203E274(fieldSystem, &(v3->unk_10));
            (*v4)++;
        }
        break;
    case 9:
        if (!FieldSystem_IsRunningApplication(fieldSystem)) {
            Heap_Free(v3);
            Heap_Destroy(HEAP_ID_FIELD1);
            OS_ResetSystem(0);
            return 1;
        }
        break;
    }

    return 0;
}

void sub_02052E58(FieldTask *param0)
{
    FieldSystem *fieldSystem;
    Location *v1, *v2;
    VarsFlags *v3;
    TrainerInfo *v4;
    UnkStruct_0205300C *v5;
    GameRecords *v6;
    Party *v7;

    fieldSystem = FieldTask_GetFieldSystem(param0);
    v5 = Heap_Alloc(HEAP_ID_FIELD3, sizeof(UnkStruct_0205300C));
    v3 = SaveData_GetVarsFlags(fieldSystem->saveData);
    v4 = SaveData_GetTrainerInfo(fieldSystem->saveData);
    v1 = FieldOverworldState_GetSpecialLocation(SaveData_GetFieldOverworldState(fieldSystem->saveData));
    v2 = FieldOverworldState_GetExitLocation(SaveData_GetFieldOverworldState(fieldSystem->saveData));

    v5->unk_00 = SystemFlag_CheckGameCompleted(v3);
    v5->unk_04.unk_00 = SaveData_GetTrainerInfo(fieldSystem->saveData);
    v5->unk_04.unk_04 = SaveData_GetParty(fieldSystem->saveData);
    v5->unk_04.playTime = SaveData_GetPlayTime(fieldSystem->saveData);
    v5->unk_10.unk_00 = TrainerInfo_Gender(SaveData_GetTrainerInfo(fieldSystem->saveData));
    v5->unk_10.unk_04 = SystemFlag_CheckGameCompleted(v3);
    v5->unk_10.unk_08 = SaveData_GetPokedex(fieldSystem->saveData);

    if (SystemFlag_CheckGameCompleted(v3) == 0) {
        FieldSystem_RecordFirstCompletion(fieldSystem);
    }

    v7 = SaveData_GetParty(fieldSystem->saveData);

    Party_GiveChampionRibbons(v7);
    SetPlayerStartLocation(v1);
    SetPlayerFirstRespawnLocation(v2);
    SystemFlag_SetCommunicationClubAccessible(v3);
    SystemFlag_SetGameCompleted(v3);
    TrainerInfo_SetMainStoryCleared(v4);

    v6 = SaveData_GetGameRecords(fieldSystem->saveData);

    GameRecords_IncrementRecordValue(v6, RECORD_UNK_073);
    FieldTask_InitCall(param0, sub_02052CBC, v5);
}

static void sub_02052F28(FieldSystem *fieldSystem, UnkStruct_0205300C *param1)
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
        0,
        0,
        GX_BG_EXTPLTT_01,
        1,
        0,
        0,
        0
    };

    param1->unk_2C = NULL;
    param1->unk_30 = NULL;

    Window_Init(&param1->unk_1C);
    GXLayers_SetBanks(&v0);

    GX_SetDispSelect(GX_DISP_SELECT_MAIN_SUB);

    SetAllGraphicsModes(&v1);
    Bg_MaskPalette(BG_LAYER_MAIN_3, 0x0);
    Bg_InitFromTemplate(fieldSystem->bgConfig, BG_LAYER_MAIN_3, &v2, 0);
    Bg_ClearTilesRange(BG_LAYER_MAIN_3, 0x20, 0, HEAP_ID_FIELD3);
    Bg_FillTilemapRect(fieldSystem->bgConfig, 3, 0x0, 0, 0, 32, 32, 17);
    Bg_CopyTilemapBufferToVRAM(fieldSystem->bgConfig, 3);
}

static void sub_02052FA8(FieldSystem *fieldSystem, UnkStruct_0205300C *param1)
{
    Options *options = SaveData_GetOptions(fieldSystem->saveData);

    param1->unk_2C = MessageBank_GetNewStrbufFromNARC(26, 213, 15, 32);

    FieldMessage_AddWindow(fieldSystem->bgConfig, &param1->unk_1C, 3);
    FieldMessage_DrawWindow(&param1->unk_1C, options);

    param1->unk_34 = FieldMessage_Print(&param1->unk_1C, param1->unk_2C, options, 1);
    param1->unk_30 = Window_AddWaitDial(&param1->unk_1C, 1024 - (18 + 12));
}

static BOOL sub_02052FFC(UnkStruct_0205300C *param0)
{
    return FieldMessage_FinishedPrinting(param0->unk_34);
}

static void sub_0205300C(UnkStruct_0205300C *param0)
{
    Strbuf_Free(param0->unk_2C);
    DestroyWaitDial(param0->unk_30);
    FieldMessage_ClearWindow(&param0->unk_1C);
}

static void sub_02053028(FieldSystem *fieldSystem, UnkStruct_0205300C *param1, int param2)
{
    MessageLoader *v0 = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_COMMON_STRINGS, HEAP_ID_FIELD1);

    if (param2 == 2) {
        StringTemplate *v1;

        v1 = StringTemplate_Default(HEAP_ID_FIELD1);
        StringTemplate_SetPlayerName(v1, 0, SaveData_GetTrainerInfo(fieldSystem->saveData));
        param1->unk_2C = MessageUtil_ExpandedStrbuf(v1, v0, 16, HEAP_ID_FIELD1);
        StringTemplate_Free(v1);
    } else {
        param1->unk_2C = MessageLoader_GetNewStrbuf(v0, 18);
    }

    MessageLoader_Free(v0);
    param1->unk_34 = FieldMessage_Print(&param1->unk_1C, param1->unk_2C, SaveData_GetOptions(fieldSystem->saveData), 1);
}

static void sub_02053098(FieldSystem *fieldSystem, UnkStruct_0205300C *param1)
{
    if (param1->unk_2C) {
        Strbuf_Free(param1->unk_2C);
    }

    if (Window_IsInUse(&param1->unk_1C)) {
        Window_Remove(&param1->unk_1C);
    }

    Bg_FreeTilemapBuffer(fieldSystem->bgConfig, BG_LAYER_MAIN_3);
}
