#include "unk_02052C6C.h"

#include <nitro.h>
#include <string.h>

#include "consts/game_records.h"

#include "struct_decls/struct_020508D4_decl.h"
#include "struct_decls/struct_party_decl.h"
#include "struct_defs/struct_0202DF8C.h"
#include "struct_defs/struct_0203E234.h"
#include "struct_defs/struct_0203E274.h"
#include "struct_defs/struct_02049FA8.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_02099F80.h"

#include "field/field_system.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"
#include "savedata/save_table.h"

#include "field_overworld_state.h"
#include "game_options.h"
#include "game_records.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "message_util.h"
#include "party.h"
#include "rtc.h"
#include "save_player.h"
#include "savedata.h"
#include "strbuf.h"
#include "string_template.h"
#include "trainer_info.h"
#include "unk_02005474.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02018340.h"
#include "unk_0202631C.h"
#include "unk_0202DF8C.h"
#include "unk_0203D178.h"
#include "unk_0203D1B8.h"
#include "unk_020508D4.h"
#include "unk_02054884.h"
#include "unk_020559DC.h"
#include "unk_0205D8CC.h"
#include "unk_0206A8DC.h"
#include "unk_02096420.h"
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

    v1 = Party_GetFromSavedata(fieldSystem->saveData);

    GetCurrentDate(&v2);
    sub_0202DFA8(v0, v1, &v2);
    SaveData_SaveHallOfFame(fieldSystem->saveData, v0);
    Heap_FreeToHeap(v0);
}

