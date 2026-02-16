#include "field_move_tasks.h"

#include <nitro.h>
#include <string.h>

#include "constants/field/dynamic_map_features.h"
#include "constants/field/map_load.h"
#include "generated/badges.h"
#include "generated/journal_location_events.h"
#include "generated/object_events_gfx.h"

#include "struct_decls/struct_02061AB4_decl.h"
#include "struct_defs/struct_020708E0.h"
#include "struct_defs/struct_020711C8.h"

#include "applications/town_map/main.h"
#include "field/field_system.h"
#include "overlay005/ov5_021DFB54.h"
#include "overlay005/ov5_021F101C.h"
#include "overlay006/field_warp.h"

#include "field_overworld_state.h"
#include "field_task.h"
#include "heap.h"
#include "inlines.h"
#include "journal.h"
#include "map_header.h"
#include "map_object.h"
#include "map_tile_behavior.h"
#include "persisted_map_features_init.h"
#include "player_avatar.h"
#include "save_player.h"
#include "script_manager.h"
#include "start_menu.h"
#include "system_flags.h"
#include "terrain_collision_manager.h"
#include "trainer_info.h"
#include "unk_0203C954.h"
#include "unk_0203D1B8.h"
#include "unk_0205F180.h"
#include "unk_020711C8.h"
#include "vars_flags.h"

#define FIELD_MOVE_FLAG(move) (1 << (move))

typedef struct {
    FieldMoveTaskContext task;
    FieldMoveErrContext error;
} FieldMoveTaskOrError;

typedef struct {
    u32 magicNumber;
    MapObject *mapObj;
    FieldMovePokemon fieldMoveMon;
} FieldMoveTaskData;

static void FieldMoves_CanUseSurfDistortionWorld(FieldSystem *fieldSystem, FieldMoveContext *param1);

static enum FieldMoveError FieldMoves_CheckFly(const FieldMoveContext *fieldMoveContext);
static void FieldMoves_SetFlyTask(FieldMovePokemon *fieldMoveMon, const FieldMoveContext *fieldMoveContext);

static enum FieldMoveError FieldMoves_CheckTeleport(const FieldMoveContext *fieldMoveContext);
static void FieldMoves_SetTeleportTask(FieldMovePokemon *fieldMoveMon, const FieldMoveContext *fieldMoveContext);
static BOOL FieldMoves_TeleportTask(FieldTask *taskMan);

static enum FieldMoveError FieldMoves_CheckSurf(const FieldMoveContext *fieldMoveContext);
static void FieldMoves_SetSurfTask(FieldMovePokemon *fieldMoveMon, const FieldMoveContext *fieldMoveContext);
static BOOL FieldMoves_SurfTask(FieldTask *taskMan);

static enum FieldMoveError FieldMoves_CheckWaterfall(const FieldMoveContext *fieldMoveContext);
static void FieldMoves_SetWaterfallTask(FieldMovePokemon *fieldMoveMon, const FieldMoveContext *fieldMoveContext);
static BOOL FieldMoves_WaterfallTask(FieldTask *taskMan);

static enum FieldMoveError FieldMoves_CheckRockClimb(const FieldMoveContext *fieldMoveContext);
static void FieldMoves_SetRockClimbTask(FieldMovePokemon *fieldMoveMon, const FieldMoveContext *fieldMoveContext);
static BOOL FieldMoves_RockClimbTask(FieldTask *taskMan);

static enum FieldMoveError FieldMoves_CheckFlash(const FieldMoveContext *fieldMoveContext);
static void FieldMoves_SetFlashTask(FieldMovePokemon *fieldMoveMon, const FieldMoveContext *fieldMoveContext);
static BOOL FieldMoves_FlashTask(FieldTask *taskMan);

static enum FieldMoveError FieldMoves_CheckDefog(const FieldMoveContext *fieldMoveContext);
static void FieldMoves_SetDefogTask(FieldMovePokemon *fieldMoveMon, const FieldMoveContext *fieldMoveContext);
static BOOL FieldMoves_DefogTask(FieldTask *taskMan);

static enum FieldMoveError FieldMoves_CheckRockSmash(const FieldMoveContext *fieldMoveContext);
static void FieldMoves_SetRockSmashTask(FieldMovePokemon *fieldMoveMon, const FieldMoveContext *fieldMoveContext);
static BOOL FieldMoves_RockSmashTask(FieldTask *taskMan);

