#include "field_move_tasks.h"

#include <nitro.h>
#include <string.h>

#include "constants/field/map_load.h"
#include "generated/journal_location_events.h"
#include "generated/object_events.h"

#include "struct_decls/struct_02061AB4_decl.h"
#include "struct_defs/struct_0203D8AC.h"
#include "struct_defs/struct_020708E0.h"
#include "struct_defs/struct_020709CC.h"
#include "struct_defs/struct_020711C8.h"

#include "field/field_system.h"
#include "overlay005/ov5_021DFB54.h"
#include "overlay005/ov5_021F101C.h"
#include "overlay006/ov6_02247100.h"

#include "field_overworld_state.h"
#include "field_task.h"
#include "heap.h"
#include "inlines.h"
#include "journal.h"
#include "map_header.h"
#include "map_object.h"
#include "map_tile_behavior.h"
#include "player_avatar.h"
#include "save_player.h"
#include "script_manager.h"
#include "start_menu.h"
#include "system_flags.h"
#include "trainer_info.h"
#include "unk_0203C954.h"
#include "unk_0203D1B8.h"
#include "unk_02054D00.h"
#include "unk_0205F180.h"
#include "unk_0206B70C.h"
#include "unk_020711C8.h"
#include "unk_02071B10.h"
#include "vars_flags.h"

#define FIELD_MOVE_FLAG(move) (1 << (move))

#define FIELD_MOVE_CUT        0
#define FIELD_MOVE_FLY        1 // unused
#define FIELD_MOVE_SURF       2
#define FIELD_MOVE_STRENGTH   3
#define FIELD_MOVE_DEFOG      4
#define FIELD_MOVE_ROCK_SMASH 5
#define FIELD_MOVE_WATERFALL  6
#define FIELD_MOVE_ROCK_CLIMB 7
#define FIELD_MOVE_FLASH      8

#define FIELD_MOVE_ERROR_NONE     0
#define FIELD_MOVE_ERROR_LOCATION 1
#define FIELD_MOVE_ERROR_BADGE    2
#define FIELD_MOVE_ERROR_PARTNER  3
#define FIELD_MOVE_ERROR_STATE    4

typedef struct {
    FieldMoveTaskContext task;
    FieldMoveErrContext error;
} FieldMoveTaskOrError;

typedef struct {
    u32 unk_00;
    MapObject *mapObj;
    UnkStruct_020709CC unk_08;
} FieldMoveTaskData;

static void FieldMoves_CanUseSurfDistortionWorld(FieldSystem *fieldSystem, FieldMoveContext *param1);

static int FieldMoves_GetFlyError(const FieldMoveContext *fieldMoveContext);
static void FieldMoves_SetFlyTask(UnkStruct_020709CC *param0, const FieldMoveContext *fieldMoveContext);

static int FieldMoves_GetTeleportError(const FieldMoveContext *fieldMoveContext);
static void FieldMoves_SetTeleportTask(UnkStruct_020709CC *param0, const FieldMoveContext *fieldMoveContext);
static BOOL FieldMoves_TeleportTask(FieldTask *taskMan);

static int FieldMoves_GetSurfError(const FieldMoveContext *fieldMoveContext);
static void FieldMoves_SetSurfTask(UnkStruct_020709CC *param0, const FieldMoveContext *fieldMoveContext);
static BOOL FieldMoves_SurfTask(FieldTask *taskMan);

static int FieldMoves_GetWaterfallError(const FieldMoveContext *fieldMoveContext);
static void FieldMoves_SetWaterfallTask(UnkStruct_020709CC *param0, const FieldMoveContext *fieldMoveContext);
static BOOL FieldMoves_WaterfallTask(FieldTask *taskMan);

static int FieldMoves_GetRockClimbError(const FieldMoveContext *fieldMoveContext);
static void FieldMoves_SetRockClimbTask(UnkStruct_020709CC *param0, const FieldMoveContext *fieldMoveContext);
static BOOL FieldMoves_RockClimbTask(FieldTask *taskMan);

static int FieldMoves_GetFlashError(const FieldMoveContext *fieldMoveContext);
static void FieldMoves_SetFlashTask(UnkStruct_020709CC *param0, const FieldMoveContext *fieldMoveContext);
static BOOL FieldMoves_FlashTask(FieldTask *taskMan);

static int FieldMoves_GetDefogError(const FieldMoveContext *fieldMoveContext);
static void FieldMoves_SetDefogTask(UnkStruct_020709CC *param0, const FieldMoveContext *fieldMoveContext);
static BOOL FieldMoves_DefogTask(FieldTask *taskMan);

