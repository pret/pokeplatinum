#include "clear_game.h"

#include <nitro.h>
#include <string.h>

#include "constants/field_base_tiles.h"
#include "constants/heap.h"
#include "constants/narc.h"
#include "generated/game_records.h"
#include "generated/text_banks.h"

#include "struct_defs/clear_game_player_info.h"
#include "struct_defs/struct_0203E234.h"
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
#include "hall_of_fame_entries.h"
#include "heap.h"
#include "item_use_pokemon.h"
#include "location.h"
#include "main.h"
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
#include "string_gf.h"
#include "string_template.h"
#include "system_flags.h"
#include "trainer_info.h"
#include "unk_0203D1B8.h"
#include "unk_02054884.h"
#include "unk_020559DC.h"
#include "vars_flags.h"

#include "res/text/bank/common_strings.h"

typedef struct ClearGameStruct {
    BOOL gameCompleted;
    HallOfFameDisplayData displayData;
    ClearGamePlayerInfo playerInfo;
    Window window;
    String *string;
    void *dial;
    int printerID;
    int delay;
} ClearGameStruct;

static void sub_02052F28(FieldSystem *fieldSystem, ClearGameStruct *clearGameStruct);
static void sub_02052FA8(FieldSystem *fieldSystem, ClearGameStruct *clearGameStruct);
static void sub_02053028(FieldSystem *fieldSystem, ClearGameStruct *clearGameStruct, int saveResult);
static void ClearGame_FreeStringDestroyDialClearWindow(ClearGameStruct *clearGameStruct);
static void ClearGame_FreeStringRemoveWindowFreeTilemapBuffer(FieldSystem *fieldSystem, ClearGameStruct *clearGameStruct);
static BOOL ClearGame_FieldMessageFinishedPrinting(ClearGameStruct *clearGameStruct);

static void ClearGame_AddHallOfFameEntry(FieldSystem *fieldSystem, BOOL gameCompleted)
{
    Party *party;
    RTCDate date;
    int resultCode;
    HallOfFame *hallOfFame = SaveData_HallOfFame(fieldSystem->saveData, HEAP_ID_FIELD2, &resultCode);

    if (resultCode != LOAD_RESULT_OK || !gameCompleted) {
        HallOfFame_Init(hallOfFame);
    }

    party = SaveData_GetParty(fieldSystem->saveData);

    GetCurrentDate(&date);
    HallOfFame_AddEntry(hallOfFame, party, &date);
    SaveData_SaveHallOfFame(fieldSystem->saveData, hallOfFame);
    Heap_Free(hallOfFame);
}

static BOOL FieldTask_DoClearGameSequence(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    ClearGameStruct *clearGameStruct = FieldTask_GetEnv(task);
    int *state = FieldTask_GetState(task);
    HallOfFameDisplayData *displayData = &clearGameStruct->displayData;

    switch (*state) {
    case 0:
        FieldTask_StartHallOfFame(fieldSystem, displayData);
        (*state)++;
        break;
    case 1:
        if (!FieldSystem_IsRunningApplication(fieldSystem)) {
            Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_FIELD1, HEAP_SIZE_FIELD1);
            sub_02052F28(fieldSystem, clearGameStruct);
            StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 8, 1, HEAP_ID_FIELD3);
            (*state)++;
        }
        break;
    case 2:
        if (IsScreenFadeDone()) {
            if (SaveData_OverwriteCheck(fieldSystem->saveData) == FALSE) {
                sub_02052FA8(fieldSystem, clearGameStruct);
                (*state)++;
            } else {
                (*state) = 7;
            }
        }
        break;
    case 3:
        if (ClearGame_FieldMessageFinishedPrinting(clearGameStruct)) {
            (*state)++;
        }
        break;
    case 4: {
        int saveResult;

        Party_HealAllMembers(SaveData_GetParty(fieldSystem->saveData));
        SaveData_SetFullSaveRequired();
        saveResult = SaveData_Save(fieldSystem->saveData);
        ClearGame_AddHallOfFameEntry(fieldSystem, clearGameStruct->gameCompleted);
        ClearGame_FreeStringDestroyDialClearWindow(clearGameStruct);
        sub_02053028(fieldSystem, clearGameStruct, saveResult);
        (*state)++;
    } break;
    case 5:
        if (ClearGame_FieldMessageFinishedPrinting(clearGameStruct)) {
            Sound_PlayEffect(SEQ_SE_DP_SAVE);
            clearGameStruct->delay = 18;
            (*state)++;
        }
        break;
    case 6:
        if (clearGameStruct->delay) {
            clearGameStruct->delay--;
        } else {
            (*state)++;
        }
        break;
    case 7:
        StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 8, 1, HEAP_ID_FIELD3);
        (*state)++;
        break;
    case 8:
        if (IsScreenFadeDone()) {
            ClearGame_FreeStringRemoveWindowFreeTilemapBuffer(fieldSystem, clearGameStruct);
            sub_0203E274(fieldSystem, &(clearGameStruct->playerInfo));
            (*state)++;
        }
        break;
    case 9:
        if (!FieldSystem_IsRunningApplication(fieldSystem)) {
            Heap_Free(clearGameStruct);
            Heap_Destroy(HEAP_ID_FIELD1);
            OS_ResetSystem(RESET_CLEAN);
            return TRUE;
        }
        break;
    }

    return FALSE;
}