static enum FieldMoveError FieldMoves_CheckStrength(const FieldMoveContext *fieldMoveContext);
static void FieldMoves_SetStrengthTask(FieldMovePokemon *fieldMoveMon, const FieldMoveContext *fieldMoveContext);
static BOOL FieldMoves_StrengthTask(FieldTask *taskMan);

static enum FieldMoveError FieldMoves_CheckDig(const FieldMoveContext *fieldMoveContext);
static void FieldMoves_SetDigTask(FieldMovePokemon *fieldMoveMon, const FieldMoveContext *fieldMoveContext);
static BOOL FieldMoves_DigTask(FieldTask *taskMan);

static enum FieldMoveError FieldMoves_CheckSweetScent(const FieldMoveContext *fieldMoveContext);
static void FieldMoves_SetSweetScentTask(FieldMovePokemon *fieldMoveMon, const FieldMoveContext *fieldMoveContext);

static enum FieldMoveError FieldMoves_CheckChatter(const FieldMoveContext *fieldMoveContext);
static void FieldMoves_SetChatterTask(FieldMovePokemon *fieldMoveMon, const FieldMoveContext *fieldMoveContext);
static BOOL FieldMoves_ChatterTask(FieldTask *taskMan);

static enum FieldMoveError FieldMoves_CheckCut(const FieldMoveContext *fieldMoveContext);
static void FieldMoves_SetCutTask(FieldMovePokemon *fieldMoveMon, const FieldMoveContext *fieldMoveContext);
static BOOL FieldMoves_CutTask(FieldTask *taskMan);

static const FieldMoveTaskOrError fieldMoveTaskOrError[] = {
    { FieldMoves_SetCutTask, FieldMoves_CheckCut },
    { FieldMoves_SetFlyTask, FieldMoves_CheckFly },
    { FieldMoves_SetSurfTask, FieldMoves_CheckSurf },
    { FieldMoves_SetStrengthTask, FieldMoves_CheckStrength },
    { FieldMoves_SetDefogTask, FieldMoves_CheckDefog },
    { FieldMoves_SetRockSmashTask, FieldMoves_CheckRockSmash },
    { FieldMoves_SetWaterfallTask, FieldMoves_CheckWaterfall },
    { FieldMoves_SetRockClimbTask, FieldMoves_CheckRockClimb },
    { FieldMoves_SetFlashTask, FieldMoves_CheckFlash },
    { FieldMoves_SetTeleportTask, FieldMoves_CheckTeleport },
    { FieldMoves_SetDigTask, FieldMoves_CheckDig },
    { FieldMoves_SetSweetScentTask, FieldMoves_CheckSweetScent },
    { FieldMoves_SetChatterTask, FieldMoves_CheckChatter },
};

static inline BOOL FieldMoves_IsMoveUsable(const FieldMoveContext *fieldMoveContext, enum FieldMoveList fieldMove)
{
    if ((fieldMoveContext->usableMoves & FIELD_MOVE_FLAG(fieldMove)) != 0) {
        return TRUE;
    }

    return FALSE;
}

static inline BOOL PlayerHasRequiredBadge(const FieldMoveContext *fieldMoveContext, enum Badge badge)
{
    return TrainerInfo_HasBadge(SaveData_GetTrainerInfo(fieldMoveContext->fieldSystem->saveData), badge);
}

static inline BOOL PlayerTravellingWithPartner(const FieldMoveContext *fieldMoveContext)
{
    return SystemFlag_CheckHasPartner(SaveData_GetVarsFlags(fieldMoveContext->fieldSystem->saveData));
}

static inline BOOL PlayerInSafariZoneOrPalPark(const FieldMoveContext *fieldMoveContext)
{
    if ((SystemFlag_CheckSafariGameActive(SaveData_GetVarsFlags(fieldMoveContext->fieldSystem->saveData)) == TRUE)
        || (SystemFlag_CheckInPalPark(SaveData_GetVarsFlags(fieldMoveContext->fieldSystem->saveData)) == TRUE)) {
        return TRUE;
    }

    return FALSE;
}