static int FieldMoves_GetRockSmashError(const FieldMoveContext *fieldMoveContext);
static void FieldMoves_SetRockSmashTask(UnkStruct_020709CC *param0, const FieldMoveContext *fieldMoveContext);
static BOOL FieldMoves_RockSmashTask(FieldTask *taskMan);

static int FieldMoves_GetStrengthError(const FieldMoveContext *fieldMoveContext);
static void FieldMoves_SetStrengthTask(UnkStruct_020709CC *param0, const FieldMoveContext *fieldMoveContext);
static BOOL FieldMoves_StrengthTask(FieldTask *taskMan);

static int FieldMoves_GetDigError(const FieldMoveContext *fieldMoveContext);
static void FieldMoves_SetDigTask(UnkStruct_020709CC *param0, const FieldMoveContext *fieldMoveContext);
static BOOL FieldMoves_DigTask(FieldTask *taskMan);

static int FieldMoves_GetSweetScentError(const FieldMoveContext *fieldMoveContext);
static void FieldMoves_SetSweetScentTask(UnkStruct_020709CC *param0, const FieldMoveContext *fieldMoveContext);

static int sub_02071130(const FieldMoveContext *fieldMoveContext);
static void sub_02071150(UnkStruct_020709CC *param0, const FieldMoveContext *fieldMoveContext);
static BOOL sub_0207118C(FieldTask *taskMan);

static int FieldMoves_GetCutError(const FieldMoveContext *fieldMoveContext);
static void FieldMoves_SetCutTask(UnkStruct_020709CC *param0, const FieldMoveContext *fieldMoveContext);
static BOOL FieldMoves_CutTask(FieldTask *taskMan);

static const FieldMoveTaskOrError fieldMoveTaskOrError[] = {
    { FieldMoves_SetCutTask, FieldMoves_GetCutError },
    { FieldMoves_SetFlyTask, FieldMoves_GetFlyError },
    { FieldMoves_SetSurfTask, FieldMoves_GetSurfError },
    { FieldMoves_SetStrengthTask, FieldMoves_GetStrengthError },
    { FieldMoves_SetDefogTask, FieldMoves_GetDefogError },
    { FieldMoves_SetRockSmashTask, FieldMoves_GetRockSmashError },
    { FieldMoves_SetWaterfallTask, FieldMoves_GetWaterfallError },
    { FieldMoves_SetRockClimbTask, FieldMoves_GetRockClimbError },
    { FieldMoves_SetFlashTask, FieldMoves_GetFlashError },
    { FieldMoves_SetTeleportTask, FieldMoves_GetTeleportError },
    { FieldMoves_SetDigTask, FieldMoves_GetDigError },
    { FieldMoves_SetSweetScentTask, FieldMoves_GetSweetScentError },
    { sub_02071150, sub_02071130 } // possibly Chatter
};

static inline BOOL FieldMoves_IsMoveUsable(const FieldMoveContext *fieldMoveContext, int fieldMove)
{
    if ((fieldMoveContext->usableMoves & FIELD_MOVE_FLAG(fieldMove)) != 0) {
        return TRUE;
    } else {
        return FALSE;
    }
}

static inline BOOL PlayerHasRequiredBadge(const FieldMoveContext *fieldMoveContext, int param1)
{
    return TrainerInfo_HasBadge(SaveData_GetTrainerInfo(fieldMoveContext->fieldSystem->saveData), param1);
}

static inline BOOL PlayerTravellingWithPartner(const FieldMoveContext *fieldMoveContext)
{
    return SystemFlag_CheckHasPartner(SaveData_GetVarsFlags(fieldMoveContext->fieldSystem->saveData));
}

static inline BOOL PlayerInSafariZoneOrPalPark(const FieldMoveContext *fieldMoveContext)
{
    if ((SystemFlag_CheckSafariGameActive(SaveData_GetVarsFlags(fieldMoveContext->fieldSystem->saveData)) == 1) || (SystemFlag_CheckInPalPark(SaveData_GetVarsFlags(fieldMoveContext->fieldSystem->saveData)) == 1)) {
        return TRUE;
    }

    return FALSE;
}

static inline BOOL PlayerInPalPark(const FieldMoveContext *fieldMoveContext)
{
    if (SystemFlag_CheckInPalPark(SaveData_GetVarsFlags(fieldMoveContext->fieldSystem->saveData)) == 1) {
        return TRUE;
    }

    return FALSE;
}

static inline BOOL PlayerOutsideLinkRoom(const FieldMoveContext *fieldMoveContext)
{
    if ((fieldMoveContext->fieldSystem->mapLoadType == MAP_LOAD_TYPE_COLOSSEUM) || (fieldMoveContext->fieldSystem->mapLoadType == MAP_LOAD_TYPE_UNION)) {
        return FALSE;
    }

    return TRUE;
}

