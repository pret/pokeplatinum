#include "overlay005/fishing.h"

#include <nitro.h>
#include <string.h>

#include "generated/game_records.h"

#include "struct_decls/struct_0205E884_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"

#include "field/field_system.h"
#include "overlay005/ov5_021DFB54.h"
#include "overlay005/ov5_021F5A10.h"
#include "overlay006/wild_encounters.h"

#include "bg_window.h"
#include "encounter.h"
#include "field_battle_data_transfer.h"
#include "field_message.h"
#include "field_task.h"
#include "game_records.h"
#include "heap.h"
#include "map_object.h"
#include "math_util.h"
#include "message.h"
#include "overworld_anim_manager.h"
#include "party.h"
#include "player_avatar.h"
#include "pokemon.h"
#include "render_window.h"
#include "save_player.h"
#include "sound_playback.h"
#include "string_gf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "tv_episode_segment.h"
#include "unk_020655F4.h"

#include "res/text/bank/common_strings.h"

enum FishingActions {
    FUNC_FishingTask_Start,
    FUNC_FishingTask_PreparePlayerAvatar,
    FUNC_FishingTask_CastRod,
    FUNC_FishingTask_SetFishWait,
    FUNC_FishingTask_WaitForFish,
    FUNC_FishingTask_CheckForReelInFish,
    FUNC_FishingTask_CaughtFish,
    FUNC_FishingTask_ReelFishIn,
    FUNC_FishingTask_WaitCloseFishingMessage,
    FUNC_FishingTask_SetCaughtFish,
    FUNC_FishingTask_ReeledInEarly,
    FUNC_FishingTask_FishGotAway,
    FUNC_FishingTask_SetNoFishWait,
    FUNC_FishingTask_WaitForNoFish,
    FUNC_FishingTask_WaitCloseMessage,
    FUNC_FishingTask_PutRodAway,
    FUNC_FishingTask_DelayBeforeFishFishing,
    FUNC_FishingTask_FinishFishing
};

typedef struct {
    int state;
    u32 fishingRodItemID;
    BOOL isFishEncountered;
    enum EncounterFishingRodType rodType;
    FieldBattleDTO *fishEncounterDTO;
    SysTask *sysTask;
} FishingContext;

typedef struct {
    BOOL isFishEncountered;
    BOOL doneFishing;
    BOOL caughtFish;
    enum FishingActions fishingTask;
    int counter;
    int fishDelayCounter;
    int fishHookedCounter;
    enum EncounterFishingRodType rodType;
    FieldSystem *fieldSystem;
    OverworldAnimManager *unk_24;
    u8 printerID;
    String *formattedFishingMessage;
    String *fishingMessage;
    StringTemplate *strTemplate;
    Window window;
    MessageLoader *messageLoader;
} FishingTask;

static void GoFish(SysTask *task, void *fishingTaskParam);
static void *FishingTask_New(u32 fishingTaskSize);
static BOOL TryPressA(void);
static int TryPressAOrB(void);
static void FishingTask_Init(FishingTask *fishingTask);
static void FishingTask_Free(FishingTask *fishingTask);
static void ShowFishingWindow(FishingTask *fishingTask);
static void PrintFishingMessage(FishingTask *fishingTask, u32 messageID);
static int TryCloseFishingMessage(FishingTask *fishingTask);
static u16 ConvertRodTypeToRodItem(enum EncounterFishingRodType rodType);
static BOOL IsDoneFishing(SysTask *task);
static int HasCaughtFish(SysTask *task);

BOOL (*const sFishingActions[])(FishingTask *, PlayerAvatar *, MapObject *);
const int sRodTypeHookTimingWindow[];

void *FishingContext_Init(FieldSystem *fieldSystem, u32 heapID, enum EncounterFishingRodType rodType)
{
    FishingContext *fishingContext = Heap_AllocAtEnd(heapID, sizeof(FishingContext));

    memset(fishingContext, 0, sizeof(FishingContext));

    fishingContext->rodType = rodType;
    fishingContext->fishingRodItemID = ConvertRodTypeToRodItem(rodType);

    return fishingContext;
}