static inline BOOL PlayerInPalPark(const FieldMoveContext *fieldMoveContext)
{
    if (SystemFlag_CheckInPalPark(SaveData_GetVarsFlags(fieldMoveContext->fieldSystem->saveData)) == TRUE) {
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
    currTileBehavior = TerrainCollisionManager_GetTileBehavior(fieldSystem, playerX, playerY);

    PlayerAvatar_GetFacingTileCoords(fieldSystem->playerAvatar, &playerX, &playerY);
    nextTileBehavior = TerrainCollisionManager_GetTileBehavior(fieldSystem, playerX, playerY);

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

    if (PlayerAvatar_CanUseSurf(fieldSystem->playerAvatar, currTileBehavior, nextTileBehavior) == TRUE) {
        fieldMoveContext->usableMoves |= FIELD_MOVE_FLAG(FIELD_MOVE_SURF);
    }
}

static FieldMoveTaskData *FieldMoves_AllocateTaskData(const FieldMovePokemon *fieldMoveMon, const FieldMoveContext *fieldMoveContext)
{
    FieldMoveTaskData *taskData = Heap_Alloc(HEAP_ID_FIELD3, sizeof(FieldMoveTaskData));

    taskData->magicNumber = 0x19740205;
    taskData->mapObj = fieldMoveContext->mapObj;
    taskData->fieldMoveMon = *fieldMoveMon;

    return taskData;
}

static void FieldMoves_FreeTaskData(FieldMoveTaskData *taskData)
{
    GF_ASSERT(taskData->magicNumber == 0x19740205);
    Heap_Free(taskData);
}

static enum FieldMoveError FieldMoves_CheckCut(const FieldMoveContext *fieldMoveContext)
{
    if (PlayerOutsideLinkRoom(fieldMoveContext) == FALSE) {
        return FIELD_MOVE_ERROR_LOCATION;
    }

    if (PlayerHasRequiredBadge(fieldMoveContext, BADGE_ID_FOREST) == FALSE) {
        return FIELD_MOVE_ERROR_BADGE;
    }

    if (FieldMoves_IsMoveUsable(fieldMoveContext, FIELD_MOVE_CUT)) {
        return FIELD_MOVE_ERROR_NONE;
    }

    return FIELD_MOVE_ERROR_LOCATION;
}

static void FieldMoves_SetCutTask(FieldMovePokemon *fieldMoveMon, const FieldMoveContext *fieldMoveContext)
{
    StartMenu *menu = FieldTask_GetEnv(fieldMoveMon->fieldTask);
    FieldMoveTaskData *taskData = FieldMoves_AllocateTaskData(fieldMoveMon, fieldMoveContext);

    FieldSystem_StartFieldMap(fieldMoveContext->fieldSystem);

    menu->callback = FieldMoves_CutTask;
    menu->taskData = taskData;
    menu->state = START_MENU_STATE_10;
}

static BOOL FieldMoves_CutTask(FieldTask *taskMan)
{
    FieldMoveTaskData *taskData = FieldTask_GetEnv(taskMan);
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);

    ScriptManager_Change(taskMan, SCRIPT_ID(FIELD_MOVES, 8), taskData->mapObj);
    FieldSystem_SetScriptParameters(fieldSystem, taskData->fieldMoveMon.fieldMonId, 0, 0, 0);
    FieldMoves_FreeTaskData(taskData);

    return 0;
}

static enum FieldMoveError FieldMoves_CheckFly(const FieldMoveContext *fieldMoveContext)
{
    if (PlayerOutsideLinkRoom(fieldMoveContext) == FALSE) {
        return FIELD_MOVE_ERROR_LOCATION;
    }

    if (PlayerHasRequiredBadge(fieldMoveContext, BADGE_ID_COBBLE) == FALSE) {
        return FIELD_MOVE_ERROR_BADGE;
    }

    if (MapHeader_IsFlyAllowed(fieldMoveContext->mapId) == FALSE) {
        return FIELD_MOVE_ERROR_LOCATION;
    }

    if (PlayerTravellingWithPartner(fieldMoveContext) == TRUE) {
        return FIELD_MOVE_ERROR_PARTNER;
    }

    if (PlayerInSafariZoneOrPalPark(fieldMoveContext) == TRUE) {
        return FIELD_MOVE_ERROR_LOCATION;
    }