static BOOL sub_02052CBC(TaskManager *param0)
{
    Location *v0;
    VarsFlags *v1;
    FieldSystem *fieldSystem = TaskManager_FieldSystem(param0);
    UnkStruct_0205300C *v3 = TaskManager_Environment(param0);
    int *v4 = FieldTask_GetState(param0);
    UnkStruct_0203E234 *v5 = &v3->unk_04;

    switch (*v4) {
    case 0:
        sub_0203E234(fieldSystem, v5);
        (*v4)++;
        break;
    case 1:
        if (!sub_020509B4(fieldSystem)) {
            Heap_Create(3, 4, 0x20000);
            sub_02052F28(fieldSystem, v3);
            sub_0200F174(3, 1, 1, 0x0, 8, 1, 32);
            (*v4)++;
        }
        break;
    case 2:
        if (ScreenWipe_Done()) {
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

        HealAllPokemonInParty(Party_GetFromSavedata(fieldSystem->saveData));
        SaveData_SetFullSaveRequired();
        v6 = SaveData_Save(fieldSystem->saveData);
        sub_02052C6C(fieldSystem, v3->unk_00);
        sub_0205300C(v3);
        sub_02053028(fieldSystem, v3, v6);
        (*v4)++;
    } break;
    case 5:
        if (sub_02052FFC(v3)) {
            Sound_PlayEffect(1563);
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
        sub_0200F174(3, 0, 0, 0x0, 8, 1, 32);
        (*v4)++;
        break;
    case 8:
        if (ScreenWipe_Done()) {
            sub_02053098(fieldSystem, v3);
            sub_0203E274(fieldSystem, &(v3->unk_10));
            (*v4)++;
        }
        break;
    case 9:
        if (!sub_020509B4(fieldSystem)) {
            Heap_FreeToHeap(v3);
            Heap_Destroy(4);
            OS_ResetSystem(0);
            return 1;
        }
        break;
    }

    return 0;
}

void sub_02052E58(TaskManager *param0)
{
    FieldSystem *fieldSystem;
    Location *v1, *v2;
    VarsFlags *v3;
    TrainerInfo *v4;
    UnkStruct_0205300C *v5;
    GameRecords *v6;
    Party *v7;

    fieldSystem = TaskManager_FieldSystem(param0);
    v5 = Heap_AllocFromHeap(32, sizeof(UnkStruct_0205300C));
    v3 = SaveData_GetVarsFlags(fieldSystem->saveData);
    v4 = SaveData_GetTrainerInfo(fieldSystem->saveData);
    v1 = FieldOverworldState_GetSpecialLocation(SaveData_GetFieldOverworldState(fieldSystem->saveData));
    v2 = sub_0203A72C(SaveData_GetFieldOverworldState(fieldSystem->saveData));

    v5->unk_00 = sub_0206A954(v3);
    v5->unk_04.unk_00 = SaveData_GetTrainerInfo(fieldSystem->saveData);
    v5->unk_04.unk_04 = Party_GetFromSavedata(fieldSystem->saveData);
    v5->unk_04.playTime = SaveData_GetPlayTime(fieldSystem->saveData);
    v5->unk_10.unk_00 = TrainerInfo_Gender(SaveData_GetTrainerInfo(fieldSystem->saveData));
    v5->unk_10.unk_04 = sub_0206A954(v3);
    v5->unk_10.unk_08 = SaveData_Pokedex(fieldSystem->saveData);

    if (sub_0206A954(v3) == 0) {
        sub_02055C2C(fieldSystem);
    }

    v7 = Party_GetFromSavedata(fieldSystem->saveData);

    Party_GiveChampionRibbons(v7);
    sub_0203D178(v1);
    sub_0203D190(v2);
    sub_0206AD9C(v3);
    sub_0206A944(v3);
    TrainerInfo_SetMainStoryCleared(v4);

    v6 = SaveData_GetGameRecordsPtr(fieldSystem->saveData);

    GameRecords_IncrementRecordValue(v6, RECORD_UNK_073);
    FieldTask_Start(param0, sub_02052CBC, v5);
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
    static const UnkStruct_ov84_0223BA5C v1 = {
        GX_DISPMODE_GRAPHICS,
        GX_BGMODE_0,
        GX_BGMODE_0,
        GX_BG0_AS_2D
    };
    static const UnkStruct_ov97_0222DB78 v2 = {
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

    sub_02018368(&v1);
    sub_0201975C(3, 0x0);
    sub_020183C4(fieldSystem->unk_08, 3, &v2, 0);
    sub_02019690(3, 0x20, 0, 32);
    sub_02019CB8(fieldSystem->unk_08, 3, 0x0, 0, 0, 32, 32, 17);
    sub_02019448(fieldSystem->unk_08, 3);
}

static void sub_02052FA8(FieldSystem *fieldSystem, UnkStruct_0205300C *param1)
{
    Options *v0 = SaveData_Options(fieldSystem->saveData);

    param1->unk_2C = MessageBank_GetNewStrbufFromNARC(26, 213, 15, 32);

    FieldMessage_AddWindow(fieldSystem->unk_08, &param1->unk_1C, 3);
    FieldMessage_DrawWindow(&param1->unk_1C, v0);

    param1->unk_34 = FieldMessage_Print(&param1->unk_1C, param1->unk_2C, v0, 1);
    param1->unk_30 = sub_0200E7FC(&param1->unk_1C, 1024 - (18 + 12));
}

static BOOL sub_02052FFC(UnkStruct_0205300C *param0)
{
    return FieldMessage_FinishedPrinting(param0->unk_34);
}

static void sub_0205300C(UnkStruct_0205300C *param0)
{
    Strbuf_Free(param0->unk_2C);
    DeleteWaitDial(param0->unk_30);
    sub_0205D988(&param0->unk_1C);
}

static void sub_02053028(FieldSystem *fieldSystem, UnkStruct_0205300C *param1, int param2)
{
    MessageLoader *v0 = MessageLoader_Init(1, 26, 213, 4);

    if (param2 == 2) {
        StringTemplate *v1;

        v1 = StringTemplate_Default(4);
        StringTemplate_SetPlayerName(v1, 0, SaveData_GetTrainerInfo(fieldSystem->saveData));
        param1->unk_2C = MessageUtil_ExpandedStrbuf(v1, v0, 16, 4);
        StringTemplate_Free(v1);
    } else {
        param1->unk_2C = MessageLoader_GetNewStrbuf(v0, 18);
    }

    MessageLoader_Free(v0);
    param1->unk_34 = FieldMessage_Print(&param1->unk_1C, param1->unk_2C, SaveData_Options(fieldSystem->saveData), 1);
}

static void sub_02053098(FieldSystem *fieldSystem, UnkStruct_0205300C *param1)
{
    if (param1->unk_2C) {
        Strbuf_Free(param1->unk_2C);
    }

    if (BGL_WindowAdded(&param1->unk_1C)) {
        BGL_DeleteWindow(&param1->unk_1C);
    }

    sub_02019044(fieldSystem->unk_08, 3);
}