void *FieldMove_GetTaskOrError(u16 taskOrError, u16 fieldMove)
{
    if (taskOrError == FIELD_MOVE_TASK) {
        return fieldMoveTaskOrError[fieldMove].task;
    }

    return fieldMoveTaskOrError[fieldMove].error;
}

void FieldMoves_SetUsableMoves(FieldSystem *fieldSystem, FieldMoveContext *fieldMoveContext)
{
    MapObject *mapObj;
    int playerX, playerY;
    int nextTileBehavior;
    int currTileBehavior;

    fieldMoveContext->fieldSystem = fieldSystem;
    fieldMoveContext->mapId = fieldSystem->location->mapId;
    fieldMoveContext->usableMoves = 0;

    if (PlayerAvatar_DistortionGravityChanged(fieldSystem->playerAvatar) == TRUE) {
        FieldMoves_CanUseSurfDistortionWorld(fieldSystem, fieldMoveContext);
        return;
    }

    sub_0203C9D4(fieldSystem, &mapObj);
    fieldMoveContext->mapObj = mapObj;

    if (mapObj != NULL) {
        switch (MapObject_GetGraphicsID(mapObj)) {
        case OBJ_EVENT_GFX_STRENGTH_BOULDER:
            fieldMoveContext->usableMoves |= FIELD_MOVE_FLAG(FIELD_MOVE_STRENGTH);
            break;
        case OBJ_EVENT_GFX_ROCK_SMASH:
            fieldMoveContext->usableMoves |= FIELD_MOVE_FLAG(FIELD_MOVE_ROCK_SMASH);
            break;
        case OBJ_EVENT_GFX_CUT_TREE:
            fieldMoveContext->usableMoves |= FIELD_MOVE_FLAG(FIELD_MOVE_CUT);
            break;
        }
    }

    playerX = Player_GetXPos(fieldSystem->playerAvatar);
    playerY = Player_GetZPos(fieldSystem->playerAvatar);
    currTileBehavior = FieldSystem_GetTileBehavior(fieldSystem, playerX, playerY);

    PlayerAvatar_GetFacingTileCoords(fieldSystem->playerAvatar, &playerX, &playerY);
    nextTileBehavior = FieldSystem_GetTileBehavior(fieldSystem, playerX, playerY);

    if (PlayerAvatar_CanUseSurf(fieldSystem->playerAvatar, currTileBehavior, nextTileBehavior)) {
        fieldMoveContext->usableMoves |= FIELD_MOVE_FLAG(FIELD_MOVE_SURF);
    }

    if (PlayerAvatar_CanUseRockClimb(nextTileBehavior, PlayerAvatar_GetDir(fieldSystem->playerAvatar))) {
        fieldMoveContext->usableMoves |= FIELD_MOVE_FLAG(FIELD_MOVE_ROCK_CLIMB);
    }

    if (TileBehavior_IsWaterfall(nextTileBehavior)) {
        fieldMoveContext->usableMoves |= FIELD_MOVE_FLAG(FIELD_MOVE_WATERFALL);
    }

    switch (FieldOverworldState_GetWeather(SaveData_GetFieldOverworldState(fieldSystem->saveData))) {
    case OVERWORLD_WEATHER_FOG:
        fieldMoveContext->usableMoves |= FIELD_MOVE_FLAG(FIELD_MOVE_DEFOG);
        break;
    case OVERWORLD_WEATHER_DARK_FLASH:
        fieldMoveContext->usableMoves |= FIELD_MOVE_FLAG(FIELD_MOVE_FLASH);
        break;
    }
}

static void FieldMoves_CanUseSurfDistortionWorld(FieldSystem *fieldSystem, FieldMoveContext *fieldMoveContext)
{
    int distortionDir;
    u32 currTileBehavior, nextTileBehavior;

    distortionDir = PlayerAvatar_GetDistortionDir(fieldSystem->playerAvatar);
    nextTileBehavior = PlayerAvatar_GetDistortionTileBehaviour(fieldSystem->playerAvatar, distortionDir);
    currTileBehavior = PlayerAvatar_GetDistortionCurrTileBehaviour(fieldSystem->playerAvatar);

    if (PlayerAvatar_CanUseSurf(fieldSystem->playerAvatar, currTileBehavior, nextTileBehavior) == 1) {
        fieldMoveContext->usableMoves |= FIELD_MOVE_FLAG(FIELD_MOVE_SURF);
    }
}