    return FIELD_MOVE_ERROR_NONE;
}

static void FieldMoves_SetFlyTask(FieldMovePokemon *fieldMoveMon, const FieldMoveContext *fieldMoveContext)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(fieldMoveMon->fieldTask);
    StartMenu *menu = FieldTask_GetEnv(fieldMoveMon->fieldTask);

    u32 *fieldMonID = Heap_Alloc(HEAP_ID_FIELD2, sizeof(u32));
    *fieldMonID = fieldMoveMon->fieldMonId;
    menu->unk_260 = fieldMonID;

    menu->taskData = Heap_Alloc(HEAP_ID_FIELD2, sizeof(TownMapContext));

    TownMapContext_Init(fieldSystem, menu->taskData, TOWN_MAP_MODE_FLY);
    FieldSystem_OpenTownMap(fieldSystem, menu->taskData);
    StartMenu_SetCallback(menu, sub_0203C434);
}

static enum FieldMoveError FieldMoves_CheckSurf(const FieldMoveContext *fieldMoveContext)
{
    if (PlayerOutsideLinkRoom(fieldMoveContext) == FALSE) {
        return FIELD_MOVE_ERROR_LOCATION;
    }

    if (PlayerHasRequiredBadge(fieldMoveContext, BADGE_ID_FEN) == FALSE) {
        return FIELD_MOVE_ERROR_BADGE;
    }

    if (PlayerAvatar_GetPlayerState(fieldMoveContext->fieldSystem->playerAvatar) == 0x2) {
        return FIELD_MOVE_ERROR_STATE;
    }

    if (!(FieldMoves_IsMoveUsable(fieldMoveContext, FIELD_MOVE_SURF))) {
        return FIELD_MOVE_ERROR_LOCATION;
    }

    if (PlayerTravellingWithPartner(fieldMoveContext) == TRUE) {
        return FIELD_MOVE_ERROR_PARTNER;
    }

    return FIELD_MOVE_ERROR_NONE;
}

static void FieldMoves_SetSurfTask(FieldMovePokemon *fieldMoveMon, const FieldMoveContext *fieldMoveContext)
{
    StartMenu *menu = FieldTask_GetEnv(fieldMoveMon->fieldTask);
    FieldMoveTaskData *taskData = FieldMoves_AllocateTaskData(fieldMoveMon, fieldMoveContext);

    FieldSystem_StartFieldMap(fieldMoveContext->fieldSystem);

    menu->callback = FieldMoves_SurfTask;
    menu->taskData = taskData;
    menu->state = START_MENU_STATE_10;
}

static BOOL FieldMoves_SurfTask(FieldTask *taskMan)
{
    FieldMoveTaskData *taskData = FieldTask_GetEnv(taskMan);
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);

    ScriptManager_Change(taskMan, SCRIPT_ID(FIELD_MOVES, 12), NULL);
    FieldSystem_SetScriptParameters(fieldSystem, taskData->fieldMoveMon.fieldMonId, 0, 0, 0);
    FieldMoves_FreeTaskData(taskData);

    return 0;
}

static enum FieldMoveError FieldMoves_CheckStrength(const FieldMoveContext *fieldMoveContext)
{
    if (PlayerOutsideLinkRoom(fieldMoveContext) == FALSE) {
        return FIELD_MOVE_ERROR_LOCATION;
    }

    if (PlayerHasRequiredBadge(fieldMoveContext, BADGE_ID_MINE) == FALSE) {
        return FIELD_MOVE_ERROR_BADGE;
    }

    if (FieldMoves_IsMoveUsable(fieldMoveContext, FIELD_MOVE_STRENGTH)) {
        return FIELD_MOVE_ERROR_NONE;
    }

    return FIELD_MOVE_ERROR_LOCATION;
}

static void FieldMoves_SetStrengthTask(FieldMovePokemon *fieldMoveMon, const FieldMoveContext *fieldMoveContext)
{
    StartMenu *menu = FieldTask_GetEnv(fieldMoveMon->fieldTask);
    FieldMoveTaskData *taskData = FieldMoves_AllocateTaskData(fieldMoveMon, fieldMoveContext);

    FieldSystem_StartFieldMap(fieldMoveContext->fieldSystem);

    menu->callback = FieldMoves_StrengthTask;
    menu->taskData = taskData;
    menu->state = START_MENU_STATE_10;
}