BOOL FieldTask_Fishing(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    FishingContext *fishingContext = FieldTask_GetEnv(taskMan);

    switch (fishingContext->state) {
    case 0:
        MapObjectMan_PauseAllMovement(fieldSystem->mapObjMan);
        fishingContext->fishEncounterDTO = NULL;
        fishingContext->isFishEncountered = WildEncounters_TryFishingEncounter(fieldSystem, fishingContext->rodType, &fishingContext->fishEncounterDTO);
        fishingContext->sysTask = StartFishingTask(fieldSystem, fishingContext->rodType, fishingContext->isFishEncountered);
        fishingContext->state++;
        break;
    case 1:
        if (IsDoneFishing(fishingContext->sysTask) == TRUE) {
            int caughtFish = HasCaughtFish(fishingContext->sysTask);

            FishingSysTask_Free(fishingContext->sysTask);

            if (caughtFish == TRUE) {
                Pokemon *wildFish = Party_GetPokemonBySlotIndex(fishingContext->fishEncounterDTO->parties[1], 0);
                FieldSystem_SaveTVEpisodeSegment_WhatsFishing(fieldSystem, TRUE, fishingContext->fishingRodItemID, wildFish);

                GameRecords_IncrementRecordValue(SaveData_GetGameRecords(fieldSystem->saveData), RECORD_CAUGHT_FISH);

                Encounter_StartVsWild(fieldSystem, taskMan, fishingContext->fishEncounterDTO);
                Heap_Free(fishingContext);

                return FALSE;
            }

            if (fishingContext->fishEncounterDTO != NULL) {
                FieldBattleDTO_Free(fishingContext->fishEncounterDTO);
            }

            MapObjectMan_UnpauseAllMovement(fieldSystem->mapObjMan);
            Heap_Free(fishingContext);

            return TRUE;
        }
        break;
    }

    return FALSE;
}

SysTask *StartFishingTask(FieldSystem *fieldSystem, enum EncounterFishingRodType rodType, BOOL isFishEncountered)
{
    SysTask *task;
    FishingTask *fishingTask = FishingTask_New(sizeof(FishingTask));

    fishingTask->fieldSystem = fieldSystem;
    fishingTask->rodType = rodType;
    fishingTask->isFishEncountered = isFishEncountered;

    task = SysTask_Start(GoFish, fishingTask, 128);

    return task;
}

BOOL IsDoneFishing(SysTask *task)
{
    FishingTask *fishingTask = SysTask_GetParam(task);
    return fishingTask->doneFishing;
}

BOOL HasCaughtFish(SysTask *task)
{
    FishingTask *fishingTask = SysTask_GetParam(task);
    return fishingTask->caughtFish;
}

void FishingSysTask_Free(SysTask *task)
{
    FishingTask *fishingTask = SysTask_GetParam(task);

    Heap_Free(fishingTask);
    SysTask_Done(task);
}

static void GoFish(SysTask *task, void *fishingTaskParam)
{
    FishingTask *fishingTask = fishingTaskParam;
    PlayerAvatar *playerAvatar = fishingTask->fieldSystem->playerAvatar;
    MapObject *playerMapObject = Player_MapObject(playerAvatar);

    while (sFishingActions[fishingTask->fishingTask](fishingTask, playerAvatar, playerMapObject)) {}
}

static BOOL FishingTask_Start(FishingTask *fishingTask, PlayerAvatar *playerAvatar, MapObject *playerMapObject)
{
    FishingTask_Init(fishingTask);
    MapObject_SetPauseMovementOff(playerMapObject);
    fishingTask->fishingTask = FUNC_FishingTask_PreparePlayerAvatar;

    return TRUE;
}

static BOOL FishingTask_PreparePlayerAvatar(FishingTask *fishingTask, PlayerAvatar *playerAvatar, MapObject *playerMapObject)
{
    if (LocalMapObj_IsAnimationSet(playerMapObject) == TRUE) {
        sub_020656AC(playerMapObject);
        PlayerAvatar_SetTransitionState(playerAvatar, PLAYER_TRANSITION_FISHING);
        PlayerAvatar_RequestChangeState(playerAvatar);
        sub_02062A0C(playerMapObject, MAP_OBJ_UNK_A0_01);
        fishingTask->fishingTask = FUNC_FishingTask_CastRod;
    }

    return FALSE;
}

static BOOL FishingTask_CastRod(FishingTask *fishingTask, PlayerAvatar *playerAvatar, MapObject *playerMapObject)
{
    fishingTask->counter++;

    if (fishingTask->counter == 10) {
        Sound_PlayEffect(SEQ_SE_DP_FW104);
    }

    if (fishingTask->counter < 34) {
        return FALSE;
    }

    if (fishingTask->isFishEncountered == TRUE) {
        fishingTask->fishingTask = FUNC_FishingTask_SetFishWait;
    } else {
        fishingTask->fishingTask = FUNC_FishingTask_SetNoFishWait;
    }

    fishingTask->counter = 0;
    return TRUE;
}