static FieldMoveTaskData *FieldMoves_AllocateTaskData(const UnkStruct_020709CC *param0, const FieldMoveContext *fieldMoveContext)
{
    FieldMoveTaskData *taskData = Heap_AllocFromHeap(HEAP_ID_FIELD_TASK, sizeof(FieldMoveTaskData));

    taskData->unk_00 = 0x19740205;
    taskData->mapObj = fieldMoveContext->mapObj;
    taskData->unk_08 = *param0;

    return taskData;
}

static void FieldMoves_FreeTaskData(FieldMoveTaskData *taskData)
{
    GF_ASSERT(taskData->unk_00 == 0x19740205);
    Heap_FreeToHeap(taskData);
}

static int FieldMoves_GetCutError(const FieldMoveContext *fieldMoveContext)
{
    if (PlayerOutsideLinkRoom(fieldMoveContext) == 0) {
        return FIELD_MOVE_ERROR_LOCATION;
    }

    if (PlayerHasRequiredBadge(fieldMoveContext, 1) == 0) {
        return FIELD_MOVE_ERROR_BADGE;
    }

    if (FieldMoves_IsMoveUsable(fieldMoveContext, FIELD_MOVE_CUT)) {
        return FIELD_MOVE_ERROR_NONE;
    } else {
        return FIELD_MOVE_ERROR_LOCATION;
    }
}

static void FieldMoves_SetCutTask(UnkStruct_020709CC *param0, const FieldMoveContext *fieldMoveContext)
{
    StartMenu *menu;
    FieldMoveTaskData *taskData;

    menu = FieldTask_GetEnv(param0->fieldTask);
    taskData = FieldMoves_AllocateTaskData(param0, fieldMoveContext);

    FieldSystem_StartFieldMap(fieldMoveContext->fieldSystem);

    menu->callback = FieldMoves_CutTask;
    menu->taskData = taskData;
    menu->state = START_MENU_STATE_10;
}

static BOOL FieldMoves_CutTask(FieldTask *taskMan)
{
    FieldMoveTaskData *taskData = FieldTask_GetEnv(taskMan);
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);

    ScriptManager_Change(taskMan, 10008, taskData->mapObj);
    FieldSystem_SetScriptParameters(fieldSystem, taskData->unk_08.unk_04, 0, 0, 0);
    FieldMoves_FreeTaskData(taskData);

    return 0;
}

static int FieldMoves_GetFlyError(const FieldMoveContext *fieldMoveContext)
{
    if (PlayerOutsideLinkRoom(fieldMoveContext) == 0) {
        return FIELD_MOVE_ERROR_LOCATION;
    }

    if (PlayerHasRequiredBadge(fieldMoveContext, 2) == 0) {
        return FIELD_MOVE_ERROR_BADGE;
    }

    if (MapHeader_IsFlyAllowed(fieldMoveContext->mapId) == 0) {
        return FIELD_MOVE_ERROR_LOCATION;
    }

    if (PlayerTravellingWithPartner(fieldMoveContext) == 1) {
        return FIELD_MOVE_ERROR_PARTNER;
    }

    if (PlayerInSafariZoneOrPalPark(fieldMoveContext) == 1) {
        return FIELD_MOVE_ERROR_LOCATION;
    }

    return FIELD_MOVE_ERROR_NONE;
}

static void FieldMoves_SetFlyTask(UnkStruct_020709CC *param0, const FieldMoveContext *fieldMoveContext)
{
    FieldSystem *fieldSystem;
    StartMenu *menu;

    fieldSystem = FieldTask_GetFieldSystem(param0->fieldTask);
    menu = FieldTask_GetEnv(param0->fieldTask);

    u32 *v2 = (u32 *)Heap_AllocFromHeap(HEAP_ID_FIELDMAP, 4);
    *v2 = param0->unk_04;
    menu->unk_260 = (void *)v2;

    menu->taskData = Heap_AllocFromHeap(HEAP_ID_FIELDMAP, sizeof(UnkStruct_0203D8AC));

    sub_0206B70C(fieldSystem, menu->taskData, 1);
    sub_0203D884(fieldSystem, menu->taskData);
    sub_0203B674(menu, sub_0203C434);
}

static int FieldMoves_GetSurfError(const FieldMoveContext *fieldMoveContext)
{
    if (PlayerOutsideLinkRoom(fieldMoveContext) == 0) {
        return FIELD_MOVE_ERROR_LOCATION;
    }

    if (PlayerHasRequiredBadge(fieldMoveContext, 3) == 0) {
        return FIELD_MOVE_ERROR_BADGE;
    }

    if (PlayerAvatar_GetPlayerState(fieldMoveContext->fieldSystem->playerAvatar) == 0x2) {
        return FIELD_MOVE_ERROR_STATE;
    }

    if (!(FieldMoves_IsMoveUsable(fieldMoveContext, FIELD_MOVE_SURF))) {
        return FIELD_MOVE_ERROR_LOCATION;
    }

    if (PlayerTravellingWithPartner(fieldMoveContext) == 1) {
        return FIELD_MOVE_ERROR_PARTNER;
    }

    return FIELD_MOVE_ERROR_NONE;
}