static BOOL FieldMoves_StrengthTask(FieldTask *param0)
{
    FieldMoveTaskData *taskData = FieldTask_GetEnv(param0);
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);

    ScriptManager_Change(param0, SCRIPT_ID(FIELD_MOVES, 10), taskData->mapObj);
    FieldSystem_SetScriptParameters(fieldSystem, taskData->fieldMoveMon.fieldMonId, 0, 0, 0);
    FieldMoves_FreeTaskData(taskData);

    return 0;
}

static enum FieldMoveError FieldMoves_CheckDefog(const FieldMoveContext *fieldMoveContext)
{
    if (PlayerOutsideLinkRoom(fieldMoveContext) == FALSE) {
        return FIELD_MOVE_ERROR_LOCATION;
    }

    if (PlayerHasRequiredBadge(fieldMoveContext, BADGE_ID_RELIC) == FALSE) {
        return FIELD_MOVE_ERROR_BADGE;
    }

    if (FieldMoves_IsMoveUsable(fieldMoveContext, FIELD_MOVE_DEFOG)) {
        return FIELD_MOVE_ERROR_NONE;
    }

    return FIELD_MOVE_ERROR_LOCATION;
}

static void FieldMoves_SetDefogTask(FieldMovePokemon *fieldMoveMon, const FieldMoveContext *fieldMoveContext)
{
    StartMenu *menu = FieldTask_GetEnv(fieldMoveMon->fieldTask);
    FieldMoveTaskData *taskData = FieldMoves_AllocateTaskData(fieldMoveMon, fieldMoveContext);

    FieldSystem_StartFieldMap(fieldMoveContext->fieldSystem);

    menu->callback = FieldMoves_DefogTask;
    menu->taskData = taskData;
    menu->state = START_MENU_STATE_10;
}

static BOOL FieldMoves_DefogTask(FieldTask *taskMan)
{
    FieldMoveTaskData *taskData = FieldTask_GetEnv(taskMan);
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);

    ScriptManager_Change(taskMan, SCRIPT_ID(FIELD_MOVES, 14), NULL);
    FieldSystem_SetScriptParameters(fieldSystem, taskData->fieldMoveMon.fieldMonId, 0, 0, 0);
    FieldMoves_FreeTaskData(taskData);

    return 0;
}

static enum FieldMoveError FieldMoves_CheckRockSmash(const FieldMoveContext *fieldMoveContext)
{
    if (PlayerOutsideLinkRoom(fieldMoveContext) == FALSE) {
        return FIELD_MOVE_ERROR_LOCATION;
    }

    if (PlayerHasRequiredBadge(fieldMoveContext, BADGE_ID_COAL) == FALSE) {
        return FIELD_MOVE_ERROR_BADGE;
    }

    if (PlayerAvatar_GetPlayerState(fieldMoveContext->fieldSystem->playerAvatar) == 0x2) {
        return FIELD_MOVE_ERROR_LOCATION;
    }

    if (FieldMoves_IsMoveUsable(fieldMoveContext, FIELD_MOVE_ROCK_SMASH)) {
        return FIELD_MOVE_ERROR_NONE;
    }

    return FIELD_MOVE_ERROR_LOCATION;
}

static void FieldMoves_SetRockSmashTask(FieldMovePokemon *fieldMoveMon, const FieldMoveContext *fieldMoveContext)
{
    StartMenu *menu = FieldTask_GetEnv(fieldMoveMon->fieldTask);
    FieldMoveTaskData *taskData = FieldMoves_AllocateTaskData(fieldMoveMon, fieldMoveContext);

    FieldSystem_StartFieldMap(fieldMoveContext->fieldSystem);

    menu->callback = FieldMoves_RockSmashTask;
    menu->taskData = taskData;
    menu->state = START_MENU_STATE_10;
}

static BOOL FieldMoves_RockSmashTask(FieldTask *taskMan)
{
    FieldMoveTaskData *taskData = FieldTask_GetEnv(taskMan);
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);

    ScriptManager_Change(taskMan, SCRIPT_ID(FIELD_MOVES, 9), taskData->mapObj);
    FieldSystem_SetScriptParameters(fieldSystem, taskData->fieldMoveMon.fieldMonId, 0, 0, 0);
    FieldMoves_FreeTaskData(taskData);

    return 0;
}