static BOOL FishingTask_SetFishWait(FishingTask *fishingTask, PlayerAvatar *playerAvatar, MapObject *playerMapObject)
{
    fishingTask->fishDelayCounter = ((LCRNG_Next() % 4) + 1) * 30;
    fishingTask->fishHookedCounter = sRodTypeHookTimingWindow[fishingTask->rodType];
    fishingTask->fishingTask = FUNC_FishingTask_WaitForFish;

    return TRUE;
}

static BOOL FishingTask_WaitForFish(FishingTask *fishingTask, PlayerAvatar *playerAvatar, MapObject *playerMapObject)
{
    fishingTask->fishDelayCounter--;

    if (TryPressA() == TRUE) {
        fishingTask->fishingTask = FUNC_FishingTask_ReeledInEarly;
        return TRUE;
    }

    if (fishingTask->fishDelayCounter > 0) {
        return FALSE;
    }

    sub_02062A0C(playerMapObject, MAP_OBJ_UNK_A0_02);

    fishingTask->unk_24 = ov5_021F5D8C(playerMapObject, 0, 1, 0);
    fishingTask->fishingTask = FUNC_FishingTask_CheckForReelInFish;

    return TRUE;
}

static BOOL FishingTask_CheckForReelInFish(FishingTask *fishingTask, PlayerAvatar *playerAvatar, MapObject *playerMapObject)
{
    fishingTask->fishHookedCounter--;

    if (TryPressA() == TRUE) {
        fishingTask->fishingTask = FUNC_FishingTask_CaughtFish;
        return TRUE;
    }

    if (fishingTask->fishHookedCounter > 0) {
        return FALSE;
    }

    fishingTask->fishingTask = FUNC_FishingTask_FishGotAway;

    return FALSE;
}

static BOOL FishingTask_CaughtFish(FishingTask *fishingTask, PlayerAvatar *playerAvatar, MapObject *playerMapObject)
{
    ov5_021F5C58(fishingTask->unk_24);
    sub_02062A0C(playerMapObject, MAP_OBJ_UNK_A0_03);

    fishingTask->counter = 0;
    fishingTask->fishingTask = FUNC_FishingTask_ReelFishIn;

    return FALSE;
}

static BOOL FishingTask_ReelFishIn(FishingTask *fishingTask, PlayerAvatar *playerAvatar, MapObject *playerMapObject)
{
    fishingTask->counter++;

    if (fishingTask->unk_24 != NULL) {
        OverworldAnimManager_Finish(fishingTask->unk_24);
        fishingTask->unk_24 = NULL;
    }

    if (fishingTask->counter > 15) {
        fishingTask->counter = 0;
        fishingTask->fishingTask = FUNC_FishingTask_WaitCloseFishingMessage;
        PrintFishingMessage(fishingTask, CommonStrings_Text_LandedAPokemon);
    }

    return FALSE;
}

static BOOL FishingTask_WaitCloseFishingMessage(FishingTask *fishingTask, PlayerAvatar *playerAvatar, MapObject *playerMapObject)
{
    if (TryCloseFishingMessage(fishingTask) == FALSE) {
        return FALSE;
    }

    fishingTask->fishingTask = FUNC_FishingTask_SetCaughtFish;
    return TRUE;
}

static BOOL FishingTask_SetCaughtFish(FishingTask *fishingTask, PlayerAvatar *playerAvatar, MapObject *playerMapObject)
{
    fishingTask->caughtFish = TRUE;
    fishingTask->fishingTask = FUNC_FishingTask_PutRodAway;

    return TRUE;
}

static BOOL FishingTask_ReeledInEarly(FishingTask *fishingTask, PlayerAvatar *playerAvatar, MapObject *playerMapObject)
{
    sub_02062A0C(playerMapObject, MAP_OBJ_UNK_A0_00);
    PrintFishingMessage(fishingTask, CommonStrings_Text_ReeledItInTooQuickly);

    fishingTask->counter = 16;
    fishingTask->fishingTask = FUNC_FishingTask_WaitCloseMessage;

    return TRUE;
}