static void FieldMoves_SetSurfTask(UnkStruct_020709CC *param0, const FieldMoveContext *fieldMoveContext)
{
    StartMenu *menu;
    FieldMoveTaskData *taskData;

    menu = FieldTask_GetEnv(param0->fieldTask);
    taskData = FieldMoves_AllocateTaskData(param0, fieldMoveContext);

    FieldSystem_StartFieldMap(fieldMoveContext->fieldSystem);

    menu->callback = FieldMoves_SurfTask;
    menu->taskData = taskData;
    menu->state = START_MENU_STATE_10;
}

static BOOL FieldMoves_SurfTask(FieldTask *taskMan)
{
    FieldMoveTaskData *taskData = FieldTask_GetEnv(taskMan);
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);

    ScriptManager_Change(taskMan, 10012, NULL);
    FieldSystem_SetScriptParameters(fieldSystem, taskData->unk_08.unk_04, 0, 0, 0);
    FieldMoves_FreeTaskData(taskData);

    return 0;
}

static int FieldMoves_GetStrengthError(const FieldMoveContext *fieldMoveContext)
{
    if (PlayerOutsideLinkRoom(fieldMoveContext) == 0) {
        return FIELD_MOVE_ERROR_LOCATION;
    }

    if (PlayerHasRequiredBadge(fieldMoveContext, 5) == 0) {
        return FIELD_MOVE_ERROR_BADGE;
    }

    if (FieldMoves_IsMoveUsable(fieldMoveContext, FIELD_MOVE_STRENGTH)) {
        return FIELD_MOVE_ERROR_NONE;
    } else {
        return FIELD_MOVE_ERROR_LOCATION;
    }
}

static void FieldMoves_SetStrengthTask(UnkStruct_020709CC *param0, const FieldMoveContext *fieldMoveContext)
{
    StartMenu *menu;
    FieldMoveTaskData *taskData;

    menu = FieldTask_GetEnv(param0->fieldTask);
    taskData = FieldMoves_AllocateTaskData(param0, fieldMoveContext);

    FieldSystem_StartFieldMap(fieldMoveContext->fieldSystem);

    menu->callback = FieldMoves_StrengthTask;
    menu->taskData = taskData;
    menu->state = START_MENU_STATE_10;
}

static BOOL FieldMoves_StrengthTask(FieldTask *param0)
{
    FieldMoveTaskData *taskData = FieldTask_GetEnv(param0);
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);

    ScriptManager_Change(param0, 10010, taskData->mapObj);
    FieldSystem_SetScriptParameters(fieldSystem, taskData->unk_08.unk_04, 0, 0, 0);
    FieldMoves_FreeTaskData(taskData);

    return 0;
}

static int FieldMoves_GetDefogError(const FieldMoveContext *fieldMoveContext)
{
    if (PlayerOutsideLinkRoom(fieldMoveContext) == 0) {
        return FIELD_MOVE_ERROR_LOCATION;
    }

    if (PlayerHasRequiredBadge(fieldMoveContext, 4) == 0) {
        return FIELD_MOVE_ERROR_BADGE;
    }

    if (FieldMoves_IsMoveUsable(fieldMoveContext, FIELD_MOVE_DEFOG)) {
        return FIELD_MOVE_ERROR_NONE;
    } else {
        return FIELD_MOVE_ERROR_LOCATION;
    }
}

static void FieldMoves_SetDefogTask(UnkStruct_020709CC *param0, const FieldMoveContext *fieldMoveContext)
{
    StartMenu *menu;
    FieldMoveTaskData *taskData;

    menu = FieldTask_GetEnv(param0->fieldTask);
    taskData = FieldMoves_AllocateTaskData(param0, fieldMoveContext);

    FieldSystem_StartFieldMap(fieldMoveContext->fieldSystem);

    menu->callback = FieldMoves_DefogTask;
    menu->taskData = taskData;
    menu->state = START_MENU_STATE_10;
}

static BOOL FieldMoves_DefogTask(FieldTask *taskMan)
{
    FieldMoveTaskData *taskData = FieldTask_GetEnv(taskMan);
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);

    ScriptManager_Change(taskMan, 10014, NULL);
    FieldSystem_SetScriptParameters(fieldSystem, taskData->unk_08.unk_04, 0, 0, 0);
    FieldMoves_FreeTaskData(taskData);

    return 0;
}