static enum FieldMoveError FieldMoves_CheckWaterfall(const FieldMoveContext *fieldMoveContext)
{
    if (PlayerOutsideLinkRoom(fieldMoveContext) == FALSE) {
        return FIELD_MOVE_ERROR_LOCATION;
    }

    if (PlayerHasRequiredBadge(fieldMoveContext, BADGE_ID_BEACON) == FALSE) {
        return FIELD_MOVE_ERROR_BADGE;
    }

    if (FieldMoves_IsMoveUsable(fieldMoveContext, FIELD_MOVE_WATERFALL)) {
        return FIELD_MOVE_ERROR_NONE;
    }

    return FIELD_MOVE_ERROR_LOCATION;
}

static void FieldMoves_SetWaterfallTask(FieldMovePokemon *fieldMoveMon, const FieldMoveContext *fieldMoveContext)
{
    StartMenu *menu = FieldTask_GetEnv(fieldMoveMon->fieldTask);
    FieldMoveTaskData *taskData = FieldMoves_AllocateTaskData(fieldMoveMon, fieldMoveContext);

    FieldSystem_StartFieldMap(fieldMoveContext->fieldSystem);

    menu->callback = FieldMoves_WaterfallTask;
    menu->taskData = taskData;
    menu->state = START_MENU_STATE_10;
}

static BOOL FieldMoves_WaterfallTask(FieldTask *param0)
{
    FieldMoveTaskData *taskData = FieldTask_GetEnv(param0);
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);

    ScriptManager_Change(param0, SCRIPT_ID(FIELD_MOVES, 13), NULL);
    FieldSystem_SetScriptParameters(fieldSystem, taskData->fieldMoveMon.fieldMonId, 0, 0, 0);
    FieldMoves_FreeTaskData(taskData);

    return 0;
}

static enum FieldMoveError FieldMoves_CheckRockClimb(const FieldMoveContext *fieldMoveContext)
{
    if (PlayerOutsideLinkRoom(fieldMoveContext) == FALSE) {
        return FIELD_MOVE_ERROR_LOCATION;
    }

    if (PlayerHasRequiredBadge(fieldMoveContext, BADGE_ID_ICICLE) == FALSE) {
        return FIELD_MOVE_ERROR_BADGE;
    }

    if (!(FieldMoves_IsMoveUsable(fieldMoveContext, FIELD_MOVE_ROCK_CLIMB))) {
        return FIELD_MOVE_ERROR_LOCATION;
    }

    if (PlayerTravellingWithPartner(fieldMoveContext) == TRUE) {
        return FIELD_MOVE_ERROR_PARTNER;
    }

    return FIELD_MOVE_ERROR_NONE;
}

static void FieldMoves_SetRockClimbTask(FieldMovePokemon *fieldMoveMon, const FieldMoveContext *fieldMoveContext)
{
    StartMenu *menu = FieldTask_GetEnv(fieldMoveMon->fieldTask);
    FieldMoveTaskData *taskData = FieldMoves_AllocateTaskData(fieldMoveMon, fieldMoveContext);

    FieldSystem_StartFieldMap(fieldMoveContext->fieldSystem);

    menu->callback = FieldMoves_RockClimbTask;
    menu->taskData = taskData;
    menu->state = START_MENU_STATE_10;
}

static BOOL FieldMoves_RockClimbTask(FieldTask *taskMan)
{
    FieldMoveTaskData *taskData = FieldTask_GetEnv(taskMan);
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);

    ScriptManager_Change(taskMan, SCRIPT_ID(FIELD_MOVES, 11), NULL);
    FieldSystem_SetScriptParameters(fieldSystem, taskData->fieldMoveMon.fieldMonId, 0, 0, 0);
    FieldMoves_FreeTaskData(taskData);

    return 0;
}

static enum FieldMoveError FieldMoves_CheckFlash(const FieldMoveContext *fieldMoveContext)
{
    if (PlayerOutsideLinkRoom(fieldMoveContext) == FALSE) {
        return FIELD_MOVE_ERROR_LOCATION;
    }