static BOOL FishingTask_FishGotAway(FishingTask *fishingTask, PlayerAvatar *playerAvatar, MapObject *playerMapObject)
{
    sub_02062A0C(playerMapObject, MAP_OBJ_UNK_A0_00);
    PrintFishingMessage(fishingTask, CommonStrings_Text_ThePokemonGotAway);

    fishingTask->counter = 16;
    fishingTask->fishingTask = FUNC_FishingTask_WaitCloseMessage;

    GameRecords_IncrementRecordValue(SaveData_GetGameRecords(fishingTask->fieldSystem->saveData), RECORD_FISH_GOT_AWAY);

    FieldSystem_SaveTVEpisodeSegment_WhatsFishing(fishingTask->fieldSystem, FALSE, ConvertRodTypeToRodItem(fishingTask->rodType), NULL);

    return TRUE;
}

static BOOL FishingTask_SetNoFishWait(FishingTask *fishingTask, PlayerAvatar *playerAvatar, MapObject *playerMapObject)
{
    fishingTask->counter = 30 * 4;
    fishingTask->fishingTask = FUNC_FishingTask_WaitForNoFish;

    return TRUE;
}

static BOOL FishingTask_WaitForNoFish(FishingTask *fishingTask, PlayerAvatar *playerAvatar, MapObject *playerMapObject)
{
    fishingTask->counter--;

    if (TryPressA() == TRUE) {
        fishingTask->fishingTask = FUNC_FishingTask_ReeledInEarly;
        return TRUE;
    }

    if (fishingTask->counter) {
        return FALSE;
    }

    sub_02062A0C(playerMapObject, MAP_OBJ_UNK_A0_00);
    PrintFishingMessage(fishingTask, CommonStrings_Text_NotEvenANibble);

    fishingTask->counter = 16;
    fishingTask->fishingTask = FUNC_FishingTask_WaitCloseMessage;

    return FALSE;
}

static BOOL FishingTask_WaitCloseMessage(FishingTask *fishingTask, PlayerAvatar *playerAvatar, MapObject *playerMapObject)
{
    fishingTask->counter++;

    if (fishingTask->counter < 16) {
        return FALSE;
    }

    fishingTask->counter = 16;

    if (TryCloseFishingMessage(fishingTask) == FALSE) {
        return FALSE;
    }

    fishingTask->fishingTask = FUNC_FishingTask_PutRodAway;

    return TRUE;
}

static BOOL FishingTask_PutRodAway(FishingTask *fishingTask, PlayerAvatar *playerAvatar, MapObject *playerMapObject)
{
    if (fishingTask->unk_24 != NULL) {
        ov5_021F5C58(fishingTask->unk_24);
    }

    FishingTask_Free(fishingTask);

    int playerState = PlayerAvatar_GetPlayerState(playerAvatar);
    u32 playerTransition = Player_ConvertStateToTransition(playerState);

    PlayerAvatar_SetTransitionState(playerAvatar, playerTransition);
    PlayerAvatar_RequestChangeState(playerAvatar);

    fishingTask->counter = 0;
    fishingTask->fishingTask = FUNC_FishingTask_DelayBeforeFishFishing;

    return TRUE;
}

static BOOL FishingTask_DelayBeforeFishFishing(FishingTask *fishingTask, PlayerAvatar *playerAvatar, MapObject *playerMapObject)
{
    fishingTask->counter++;

    if (fishingTask->counter > 2) {
        fishingTask->fishingTask = FUNC_FishingTask_FinishFishing;
    }

    return FALSE;
}

static BOOL FishingTask_FinishFishing(FishingTask *fishingTask, PlayerAvatar *playerAvatar, MapObject *playerMapObject)
{
    if (fishingTask->unk_24 != NULL) {
        OverworldAnimManager_Finish(fishingTask->unk_24);
        fishingTask->unk_24 = NULL;
    }

    fishingTask->doneFishing = TRUE;
    return FALSE;
}