static int FieldMoves_GetRockSmashError(const FieldMoveContext *fieldMoveContext)
{
    if (PlayerOutsideLinkRoom(fieldMoveContext) == 0) {
        return FIELD_MOVE_ERROR_LOCATION;
    }

    if (PlayerHasRequiredBadge(fieldMoveContext, 0) == 0) {
        return FIELD_MOVE_ERROR_BADGE;
    }

    if (PlayerAvatar_GetPlayerState(fieldMoveContext->fieldSystem->playerAvatar) == 0x2) {
        return FIELD_MOVE_ERROR_LOCATION;
    }

    if (FieldMoves_IsMoveUsable(fieldMoveContext, FIELD_MOVE_ROCK_SMASH)) {
        return FIELD_MOVE_ERROR_NONE;
    } else {
        return FIELD_MOVE_ERROR_LOCATION;
    }
}

static void FieldMoves_SetRockSmashTask(UnkStruct_020709CC *param0, const FieldMoveContext *fieldMoveContext)
{
    StartMenu *menu;
    FieldMoveTaskData *taskData;

    menu = FieldTask_GetEnv(param0->fieldTask);
    taskData = FieldMoves_AllocateTaskData(param0, fieldMoveContext);

    FieldSystem_StartFieldMap(fieldMoveContext->fieldSystem);

    menu->callback = FieldMoves_RockSmashTask;
    menu->taskData = taskData;
    menu->state = START_MENU_STATE_10;
}

static BOOL FieldMoves_RockSmashTask(FieldTask *taskMan)
{
    FieldMoveTaskData *taskData = FieldTask_GetEnv(taskMan);
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);

    ScriptManager_Change(taskMan, 10009, taskData->mapObj);
    FieldSystem_SetScriptParameters(fieldSystem, taskData->unk_08.unk_04, 0, 0, 0);
    FieldMoves_FreeTaskData(taskData);

    return 0;
}

static int FieldMoves_GetWaterfallError(const FieldMoveContext *fieldMoveContext)
{
    if (PlayerOutsideLinkRoom(fieldMoveContext) == 0) {
        return FIELD_MOVE_ERROR_LOCATION;
    }

    if (PlayerHasRequiredBadge(fieldMoveContext, 7) == 0) {
        return FIELD_MOVE_ERROR_BADGE;
    }

    if (FieldMoves_IsMoveUsable(fieldMoveContext, FIELD_MOVE_WATERFALL)) {
        return FIELD_MOVE_ERROR_NONE;
    } else {
        return FIELD_MOVE_ERROR_LOCATION;
    }
}

static void FieldMoves_SetWaterfallTask(UnkStruct_020709CC *param0, const FieldMoveContext *fieldMoveContext)
{
    StartMenu *menu;
    FieldMoveTaskData *taskData;

    menu = FieldTask_GetEnv(param0->fieldTask);
    taskData = FieldMoves_AllocateTaskData(param0, fieldMoveContext);

    FieldSystem_StartFieldMap(fieldMoveContext->fieldSystem);

    menu->callback = FieldMoves_WaterfallTask;
    menu->taskData = taskData;
    menu->state = START_MENU_STATE_10;
}

static BOOL FieldMoves_WaterfallTask(FieldTask *param0)
{
    FieldMoveTaskData *taskData = FieldTask_GetEnv(param0);
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);

    ScriptManager_Change(param0, 10013, NULL);
    FieldSystem_SetScriptParameters(fieldSystem, taskData->unk_08.unk_04, 0, 0, 0);
    FieldMoves_FreeTaskData(taskData);

    return 0;
}

static int FieldMoves_GetRockClimbError(const FieldMoveContext *fieldMoveContext)
{
    if (PlayerOutsideLinkRoom(fieldMoveContext) == 0) {
        return FIELD_MOVE_ERROR_LOCATION;
    }

    if (PlayerHasRequiredBadge(fieldMoveContext, 6) == 0) {
        return FIELD_MOVE_ERROR_BADGE;
    }

    if (!(FieldMoves_IsMoveUsable(fieldMoveContext, FIELD_MOVE_ROCK_CLIMB))) {
        return FIELD_MOVE_ERROR_LOCATION;
    }

    if (PlayerTravellingWithPartner(fieldMoveContext) == 1) {
        return FIELD_MOVE_ERROR_PARTNER;
    }

    return FIELD_MOVE_ERROR_NONE;
}