void ClearGame(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    Location *startLocation, *firstRespawnLocation;
    VarsFlags *varsFlags;
    TrainerInfo *trainerInfo;
    ClearGameStruct *clearGameStruct = Heap_Alloc(HEAP_ID_FIELD3, sizeof(ClearGameStruct));
    GameRecords *gameRecords;
    Party *party;

    varsFlags = SaveData_GetVarsFlags(fieldSystem->saveData);
    trainerInfo = SaveData_GetTrainerInfo(fieldSystem->saveData);
    startLocation = FieldOverworldState_GetSpecialLocation(SaveData_GetFieldOverworldState(fieldSystem->saveData));
    firstRespawnLocation = FieldOverworldState_GetExitLocation(SaveData_GetFieldOverworldState(fieldSystem->saveData));

    clearGameStruct->gameCompleted = SystemFlag_CheckGameCompleted(varsFlags);
    clearGameStruct->displayData.trainerInfo = SaveData_GetTrainerInfo(fieldSystem->saveData);
    clearGameStruct->displayData.party = SaveData_GetParty(fieldSystem->saveData);
    clearGameStruct->displayData.playTime = SaveData_GetPlayTime(fieldSystem->saveData);
    clearGameStruct->playerInfo.gender = TrainerInfo_Gender(SaveData_GetTrainerInfo(fieldSystem->saveData));
    clearGameStruct->playerInfo.gameCompleted = SystemFlag_CheckGameCompleted(varsFlags);
    clearGameStruct->playerInfo.pokedex = SaveData_GetPokedex(fieldSystem->saveData);

    if (SystemFlag_CheckGameCompleted(varsFlags) == FALSE) {
        FieldSystem_RecordFirstCompletion(fieldSystem);
    }

    party = SaveData_GetParty(fieldSystem->saveData);

    Party_GiveChampionRibbons(party);
    SetPlayerStartLocation(startLocation);
    SetPlayerFirstRespawnLocation(firstRespawnLocation);
    SystemFlag_SetCommunicationClubAccessible(varsFlags);
    SystemFlag_SetGameCompleted(varsFlags);
    TrainerInfo_SetMainStoryCleared(trainerInfo);

    gameRecords = SaveData_GetGameRecords(fieldSystem->saveData);

    GameRecords_IncrementRecordValue(gameRecords, RECORD_TIMES_ENTERED_HALL_OF_FAME);
    FieldTask_InitCall(task, FieldTask_DoClearGameSequence, clearGameStruct);
}

