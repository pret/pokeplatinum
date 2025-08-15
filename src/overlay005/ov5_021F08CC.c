#include "overlay005/ov5_021F08CC.h"

#include <nitro.h>
#include <string.h>

#include "generated/game_records.h"

#include "struct_decls/struct_0205E884_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"

#include "field/field_system.h"
#include "overlay005/ov5_021DFB54.h"
#include "overlay005/ov5_021F5A10.h"
#include "overlay006/wild_encounters.h"
#include "overlay101/struct_ov101_021D5D90_decl.h"

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
#include "party.h"
#include "player_avatar.h"
#include "pokemon.h"
#include "render_window.h"
#include "save_player.h"
#include "sound_playback.h"
#include "strbuf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "unk_020655F4.h"
#include "unk_0206CCB0.h"
#include "unk_020711EC.h"

#include "res/text/bank/common_strings.h"

enum FishingActions {
    FUNC_ov5_021F0A30,
    FUNC_ov5_021F0A48,
    FUNC_ov5_021F0A80,
    FUNC_ov5_021F0AB8,
    FUNC_ov5_021F0AEC,
    FUNC_ov5_021F0B30,
    FUNC_ov5_021F0B5C,
    FUNC_ov5_021F0B7C,
    FUNC_ov5_021F0BB0,
    FUNC_ov5_021F0BC8,
    FUNC_ov5_021F0BD4,
    FUNC_ov5_021F0BF4,
    FUNC_ov5_021F0C34,
    FUNC_ov5_021F0C40,
    FUNC_ov5_021F0C84,
    FUNC_ov5_021F0CB0,
    FUNC_ov5_021F0CEC,
    FUNC_ov5_021F0D00
};

typedef struct {
    int state;
    u32 fishingRodItemID;
    BOOL isFishEncountered;
    enum ENCOUNTER_FISHING_ROD_TYPE rodType;
    FieldBattleDTO *fishEncounterDTO;
    SysTask *sysTask;
} FishingEncounterInfo;