    if (FieldMoves_IsMoveUsable(fieldMoveContext, FIELD_MOVE_FLASH)) {
        return FIELD_MOVE_ERROR_NONE;
    }

    return FIELD_MOVE_ERROR_LOCATION;
}

static void FieldMoves_SetFlashTask(FieldMovePokemon *fieldMoveMon, const FieldMoveContext *fieldMoveContext)
{
    StartMenu *menu = FieldTask_GetEnv(fieldMoveMon->fieldTask);
    FieldMoveTaskData *taskData = FieldMoves_AllocateTaskData(fieldMoveMon, fieldMoveContext);

    FieldSystem_StartFieldMap(fieldMoveContext->fieldSystem);

    menu->callback = FieldMoves_FlashTask;
    menu->taskData = taskData;
    menu->state = START_MENU_STATE_10;
}

static BOOL FieldMoves_FlashTask(FieldTask *taskMan)
{
    FieldMoveTaskData *taskData = FieldTask_GetEnv(taskMan);
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);

    ScriptManager_Change(taskMan, SCRIPT_ID(FIELD_MOVES, 15), NULL);
    FieldSystem_SetScriptParameters(fieldSystem, taskData->fieldMoveMon.fieldMonId, 0, 0, 0);
    FieldMoves_FreeTaskData(taskData);

    return 0;
}

static enum FieldMoveError FieldMoves_CheckTeleport(const FieldMoveContext *fieldMoveContext)
{
    if (PlayerOutsideLinkRoom(fieldMoveContext) == FALSE) {
        return FIELD_MOVE_ERROR_LOCATION;
    }

    if (MapHeader_IsTeleportAllowed(fieldMoveContext->mapId) == FALSE) {
        return FIELD_MOVE_ERROR_LOCATION;
    }

    if (PlayerTravellingWithPartner(fieldMoveContext) == TRUE) {
        return FIELD_MOVE_ERROR_PARTNER;
    }

    if (PlayerInSafariZoneOrPalPark(fieldMoveContext) == TRUE) {
        return FIELD_MOVE_ERROR_LOCATION;
    }

    return FIELD_MOVE_ERROR_NONE;
}

static void FieldMoves_SetTeleportTask(FieldMovePokemon *fieldMoveMon, const FieldMoveContext *fieldMoveContext)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(fieldMoveMon->fieldTask);
    StartMenu *menu = FieldTask_GetEnv(fieldMoveMon->fieldTask);

    FieldSystem_StartFieldMap(fieldSystem);

    UnkStruct_020711C8 *v2 = sub_020711C8(HEAP_ID_FIELD2, fieldMoveMon->fieldMonId, fieldSystem->saveData);

    menu->callback = FieldMoves_TeleportTask;
    menu->taskData = v2;
    menu->state = START_MENU_STATE_10;
}

static BOOL FieldMoves_TeleportTask(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    UnkStruct_020711C8 *v1 = FieldTask_GetEnv(task);
    FieldWarp *fieldWarp = FieldWarp_InitTeleport(fieldSystem, v1->unk_00, HEAP_ID_FIELD1);

    Heap_Free(v1);
    FieldTask_InitJump(task, FieldWarp_TeleportFadeOut, fieldWarp);

    return FALSE;
}

static enum FieldMoveError FieldMoves_CheckDig(const FieldMoveContext *fieldMoveContext)
{
    if (PlayerOutsideLinkRoom(fieldMoveContext) == FALSE) {
        return FIELD_MOVE_ERROR_LOCATION;
    }

    if (!((MapHeader_IsCave(fieldMoveContext->mapId) == TRUE) && (MapHeader_IsEscapeRopeAllowed(fieldMoveContext->mapId) == TRUE))) {
        return FIELD_MOVE_ERROR_LOCATION;
    }

    if (PlayerTravellingWithPartner(fieldMoveContext) == TRUE) {
        return FIELD_MOVE_ERROR_PARTNER;
    }

    return FIELD_MOVE_ERROR_NONE;
}