static BOOL (*const sFishingActions[])(FishingTask *, PlayerAvatar *, MapObject *) = {
    [FUNC_FishingTask_Start] = FishingTask_Start,
    [FUNC_FishingTask_PreparePlayerAvatar] = FishingTask_PreparePlayerAvatar,
    [FUNC_FishingTask_CastRod] = FishingTask_CastRod,
    [FUNC_FishingTask_SetFishWait] = FishingTask_SetFishWait,
    [FUNC_FishingTask_WaitForFish] = FishingTask_WaitForFish,
    [FUNC_FishingTask_CheckForReelInFish] = FishingTask_CheckForReelInFish,
    [FUNC_FishingTask_CaughtFish] = FishingTask_CaughtFish,
    [FUNC_FishingTask_ReelFishIn] = FishingTask_ReelFishIn,
    [FUNC_FishingTask_WaitCloseFishingMessage] = FishingTask_WaitCloseFishingMessage,
    [FUNC_FishingTask_SetCaughtFish] = FishingTask_SetCaughtFish,
    [FUNC_FishingTask_ReeledInEarly] = FishingTask_ReeledInEarly,
    [FUNC_FishingTask_FishGotAway] = FishingTask_FishGotAway,
    [FUNC_FishingTask_SetNoFishWait] = FishingTask_SetNoFishWait,
    [FUNC_FishingTask_WaitForNoFish] = FishingTask_WaitForNoFish,
    [FUNC_FishingTask_WaitCloseMessage] = FishingTask_WaitCloseMessage,
    [FUNC_FishingTask_PutRodAway] = FishingTask_PutRodAway,
    [FUNC_FishingTask_DelayBeforeFishFishing] = FishingTask_DelayBeforeFishFishing,
    [FUNC_FishingTask_FinishFishing] = FishingTask_FinishFishing
};

static void *FishingTask_New(u32 fishingTaskSize)
{
    void *fishingTask = Heap_AllocAtEnd(HEAP_ID_FIELD1, fishingTaskSize);

    GF_ASSERT(fishingTask != NULL);
    memset(fishingTask, 0, fishingTaskSize);

    return fishingTask;
}

static BOOL TryPressA(void)
{
    if (JOY_NEW(PAD_BUTTON_A)) {
        return TRUE;
    }

    return FALSE;
}

static int TryPressAOrB(void)
{
    if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
        return TRUE;
    }

    return FALSE;
}

static void FishingTask_Init(FishingTask *fishingTask)
{
    fishingTask->messageLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_COMMON_STRINGS, HEAP_ID_FIELD1);
    fishingTask->formattedFishingMessage = String_Init(0x400, HEAP_ID_FIELD1);
    fishingTask->fishingMessage = String_Init(0x400, HEAP_ID_FIELD1);
    fishingTask->strTemplate = StringTemplate_New(8, 64, HEAP_ID_FIELD1);
}

static void FishingTask_Free(FishingTask *fishingTask)
{
    StringTemplate_Free(fishingTask->strTemplate);
    String_Free(fishingTask->formattedFishingMessage);
    String_Free(fishingTask->fishingMessage);
    MessageLoader_Free(fishingTask->messageLoader);
}

static void ShowFishingWindow(FishingTask *fishingTask)
{
    FieldSystem *fieldSystem = fishingTask->fieldSystem;

    FieldMessage_AddWindow(fieldSystem->bgConfig, &fishingTask->window, BG_LAYER_MAIN_3);
    FieldMessage_DrawWindow(&fishingTask->window, SaveData_GetOptions(fieldSystem->saveData));
}

static void PrintFishingMessage(FishingTask *fishingTask, u32 messageID)
{
    ShowFishingWindow(fishingTask);

    FieldSystem *fieldSystem = fishingTask->fieldSystem;

    MessageLoader_GetString(fishingTask->messageLoader, messageID, fishingTask->fishingMessage);
    StringTemplate_Format(fishingTask->strTemplate, fishingTask->formattedFishingMessage, fishingTask->fishingMessage);

    fishingTask->printerID = FieldMessage_Print(&fishingTask->window, fishingTask->formattedFishingMessage, SaveData_GetOptions(fieldSystem->saveData), TRUE);
}

static int TryCloseFishingMessage(FishingTask *fishingTask)
{
    if (FieldMessage_FinishedPrinting(fishingTask->printerID) == TRUE && TryPressAOrB() == TRUE) {
        Window_EraseMessageBox(&fishingTask->window, FALSE);
        Window_Remove(&fishingTask->window);
        return TRUE;
    }

    return FALSE;
}

static u16 ConvertRodTypeToRodItem(enum EncounterFishingRodType rodType)
{
    switch (rodType) {
    default:
        GF_ASSERT(0);
    case FISHING_TYPE_OLD_ROD:
        return ITEM_OLD_ROD;
    case FISHING_TYPE_GOOD_ROD:
        return ITEM_GOOD_ROD;
    case FISHING_TYPE_SUPER_ROD:
        return ITEM_SUPER_ROD;
    }
}

static const int sRodTypeHookTimingWindow[] = {
    [FISHING_TYPE_OLD_ROD] = 45,
    [FISHING_TYPE_GOOD_ROD] = 30,
    [FISHING_TYPE_SUPER_ROD] = 15
};