typedef struct {
    BOOL isFishEncountered;
    int unk_04;
    BOOL caughtFish;
    enum FishingActions fishingTask;
    int unk_10;
    int unk_14;
    int unk_18;
    enum ENCOUNTER_FISHING_ROD_TYPE rodType;
    FieldSystem *fieldSystem;
    UnkStruct_ov101_021D5D90 *unk_24;
    u8 printerID;
    Strbuf *formattedFishingMessage;
    Strbuf *fishingMessage;
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
static u16 ConvertRodTypeToRodItem(enum ENCOUNTER_FISHING_ROD_TYPE rodType);
static int ov5_021F09D8(SysTask *task);
static int HasCaughtFish(SysTask *task);

BOOL (*const sFishingActions[])(FishingTask *, PlayerAvatar *, MapObject *);
const int Unk_ov5_021FFA00[];

void *FishingEncounterInfo_Init(FieldSystem *fieldSystem, u32 heapID, enum ENCOUNTER_FISHING_ROD_TYPE rodType)
{
    FishingEncounterInfo *fishEncounterInfo = Heap_AllocFromHeapAtEnd(heapID, sizeof(FishingEncounterInfo));

    memset(fishEncounterInfo, 0, sizeof(FishingEncounterInfo));

    fishEncounterInfo->rodType = rodType;
    fishEncounterInfo->fishingRodItemID = ConvertRodTypeToRodItem(rodType);

    return fishEncounterInfo;
}

BOOL ov5_021F08F8(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    FishingEncounterInfo *fishEncounterInfo = FieldTask_GetEnv(taskMan);

    switch (fishEncounterInfo->state) {
    case 0:
        MapObjectMan_PauseAllMovement(fieldSystem->mapObjMan);
        fishEncounterInfo->fishEncounterDTO = NULL;
        fishEncounterInfo->isFishEncountered = WildEncounters_TryFishingEncounter(fieldSystem, fishEncounterInfo->rodType, &fishEncounterInfo->fishEncounterDTO);
        fishEncounterInfo->sysTask = StartFishingTask(fieldSystem, fishEncounterInfo->rodType, fishEncounterInfo->isFishEncountered);
        fishEncounterInfo->state++;
        break;
    case 1:
        if (ov5_021F09D8(fishEncounterInfo->sysTask) == 1) {
            int caughtFish = HasCaughtFish(fishEncounterInfo->sysTask);

            FishingSysTask_Free(fishEncounterInfo->sysTask);

            if (caughtFish == TRUE) {
                Pokemon *wildFish = Party_GetPokemonBySlotIndex(fishEncounterInfo->fishEncounterDTO->parties[1], 0);
                sub_0206D340(fieldSystem, TRUE, fishEncounterInfo->fishingRodItemID, wildFish);

                GameRecords_IncrementRecordValue(SaveData_GetGameRecords(fieldSystem->saveData), RECORD_CAUGHT_FISH);

                Encounter_StartVsWild(fieldSystem, taskMan, fishEncounterInfo->fishEncounterDTO);
                Heap_Free(fishEncounterInfo);

                return FALSE;
            }

            if (fishEncounterInfo->fishEncounterDTO != NULL) {
                FieldBattleDTO_Free(fishEncounterInfo->fishEncounterDTO);
            }

            MapObjectMan_UnpauseAllMovement(fieldSystem->mapObjMan);
            Heap_Free(fishEncounterInfo);

            return TRUE;
        }
        break;
    }

    return FALSE;
}

SysTask *StartFishingTask(FieldSystem *fieldSystem, enum ENCOUNTER_FISHING_ROD_TYPE rodType, BOOL isFishEncountered)
{
    SysTask *task;
    FishingTask *fishingTask = FishingTask_New(sizeof(FishingTask));

    fishingTask->fieldSystem = fieldSystem;
    fishingTask->rodType = rodType;
    fishingTask->isFishEncountered = isFishEncountered;

    task = SysTask_Start(GoFish, fishingTask, 128);

    return task;
}

int ov5_021F09D8(SysTask *task)
{
    FishingTask *fishingTask = SysTask_GetParam(task);
    return fishingTask->unk_04;
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

static BOOL ov5_021F0A30(FishingTask *fishingTask, PlayerAvatar *playerAvatar, MapObject *playerMapObject)
{
    FishingTask_Init(fishingTask);
    MapObject_SetPauseMovementOff(playerMapObject);
    fishingTask->fishingTask = FUNC_ov5_021F0A48;

    return TRUE;
}

static BOOL ov5_021F0A48(FishingTask *fishingTask, PlayerAvatar *playerAvatar, MapObject *playerMapObject)
{
    if (LocalMapObj_IsAnimationSet(playerMapObject) == TRUE) {
        sub_020656AC(playerMapObject);
        PlayerAvatar_SetRequestStateBit(playerAvatar, (1 << 5));
        PlayerAvatar_RequestChangeState(playerAvatar);
        sub_02062A0C(playerMapObject, 0x1);
        fishingTask->fishingTask = FUNC_ov5_021F0A80;
    }

    return FALSE;
}

static BOOL ov5_021F0A80(FishingTask *fishingTask, PlayerAvatar *playerAvatar, MapObject *playerMapObject)
{
    fishingTask->unk_10++;

    if (fishingTask->unk_10 == 10) {
        Sound_PlayEffect(SEQ_SE_DP_FW104);
    }

    if (fishingTask->unk_10 < 34) {
        return FALSE;
    }

    if (fishingTask->isFishEncountered == TRUE) {
        fishingTask->fishingTask = FUNC_ov5_021F0AB8;
    } else {
        fishingTask->fishingTask = FUNC_ov5_021F0C34;
    }

    fishingTask->unk_10 = 0;
    return TRUE;
}

static BOOL ov5_021F0AB8(FishingTask *fishingTask, PlayerAvatar *playerAvatar, MapObject *playerMapObject)
{
    fishingTask->unk_14 = ((LCRNG_Next() % 4) + 1) * 30;
    fishingTask->unk_18 = Unk_ov5_021FFA00[fishingTask->rodType];
    fishingTask->fishingTask = FUNC_ov5_021F0AEC;

    return TRUE;
}

static BOOL ov5_021F0AEC(FishingTask *fishingTask, PlayerAvatar *playerAvatar, MapObject *playerMapObject)
{
    fishingTask->unk_14--;

    if (TryPressA() == TRUE) {
        fishingTask->fishingTask = FUNC_ov5_021F0BD4;
        return TRUE;
    }

    if (fishingTask->unk_14 > 0) {
        return FALSE;
    }

    sub_02062A0C(playerMapObject, 0x2);

    fishingTask->unk_24 = ov5_021F5D8C(playerMapObject, 0, 1, 0);
    fishingTask->fishingTask = FUNC_ov5_021F0B30;

    return TRUE;
}

static BOOL ov5_021F0B30(FishingTask *fishingTask, PlayerAvatar *playerAvatar, MapObject *playerMapObject)
{
    fishingTask->unk_18--;

    if (TryPressA() == TRUE) {
        fishingTask->fishingTask = FUNC_ov5_021F0B5C;
        return TRUE;
    }

    if (fishingTask->unk_18 > 0) {
        return FALSE;
    }

    fishingTask->fishingTask = FUNC_ov5_021F0BF4;

    return FALSE;
}

static BOOL ov5_021F0B5C(FishingTask *fishingTask, PlayerAvatar *playerAvatar, MapObject *playerMapObject)
{
    ov5_021F5C58(fishingTask->unk_24);
    sub_02062A0C(playerMapObject, 0x3);

    fishingTask->unk_10 = 0;
    fishingTask->fishingTask = FUNC_ov5_021F0B7C;

    return FALSE;
}

static BOOL ov5_021F0B7C(FishingTask *fishingTask, PlayerAvatar *playerAvatar, MapObject *playerMapObject)
{
    fishingTask->unk_10++;

    if (fishingTask->unk_24 != NULL) {
        sub_0207136C(fishingTask->unk_24);
        fishingTask->unk_24 = NULL;
    }

    if (fishingTask->unk_10 > 15) {
        fishingTask->unk_10 = 0;
        fishingTask->fishingTask = FUNC_ov5_021F0BB0;
        PrintFishingMessage(fishingTask, pl_msg_00000213_00057);
    }

    return FALSE;
}

static BOOL ov5_021F0BB0(FishingTask *fishingTask, PlayerAvatar *playerAvatar, MapObject *playerMapObject)
{
    if (TryCloseFishingMessage(fishingTask) == FALSE) {
        return FALSE;
    }

    fishingTask->fishingTask = FUNC_ov5_021F0BC8;
    return TRUE;
}

static BOOL ov5_021F0BC8(FishingTask *fishingTask, PlayerAvatar *playerAvatar, MapObject *playerMapObject)
{
    fishingTask->caughtFish = TRUE;
    fishingTask->fishingTask = FUNC_ov5_021F0CB0;

    return TRUE;
}

static BOOL ov5_021F0BD4(FishingTask *fishingTask, PlayerAvatar *playerAvatar, MapObject *playerMapObject)
{
    sub_02062A0C(playerMapObject, 0x0);
    PrintFishingMessage(fishingTask, pl_msg_00000213_00056);

    fishingTask->unk_10 = 16;
    fishingTask->fishingTask = FUNC_ov5_021F0C84;

    return TRUE;
}

static BOOL ov5_021F0BF4(FishingTask *fishingTask, PlayerAvatar *playerAvatar, MapObject *playerMapObject)
{
    sub_02062A0C(playerMapObject, 0x0);
    PrintFishingMessage(fishingTask, pl_msg_00000213_00055);

    fishingTask->unk_10 = 16;
    fishingTask->fishingTask = FUNC_ov5_021F0C84;

    GameRecords_IncrementRecordValue(SaveData_GetGameRecords(fishingTask->fieldSystem->saveData), RECORD_FISH_GOT_AWAY);

    sub_0206D340(fishingTask->fieldSystem, FALSE, ConvertRodTypeToRodItem(fishingTask->rodType), NULL);

    return TRUE;
}

static BOOL ov5_021F0C34(FishingTask *fishingTask, PlayerAvatar *playerAvatar, MapObject *playerMapObject)
{
    fishingTask->unk_10 = 30 * 4;
    fishingTask->fishingTask = FUNC_ov5_021F0C40;

    return TRUE;
}

static BOOL ov5_021F0C40(FishingTask *fishingTask, PlayerAvatar *playerAvatar, MapObject *playerMapObject)
{
    fishingTask->unk_10--;

    if (TryPressA() == TRUE) {
        fishingTask->fishingTask = FUNC_ov5_021F0BD4;
        return TRUE;
    }

    if (fishingTask->unk_10) {
        return FALSE;
    }

    sub_02062A0C(playerMapObject, 0x0);
    PrintFishingMessage(fishingTask, pl_msg_00000213_00054);

    fishingTask->unk_10 = 16;
    fishingTask->fishingTask = FUNC_ov5_021F0C84;

    return FALSE;
}

static BOOL ov5_021F0C84(FishingTask *fishingTask, PlayerAvatar *playerAvatar, MapObject *playerMapObject)
{
    fishingTask->unk_10++;

    if (fishingTask->unk_10 < 16) {
        return FALSE;
    }

    fishingTask->unk_10 = 16;

    if (TryCloseFishingMessage(fishingTask) == FALSE) {
        return FALSE;
    }

    fishingTask->fishingTask = FUNC_ov5_021F0CB0;

    return TRUE;
}

static BOOL ov5_021F0CB0(FishingTask *fishingTask, PlayerAvatar *playerAvatar, MapObject *playerMapObject)
{
    if (fishingTask->unk_24 != NULL) {
        ov5_021F5C58(fishingTask->unk_24);
    }

    FishingTask_Free(fishingTask);

    int playerState = PlayerAvatar_GetPlayerState(playerAvatar);
    u32 v1 = sub_0205EED8(playerState);

    PlayerAvatar_SetRequestStateBit(playerAvatar, v1);
    PlayerAvatar_RequestChangeState(playerAvatar);

    fishingTask->unk_10 = 0;
    fishingTask->fishingTask = FUNC_ov5_021F0CEC;

    return TRUE;
}

static BOOL ov5_021F0CEC(FishingTask *fishingTask, PlayerAvatar *playerAvatar, MapObject *playerMapObject)
{
    fishingTask->unk_10++;

    if (fishingTask->unk_10 > 2) {
        fishingTask->fishingTask = FUNC_ov5_021F0D00;
    }

    return FALSE;
}

static BOOL ov5_021F0D00(FishingTask *fishingTask, PlayerAvatar *playerAvatar, MapObject *playerMapObject)
{
    if (fishingTask->unk_24 != NULL) {
        sub_0207136C(fishingTask->unk_24);
        fishingTask->unk_24 = NULL;
    }

    fishingTask->unk_04 = 1;
    return FALSE;
}

static BOOL (*const sFishingActions[])(FishingTask *, PlayerAvatar *, MapObject *) = {
    [FUNC_ov5_021F0A30] = ov5_021F0A30,
    [FUNC_ov5_021F0A48] = ov5_021F0A48,
    [FUNC_ov5_021F0A80] = ov5_021F0A80,
    [FUNC_ov5_021F0AB8] = ov5_021F0AB8,
    [FUNC_ov5_021F0AEC] = ov5_021F0AEC,
    [FUNC_ov5_021F0B30] = ov5_021F0B30,
    [FUNC_ov5_021F0B5C] = ov5_021F0B5C,
    [FUNC_ov5_021F0B7C] = ov5_021F0B7C,
    [FUNC_ov5_021F0BB0] = ov5_021F0BB0,
    [FUNC_ov5_021F0BC8] = ov5_021F0BC8,
    [FUNC_ov5_021F0BD4] = ov5_021F0BD4,
    [FUNC_ov5_021F0BF4] = ov5_021F0BF4,
    [FUNC_ov5_021F0C34] = ov5_021F0C34,
    [FUNC_ov5_021F0C40] = ov5_021F0C40,
    [FUNC_ov5_021F0C84] = ov5_021F0C84,
    [FUNC_ov5_021F0CB0] = ov5_021F0CB0,
    [FUNC_ov5_021F0CEC] = ov5_021F0CEC,
    [FUNC_ov5_021F0D00] = ov5_021F0D00
};

static void *FishingTask_New(u32 fishingTaskSize)
{
    void *fishingTask = Heap_AllocFromHeapAtEnd(HEAP_ID_FIELD, fishingTaskSize);

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
    fishingTask->messageLoader = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_COMMON_STRINGS, HEAP_ID_FIELD);
    fishingTask->formattedFishingMessage = Strbuf_Init(0x400, HEAP_ID_FIELD);
    fishingTask->fishingMessage = Strbuf_Init(0x400, HEAP_ID_FIELD);
    fishingTask->strTemplate = StringTemplate_New(8, 64, HEAP_ID_FIELD);
}

static void FishingTask_Free(FishingTask *fishingTask)
{
    StringTemplate_Free(fishingTask->strTemplate);
    Strbuf_Free(fishingTask->formattedFishingMessage);
    Strbuf_Free(fishingTask->fishingMessage);
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

    MessageLoader_GetStrbuf(fishingTask->messageLoader, messageID, fishingTask->fishingMessage);
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

static u16 ConvertRodTypeToRodItem(enum ENCOUNTER_FISHING_ROD_TYPE rodType)
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

static const int Unk_ov5_021FFA00[] = {
    [FISHING_TYPE_OLD_ROD] = 0x2D,
    [FISHING_TYPE_GOOD_ROD] = 0x1E,
    [FISHING_TYPE_SUPER_ROD] = 0xF
};