static void FieldMoves_SetRockClimbTask(UnkStruct_020709CC *param0, const FieldMoveContext *fieldMoveContext)
{
    StartMenu *menu;
    FieldMoveTaskData *taskData;

    menu = FieldTask_GetEnv(param0->fieldTask);
    taskData = FieldMoves_AllocateTaskData(param0, fieldMoveContext);

    FieldSystem_StartFieldMap(fieldMoveContext->fieldSystem);

    menu->callback = FieldMoves_RockClimbTask;
    menu->taskData = taskData;
    menu->state = START_MENU_STATE_10;
}

static BOOL FieldMoves_RockClimbTask(FieldTask *taskMan)
{
    FieldMoveTaskData *taskData = FieldTask_GetEnv(taskMan);
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);

    ScriptManager_Change(taskMan, 10011, NULL);
    FieldSystem_SetScriptParameters(fieldSystem, taskData->unk_08.unk_04, 0, 0, 0);
    FieldMoves_FreeTaskData(taskData);

    return 0;
}

static int FieldMoves_GetFlashError(const FieldMoveContext *fieldMoveContext)
{
    if (PlayerOutsideLinkRoom(fieldMoveContext) == 0) {
        return FIELD_MOVE_ERROR_LOCATION;
    }

    if (FieldMoves_IsMoveUsable(fieldMoveContext, FIELD_MOVE_FLASH)) {
        return FIELD_MOVE_ERROR_NONE;
    } else {
        return FIELD_MOVE_ERROR_LOCATION;
    }
}

static void FieldMoves_SetFlashTask(UnkStruct_020709CC *param0, const FieldMoveContext *fieldMoveContext)
{
    StartMenu *menu;
    FieldMoveTaskData *taskData;

    menu = FieldTask_GetEnv(param0->fieldTask);
    taskData = FieldMoves_AllocateTaskData(param0, fieldMoveContext);

    FieldSystem_StartFieldMap(fieldMoveContext->fieldSystem);

    menu->callback = FieldMoves_FlashTask;
    menu->taskData = taskData;
    menu->state = START_MENU_STATE_10;
}

static BOOL FieldMoves_FlashTask(FieldTask *taskMan)
{
    FieldMoveTaskData *taskData = FieldTask_GetEnv(taskMan);
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);

    ScriptManager_Change(taskMan, 10015, NULL);
    FieldSystem_SetScriptParameters(fieldSystem, taskData->unk_08.unk_04, 0, 0, 0);
    FieldMoves_FreeTaskData(taskData);

    return 0;
}

static int FieldMoves_GetTeleportError(const FieldMoveContext *fieldMoveContext)
{
    if (PlayerOutsideLinkRoom(fieldMoveContext) == 0) {
        return FIELD_MOVE_ERROR_LOCATION;
    }

    if (MapHeader_IsTeleportAllowed(fieldMoveContext->mapId) == 0) {
        return FIELD_MOVE_ERROR_LOCATION;
    }

    if (PlayerTravellingWithPartner(fieldMoveContext) == 1) {
        return FIELD_MOVE_ERROR_PARTNER;
    }

    if (PlayerInSafariZoneOrPalPark(fieldMoveContext) == 1) {
        return FIELD_MOVE_ERROR_LOCATION;
    }

    return FIELD_MOVE_ERROR_NONE;
}

static void FieldMoves_SetTeleportTask(UnkStruct_020709CC *param0, const FieldMoveContext *fieldMoveContext)
{
    FieldSystem *fieldSystem;
    StartMenu *menu;

    fieldSystem = FieldTask_GetFieldSystem(param0->fieldTask);
    menu = FieldTask_GetEnv(param0->fieldTask);

    FieldSystem_StartFieldMap(fieldSystem);

    UnkStruct_020711C8 *v2 = sub_020711C8(11, param0->unk_04, fieldSystem->saveData);

    menu->callback = FieldMoves_TeleportTask;
    menu->taskData = v2;
    menu->state = START_MENU_STATE_10;
}

static BOOL FieldMoves_TeleportTask(FieldTask *param0)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);
    UnkStruct_020711C8 *v1 = FieldTask_GetEnv(param0);
    void *v2 = ov6_02247530(fieldSystem, v1->unk_00, 4);

    Heap_FreeToHeap(v1);
    FieldTask_InitJump(param0, ov6_02247554, v2);

    return 0;
}

static int FieldMoves_GetDigError(const FieldMoveContext *fieldMoveContext)
{
    if (PlayerOutsideLinkRoom(fieldMoveContext) == 0) {
        return FIELD_MOVE_ERROR_LOCATION;
    }

    if (!((MapHeader_IsCave(fieldMoveContext->mapId) == 1) && (MapHeader_IsEscapeRopeAllowed(fieldMoveContext->mapId) == 1))) {
        return FIELD_MOVE_ERROR_LOCATION;
    }

    if (PlayerTravellingWithPartner(fieldMoveContext) == 1) {
        return FIELD_MOVE_ERROR_PARTNER;
    }

    return FIELD_MOVE_ERROR_NONE;
}