static void sub_02052F28(FieldSystem *fieldSystem, ClearGameStruct *clearGameStruct)
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
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = 0,
        .charBase = 0,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 1,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    clearGameStruct->string = NULL;
    clearGameStruct->dial = NULL;

    Window_Init(&clearGameStruct->window);
    GXLayers_SetBanks(&v0);

    GX_SetDispSelect(GX_DISP_SELECT_MAIN_SUB);

    SetAllGraphicsModes(&v1);
    Bg_MaskPalette(BG_LAYER_MAIN_3, 0x0);
    Bg_InitFromTemplate(fieldSystem->bgConfig, BG_LAYER_MAIN_3, &v2, 0);
    Bg_ClearTilesRange(BG_LAYER_MAIN_3, 0x20, 0, HEAP_ID_FIELD3);
    Bg_FillTilemapRect(fieldSystem->bgConfig, BG_LAYER_MAIN_3, 0x0, 0, 0, 32, 32, TILEMAP_FILL_VAL_INCLUDES_PALETTE);
    Bg_CopyTilemapBufferToVRAM(fieldSystem->bgConfig, 3);
}

static void sub_02052FA8(FieldSystem *fieldSystem, ClearGameStruct *clearGameStruct)
{
    Options *options = SaveData_GetOptions(fieldSystem->saveData);

    clearGameStruct->string = MessageBank_GetNewStringFromNARC(NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_COMMON_STRINGS, CommonStrings_Text_SavingDontTurnOffThePower, HEAP_ID_FIELD3);

    FieldMessage_AddWindow(fieldSystem->bgConfig, &clearGameStruct->window, BG_LAYER_MAIN_3);
    FieldMessage_DrawWindow(&clearGameStruct->window, options);

    clearGameStruct->printerID = FieldMessage_Print(&clearGameStruct->window, clearGameStruct->string, options, 1);
    clearGameStruct->dial = Window_AddWaitDial(&clearGameStruct->window, BASE_TILE_SCROLLING_MESSAGE_BOX);
}

static BOOL ClearGame_FieldMessageFinishedPrinting(ClearGameStruct *clearGameStruct)
{
    return FieldMessage_FinishedPrinting(clearGameStruct->printerID);
}

static void ClearGame_FreeStringDestroyDialClearWindow(ClearGameStruct *clearGameStruct)
{
    String_Free(clearGameStruct->string);
    DestroyWaitDial(clearGameStruct->dial);
    FieldMessage_ClearWindow(&clearGameStruct->window);
}

static void sub_02053028(FieldSystem *fieldSystem, ClearGameStruct *clearGameStruct, int saveResult)
{
    MessageLoader *msgLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_COMMON_STRINGS, HEAP_ID_FIELD1);

    if (saveResult == SAVE_RESULT_OK) {
        StringTemplate *strTemplate = StringTemplate_Default(HEAP_ID_FIELD1);
        StringTemplate_SetPlayerName(strTemplate, 0, SaveData_GetTrainerInfo(fieldSystem->saveData));
        clearGameStruct->string = MessageUtil_ExpandedString(strTemplate, msgLoader, CommonStrings_Text_PlayerSavedTheGame, HEAP_ID_FIELD1);
        StringTemplate_Free(strTemplate);
    } else {
        clearGameStruct->string = MessageLoader_GetNewString(msgLoader, CommonStrings_Text_SaveError);
    }

    MessageLoader_Free(msgLoader);
    clearGameStruct->printerID = FieldMessage_Print(&clearGameStruct->window, clearGameStruct->string, SaveData_GetOptions(fieldSystem->saveData), 1);
}

static void ClearGame_FreeStringRemoveWindowFreeTilemapBuffer(FieldSystem *fieldSystem, ClearGameStruct *clearGameStruct)
{
    if (clearGameStruct->string) {
        String_Free(clearGameStruct->string);
    }

    if (Window_IsInUse(&clearGameStruct->window)) {
        Window_Remove(&clearGameStruct->window);
    }

    Bg_FreeTilemapBuffer(fieldSystem->bgConfig, BG_LAYER_MAIN_3);
}