static void FieldMoves_SetDigTask(FieldMovePokemon *fieldMoveMon, const FieldMoveContext *fieldMoveContext)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(fieldMoveMon->fieldTask);
    StartMenu *v1 = FieldTask_GetEnv(fieldMoveMon->fieldTask);

    FieldSystem_StartFieldMap(fieldSystem);

    UnkStruct_020711C8 *v2 = sub_020711C8(HEAP_ID_FIELD2, fieldMoveMon->fieldMonId, fieldSystem->saveData);

    v1->callback = FieldMoves_DigTask;
    v1->taskData = v2;
    v1->state = START_MENU_STATE_10;
}

static BOOL FieldMoves_DigTask(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    UnkStruct_020711C8 *v1 = FieldTask_GetEnv(task);
    FieldWarp *fieldWarp = FieldWarp_InitDig(fieldSystem, v1->unk_00, HEAP_ID_FIELD2);

    void *journalEntryLocationEvent = JournalEntry_CreateEventUsedMove(LOCATION_EVENT_USED_DIG - LOCATION_EVENT_USED_CUT, fieldSystem->location->mapId, HEAP_ID_FIELD1);
    JournalEntry_SaveData(fieldSystem->journalEntry, journalEntryLocationEvent, JOURNAL_LOCATION);

    Heap_Free(v1);
    FieldTask_InitJump(task, FieldWarp_DigFadeOut, fieldWarp);

    return FALSE;
}

static enum FieldMoveError FieldMoves_CheckSweetScent(const FieldMoveContext *fieldMoveContext)
{
    if (PlayerOutsideLinkRoom(fieldMoveContext) == FALSE) {
        return FIELD_MOVE_ERROR_LOCATION;
    }

    if (PlayerInPalPark(fieldMoveContext) == TRUE) {
        return FIELD_MOVE_ERROR_LOCATION;
    }

    return FIELD_MOVE_ERROR_NONE;
}

static void FieldMoves_SetSweetScentTask(FieldMovePokemon *fieldMoveMon, const FieldMoveContext *fieldMoveContext)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(fieldMoveMon->fieldTask);
    StartMenu *startMenu = FieldTask_GetEnv(fieldMoveMon->fieldTask);
    UnkStruct_020711C8 *v2 = sub_020711C8(HEAP_ID_FIELD2, fieldMoveMon->fieldMonId, fieldSystem->saveData);
    int unused;
    void *v4;

    FieldSystem_StartFieldMap(fieldSystem);

    startMenu->callback = ov5_021F101C;
    startMenu->taskData = v2;
    startMenu->state = START_MENU_STATE_10;

    v4 = JournalEntry_CreateEventUsedMove(LOCATION_EVENT_LURED_POKEMON - LOCATION_EVENT_USED_CUT, fieldSystem->location->mapId, HEAP_ID_FIELD2);
    JournalEntry_SaveData(fieldSystem->journalEntry, v4, JOURNAL_LOCATION);
}

static enum FieldMoveError FieldMoves_CheckChatter(const FieldMoveContext *fieldMoveContext)
{
    if ((PlayerOutsideLinkRoom(fieldMoveContext) == FALSE) || (PersistedMapFeatures_IsCurrentDynamicMap(fieldMoveContext->fieldSystem, 9) == TRUE)) {
        return FIELD_MOVE_ERROR_LOCATION;
    }

    return FIELD_MOVE_ERROR_NONE;
}

static void FieldMoves_SetChatterTask(FieldMovePokemon *fieldMoveMon, const FieldMoveContext *fieldMoveContext)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(fieldMoveMon->fieldTask);
    StartMenu *menu = FieldTask_GetEnv(fieldMoveMon->fieldTask);
    FieldMoveTaskData *taskData = FieldMoves_AllocateTaskData(fieldMoveMon, fieldMoveContext);

    FieldSystem_StartFieldMap(fieldSystem);

    menu->callback = FieldMoves_ChatterTask;
    menu->taskData = taskData;
    menu->state = START_MENU_STATE_10;
}

static BOOL FieldMoves_ChatterTask(FieldTask *taskMan)
{
    FieldMoveTaskData *taskData = FieldTask_GetEnv(taskMan);
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);

    ScriptManager_Change(taskMan, SCRIPT_ID(RECORD_CHATOT_CRY, 0), NULL);
    FieldSystem_SetScriptParameters(fieldSystem, taskData->fieldMoveMon.fieldMonId, 0, 0, 0);
    FieldMoves_FreeTaskData(taskData);

    return 0;
}