static void FieldMoves_SetDigTask(UnkStruct_020709CC *param0, const FieldMoveContext *fieldMoveContext)
{
    FieldSystem *fieldSystem;
    StartMenu *v1;

    fieldSystem = FieldTask_GetFieldSystem(param0->fieldTask);
    v1 = FieldTask_GetEnv(param0->fieldTask);

    FieldSystem_StartFieldMap(fieldSystem);

    {
        UnkStruct_020711C8 *v2;

        v2 = sub_020711C8(11, param0->unk_04, fieldSystem->saveData);

        v1->callback = FieldMoves_DigTask;
        v1->taskData = v2;
        v1->state = START_MENU_STATE_10;
    }
}

static BOOL FieldMoves_DigTask(FieldTask *param0)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);
    UnkStruct_020711C8 *v1 = FieldTask_GetEnv(param0);
    void *v2 = ov6_02247488(fieldSystem, v1->unk_00, 11);

    void *journalEntryLocationEvent = JournalEntry_CreateEventUsedMove((LOCATION_EVENT_USED_DIG - LOCATION_EVENT_USED_CUT), fieldSystem->location->mapId, HEAP_ID_FIELD);
    JournalEntry_SaveData(fieldSystem->journalEntry, journalEntryLocationEvent, JOURNAL_LOCATION);

    Heap_FreeToHeap(v1);
    FieldTask_InitJump(param0, ov6_022474AC, v2);

    return FALSE;
}

static int FieldMoves_GetSweetScentError(const FieldMoveContext *fieldMoveContext)
{
    if (PlayerOutsideLinkRoom(fieldMoveContext) == 0) {
        return FIELD_MOVE_ERROR_LOCATION;
    }

    if (PlayerInPalPark(fieldMoveContext) == 1) {
        return FIELD_MOVE_ERROR_LOCATION;
    }

    return FIELD_MOVE_ERROR_NONE;
}

static void FieldMoves_SetSweetScentTask(UnkStruct_020709CC *param0, const FieldMoveContext *fieldMoveContext)
{
    FieldSystem *fieldSystem;
    StartMenu *v1;
    UnkStruct_020711C8 *v2;
    int v3;
    void *v4;

    fieldSystem = FieldTask_GetFieldSystem(param0->fieldTask);
    v1 = FieldTask_GetEnv(param0->fieldTask);

    v2 = sub_020711C8(11, param0->unk_04, fieldSystem->saveData);
    FieldSystem_StartFieldMap(fieldSystem);

    v1->callback = ov5_021F101C;
    v1->taskData = v2;
    v1->state = START_MENU_STATE_10;

    v4 = JournalEntry_CreateEventUsedMove((LOCATION_EVENT_LURED_POKEMON - LOCATION_EVENT_USED_CUT), fieldSystem->location->mapId, HEAP_ID_FIELDMAP);
    JournalEntry_SaveData(fieldSystem->journalEntry, v4, JOURNAL_LOCATION);
}

static int sub_02071130(const FieldMoveContext *fieldMoveContext)
{
    if ((PlayerOutsideLinkRoom(fieldMoveContext) == 0) || (sub_02071CB4(fieldMoveContext->fieldSystem, 9) == 1)) {
        return FIELD_MOVE_ERROR_LOCATION;
    }

    return FIELD_MOVE_ERROR_NONE;
}

static void sub_02071150(UnkStruct_020709CC *param0, const FieldMoveContext *fieldMoveContext)
{
    FieldSystem *fieldSystem;
    StartMenu *menu;
    FieldMoveTaskData *taskData;

    fieldSystem = FieldTask_GetFieldSystem(param0->fieldTask);
    menu = FieldTask_GetEnv(param0->fieldTask);
    taskData = FieldMoves_AllocateTaskData(param0, fieldMoveContext);

    FieldSystem_StartFieldMap(fieldSystem);

    menu->callback = sub_0207118C;
    menu->taskData = taskData;
    menu->state = START_MENU_STATE_10;
}

static BOOL sub_0207118C(FieldTask *taskMan)
{
    FieldMoveTaskData *taskData = FieldTask_GetEnv(taskMan);
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);

    ScriptManager_Change(taskMan, 8900, NULL);
    FieldSystem_SetScriptParameters(fieldSystem, taskData->unk_08.unk_04, 0, 0, 0);
    FieldMoves_FreeTaskData(taskData);

    return 0;
}
