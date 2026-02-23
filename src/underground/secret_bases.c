#include "underground/secret_bases.h"

#include <nitro.h>
#include <string.h>

#include "constants/field_base_tiles.h"
#include "constants/heap.h"
#include "constants/map_object.h"
#include "generated/goods.h"
#include "generated/movement_actions.h"
#include "generated/trainer_score_events.h"
#include "generated/traps.h"

#include "field/field_system.h"
#include "overlay005/map_prop.h"
#include "overlay005/ov5_021F55CC.h"
#include "overlay005/ov5_021F5894.h"
#include "underground/comm_manager.h"
#include "underground/manager.h"
#include "underground/menus.h"
#include "underground/player.h"
#include "underground/player_talk.h"
#include "underground/records.h"
#include "underground/spheres.h"
#include "underground/text_printer.h"
#include "underground/top_screen.h"
#include "underground/traps.h"

#include "bg_window.h"
#include "comm_player_manager.h"
#include "communication_information.h"
#include "communication_system.h"
#include "field_map_change.h"
#include "field_system.h"
#include "field_task.h"
#include "font.h"
#include "game_records.h"
#include "goods.h"
#include "graphics.h"
#include "heap.h"
#include "journal.h"
#include "location.h"
#include "map_object_move.h"
#include "menu.h"
#include "message.h"
#include "player_avatar.h"
#include "render_window.h"
#include "savedata.h"
#include "screen_fade.h"
#include "sound_playback.h"
#include "string_gf.h"
#include "string_list.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "system_flags.h"
#include "terrain_collision_manager.h"
#include "trainer_info.h"
#include "underground.h"
#include "unk_02030EE0.h"
#include "unk_02033200.h"
#include "unk_020366A0.h"
#include "unk_0205F180.h"
#include "unk_020655F4.h"
#include "vars_flags.h"

#include "res/field/props/models/prop_models.naix"
#include "res/graphics/trap_effects/trap_effects.naix"
#include "res/text/bank/underground_capture_flag.h"
#include "res/text/bank/underground_common.h"

#define ENTRANCE_LOCATION_NONE 0xFFF

#define NETID_CURRENT_PLAYER_BASE 16

#define SECRET_BASE_COUNT 17

#define DEFAULT_BASE_RETURN_X 72
#define DEFAULT_BASE_RETURN_Z 437

enum BaseCreateRequest {
    BASE_CREATE_REQ_USE_DIGGER_DRILL = 0,
    BASE_CREATE_REQ_CLOSE_BASE,
    BASE_CREATE_REQ_NEW_BASE,
    BASE_CREATE_REQ_MOVE_BASE,
};

enum BaseCreateEvent {
    BASE_CREATE_EVENT_CANT_DRILL = 0,
    BASE_CREATE_EVENT_USE_DRILL,
    BASE_CREATE_EVENT_CLOSE_BASE,
    BASE_CREATE_EVENT_MOVE_BASE,
    BASE_CREATE_EVENT_NEW_BASE,
    BASE_CREATE_EVENT_CANT_ENTER,
    BASE_CREATE_EVENT_CANT_DRILL_IN_BASE,
};

enum EnterPromptState {
    ENTER_PROMPT_STATE_INIT = 0,
    ENTER_PROMPT_STATE_OPEN_CONFIRM_MENU_OTHER_BASE,
    ENTER_PROMPT_STATE_CONFIRM_OTHER_BASE,
    ENTER_PROMPT_STATE_ENTER_AFTER_TEXT,
    ENTER_PROMPT_STATE_OPEN_CONFIRM_MENU_OWN_BASE,
    ENTER_PROMPT_STATE_CONFIRM_OWN_BASE,
    ENTER_PROMPT_STATE_OPEN_CLOSE_DOOR_MENU,
    ENTER_PROMPT_STATE_CLOSE_DOOR_MENU,
    ENTER_PROMPT_STATE_CLOSE_DOOR_COMMS,
    ENTER_PROMPT_STATE_ENTER_CLOSE_DOOR_AND_END,
    ENTER_PROMPT_STATE_ENTER_AND_END,
};

enum ExitPromptState {
    EXIT_PROMPT_STATE_INIT = 0,
    EXIT_PROMPT_STATE_OPEN_CONFIRM_MENU,
    EXIT_PROMPT_STATE_CONFIRM,
    EXIT_PROMPT_STATE_OPEN_CONFIRM_MENU_DOOR_CLOSED,
    EXIT_PROMPT_STATE_CONFIRM_DOOR_CLOSED,
    EXIT_PROMPT_STATE_OPEN_COMMS_CONFIRM_MENU,
    EXIT_PROMPT_STATE_CONFIRM_COMMS,
    EXIT_PROMPT_STATE_EXIT_AND_END,
};

enum DrillState {
    DRILL_STATE_INIT = 0,
    DRILL_STATE_WAIT,
    DRILL_STATE_CREATE_ENTRANCE,
    DRILL_STATE_PRINT_PROMPT,
    DRILL_STATE_CANCEL_AFTER_BUTTON_PRESS,
    DRILL_STATE_OPEN_CONFIRM_MENU,
    DRILL_STATE_CONFIRM,
    DRILL_STATE_REMOVE_DRILL = 9,
    DRILL_STATE_CREATE_BASE_AND_END,
};

enum FlagRankUpState {
    FLAG_RANK_UP_STATE_PRINT_FLAG_REGISTERED = 0,
    FLAG_RANK_UP_STATE_PRINT_RANK_UP,
    FLAG_RANK_UP_STATE_UPDATE_PC_PROP,
    FLAG_RANK_UP_STATE_3_UNUSED,
    FLAG_RANK_UP_STATE_END,
};

enum MoveToFromBaseState {
    MOVE_STATE_INIT = 0,
    MOVE_STATE_FADE_OUT,
    MOVE_STATE_WAIT_FOR_FADE_OUT,
    MOVE_STATE_STOP_FIELD_MAP,
    MOVE_STATE_UPDATE_LOCATION,
    MOVE_STATE_RESUME_FIELD_MAP,
    MOVE_STATE_FADE_IN,
    MOVE_STATE_WAIT_FOR_FADE_IN,
    MOVE_STATE_END_AFTER_TEXT_OR_NEW_LINK,
    MOVE_STATE_FRAME_DELAY,
    MOVE_STATE_WAIT,
    MOVE_STATE_BLOCK_ENTRANCE,
    MOVE_STATE_FACE_NORTH_AND_END_AFTER_TEXT,
    MOVE_STATE_END,
};

enum MoveStatus {
    MOVE_STATUS_NONE = 0,
    MOVE_STATUS_ENTERING,
    MOVE_STATUS_ERROR_WHILE_ENTERING,
    MOVE_STATUS_ENTERING_AS_CLIENT = 4,
    MOVE_STATUS_ENTERING_2,
    MOVE_STATUS_EXIT_IF_HOST,
};

typedef struct SecretBaseInfo {
    u8 ownerNetID;
    u8 visitorNetID;
    u8 secretBase[sizeof(SecretBase)];
} SecretBaseInfo;

typedef struct BaseEntrance {
    u16 x;
    u16 z;
    u8 dir;
} BaseEntrance;

typedef struct BaseExitEvent {
    u16 x;
    u16 z;
    u8 netID;
    u8 dir;
    u8 forceExit;
} BaseExitEvent;

typedef struct SecretBasesEnv {
    FieldSystem *fieldSystem;
    SysTask *sysTask;
    SecretBaseInfo baseInfo[SECRET_BASE_COUNT];
    SecretBaseInfo *currentOccupiedBaseInfo;
    u32 baseCollisions[SECRET_BASE_COUNT][SECRET_BASE_DEPTH];
    BaseEntrance baseEntrances[MAX_CONNECTED_PLAYERS];
    BaseEntrance baseEntrancesServer[MAX_CONNECTED_PLAYERS];
    u8 moveStatus;
    u8 baseEntrancePropIdxs[SECRET_BASE_COUNT];
    u16 baseEntrancePropXCoords[SECRET_BASE_COUNT];
    u16 baseEntrancePropZCoords[SECRET_BASE_COUNT];
    u8 baseEntrancePropDirs[SECRET_BASE_COUNT];
    u8 obtainedFlagOwnerNetIDs[MAX_CONNECTED_PLAYERS];
    u8 flagStealVictimNetIDs[MAX_CONNECTED_PLAYERS];
    u8 tookBackFlagMessageQueued[MAX_CONNECTED_PLAYERS];
    u8 occupiedBaseOwnerIDs[MAX_CONNECTED_PLAYERS];
    u8 baseTransitioningOwnerNetIDs[MAX_CONNECTED_PLAYERS]; // netID of the base the player is currently entering/exiting
    u8 baseEnteringOwnerNetIDs[MAX_CONNECTED_PLAYERS]; // netID of the base the player is currently entering
    u8 visitedBaseOwnerNetIDs[MAX_CONNECTED_PLAYERS];
    u8 playerAffectedByTool[MAX_CONNECTED_PLAYERS];
    u8 baseEntrancesBuffer[MAX_CONNECTED_PLAYERS * 4];
    u16 baseReturnXCoords[MAX_CONNECTED_PLAYERS];
    u16 baseReturnZCoords[MAX_CONNECTED_PLAYERS];
    u16 baseReturnDirs[MAX_CONNECTED_PLAYERS];
    u16 currentBaseReturnXCoord;
    u16 currentBaseReturnZCoord;
    u8 currentBaseReturnDir;
    u8 unused;
    u8 dummy;
    u8 linksReceivedBaseData;
    u8 baseEntranceGraphicsDisabled;
    u8 baseEntranceGraphicsEnabled;
    u8 currentPlayerInBase;
} SecretBasesEnv;

typedef struct BaseTransitionContext {
    FieldSystem *fieldSystem;
    Menu *menu;
    SysTask *sysTask;
    int state;
    int subState;
    int mapID;
    int warpID;
    int x;
    int z;
    int dir;
    u8 initialConnectedCount;
    u8 timer;
    u8 unused;
    u8 netID;
    u8 baseOwnerNetID;
    u8 forceExit;
    u8 showBlockedEntranceMessage;
} BaseTransitionContext;

typedef struct DiggerDrillContext {
    FieldSystem *fieldSystem;
    SysTask *sysTask;
    Menu *menu;
    int state;
    u8 unused;
    u8 timer;
    u8 hasExistingBase;
} DiggerDrillContext;

typedef struct BaseTransitionPromptEvent {
    u16 x;
    u16 z;
    u8 netID;
    u8 baseOwnerNetID;
    u8 dir;
    u8 entering; // false if exiting
} BaseTransitionPromptEvent;

typedef struct BaseTransitionEvent {
    u8 baseOwnerNetID;
    u8 success;
    u8 entering; // false if exiting
} BaseTransitionEvent;

typedef struct SecretBaseCreateEvent {
    u8 netID;
    u8 type;
} SecretBaseCreateEvent;

typedef struct FlagRankUpEvent {
    u8 netID;
    u8 prevFlagRank;
} FlagRankUpEvent;

typedef struct FlagRankUpContext {
    int state;
    u8 unused;
    u8 prevFlagRank;
} FlagRankUpContext;

typedef struct GoodInteractionEvent {
    u8 netID;
    u8 bankEntry;
} GoodInteractionEvent;

static void SecretBases_CalculateBaseCollision(SecretBase *secretBase, u32 *baseCollision);
static void SecretBases_SendBaseEntrancesBuffer(void);
static void SecretBases_ClearAllBaseEntranceProps(void);
static void SecretBases_SetBaseEntrancePropLocation(int x, int z, int dir, int netID);
static void SecretBases_StartMoveToFromSecretBaseTask(FieldSystem *fieldSystem, int x, int z, int dir, int netID, BOOL forceExit);
static void SecretBases_StartExitBasePromptTask(FieldSystem *fieldSystem, int x, int z, int dir, int baseOwnerNetID, int netID);
static void SecretBases_StartEnterBasePromptTask(FieldSystem *fieldSystem, int x, int z, int dir, int baseOwnerNetID, int netID);
static BOOL SecretBases_TryEnterBase(int baseOwnerNetID, int netID);
static void SecretBases_ExitBase(int baseOwnerNetID, int netID, BOOL forceExit);
static void SecretBases_CreateBase(void);
static void SecretBases_ClearBaseEntranceProp(int netID);
static void SecretBases_DrawBaseEntrancesTask(SysTask *unused, void *unused1);
static void ov23_0224DC08(void);
static void ov23_0224DC24(void);

static SecretBasesEnv *secretBasesEnv = NULL;

static const WindowTemplate sYesNoWindowTemplate = {
    .bgLayer = BG_LAYER_MAIN_3,
    .tilemapLeft = 25,
    .tilemapTop = 13,
    .width = YES_NO_MENU_TILE_W,
    .height = YES_NO_MENU_TILE_H,
    .palette = 13,
    .baseTile = BASE_TILE_YES_NO_MENU
};

static const WindowTemplate sLeaveOpenOrCloseWindowTemplate = {
    .bgLayer = BG_LAYER_MAIN_3,
    .tilemapLeft = 16,
    .tilemapTop = 13,
    .width = 15,
    .height = 4,
    .palette = 13,
    .baseTile = BASE_TILE_MESSAGE_WINDOW - 15 * 4 - 2 // ?
};

// clang-format off
// these refer to a 8x2 grid of secret bases, not the grid of walkable tiles
static u8 sSecretBaseXCoordinates[] = {
    1, 2, 3, 4, 5, 6, 7, 8,
    1, 2, 3, 4, 5, 6, 7, 8,
    [NETID_CURRENT_PLAYER_BASE] = 0
};

// these refer to a 8x2 grid of secret bases, not the grid of walkable tiles
static u8 sSecretBaseZCoordinates[] = {
    0, 0, 0, 0, 0, 0, 0, 0,
    1, 1, 1, 1, 1, 1, 1, 1,
    [NETID_CURRENT_PLAYER_BASE] = 0
};
// clang-format on

static int SecretBases_GetOwnerNetIDFromCoordinates(int x, int z)
{
    int secretBaseXCoord = x / SECRET_BASE_WIDTH;
    int secretBaseZCoord = z / SECRET_BASE_DEPTH;

    for (int netID = 0; netID < SECRET_BASE_COUNT; netID++) {
        if (secretBaseXCoord == sSecretBaseXCoordinates[netID] && secretBaseZCoord == sSecretBaseZCoordinates[netID]) {
            return netID;
        }
    }

    return NETID_CURRENT_PLAYER_BASE;
}

static BOOL SecretBases_AreCoordinatesOnBaseExit(int x, int z)
{
    const BaseEntrance entrance = {
        .x = BASE_EXIT_X,
        .z = BASE_EXIT_Z,
        .dir = DIR_NORTH,
    };
    const int baseWidth = SECRET_BASE_WIDTH;

    for (int netID = 0; netID < MAX_CONNECTED_PLAYERS; netID++) {
        if (x == entrance.x + netID * baseWidth + baseWidth && z == entrance.z) {
            return TRUE;
        }
    }

    return FALSE;
}

static void SecretBases_GetBaseExitCoordinates(int netID, BaseEntrance *out)
{
    const BaseEntrance entrance = {
        .x = BASE_EXIT_X,
        .z = BASE_EXIT_Z,
        .dir = DIR_NORTH,
    };
    const int baseWidth = SECRET_BASE_WIDTH;

    if (CommServerClient_IsInClosedSecretBase()) {
        out->x = entrance.x;
        out->z = entrance.z;
        return;
    }

    if (netID == NETID_CURRENT_PLAYER_BASE) {
        netID = 0;
    }

    out->x = entrance.x + netID * baseWidth + baseWidth;
    out->z = entrance.z;
}

static void SecretBases_GetBaseExitCoordinatesOverrideNetID(int netID, BaseEntrance *out)
{
    SecretBases_GetBaseExitCoordinates(CommSys_IsAlone() ? NETID_CURRENT_PLAYER_BASE : netID, out);
}

void SecretBasesEnv_Init(void *dest, FieldSystem *fieldSystem)
{
    int netID;

    if (secretBasesEnv) {
        return;
    }

    GF_ASSERT(SecretBase_Size() == sizeof(SecretBase));

    secretBasesEnv = dest;
    MI_CpuFill8(secretBasesEnv, 0, sizeof(SecretBasesEnv));
    secretBasesEnv->fieldSystem = fieldSystem;

    for (netID = 0; netID < MAX_CONNECTED_PLAYERS; netID++) {
        secretBasesEnv->baseEntrances[netID].x = ENTRANCE_LOCATION_NONE;
        secretBasesEnv->baseEntrances[netID].z = ENTRANCE_LOCATION_NONE;
        secretBasesEnv->baseEntrancesServer[netID].x = ENTRANCE_LOCATION_NONE;
        secretBasesEnv->baseEntrancesServer[netID].z = ENTRANCE_LOCATION_NONE;

        secretBasesEnv->baseTransitioningOwnerNetIDs[netID] = NETID_NONE;
        secretBasesEnv->baseEnteringOwnerNetIDs[netID] = NETID_NONE;
        secretBasesEnv->occupiedBaseOwnerIDs[netID] = NETID_NONE;

        secretBasesEnv->visitedBaseOwnerNetIDs[netID] = NETID_NONE;
        secretBasesEnv->obtainedFlagOwnerNetIDs[netID] = NETID_NONE;
        secretBasesEnv->flagStealVictimNetIDs[netID] = NETID_NONE;
        secretBasesEnv->tookBackFlagMessageQueued[netID] = -1;

        secretBasesEnv->baseReturnXCoords[netID] = DEFAULT_BASE_RETURN_X;
        secretBasesEnv->baseReturnZCoords[netID] = DEFAULT_BASE_RETURN_Z;
        secretBasesEnv->baseReturnDirs[netID] = DIR_SOUTH;
    }

    for (netID = 0; netID < SECRET_BASE_COUNT; netID++) {
        SecretBase *secretBase = (SecretBase *)secretBasesEnv->baseInfo[netID].secretBase;

        SecretBase_Init(secretBase);

        secretBasesEnv->baseEntrancePropIdxs[netID] = (u8)PROP_NONE;
        secretBasesEnv->baseEntrancePropDirs[netID] = DIR_NONE;
    }

    MI_CpuFill8(secretBasesEnv->baseCollisions, 0xFF, SECRET_BASE_COUNT * SECRET_BASE_DEPTH * sizeof(u32));
    SecretBases_LoadCurrentPlayerBase(fieldSystem);

    secretBasesEnv->currentBaseReturnXCoord = DEFAULT_BASE_RETURN_X;
    secretBasesEnv->currentBaseReturnZCoord = DEFAULT_BASE_RETURN_Z;
    secretBasesEnv->currentBaseReturnDir = DIR_SOUTH;
    secretBasesEnv->sysTask = SysTask_Start(SecretBases_DrawBaseEntrancesTask, NULL, 100);
}

void SecretBases_LoadCurrentPlayerBase(FieldSystem *fieldSystem)
{
    SecretBase *secretBase = SaveData_GetSecretBase(FieldSystem_GetSaveData(fieldSystem));
    UndergroundRecord *undergroundRecord = SecretBase_GetUndergroundRecord(secretBase);

    UndergroundRecord_SetTrainerScore(undergroundRecord, GameRecords_GetTrainerScore(SaveData_GetGameRecords(fieldSystem->saveData)));

    MI_CpuCopy8(secretBase, secretBasesEnv->baseInfo[NETID_CURRENT_PLAYER_BASE].secretBase, sizeof(SecretBase));
    SecretBases_CalculateBaseCollision(secretBase, secretBasesEnv->baseCollisions[NETID_CURRENT_PLAYER_BASE]);

    MI_CpuCopy8(secretBase, secretBasesEnv->baseInfo[0].secretBase, sizeof(SecretBase));
    SecretBases_CalculateBaseCollision(secretBase, secretBasesEnv->baseCollisions[0]);
}

static void SecretBases_AddGoodCollisionToBaseCollision(int x, int z, const u8 *goodCollision, u32 *baseCollision)
{
    for (int i = 0; i < MAX_GOOD_DEPTH; i++) {
        if (z + i < SECRET_BASE_DEPTH) {
            for (int j = 0; j < MAX_GOOD_WIDTH; j++) {
                if (goodCollision[i * MAX_GOOD_WIDTH + j]) {
                    if (x + j < SECRET_BASE_WIDTH) {
                        baseCollision[i + z] &= ~(0x1 << (x + j));
                    }
                }
            }
        }
    }
}

static void SecretBases_CalculateBaseCollision(SecretBase *secretBase, u32 *baseCollision)
{
    const u8 *goodCollision;
    // clang-format off
    u8 pcCollision[] = { 
        1, 1, 0,
        0, 0, 0,
        0, 0, 0,
    };
    u8 boulderCollision[] = {
        1, 1, 0,
        1, 1, 0,
        0, 0, 0,
    };
    // clang-format on

    MI_CpuFill8(baseCollision, 0xFF, SECRET_BASE_DEPTH * sizeof(u32));

    for (int i = 0; i < MAX_SECRET_BASE_GOODS; i++) {
        enum Good goodID = SecretBase_GetGoodIDAtIndex(secretBase, i);

        if (goodID == UG_GOOD_NONE) {
            continue;
        }

        int x = SecretBase_GetGoodXCoordAtIndex(secretBase, i);
        int z = SecretBase_GetGoodZCoordAtIndex(secretBase, i);

        if (i == 0) {
            goodCollision = pcCollision;
        } else if (i < MAX_PLACED_GOODS + 1) {
            goodCollision = Good_GetCollision(goodID);
        } else {
            goodCollision = boulderCollision;
        }

        SecretBases_AddGoodCollisionToBaseCollision(x, z, goodCollision, baseCollision);
    }
}

void SecretBases_DisableBaseEntranceGraphics(void)
{
    SecretBases_ClearAllBaseEntranceProps();

    if (secretBasesEnv->sysTask) {
        SysTask_Done(secretBasesEnv->sysTask);
        secretBasesEnv->sysTask = NULL;
    }

    secretBasesEnv->baseEntranceGraphicsDisabled = TRUE;
}

void SecretBases_EnableBaseEntranceGraphics(void)
{
    secretBasesEnv->baseEntranceGraphicsDisabled = FALSE;

    if (!secretBasesEnv->currentPlayerInBase) {
        int netID;
        for (netID = 0; netID < MAX_CONNECTED_PLAYERS; netID++) {
            SecretBases_ClearBaseEntranceProp(netID);
        }

        for (netID = 0; netID < MAX_CONNECTED_PLAYERS; netID++) {
            BaseEntrance *entrance = &secretBasesEnv->baseEntrances[netID];

            if (entrance->x != ENTRANCE_LOCATION_NONE && entrance->z != ENTRANCE_LOCATION_NONE) {
                SecretBases_SetBaseEntrancePropLocation(entrance->x, entrance->z, entrance->dir, netID);
            }
        }
    }

    if (secretBasesEnv->sysTask == NULL) {
        secretBasesEnv->sysTask = SysTask_Start(SecretBases_DrawBaseEntrancesTask, NULL, 100);
    }
}

void SecretBasesEnv_Free(void)
{
    if (secretBasesEnv->sysTask) {
        SysTask_Done(secretBasesEnv->sysTask);
        secretBasesEnv->sysTask = NULL;
    }

    SecretBases_ClearAllBaseEntranceProps();

    if (secretBasesEnv) {
        Heap_Free(secretBasesEnv);
    }

    secretBasesEnv = NULL;
}

void SecretBases_ResetAllBaseInfo(void)
{
    for (int netID = 0; netID < MAX_CONNECTED_PLAYERS; netID++) {
        SecretBase *secretBase = (SecretBase *)secretBasesEnv->baseInfo[netID].secretBase;

        SecretBase_SetInactive(secretBase);

        secretBasesEnv->baseEntrances[netID].x = ENTRANCE_LOCATION_NONE;
        secretBasesEnv->baseEntrances[netID].z = ENTRANCE_LOCATION_NONE;
        secretBasesEnv->baseEntrancesServer[netID].x = ENTRANCE_LOCATION_NONE;
        secretBasesEnv->baseEntrancesServer[netID].z = ENTRANCE_LOCATION_NONE;
    }

    MI_CpuFill8(secretBasesEnv->baseCollisions, 0xFF, SECRET_BASE_COUNT * SECRET_BASE_DEPTH * sizeof(u32));
    SecretBases_LoadCurrentPlayerBase(secretBasesEnv->fieldSystem);
}

void SecretBases_ClearAllBaseInfo(void)
{
    for (int netID = 0; netID < SECRET_BASE_COUNT; netID++) {
        SecretBase *secretBase = (SecretBase *)secretBasesEnv->baseInfo[netID].secretBase;
        SecretBase_Init(secretBase);
    }

    SecretBases_LoadCurrentPlayerBase(secretBasesEnv->fieldSystem);
}

int SecretBasesEnv_Size(void)
{
    return sizeof(SecretBasesEnv);
}

void SecretBases_ClearBaseEntranceData(int netID)
{
    if (secretBasesEnv) {
        secretBasesEnv->occupiedBaseOwnerIDs[netID] = NETID_NONE;
        secretBasesEnv->baseTransitioningOwnerNetIDs[netID] = NETID_NONE;
        secretBasesEnv->baseEnteringOwnerNetIDs[netID] = NETID_NONE;
        secretBasesEnv->baseEntrancesServer[netID].x = ENTRANCE_LOCATION_NONE;
        secretBasesEnv->baseEntrancesServer[netID].z = ENTRANCE_LOCATION_NONE;
    }
}

void SecretBases_RemoveBaseEntrance(int netID)
{
    if (secretBasesEnv) {
        SecretBases_ClearBaseEntranceProp(netID);
        secretBasesEnv->baseEntrances[netID].x = ENTRANCE_LOCATION_NONE;
        secretBasesEnv->baseEntrances[netID].z = ENTRANCE_LOCATION_NONE;
    }
}

static void SecretBases_ResumeFieldSystem(int unused)
{
    CommPlayerMan_ResumeFieldSystem();
}

static int SecretBases_GetEntranceOwnerNetIDFromCoords(int x, int z)
{
    for (int netID = 0; netID < MAX_CONNECTED_PLAYERS; netID++) {
        SecretBase *secretBase = (SecretBase *)secretBasesEnv->baseInfo[netID].secretBase;

        if (!SecretBase_IsActive(secretBase)) {
            continue;
        }

        if (!CommPlayer_IsActive(netID)) {
            continue;
        }

        if (x == SecretBase_GetEntranceXCoord(secretBase) && z == SecretBase_GetEntranceZCoord(secretBase)) {
            return netID;
        }
    }

    return NETID_NONE;
}

void SecretBases_ProcessBaseTransitionPromptEvent(int unused0, int unused1, void *data, void *unused3)
{
    BaseTransitionPromptEvent *event = data;

    if (event->netID != CommSys_CurNetId()) {
        return;
    }

    if (secretBasesEnv->baseEntranceGraphicsDisabled) {
        return;
    }

    if (event->entering) {
        SecretBases_StartEnterBasePromptTask(secretBasesEnv->fieldSystem, event->x, event->z, DIR_NORTH, event->netID, event->baseOwnerNetID);
    } else {
        SecretBases_StartExitBasePromptTask(secretBasesEnv->fieldSystem, event->x, event->z, event->dir, event->netID, event->baseOwnerNetID);
    }
}

void SecretBases_ProcessFailedBaseEnter(int unused0, int unused1, void *data, void *unused3)
{
    u8 *netID = data;

    if (CommSys_CurNetId() == *netID) {
        CommPlayerMan_PauseFieldSystem();

        UndergroundTextPrinter_PrintText(UndergroundMan_GetCommonTextPrinter(), UndergroundCommon_Text_WallCrumbledCantEnter, TRUE, SecretBases_ResumeFieldSystem);
        ov23_0224DC24();
    }
}

int CommPacketSizeOf_BaseTransitionPromptEvent(void)
{
    return sizeof(BaseTransitionPromptEvent);
}

void SecretBases_ProcessBaseTransitionEvent(int netID, int unused1, void *data, void *unused3)
{
    BaseTransitionEvent *event = data;
    u8 buffer = netID;

    if (CommSys_CurNetId() != 0) {
        GF_ASSERT(FALSE);
        return;
    }

    if (event->success) {
        if (event->entering) {
            if (!SecretBases_TryEnterBase(event->baseOwnerNetID, netID)) {
                secretBasesEnv->baseTransitioningOwnerNetIDs[netID] = NETID_NONE;
                CommSys_SendDataFixedSizeServer(61, &buffer);
            }
        } else {
            SecretBases_ExitBase(event->baseOwnerNetID, netID, FALSE);
        }
    } else {
        secretBasesEnv->baseTransitioningOwnerNetIDs[netID] = NETID_NONE;
    }
}

int CommPacketSizeOf_BaseTransitionEvent(void)
{
    return sizeof(BaseTransitionEvent);
}

static BOOL SecretBases_TryEnterBase(int baseOwnerNetID, int netID)
{
    SecretBaseInfo *baseInfo = &secretBasesEnv->baseInfo[baseOwnerNetID];
    SecretBase *secretBase = (SecretBase *)baseInfo->secretBase;

    if (!SecretBase_IsActive(secretBase)) {
        return FALSE;
    }

    if (CommSys_IsCmdQueuedServer(54)) {
        return FALSE;
    }

    for (int i = 0; i < MAX_CONNECTED_PLAYERS; i++) {
        if (CommSys_IsPlayerConnected(i)) {
            if (secretBasesEnv->baseEnteringOwnerNetIDs[i] == baseOwnerNetID) {
                return FALSE;
            }
        }
    }

    BaseEntrance entrance;
    SecretBases_GetBaseExitCoordinatesOverrideNetID(baseOwnerNetID, &entrance);
    baseInfo->visitorNetID = netID;
    SecretBases_SendEnteredBase(baseOwnerNetID);

    secretBasesEnv->baseTransitioningOwnerNetIDs[netID] = baseOwnerNetID;
    secretBasesEnv->baseEnteringOwnerNetIDs[netID] = baseOwnerNetID;

    UndergroundPlayer_MoveToFromSecretBaseServer(netID, entrance.x, entrance.z, DIR_NORTH);

    return TRUE;
}

static void SecretBases_ExitBase(int baseOwnerNetID, int netID, BOOL forceExit)
{
    BaseExitEvent event;
    SecretBase *unused = (SecretBase *)&secretBasesEnv->baseInfo[baseOwnerNetID].secretBase;

    BaseEntrance unused2;
    SecretBases_GetBaseExitCoordinates(baseOwnerNetID, &unused2);

    secretBasesEnv->baseTransitioningOwnerNetIDs[netID] = baseOwnerNetID;

    int x, z, dir;
    if (CommSys_IsAlone()) {
        x = secretBasesEnv->currentBaseReturnXCoord;
        z = secretBasesEnv->currentBaseReturnZCoord;
        dir = secretBasesEnv->currentBaseReturnDir;
    } else {
        x = secretBasesEnv->baseReturnXCoords[netID];
        z = secretBasesEnv->baseReturnZCoords[netID];
        dir = secretBasesEnv->baseReturnDirs[netID];
    }

    UndergroundPlayer_MoveToFromSecretBaseServer(netID, x, z, dir);

    x += MapObject_GetDxFromDir(dir);
    z += MapObject_GetDzFromDir(dir);

    event.x = x;
    event.z = z;
    event.netID = netID;
    event.dir = dir;
    event.forceExit = forceExit;

    CommSys_SendDataFixedSizeServer(57, &event);
    CommPlayerMan_SetMovementEnabled(netID, FALSE);
}

BOOL SecretBases_CheckForEnterExit(int netID, int x, int z)
{
    BaseExitEvent exitEvent;
    BaseEntrance entrance;
    BaseTransitionPromptEvent promptEvent;

    if (!secretBasesEnv) {
        return FALSE;
    }

    if (netID != 0 && !CommSys_IsPlayerConnected(netID)) {
        return FALSE;
    }

    if (UndergroundPlayer_IsAffectedByTrap(netID)) {
        return FALSE;
    }

    if (secretBasesEnv->baseTransitioningOwnerNetIDs[netID] != NETID_NONE) {
        return TRUE;
    }

    int baseOwnerNetID = SecretBases_GetEntranceOwnerNetIDFromCoords(x, z);

    if (baseOwnerNetID != NETID_NONE) {
        secretBasesEnv->baseTransitioningOwnerNetIDs[netID] = baseOwnerNetID;

        promptEvent.entering = TRUE;
        promptEvent.x = x;
        promptEvent.z = z;
        promptEvent.dir = DIR_NORTH;
        promptEvent.netID = netID;
        promptEvent.baseOwnerNetID = baseOwnerNetID;

        CommSys_SendDataFixedSizeServer(58, &promptEvent);
        CommPlayerMan_SetMovementEnabled(netID, FALSE);

        return TRUE;
    }

    for (baseOwnerNetID = 0; baseOwnerNetID <= MAX_CONNECTED_PLAYERS; baseOwnerNetID++) {
        SecretBase *secretBase = (SecretBase *)secretBasesEnv->baseInfo[baseOwnerNetID].secretBase;

        if (!SecretBase_IsActive(secretBase)) {
            continue;
        }

        SecretBases_GetBaseExitCoordinates(baseOwnerNetID, &entrance);

        if (x == entrance.x && z == entrance.z) {
            secretBasesEnv->baseTransitioningOwnerNetIDs[netID] = baseOwnerNetID;

            promptEvent.entering = FALSE;
            promptEvent.x = x;
            promptEvent.z = z;
            promptEvent.dir = DIR_NORTH;
            promptEvent.netID = netID;
            promptEvent.baseOwnerNetID = baseOwnerNetID;

            CommSys_SendDataFixedSizeServer(58, &promptEvent);
            CommPlayerMan_SetMovementEnabled(netID, FALSE);

            return TRUE;
        }
    }

    if (SecretBases_AreCoordinatesOnBaseExit(x, z)) {
        exitEvent.x = secretBasesEnv->baseReturnXCoords[netID];
        exitEvent.z = secretBasesEnv->baseReturnZCoords[netID];
        exitEvent.netID = netID;
        exitEvent.dir = secretBasesEnv->baseReturnDirs[netID];
        exitEvent.forceExit = FALSE;

        secretBasesEnv->baseTransitioningOwnerNetIDs[netID] = 0;

        UndergroundPlayer_MoveToFromSecretBaseServer(netID, exitEvent.x, exitEvent.z, exitEvent.dir);
        CommSys_SendDataFixedSizeServer(57, &exitEvent);
        return TRUE;
    }

    return FALSE;
}

static void SecretBases_EndBaseTransitionPromptTaskSuccess(SysTask *sysTask, void *data)
{
    BaseTransitionContext *ctx = data;

    if (ctx->menu) {
        Menu_DestroyForExit(ctx->menu, HEAP_ID_FIELD1);
    }

    SysTask_Done(sysTask);
    Heap_Free(ctx);

    UndergroundMan_ClearCurrentSysTaskInfo();
}

static void SecretBases_EndBaseTransitionPromptTaskFail(SysTask *sysTask, void *data)
{
    BaseTransitionContext *ctx = data;

    if (ctx->menu) {
        Menu_DestroyForExit(ctx->menu, HEAP_ID_FIELD1);
    }

    BaseTransitionEvent event;
    event.success = FALSE;
    event.baseOwnerNetID = ctx->baseOwnerNetID;
    event.entering = FALSE;

    CommSys_SendDataFixedSize(59, &event);
    SysTask_Done(sysTask);
    Heap_Free(ctx);

    UndergroundMan_ClearCurrentSysTaskInfo();
    ov23_0224DC24();
}

static void SecretBases_ExitBasePromptTask(SysTask *sysTask, void *data)
{
    BaseTransitionContext *ctx = data;
    FieldSystem *fieldSystem = ctx->fieldSystem;
    int input;
    BOOL canceled = FALSE;

    switch (ctx->state) {
    case EXIT_PROMPT_STATE_INIT:
        int bankEntry;

        if (CommServerClient_IsInClosedSecretBase()) {
            bankEntry = UndergroundCommon_Text_OpenDoorAndExitBasePrompt;
            ctx->state = EXIT_PROMPT_STATE_OPEN_CONFIRM_MENU_DOOR_CLOSED;
        } else {
            bankEntry = UndergroundCommon_Text_ExitBasePrompt;
            ctx->state = EXIT_PROMPT_STATE_OPEN_CONFIRM_MENU;
        }

        UndergroundTextPrinter_PrintText(UndergroundMan_GetCommonTextPrinter(), bankEntry, FALSE, NULL);
        break;
    case EXIT_PROMPT_STATE_OPEN_CONFIRM_MENU:
        if (!UndergroundTextPrinter_IsPrinterActive(UndergroundMan_GetCommonTextPrinter())) {
            ctx->menu = Menu_MakeYesNoChoice(fieldSystem->bgConfig, &sYesNoWindowTemplate, BASE_TILE_STANDARD_WINDOW_FRAME, 11, HEAP_ID_FIELD1);
            ctx->state = EXIT_PROMPT_STATE_CONFIRM;
        }
        break;
    case EXIT_PROMPT_STATE_CONFIRM:
        input = Menu_ProcessInputAndHandleExit(ctx->menu, HEAP_ID_FIELD1);

        if (input == 0) {
            ctx->menu = NULL;
            ctx->state = EXIT_PROMPT_STATE_EXIT_AND_END;
        } else if (input != MENU_NOTHING_CHOSEN) {
            ctx->menu = NULL;
            canceled = TRUE;
        }
        break;
    case EXIT_PROMPT_STATE_OPEN_CONFIRM_MENU_DOOR_CLOSED:
        if (!UndergroundTextPrinter_IsPrinterActive(UndergroundMan_GetCommonTextPrinter())) {
            ctx->menu = Menu_MakeYesNoChoice(fieldSystem->bgConfig, &sYesNoWindowTemplate, BASE_TILE_STANDARD_WINDOW_FRAME, 11, HEAP_ID_FIELD1);
            ctx->state = EXIT_PROMPT_STATE_CONFIRM_DOOR_CLOSED;
        }
        break;
    case EXIT_PROMPT_STATE_CONFIRM_DOOR_CLOSED:
        input = Menu_ProcessInputAndHandleExit(ctx->menu, HEAP_ID_FIELD1);

        if (input == 0) {
            ctx->menu = NULL;
            UndergroundTextPrinter_PrintText(UndergroundMan_GetCommonTextPrinter(), UndergroundCommon_Text_CommsWillBeLaunched, FALSE, NULL);
            ctx->state = EXIT_PROMPT_STATE_OPEN_COMMS_CONFIRM_MENU;
        } else if (input != MENU_NOTHING_CHOSEN) {
            ctx->menu = NULL;
            canceled = TRUE;
        }
        break;
    case EXIT_PROMPT_STATE_OPEN_COMMS_CONFIRM_MENU:
        if (!UndergroundTextPrinter_IsPrinterActive(UndergroundMan_GetCommonTextPrinter())) {
            ctx->menu = Menu_MakeYesNoChoice(fieldSystem->bgConfig, &sYesNoWindowTemplate, BASE_TILE_STANDARD_WINDOW_FRAME, 11, HEAP_ID_FIELD1);
            ctx->state = EXIT_PROMPT_STATE_CONFIRM_COMMS;
        }
        break;
    case EXIT_PROMPT_STATE_CONFIRM_COMMS:
        input = Menu_ProcessInputAndHandleExit(ctx->menu, HEAP_ID_FIELD1);

        if (input == 0) {
            ctx->menu = NULL;
            ctx->state = EXIT_PROMPT_STATE_EXIT_AND_END;
        } else if (input != MENU_NOTHING_CHOSEN) {
            ctx->menu = NULL;
            canceled = TRUE;
        }
        break;
    case EXIT_PROMPT_STATE_EXIT_AND_END:
        UndergroundTextPrinter_EraseMessageBoxWindow(UndergroundMan_GetCommonTextPrinter());

        BaseTransitionEvent event;
        event.success = TRUE;
        event.baseOwnerNetID = ctx->baseOwnerNetID;
        event.entering = FALSE;

        CommSys_SendDataFixedSize(59, &event);
        SecretBases_EndBaseTransitionPromptTaskSuccess(sysTask, ctx);
        return;
    }

    if (!CommServerClient_IsInClosedSecretBase()) {
        if (ctx->baseOwnerNetID < MAX_CONNECTED_PLAYERS && !CommSys_IsPlayerConnected(ctx->baseOwnerNetID) && CommSys_CurNetId() != 0) {
            canceled = TRUE;
        }
    }

    if (canceled) {
        UndergroundTextPrinter_EraseMessageBoxWindow(UndergroundMan_GetCommonTextPrinter());
        SecretBases_EndBaseTransitionPromptTaskFail(sysTask, ctx);

        CommPlayerMan_ResumeFieldSystem();
    }
}

static void SecretBases_StartExitBasePromptTask(FieldSystem *fieldSystem, int x, int z, int dir, int netID, int baseOwnerNetID)
{
    BaseTransitionContext *ctx = NULL;

    ov23_0224DC08();
    ctx = Heap_AllocAtEnd(HEAP_ID_FIELD1, sizeof(BaseTransitionContext));
    MI_CpuClear8(ctx, sizeof(BaseTransitionContext));

    ctx->warpID = WARP_ID_NONE;
    ctx->x = x;
    ctx->z = z;
    ctx->netID = netID;
    ctx->baseOwnerNetID = baseOwnerNetID;
    ctx->mapID = MAP_HEADER_UNDERGROUND;
    ctx->dir = dir;
    ctx->fieldSystem = fieldSystem;
    ctx->sysTask = SysTask_Start(SecretBases_ExitBasePromptTask, ctx, 100);

    UndergroundMan_SetCurrentSysTask(ctx, ctx->sysTask, SecretBases_EndBaseTransitionPromptTaskFail);
    CommPlayerMan_PauseFieldSystem();
}

static BaseTransitionContext *BaseTransitionContext_New(FieldSystem *fieldSystem, int x, int z, int dir, int netID, int baseOwnerNetID)
{
    BaseTransitionContext *ctx = NULL;

    if (fieldSystem->task == NULL) {
        ctx = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(BaseTransitionContext));
        MI_CpuClear8(ctx, sizeof(BaseTransitionContext));

        ctx->warpID = WARP_ID_NONE;
        ctx->x = x;
        ctx->z = z;
        ctx->netID = netID;
        ctx->baseOwnerNetID = baseOwnerNetID;

        GF_ASSERT(fieldSystem->location->mapId == MAP_HEADER_UNDERGROUND);

        ctx->mapID = MAP_HEADER_UNDERGROUND;
        ctx->dir = dir;
    }

    return ctx;
}

static int SecretBases_CountPlayersInBase(int ownerNetID, BOOL useServerLocation)
{
    int count = 0;

    for (int netID = 0; netID < MAX_CONNECTED_PLAYERS; netID++) {
        if (!CommSys_IsPlayerConnected(netID)) {
            continue;
        }

        int x, z;
        if (useServerLocation) {
            x = CommPlayer_GetXServerIfActive(netID);
            z = CommPlayer_GetZServerIfActive(netID);
        } else {
            x = CommPlayer_GetXIfActive(netID);
            z = CommPlayer_GetZIfActive(netID);
        }

        if (!(x == 0xffff && z == 0xffff) && UndergroundMan_AreCoordinatesInSecretBase(x, z)) {
            int baseNetID = SecretBases_GetOwnerNetIDFromCoordinates(x, z);

            if (baseNetID == ownerNetID) {
                count++;
            }
        }
    }

    return count;
}

static Menu *SecretBases_MakeLeaveOpenOrCloseMenu(BgConfig *bgConfig, const WindowTemplate *windowTemplate, u16 tile, u8 palette, enum HeapID heapID)
{
    MessageLoader *loader = UndergroundTextPrinter_GetMessageLoader(UndergroundMan_GetCommonTextPrinter());
    StringList *choices = StringList_New(2, heapID);

    StringList_AddFromMessageBank(choices, loader, UndergroundCommon_Text_LeaveDoorOpen, 0);
    StringList_AddFromMessageBank(choices, loader, UndergroundCommon_Text_CloseAndDecorate, 1);

    MenuTemplate menuTemplate;
    menuTemplate.choices = choices;
    menuTemplate.window = Window_New(heapID, 1);
    menuTemplate.fontID = FONT_SYSTEM;
    menuTemplate.xSize = 1;
    menuTemplate.ySize = 2;
    menuTemplate.lineSpacing = 0;
    menuTemplate.suppressCursor = FALSE;
    menuTemplate.lineSpacing = 0;

    Window_AddFromTemplate(bgConfig, menuTemplate.window, windowTemplate);
    Window_DrawStandardFrame(menuTemplate.window, TRUE, tile, palette);

    return Menu_NewAndCopyToVRAM(&menuTemplate, 8, 0, 0, heapID, PAD_BUTTON_B);
}

static void SecretBases_EnterBasePromptTask(SysTask *sysTask, void *data)
{
    BaseTransitionContext *ctx = data;
    FieldSystem *fieldSystem = ctx->fieldSystem;
    int input;
    BOOL canceled = FALSE;

    switch (ctx->state) {
    case ENTER_PROMPT_STATE_INIT:
        int bankEntry;

        if (ctx->baseOwnerNetID != ctx->netID) {
            bankEntry = UndergroundCommon_Text_DiscoveredCavernEnterPrompt;
            ctx->state = ENTER_PROMPT_STATE_OPEN_CONFIRM_MENU_OTHER_BASE;
        } else {
            bankEntry = UndergroundCommon_Text_EnterOwnBasePrompt;
            ctx->state = ENTER_PROMPT_STATE_OPEN_CONFIRM_MENU_OWN_BASE;
        }

        UndergroundTextPrinter_PrintText(UndergroundMan_GetCommonTextPrinter(), bankEntry, FALSE, NULL);
        break;
    case ENTER_PROMPT_STATE_OPEN_CONFIRM_MENU_OTHER_BASE:
        if (!UndergroundTextPrinter_IsPrinterActive(UndergroundMan_GetCommonTextPrinter())) {
            ctx->menu = Menu_MakeYesNoChoice(fieldSystem->bgConfig, &sYesNoWindowTemplate, BASE_TILE_STANDARD_WINDOW_FRAME, 11, HEAP_ID_FIELD1);
            ctx->state = ENTER_PROMPT_STATE_CONFIRM_OTHER_BASE;
        }
        break;
    case ENTER_PROMPT_STATE_CONFIRM_OTHER_BASE:
        input = Menu_ProcessInputAndHandleExit(ctx->menu, HEAP_ID_FIELD1);

        if (input == 0) {
            ctx->menu = NULL;
            ctx->state = ENTER_PROMPT_STATE_ENTER_AFTER_TEXT;
        } else if (input != MENU_NOTHING_CHOSEN) {
            ctx->menu = NULL;
            canceled = TRUE;
        }
        break;
    case ENTER_PROMPT_STATE_ENTER_AFTER_TEXT:
        if (!UndergroundTextPrinter_IsPrinterActive(UndergroundMan_GetCommonTextPrinter())) {
            ctx->state = ENTER_PROMPT_STATE_ENTER_AND_END;
        }
        break;
    case ENTER_PROMPT_STATE_OPEN_CONFIRM_MENU_OWN_BASE:
        if (!UndergroundTextPrinter_IsPrinterActive(UndergroundMan_GetCommonTextPrinter())) {
            ctx->menu = Menu_MakeYesNoChoice(fieldSystem->bgConfig, &sYesNoWindowTemplate, BASE_TILE_STANDARD_WINDOW_FRAME, 11, HEAP_ID_FIELD1);
            ctx->state = ENTER_PROMPT_STATE_CONFIRM_OWN_BASE;
        }
        break;
    case ENTER_PROMPT_STATE_CONFIRM_OWN_BASE:
        input = Menu_ProcessInputAndHandleExit(ctx->menu, HEAP_ID_FIELD1);

        if (input == 0) {
            ctx->menu = NULL;

            if (UndergroundPlayer_IsHoldingFlag(ctx->baseOwnerNetID) || (SecretBases_CountPlayersInBase(ctx->baseOwnerNetID, 0) > 0)) {
                UndergroundTextPrinter_PrintText(UndergroundMan_GetCommonTextPrinter(), UndergroundCommon_Text_EnteredOwnBase, FALSE, NULL);
                ctx->state = ENTER_PROMPT_STATE_ENTER_AFTER_TEXT;
            } else {
                UndergroundTextPrinter_PrintText(UndergroundMan_GetCommonTextPrinter(), UndergroundCommon_Text_LeaveEntranceOpenOrClose, FALSE, NULL);
                ctx->state = ENTER_PROMPT_STATE_OPEN_CLOSE_DOOR_MENU;
            }
        } else if (input != MENU_NOTHING_CHOSEN) {
            ctx->menu = NULL;
            canceled = TRUE;
        }
        break;
    case ENTER_PROMPT_STATE_OPEN_CLOSE_DOOR_MENU:
        if (!UndergroundTextPrinter_IsPrinterActive(UndergroundMan_GetCommonTextPrinter())) {
            ctx->menu = SecretBases_MakeLeaveOpenOrCloseMenu(fieldSystem->bgConfig, &sLeaveOpenOrCloseWindowTemplate, BASE_TILE_STANDARD_WINDOW_FRAME, 11, HEAP_ID_FIELD1);
            ctx->state = ENTER_PROMPT_STATE_CLOSE_DOOR_MENU;
        }
        break;
    case ENTER_PROMPT_STATE_CLOSE_DOOR_MENU:
        input = Menu_ProcessInputAndHandleExit(ctx->menu, HEAP_ID_FIELD1);

        if (input == 0) {
            ctx->menu = NULL;
            ctx->state = ENTER_PROMPT_STATE_ENTER_AFTER_TEXT;
        } else if (input == 1) {
            ctx->menu = NULL;
            ctx->state = ENTER_PROMPT_STATE_CLOSE_DOOR_COMMS;
        } else if (input != MENU_NOTHING_CHOSEN) {
            ctx->menu = NULL;
            canceled = TRUE;
        }
        break;
    case ENTER_PROMPT_STATE_CLOSE_DOOR_COMMS:
        if (!UndergroundTextPrinter_IsPrinterActive(UndergroundMan_GetCommonTextPrinter())) {
            UndergroundTextPrinter_EraseMessageBoxWindow(UndergroundMan_GetCommonTextPrinter());
            CommManUnderground_CloseSecretBase();
            ctx->state = ENTER_PROMPT_STATE_ENTER_CLOSE_DOOR_AND_END;
        }
        break;
    case ENTER_PROMPT_STATE_ENTER_CLOSE_DOOR_AND_END:
        if (CommServerClient_IsInClosedSecretBase() && CommSys_CurNetId() == 0) {
            u8 type = BASE_CREATE_REQ_CLOSE_BASE;
            CommSys_SendDataFixedSize(86, &type);

            SecretBases_EndBaseTransitionPromptTaskSuccess(sysTask, ctx);

            return;
        }
        break;
    case ENTER_PROMPT_STATE_ENTER_AND_END:
        UndergroundTextPrinter_EraseMessageBoxWindow(UndergroundMan_GetCommonTextPrinter());

        BaseTransitionEvent event;
        event.success = TRUE;
        event.baseOwnerNetID = ctx->baseOwnerNetID;
        event.entering = TRUE;

        CommSys_SendDataFixedSize(59, &event);
        SecretBases_EndBaseTransitionPromptTaskSuccess(sysTask, ctx);

        secretBasesEnv->moveStatus = MOVE_STATUS_ENTERING;
        return;
    }

    if (ctx->baseOwnerNetID != NETID_CURRENT_PLAYER_BASE && !CommPlayer_IsActive(ctx->baseOwnerNetID)) {
        if (ctx->state != ENTER_PROMPT_STATE_CLOSE_DOOR_COMMS && ctx->state != ENTER_PROMPT_STATE_ENTER_CLOSE_DOOR_AND_END) {
            canceled = TRUE;
        }
    }

    if (canceled) {
        UndergroundTextPrinter_EraseMessageBoxWindow(UndergroundMan_GetCommonTextPrinter());
        SecretBases_EndBaseTransitionPromptTaskFail(sysTask, ctx);

        CommPlayerMan_ResumeFieldSystem();
    }
}

static void SecretBases_StartEnterBasePromptTask(FieldSystem *fieldSystem, int x, int z, int dir, int netID, int baseOwnerNetID)
{
    BaseTransitionContext *ctx = Heap_AllocAtEnd(HEAP_ID_FIELD1, sizeof(BaseTransitionContext));
    MI_CpuClear8(ctx, sizeof(BaseTransitionContext));

    ctx->warpID = WARP_ID_NONE;
    ctx->x = x;
    ctx->z = z;
    ctx->netID = netID;
    ctx->baseOwnerNetID = baseOwnerNetID;
    ctx->mapID = MAP_HEADER_UNDERGROUND;
    ctx->dir = dir;
    ctx->fieldSystem = fieldSystem;
    ctx->timer = 0;

    ov23_0224DC08();
    ctx->sysTask = SysTask_Start(SecretBases_EnterBasePromptTask, ctx, 100);
    UndergroundMan_SetCurrentSysTask(ctx, ctx->sysTask, SecretBases_EndBaseTransitionPromptTaskFail);

    CommPlayerMan_PauseFieldSystem();
}

int CommPacketSizeOf_BaseExitEvent(void)
{
    return sizeof(BaseExitEvent);
}

void SecretBases_ProcessBaseExitEvent(int unused0, int unused1, void *data, void *unused3)
{
    BaseExitEvent *event = data;

    secretBasesEnv->occupiedBaseOwnerIDs[event->netID] = NETID_NONE;

    if (CommSys_CurNetId() == event->netID) {
        UndergroundRecords_ForceExitTrainerCase();
        UndergroundTalk_ExitConversation();
        UndergroundMan_ForceEndCurrentSysTask();
        Traps_ForceEndCurrentTrapEffectClient(CommSys_CurNetId(), FALSE);

        CommSys_SendMessage(43);
        secretBasesEnv->currentPlayerInBase = FALSE;
        sub_02059638(TRUE);

        SecretBases_StartMoveToFromSecretBaseTask(secretBasesEnv->fieldSystem, event->x, event->z, event->dir, event->netID, event->forceExit);
        secretBasesEnv->currentOccupiedBaseInfo = NULL;
    } else {
        Traps_StopLinkSpin(event->netID);
        UndergroundPlayer_MoveToFromSecretBaseClient(event->netID, event->x, event->z, event->dir);
    }
}

void SecretBases_RequestClearTransitioningStatus(void)
{
    CommSys_SendMessage(56);
}

void SecretBases_ClearTransitioningStatus(int netID, int unused1, void *unused2, void *unused3)
{
    secretBasesEnv->baseTransitioningOwnerNetIDs[netID] = NETID_NONE;
    secretBasesEnv->baseEnteringOwnerNetIDs[netID] = NETID_NONE;
}

BOOL SecretBases_IsPlayerMidBaseTransition(int netID)
{
    if (secretBasesEnv) {
        if (secretBasesEnv->baseTransitioningOwnerNetIDs[netID] != NETID_NONE) {
            return TRUE;
        }
    }

    return FALSE;
}

static void SecretBases_SetEntranceForPlayer(int x, int z, int dir, int netID)
{
    SecretBaseInfo *baseInfo = &secretBasesEnv->baseInfo[netID];

    if (baseInfo) {
        SecretBase *secretBase = (SecretBase *)baseInfo->secretBase;

        SecretBase_SetEntrance(secretBase, x, z, CommPlayer_GetOppositeDir(dir));
        baseInfo->ownerNetID = netID;
    }
}

void SecretBases_SendBaseInfo(void)
{
    SecretBase *unused = (SecretBase *)secretBasesEnv->baseInfo[NETID_CURRENT_PLAYER_BASE].secretBase;
    int unused2 = CommSys_CurNetId();

    CommSys_WriteToQueue(53, &secretBasesEnv->baseInfo[NETID_CURRENT_PLAYER_BASE], sizeof(SecretBaseInfo));
}

void SecretBases_SendEnteredBase(int baseOwnerNetID)
{
    CommSys_WriteToQueueServer(54, &secretBasesEnv->baseInfo[baseOwnerNetID], sizeof(SecretBaseInfo));
}

void SecretBases_ProcessBaseEnter(int unused0, int unused1, void *data, void *unused3)
{
    SecretBaseInfo *baseInfo = data;

    if (!secretBasesEnv) {
        return;
    }

    if (CommSys_CurNetId() == baseInfo->visitorNetID && secretBasesEnv->moveStatus == MOVE_STATUS_ERROR_WHILE_ENTERING) {
        secretBasesEnv->moveStatus = MOVE_STATUS_NONE;

        CommPlayerMan_ResumeFieldSystem();
        CommSys_SendMessage(56);
        CommPlayer_SendPos(FALSE);

        ov23_0224DC24();
        return;
    }

    secretBasesEnv->moveStatus = MOVE_STATUS_ENTERING_2;

    int baseOwnerNetID = baseInfo->ownerNetID;
    GF_ASSERT(baseOwnerNetID < SECRET_BASE_COUNT);

    baseInfo = &secretBasesEnv->baseInfo[baseOwnerNetID];
    MI_CpuCopy8(data, baseInfo, sizeof(SecretBaseInfo));

    secretBasesEnv->occupiedBaseOwnerIDs[baseInfo->visitorNetID] = baseInfo->ownerNetID;

    if (baseInfo->ownerNetID != NETID_CURRENT_PLAYER_BASE) {
        secretBasesEnv->visitedBaseOwnerNetIDs[baseInfo->visitorNetID] = baseInfo->ownerNetID;
    }

    BaseEntrance exit;
    SecretBases_GetBaseExitCoordinatesOverrideNetID(baseInfo->ownerNetID, &exit);

    if (CommSys_CurNetId() == baseInfo->visitorNetID) {
        secretBasesEnv->currentPlayerInBase = TRUE;
        SecretBases_StartMoveToFromSecretBaseTask(secretBasesEnv->fieldSystem, exit.x, exit.z - 1, DIR_NORTH, baseInfo->visitorNetID, FALSE);
        secretBasesEnv->currentOccupiedBaseInfo = baseInfo;

        SecretBase *secretBase = (SecretBase *)baseInfo->secretBase;

        secretBasesEnv->currentBaseReturnXCoord = SecretBase_GetEntranceXCoord(secretBase);
        secretBasesEnv->currentBaseReturnZCoord = SecretBase_GetEntranceZCoord(secretBase);
        secretBasesEnv->currentBaseReturnDir = SecretBase_GetEntranceDir(secretBase);

        UndergroundMan_SendPlayerState();
    } else {
        UndergroundPlayer_MoveToFromSecretBaseClient(baseInfo->visitorNetID, exit.x, exit.z, DIR_NORTH);
    }
}

void SecretBases_ProcessBaseInfo(int netID, int unused1, void *data, void *unused3)
{
    u8 *info = data;
    if (!secretBasesEnv) {
        return;
    }

    SecretBaseInfo *baseInfo = &secretBasesEnv->baseInfo[netID];
    MI_CpuCopy8(info, baseInfo, sizeof(SecretBaseInfo));
    baseInfo->ownerNetID = netID;

    secretBasesEnv->dummy = 1;

    SecretBase *secretBase = (SecretBase *)baseInfo->secretBase;

    secretBasesEnv->baseEntrancesServer[netID].x = SecretBase_GetEntranceXCoord(secretBase);
    secretBasesEnv->baseEntrancesServer[netID].z = SecretBase_GetEntranceZCoord(secretBase);
    secretBasesEnv->baseEntrancesServer[netID].dir = SecretBase_GetEntranceDir(secretBase);

    SecretBases_SendBaseEntrancesBuffer();
    SecretBases_CalculateBaseCollision(secretBase, secretBasesEnv->baseCollisions[netID]);
    SecretBases_RemoveNewLinkFromBase(netID);
}

int CommPacketSizeOf_SecretBaseInfo(void)
{
    return sizeof(SecretBaseInfo);
}

BOOL SecretBases_HaveLinksReceivedBaseData(void)
{
    return secretBasesEnv->linksReceivedBaseData;
}

void SecretBases_ClearLinksReceivedBaseData(void)
{
    secretBasesEnv->linksReceivedBaseData = FALSE;
}

static void SecretBases_SendBaseEntrancesBuffer(void)
{
    int index = 0;

    for (int netID = 0; netID < MAX_CONNECTED_PLAYERS; netID++) {
        BaseEntrance *entrance = &secretBasesEnv->baseEntrancesServer[netID];

        secretBasesEnv->baseEntrancesBuffer[index] = entrance->x & 0xFF;
        index++;
        secretBasesEnv->baseEntrancesBuffer[index] = ((entrance->x >> 8) & 0xF) + ((entrance->z >> 4) & 0xF0);
        index++;
        secretBasesEnv->baseEntrancesBuffer[index] = entrance->z & 0xFF;
        index++;
        secretBasesEnv->baseEntrancesBuffer[index] = entrance->dir;
        index++;
    }

    CommSys_WriteToQueueServer(55, &secretBasesEnv->baseEntrancesBuffer, sizeof(secretBasesEnv->baseEntrancesBuffer));
}

void SecretBases_ProcessBaseEntrancesBuffer(int unused0, int unused1, void *data, void *unused3)
{
    u8 *baseEntrancesBuffer = (u8 *)data;
    BaseEntrance temp;
    BaseEntrance *tempPtr;

    if (!secretBasesEnv) {
        return;
    }

    for (int netID = 0; netID < MAX_CONNECTED_PLAYERS; netID++) {
        SecretBases_ClearBaseEntranceProp(netID);
    }

    int index = 0;

    for (int netID = 0; netID < MAX_CONNECTED_PLAYERS; netID++) {
        BaseEntrance *baseEntrance = &secretBasesEnv->baseEntrances[netID];
        tempPtr = &temp;
        tempPtr->x = baseEntrancesBuffer[index];
        index++;
        tempPtr->x += (int)baseEntrancesBuffer[index] << 8 & 0xF00;
        tempPtr->z = (int)baseEntrancesBuffer[index] << 4 & 0xF00;
        index++;
        tempPtr->z += baseEntrancesBuffer[index];
        index++;
        tempPtr->dir = baseEntrancesBuffer[index];
        index++;

        if (tempPtr->x != ENTRANCE_LOCATION_NONE && tempPtr->z != ENTRANCE_LOCATION_NONE) {
            MI_CpuCopy8(tempPtr, baseEntrance, sizeof(BaseEntrance));
            SecretBases_SetBaseEntrancePropLocation(tempPtr->x, tempPtr->z, tempPtr->dir, netID);
        }
    }

    secretBasesEnv->linksReceivedBaseData = TRUE;
}

int CommPacketSizeOf_BaseEntrancesBuffer(void)
{
    return sizeof(secretBasesEnv->baseEntrancesBuffer);
}

static void SecretBases_SetBaseEntrancePropLocation(int x, int z, int dir, int netID)
{
    secretBasesEnv->baseEntrancePropDirs[netID] = dir;
    secretBasesEnv->baseEntrancePropXCoords[netID] = x;
    secretBasesEnv->baseEntrancePropZCoords[netID] = z;
}

static void SecretBases_DrawBaseEntrancesTask(SysTask *unused, void *unused1)
{
    int entranceX, entranceZ; // need to be declared here to match

    if (secretBasesEnv->baseEntranceGraphicsDisabled) {
        return;
    }

    if (!secretBasesEnv->baseEntranceGraphicsEnabled) {
        return;
    }

    if (secretBasesEnv->fieldSystem->playerAvatar == NULL) {
        return;
    }

    int playerX = Player_GetXPos(secretBasesEnv->fieldSystem->playerAvatar);
    int playerZ = Player_GetZPos(secretBasesEnv->fieldSystem->playerAvatar);

    if (UndergroundMan_AreCoordinatesInSecretBase(playerX, playerZ)) {
        return;
    }

    for (int netID = 0; netID < SECRET_BASE_COUNT; netID++) {
        if (netID < MAX_CONNECTED_PLAYERS) {
            if (CommInfo_TrainerInfo(netID) == NULL) {
                SecretBases_RemoveBaseEntrance(netID);
                SecretBases_ClearToolEffectFlag(netID);
            }
        }

        if (secretBasesEnv->baseEntrancePropDirs[netID] != (u8)DIR_NONE) {
            int dir = secretBasesEnv->baseEntrancePropDirs[netID];
            entranceX = secretBasesEnv->baseEntrancePropXCoords[netID];
            entranceZ = secretBasesEnv->baseEntrancePropZCoords[netID];

            if (secretBasesEnv->baseEntrancePropIdxs[netID] != (u8)PROP_NONE) {
                MapPropManager_ClearOne(secretBasesEnv->baseEntrancePropIdxs[netID], secretBasesEnv->fieldSystem->mapPropManager);
            }

            VecFx32 position;
            position.x = entranceX * MAP_OBJECT_TILE_SIZE + MAP_OBJECT_TILE_SIZE / 2;
            position.y = 0;
            position.z = entranceZ * MAP_OBJECT_TILE_SIZE + MAP_OBJECT_TILE_SIZE / 2;

            secretBasesEnv->baseEntrancePropIdxs[netID] = MapPropManager_LoadOne(secretBasesEnv->fieldSystem->mapPropManager, secretBasesEnv->fieldSystem->areaDataManager, secret_base_entrance_north_nsbmd + dir, &position, NULL, secretBasesEnv->fieldSystem->mapPropAnimMan);
        }
    }
}

static void SecretBases_ClearBaseEntranceProp(int netID)
{
    if (secretBasesEnv->baseEntrancePropIdxs[netID] != (u8)PROP_NONE) {
        MapPropManager_ClearOne(secretBasesEnv->baseEntrancePropIdxs[netID], secretBasesEnv->fieldSystem->mapPropManager);

        secretBasesEnv->baseEntrancePropIdxs[netID] = (u8)PROP_NONE;
        secretBasesEnv->baseEntrancePropDirs[netID] = DIR_NONE;
    }
}

static void SecretBases_ClearAllBaseEntranceProps(void)
{
    if (secretBasesEnv == NULL) {
        return;
    }

    for (int netID = 0; netID < SECRET_BASE_COUNT; netID++) {
        SecretBases_ClearBaseEntranceProp(netID);
    }
}

static BOOL SecretBases_StopFieldMap(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    BaseTransitionContext *ctx = FieldTask_GetEnv(task);

    switch (ctx->subState) {
    case 0:
        FieldSystem_FlagNotRunningFieldMap(fieldSystem);
        ctx->subState++;
        break;
    case 1:
        if (!FieldSystem_HasParentProcess(fieldSystem)) {
            ctx->subState = 0;
            return TRUE;
        }
        break;
    }

    return FALSE;
}

static BOOL SecretBases_ResumeFieldMap(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    BaseTransitionContext *ctx = FieldTask_GetEnv(task);

    switch (ctx->subState) {
    case 0:
        FieldSystem_StartFieldMapInner(fieldSystem);
        ctx->subState++;
        break;
    case 1:
        if (FieldSystem_IsRunningFieldMap(fieldSystem)) {
            ctx->subState = 0;
            return TRUE;
        }
        break;
    }

    return FALSE;
}

static BOOL SecretBases_MoveToFromSecretBaseTask(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    BaseTransitionContext *ctx = FieldTask_GetEnv(task);

    switch (ctx->state) {
    case MOVE_STATE_INIT:
        SecretBases_SetEntranceGraphicsEnabled(FALSE);
        ov23_0224DC08();

        ctx->initialConnectedCount = CommSys_ConnectedCount();

        CommSys_DisableSendMovementData();
        Spheres_DisableBuriedSphereSparkles();

        if (CommManUnderground_TryEnterBaseTransitionState()) {
            ctx->state = MOVE_STATE_FADE_OUT;
        }
        break;
    case MOVE_STATE_FADE_OUT:
        FinishScreenFade();
        StartScreenFade(FADE_SUB_THEN_MAIN, FADE_TYPE_CIRCLE_OUT, FADE_TYPE_TOP_HALF_CIRCLE_OUT, COLOR_BLACK, 6, 1, HEAP_ID_FIELD1);
        UndergroundTopScreen_EndTask(fieldSystem->ugTopScreenCtx);
        Sound_PlayEffect(SEQ_SE_DP_KAIDAN2);
        ctx->state++;
        break;
    case MOVE_STATE_WAIT_FOR_FADE_OUT:
        if (IsScreenFadeDone()) {
            if (fieldSystem->ugTopScreenCtx == NULL) {
                ctx->state++;
            }
        }
        break;
    case MOVE_STATE_STOP_FIELD_MAP:
        if (SecretBases_StopFieldMap(task)) {
            ctx->state++;
        }
        break;
    case MOVE_STATE_UPDATE_LOCATION:
        Location nextLocation;
        nextLocation.mapId = ctx->mapID;
        nextLocation.warpId = ctx->warpID;
        nextLocation.x = ctx->x;
        nextLocation.z = ctx->z;
        nextLocation.faceDirection = ctx->dir;
        sub_020544F0(task, &nextLocation);
        ctx->state++;
        break;
    case MOVE_STATE_RESUME_FIELD_MAP:
        if (SecretBases_ResumeFieldMap(task)) {
            ctx->state++;
        }
        break;
    case MOVE_STATE_FADE_IN:
        fieldSystem->ugTopScreenCtx = UndergroundTopScreen_StartTask(fieldSystem);
        FinishScreenFade();
        StartScreenFade(FADE_MAIN_THEN_SUB, FADE_TYPE_CIRCLE_IN, FADE_TYPE_TOP_HALF_CIRCLE_IN, COLOR_BLACK, 6, 1, HEAP_ID_FIELD1);
        ctx->state++;
        break;
    case MOVE_STATE_WAIT_FOR_FADE_IN:
        if (!IsScreenFadeDone()) {
            break;
        }

        if (CommServerClient_IsInClosedSecretBase() && !UndergroundMan_AreCoordinatesInSecretBase(ctx->x, ctx->z)) {
            ctx->showBlockedEntranceMessage = FALSE;
        } else {
            ctx->showBlockedEntranceMessage = TRUE;
        }

        CommSys_EnableSendMovementData();
        CommPlayerMan_PauseFieldSystem();

        Graphics_LoadPalette(NARC_INDEX_DATA__UG_TRAP, text_window_NCLR, PAL_LOAD_MAIN_BG, PLTT_OFFSET(10), PALETTE_SIZE_BYTES * 4, HEAP_ID_FIELD1);
        LoadStandardWindowGraphics(fieldSystem->bgConfig, BG_LAYER_MAIN_3, BASE_TILE_STANDARD_WINDOW_FRAME, 11, STANDARD_WINDOW_UNDERGROUND, HEAP_ID_FIELD1);

        if (ctx->forceExit) {
            CommPlayerMan_ClearPauseContextBits();
            UndergroundTextPrinter_PrintText(UndergroundMan_GetCommonTextPrinter(), UndergroundCommon_Text_EscapedToAvoidDanger, FALSE, NULL);
            ctx->state = MOVE_STATE_END_AFTER_TEXT_OR_NEW_LINK;
        } else if (!secretBasesEnv->currentPlayerInBase) {
            ctx->state = MOVE_STATE_END;
        } else {
            ctx->timer = 0;
            ctx->state = MOVE_STATE_FRAME_DELAY;
        }
        break;
    case MOVE_STATE_FRAME_DELAY:
        ctx->timer++;
        ctx->timer = 0;
        ctx->state = MOVE_STATE_WAIT;
        break;
    case MOVE_STATE_WAIT:
        ctx->timer++;

        if (ctx->timer > 10) {
            if (!CommServerClient_IsInClosedSecretBase() || !ctx->showBlockedEntranceMessage) {
                ctx->state = MOVE_STATE_END;
            } else {
                ctx->state = MOVE_STATE_BLOCK_ENTRANCE;
            }
        }
        break;
    case MOVE_STATE_BLOCK_ENTRANCE:
        CommPlayerMan_ForceDir();
        PlayerAvatar_SetAnimationCode(fieldSystem->playerAvatar, MovementAction_TurnActionTowardsDir(DIR_SOUTH, MOVEMENT_ACTION_WALK_ON_SPOT_FAST_NORTH), 1);
        CommPlayer_SetDir(DIR_SOUTH);
        UndergroundTextPrinter_PrintText(UndergroundMan_GetCommonTextPrinter(), UndergroundCommon_Text_BlockedEntranceToDecorate, FALSE, NULL);
        Sound_PlayEffect(SEQ_SE_DP_DOOR);
        ctx->state = MOVE_STATE_FACE_NORTH_AND_END_AFTER_TEXT;
        break;
    case MOVE_STATE_FACE_NORTH_AND_END_AFTER_TEXT:
        if (!UndergroundTextPrinter_IsPrinterActive(UndergroundMan_GetCommonTextPrinter())) {
            if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
                ctx->state = MOVE_STATE_END;
                UndergroundTextPrinter_EraseMessageBoxWindow(UndergroundMan_GetCommonTextPrinter());
                CommPlayer_SetDir(DIR_NORTH);
            }
        }
        break;
    case MOVE_STATE_END:
        if (CommServerClient_IsInClosedSecretBase() && !UndergroundMan_AreCoordinatesInSecretBase(ctx->x, ctx->z)) {
            CommManUnderground_ReopenSecretBase();
        } else {
            CommManUnderground_TryExitBaseTransitionState();
        }

        sub_02059638(FALSE);
        CommPlayerMan_ResumeFieldSystem();
        Heap_Free(ctx);

        if (CommServerClient_IsInClosedSecretBase() && UndergroundMan_AreCoordinatesInSecretBase(ctx->x, ctx->z)) {
            UndergroundMan_DeactivateRadar();
        } else {
            UndergroundMan_SetNormalRadarActive();
        }

        if (secretBasesEnv->moveStatus == MOVE_STATUS_ENTERING_AS_CLIENT && secretBasesEnv->currentPlayerInBase) {
            secretBasesEnv->moveStatus = MOVE_STATUS_EXIT_IF_HOST;
        } else {
            secretBasesEnv->moveStatus = MOVE_STATUS_NONE;
        }

        ov23_0224DC24();
        SecretBases_SetEntranceGraphicsEnabled(TRUE);
        return TRUE;
    case MOVE_STATE_END_AFTER_TEXT_OR_NEW_LINK:
        if (!UndergroundTextPrinter_IsPrinterActive(UndergroundMan_GetCommonTextPrinter())) {
            if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
                ctx->state = MOVE_STATE_END;
                UndergroundTextPrinter_EraseMessageBoxWindow(UndergroundMan_GetCommonTextPrinter());
                return FALSE;
            }
        }

        if (CommSys_ConnectedCount() > 1 && ctx->initialConnectedCount == 0) {
            ctx->state = MOVE_STATE_END;
            UndergroundTextPrinter_EraseMessageBoxWindow(UndergroundMan_GetCommonTextPrinter());
        }
        break;
    }

    return FALSE;
}

static void SecretBases_StartMoveToFromSecretBaseTask(FieldSystem *fieldSystem, int x, int z, int dir, int netID, BOOL forceExit)
{
    BaseTransitionContext *ctx = BaseTransitionContext_New(fieldSystem, x, z, dir, netID, netID);

    if (ctx) {
        ctx->forceExit = forceExit;
        FieldSystem_CreateTask(fieldSystem, SecretBases_MoveToFromSecretBaseTask, ctx);
    }
}

static void SecretBases_DiggerDrillTask(SysTask *sysTask, void *data)
{
    DiggerDrillContext *ctx = data;
    FieldSystem *fieldSystem = ctx->fieldSystem;
    BOOL canceled = FALSE;

    switch (ctx->state) {
    case DRILL_STATE_INIT:
        SecretBase *secretBase = SaveData_GetSecretBase(fieldSystem->saveData);

        ctx->hasExistingBase = SecretBase_IsActive(secretBase);

        CommPlayerMan_PauseFieldSystem();
        UndergroundTextPrinter_SetUndergroundTrapName(UndergroundMan_GetCommonTextPrinter(), TRAP_DIGGER_DRILL);
        Sound_PlayEffect(SEQ_SE_DP_DORIRU);

        ov5_021F58FC(Player_MapObject(fieldSystem->playerAvatar), 0, 0, 0);
        UndergroundTextPrinter_PrintText(UndergroundMan_GetCommonTextPrinter(), UndergroundCommon_Text_ItemWasUsed, FALSE, NULL);

        ctx->state = DRILL_STATE_WAIT;
        ctx->timer = 0;
        break;
    case DRILL_STATE_WAIT:
        if (!UndergroundTextPrinter_IsPrinterActive(UndergroundMan_GetCommonTextPrinter())) {
            ctx->timer++;

            if (ctx->timer > 30) {
                ctx->state = DRILL_STATE_CREATE_ENTRANCE;
            }
        }
        break;
    case DRILL_STATE_CREATE_ENTRANCE: {
        int x = CommPlayer_GetXInFrontOfPlayer(CommSys_CurNetId());
        int z = CommPlayer_GetZInFrontOfPlayer(CommSys_CurNetId());
        int dir = CommPlayer_GetOppositeDir(PlayerAvatar_GetDir(fieldSystem->playerAvatar));

        UndergroundTextPrinter_PrintText(UndergroundMan_GetCommonTextPrinter(), UndergroundCommon_Text_DiscoveredCavern, FALSE, NULL);
        SecretBases_SetBaseEntrancePropLocation(x, z, dir, NETID_CURRENT_PLAYER_BASE);
        ov5_021F5634(fieldSystem, x, 0, z);

        ctx->state = DRILL_STATE_PRINT_PROMPT;
    } break;
    case DRILL_STATE_PRINT_PROMPT:
        if (!UndergroundTextPrinter_IsPrinterActive(UndergroundMan_GetCommonTextPrinter())) {
            int bankEntry;

            if (SecretBases_CountPlayersInBase(CommSys_CurNetId(), FALSE) != 0) {
                bankEntry = UndergroundCommon_Text_CantMoveBaseSomeoneInside;
                ctx->state = DRILL_STATE_CANCEL_AFTER_BUTTON_PRESS;
            } else if (ctx->hasExistingBase) {
                bankEntry = UndergroundCommon_Text_MoveBasePrompt;
                ctx->state = DRILL_STATE_OPEN_CONFIRM_MENU;
            } else {
                bankEntry = UndergroundCommon_Text_MakeBasePrompt;
                ctx->state = DRILL_STATE_OPEN_CONFIRM_MENU;
            }

            UndergroundTextPrinter_PrintText(UndergroundMan_GetCommonTextPrinter(), bankEntry, FALSE, NULL);
        }
        break;
    case DRILL_STATE_CANCEL_AFTER_BUTTON_PRESS:
        if (!UndergroundTextPrinter_IsPrinterActive(UndergroundMan_GetCommonTextPrinter())) {
            if (JOY_NEW(PAD_BUTTON_A)) {
                canceled = TRUE;
            }
        }
        break;
    case DRILL_STATE_OPEN_CONFIRM_MENU:
        if (!UndergroundTextPrinter_IsPrinterActive(UndergroundMan_GetCommonTextPrinter())) {
            ctx->menu = Menu_MakeYesNoChoice(fieldSystem->bgConfig, &sYesNoWindowTemplate, BASE_TILE_STANDARD_WINDOW_FRAME, 11, HEAP_ID_FIELD1);
            ctx->state = 6;
        }
        break;
    case DRILL_STATE_CONFIRM:
        u32 input = Menu_ProcessInputAndHandleExit(ctx->menu, HEAP_ID_FIELD1);

        if (input == 0) {
            ctx->state = DRILL_STATE_REMOVE_DRILL;
            ctx->menu = NULL;
        } else if (input != MENU_NOTHING_CHOSEN) {
            canceled = TRUE;
            ctx->menu = NULL;
        }
        break;
    case DRILL_STATE_REMOVE_DRILL:
        UndergroundMenu_RemoveSelectedTrap(TRAP_DIGGER_DRILL);
        UndergroundTextPrinter_EraseMessageBoxWindow(UndergroundMan_GetCommonTextPrinter());
        CommManUnderground_CloseSecretBase();
        ctx->state = DRILL_STATE_CREATE_BASE_AND_END;
        break;
    case DRILL_STATE_CREATE_BASE_AND_END:
        if (CommServerClient_IsInClosedSecretBase() && CommSys_CurNetId() == 0) {
            u8 type = BASE_CREATE_REQ_NEW_BASE;

            if (ctx->hasExistingBase) {
                type = BASE_CREATE_REQ_MOVE_BASE;
            }

            SecretBases_CreateBase();

            CommSys_SendDataFixedSize(86, &type);
            SysTask_Done(sysTask);
            Heap_Free(ctx);

            UndergroundMan_ClearCurrentSysTaskInfo();
            return;
        }
        break;
    }

    if (canceled) {
        UndergroundTextPrinter_PrintText(UndergroundMan_GetCommonTextPrinter(), UndergroundCommon_Text_ClosedHole, TRUE, SecretBases_ResumeFieldSystem);
        SecretBases_ClearBaseEntranceProp(NETID_CURRENT_PLAYER_BASE);

        int x = CommPlayer_GetXInFrontOfPlayer(CommSys_CurNetId());
        int z = CommPlayer_GetZInFrontOfPlayer(CommSys_CurNetId());

        ov5_021F5634(fieldSystem, x, 0, z);

        SysTask_Done(sysTask);
        Heap_Free(ctx);

        UndergroundMan_ClearCurrentSysTaskInfo();
        ov23_0224DC24();
    }
}

void SecretBases_UseDiggerDrill(void)
{
    u8 type = BASE_CREATE_REQ_USE_DIGGER_DRILL;
    CommSys_SendDataFixedSize(86, &type);
}

int CommPacketSizeOf_SecretBaseCreateEvent(void)
{
    return sizeof(SecretBaseCreateEvent);
}

void SecretBases_ProcessBaseCreateRequest(int netID, int unused1, void *data, void *unused3)
{
    u8 *type = data;
    int x = CommPlayer_GetXInFrontOfPlayerServer(netID);
    int z = CommPlayer_GetZInFrontOfPlayerServer(netID);
    int cornerCheckX1, cornerCheckZ1, cornerCheckX2, cornerCheckZ2;
    int dir = CommPlayer_DirServer(netID);

    // variables reused here for an overly complicated dir check despite the actual dir value having just been retrieved
    cornerCheckX2 = x - CommPlayer_GetXServerIfActive(netID);
    cornerCheckZ2 = z - CommPlayer_GetZServerIfActive(netID);

    if (cornerCheckZ2 != 0) { // facing up or down
        cornerCheckX1 = x + 1;
        cornerCheckX2 = x - 1;
        cornerCheckZ2 = cornerCheckZ1 = z;
    } else { // facing left or right
        cornerCheckZ1 = z + 1;
        cornerCheckZ2 = z - 1;
        cornerCheckX2 = cornerCheckX1 = x;
    }

    SecretBaseCreateEvent event;
    event.netID = netID;

    if (*type == BASE_CREATE_REQ_USE_DIGGER_DRILL) {
        event.type = BASE_CREATE_EVENT_CANT_DRILL;
    } else {
        event.type = BASE_CREATE_EVENT_CANT_ENTER;
    }

    int entranceOwnerNetID = SecretBases_GetEntranceOwnerNetIDFromCoords(x, z);

    if (*type != BASE_CREATE_REQ_USE_DIGGER_DRILL || entranceOwnerNetID == NETID_NONE) {
        if (UndergroundMan_AreCoordinatesInSecretBase(x, z)) {
            event.type = BASE_CREATE_EVENT_CANT_DRILL_IN_BASE;
        } else if (TerrainCollisionManager_CheckCollision(secretBasesEnv->fieldSystem, x, z) && TerrainCollisionManager_CheckCollision(secretBasesEnv->fieldSystem, cornerCheckX1, cornerCheckZ1) && TerrainCollisionManager_CheckCollision(secretBasesEnv->fieldSystem, cornerCheckX2, cornerCheckZ2)) {
            if (*type == BASE_CREATE_REQ_USE_DIGGER_DRILL) {
                event.type = BASE_CREATE_EVENT_USE_DRILL;
            } else {
                SecretBases_SetEntranceForPlayer(x, z, dir, NETID_CURRENT_PLAYER_BASE);

                if (SecretBases_TryEnterBase(NETID_CURRENT_PLAYER_BASE, netID)) {
                    switch (*type) {
                    case BASE_CREATE_REQ_CLOSE_BASE:
                        event.type = BASE_CREATE_EVENT_CLOSE_BASE;
                        break;
                    case BASE_CREATE_REQ_MOVE_BASE:
                        event.type = BASE_CREATE_EVENT_MOVE_BASE;
                        break;
                    case BASE_CREATE_REQ_NEW_BASE:
                        event.type = BASE_CREATE_EVENT_NEW_BASE;
                        break;
                    }
                }
            }
        }
    }

    CommSys_SendDataFixedSizeServer(87, &event);
}

static void SecretBases_EndDiggerDrillTask(SysTask *sysTask, void *data)
{
    DiggerDrillContext *ctx = data;

    SecretBases_ClearBaseEntranceProp(NETID_CURRENT_PLAYER_BASE);

    if (ctx->menu) {
        Menu_DestroyForExit(ctx->menu, HEAP_ID_FIELD1);
    }

    SysTask_Done(sysTask);
    Heap_Free(ctx);

    UndergroundMan_ClearCurrentSysTaskInfo();
    CommPlayerMan_ResumeFieldSystem();
    ov23_0224DC24();
}

static void SecretBases_StartDiggerDrillTask(void)
{
    ov23_0224DC08();

    DiggerDrillContext *ctx = Heap_AllocAtEnd(HEAP_ID_FIELD1, sizeof(DiggerDrillContext));
    MI_CpuClear8(ctx, sizeof(DiggerDrillContext));

    ctx->state = DRILL_STATE_INIT;
    ctx->unused = CommSys_CurNetId();
    ctx->fieldSystem = secretBasesEnv->fieldSystem;
    ctx->sysTask = SysTask_Start(SecretBases_DiggerDrillTask, ctx, 100);

    UndergroundMan_SetCurrentSysTask(ctx, ctx->sysTask, SecretBases_EndDiggerDrillTask);
}

void SecretBases_ProcessBaseCreateEvent(int unused0, int unused1, void *data, void *unused3)
{
    SecretBaseCreateEvent *event = data;
    UndergroundRecord *undergroundRecord = SaveData_GetUndergroundRecord(FieldSystem_GetSaveData(secretBasesEnv->fieldSystem));

    if (event->netID != CommSys_CurNetId()) {
        return;
    }

    if (event->type == BASE_CREATE_EVENT_CANT_DRILL) {
        CommPlayerMan_PauseFieldSystem();
        UndergroundTextPrinter_PrintText(UndergroundMan_GetCommonTextPrinter(), UndergroundCommon_Text_CantBeUsedHere, TRUE, SecretBases_ResumeFieldSystem);
        ov23_0224DC24();
    } else if (event->type == BASE_CREATE_EVENT_USE_DRILL) {
        SecretBases_StartDiggerDrillTask();
    } else if (event->type == BASE_CREATE_EVENT_CANT_DRILL_IN_BASE) {
        CommPlayerMan_PauseFieldSystem();
        UndergroundTextPrinter_PrintText(UndergroundMan_GetCommonTextPrinter(), UndergroundCommon_Text_CantDrillInBase, TRUE, SecretBases_ResumeFieldSystem);
        ov23_0224DC24();
    } else if (event->type == BASE_CREATE_EVENT_CANT_ENTER) {
        CommPlayerMan_PauseFieldSystem();
        UndergroundTextPrinter_PrintText(UndergroundMan_GetCommonTextPrinter(), UndergroundCommon_Text_WallCrumbledCantEnter, TRUE, SecretBases_ResumeFieldSystem);
        CommManUnderground_ReopenSecretBase();
        ov23_0224DC24();
    } else if (event->type == BASE_CREATE_EVENT_CLOSE_BASE || event->type == BASE_CREATE_EVENT_MOVE_BASE || event->type == BASE_CREATE_EVENT_NEW_BASE) {
        int x = CommPlayer_GetXInFrontOfPlayer(event->netID);
        int z = CommPlayer_GetZInFrontOfPlayer(event->netID);
        int dir = CommPlayer_Dir(event->netID);

        SecretBases_SetEntranceForPlayer(x, z, dir, event->netID);
        SecretBases_SetEntranceForPlayer(x, z, dir, NETID_CURRENT_PLAYER_BASE);

        if (event->type == BASE_CREATE_EVENT_MOVE_BASE) {
            UndergroundRecord_IncrementTimesBaseMoved(undergroundRecord);
        }

        if (event->type == BASE_CREATE_EVENT_MOVE_BASE || event->type == BASE_CREATE_EVENT_NEW_BASE) {
            void *journalEntryLocationEvent = JournalEntry_CreateEventBuiltSecretBase(HEAP_ID_FIELD2);

            JournalEntry_SaveData(secretBasesEnv->fieldSystem->journalEntry, journalEntryLocationEvent, JOURNAL_LOCATION);
            GameRecords_IncrementTrainerScore(SaveData_GetGameRecords(secretBasesEnv->fieldSystem->saveData), TRAINER_SCORE_EVENT_UNDERGROUND_NEW_SECRET_BASE);
        }
    }
}

BOOL SecretBases_GetQueuedMessage(String *dest)
{
    if (!secretBasesEnv) {
        return FALSE;
    }

    for (int netID = 0; netID < MAX_CONNECTED_PLAYERS; netID++) {
        if (secretBasesEnv->visitedBaseOwnerNetIDs[netID] != NETID_NONE) {
            int baseOwnerNetID = secretBasesEnv->visitedBaseOwnerNetIDs[netID];
            secretBasesEnv->visitedBaseOwnerNetIDs[netID] = NETID_NONE;

            if (netID != baseOwnerNetID) {
                TrainerInfo *trainerInfo = CommInfo_TrainerInfo(netID);
                TrainerInfo *baseOwnerInfo = CommInfo_TrainerInfo(baseOwnerNetID);

                if (UndergroundMan_FormatCommonStringWith2TrainerNames(trainerInfo, baseOwnerInfo, UndergroundCommon_Text_PlayerEnteredPlayersSecretBase, dest)) {
                    return TRUE;
                }
            }
        }

        if (secretBasesEnv->obtainedFlagOwnerNetIDs[netID] != NETID_NONE) {
            TrainerInfo *trainerInfo = CommInfo_TrainerInfo(netID);
            TrainerInfo *flagOwnerInfo = CommInfo_TrainerInfo(secretBasesEnv->obtainedFlagOwnerNetIDs[netID]);

            secretBasesEnv->obtainedFlagOwnerNetIDs[netID] = NETID_NONE;

            if (UndergroundMan_FormatCommonStringWith2TrainerNames(trainerInfo, flagOwnerInfo, UndergroundCommon_Text_PlayerObtainedPlayersFlag, dest)) {
                return TRUE;
            }
        }

        if (secretBasesEnv->tookBackFlagMessageQueued[netID] != (u8)-1) {
            TrainerInfo *trainerInfo = CommInfo_TrainerInfo(netID);
            secretBasesEnv->tookBackFlagMessageQueued[netID] = -1;

            if (UndergroundMan_FormatCommonStringWithTrainerName(trainerInfo, 0, UndergroundCommon_Text_PlayerTookBackFlag, dest)) {
                return TRUE;
            }
            break;
        }

        if (secretBasesEnv->flagStealVictimNetIDs[netID] != NETID_NONE) {
            TrainerInfo *trainerInfo = CommInfo_TrainerInfo(netID);
            TrainerInfo *victimInfo = CommInfo_TrainerInfo(secretBasesEnv->flagStealVictimNetIDs[netID]);

            secretBasesEnv->flagStealVictimNetIDs[netID] = NETID_NONE;

            if (UndergroundMan_FormatCommonStringWith2TrainerNames(trainerInfo, victimInfo, UndergroundCommon_Text_PlayerTookPlayersFlag, dest)) {
                return TRUE;
            }
        }
    }

    return FALSE;
}

SecretBase *SecretBases_GetCurrentOccupiedBase(SaveData *saveData)
{
    if (secretBasesEnv) {
        if (secretBasesEnv->currentOccupiedBaseInfo) {
            return (SecretBase *)secretBasesEnv->currentOccupiedBaseInfo->secretBase;
        }
    }

    return NULL;
}

// refers to a 8x2 grid of secret bases, not the grid of walkable tiles
int SecretBases_GetBaseXCoordinate(void)
{
    if (secretBasesEnv) {
        if (secretBasesEnv->currentOccupiedBaseInfo) {
            return sSecretBaseXCoordinates[secretBasesEnv->currentOccupiedBaseInfo->ownerNetID];
        }
    }

    return 0;
}

// refers to a 8x2 grid of secret bases, not the grid of walkable tiles
int SecretBases_GetBaseZCoordinate(void)
{
    if (secretBasesEnv) {
        if (secretBasesEnv->currentOccupiedBaseInfo) {
            return sSecretBaseZCoordinates[secretBasesEnv->currentOccupiedBaseInfo->ownerNetID];
        }
    }

    return 0;
}

BOOL SecretBases_AreCoordinatesWalkable(int x, int z)
{
    if (!secretBasesEnv) {
        return TRUE;
    }

    if (z >= SECRET_BASE_DEPTH * 2) {
        return TRUE;
    }

    int baseX = x / SECRET_BASE_WIDTH;
    int baseZ = z / SECRET_BASE_DEPTH;

    for (int netID = 0; netID < SECRET_BASE_COUNT; netID++) {
        if (baseX == sSecretBaseXCoordinates[netID] && baseZ == sSecretBaseZCoordinates[netID]) {
            int xWithinBase = x % SECRET_BASE_WIDTH;
            int zWithinBase = z % SECRET_BASE_DEPTH;

            if (secretBasesEnv->baseCollisions[netID][zWithinBase] & (0x1 << xWithinBase)) {
                return TRUE;
            } else {
                return FALSE;
            }
        }
    }

    return TRUE;
}

static void SecretBases_CreateBase(void)
{
    SecretBase *secretBase = SaveData_GetSecretBase(FieldSystem_GetSaveData(secretBasesEnv->fieldSystem));
    Underground *underground = SaveData_GetUnderground(FieldSystem_GetSaveData(secretBasesEnv->fieldSystem));
    int x = CommPlayer_GetXInFrontOfPlayerServer(0);
    int z = CommPlayer_GetZInFrontOfPlayerServer(0);
    int dir = CommPlayer_DirServer(0);
    const int minX = SECRET_BASE_PLAYABLE_AREA_START_X, xAdjustRightOfPC = 18, minZ = SECRET_BASE_PLAYABLE_AREA_START_Z, xRange = 5, zRange = 6;

    int occupiedCoords[MAX_BASE_BOULDERS + 1][2];
    occupiedCoords[0][0] = PC_COORDINATE_X + 1;
    occupiedCoords[0][1] = PC_COORDINATE_Z;

    SystemFlag_SetCreatedSecretBase(SaveData_GetVarsFlags(secretBasesEnv->fieldSystem->saveData));
    SecretBase_Clear(secretBase);
    Underground_InitPlacedGoodSlots(underground);

    MATHRandContext32 rand;
    CommSys_Seed(&rand);

    for (int i = 0; i < MAX_BASE_BOULDERS; i++) {
        int boulderX = MATH_Rand32(&rand, xRange);

        // ensure no rocks spawn in a line from the entrance to the pc
        if (boulderX < 2) {
            boulderX = boulderX * 2 + minX;
        } else {
            boulderX = (boulderX - 3) * 2 + xAdjustRightOfPC;
        }

        int boulderZ = MATH_Rand32(&rand, zRange) * 2 + minZ;
        BOOL canPlace = TRUE;

        for (int j = 0; j <= i; j++) {
            if (occupiedCoords[j][0] == boulderX && occupiedCoords[j][1] == boulderZ) {
                canPlace = FALSE;
                break;
            }
        }

        if (!canPlace) {
            i--;
            continue;
        }

        SecretBase_SetGoodCoordsAtIndex(secretBase, MAX_PLACED_GOODS + 1 + i, boulderX, boulderZ);

        occupiedCoords[i + 1][0] = boulderX;
        occupiedCoords[i + 1][1] = boulderZ;
    }

    MI_CpuFill8(secretBasesEnv->baseCollisions, 0xFF, SECRET_BASE_COUNT * SECRET_BASE_DEPTH * sizeof(u32));
    SecretBase_SetEntrance(secretBase, x, z, CommPlayer_GetOppositeDir(dir));

    MI_CpuCopy8(secretBase, secretBasesEnv->baseInfo[NETID_CURRENT_PLAYER_BASE].secretBase, sizeof(SecretBase));
    SecretBases_CalculateBaseCollision(secretBase, secretBasesEnv->baseCollisions[NETID_CURRENT_PLAYER_BASE]);
}

int SecretBases_PrintBaseDecorationMessage(int bankEntry)
{
    return UndergroundTextPrinter_PrintText(UndergroundMan_GetBaseDecorationTextPrinter(), bankEntry, FALSE, NULL);
}

void SecretBases_EraseBaseDecorationMessageBox(void)
{
    UndergroundTextPrinter_EraseMessageBoxWindow(UndergroundMan_GetBaseDecorationTextPrinter());
}

void SecretBases_SetGoodNameForPrinter(enum Good goodID)
{
    UndergroundTextPrinter_SetGoodNameWithIndex(UndergroundMan_GetBaseDecorationTextPrinter(), 0, goodID);
}

void SecretBases_SetTwoDigitNumberWithIndexForPrinter(int num, int index)
{
    UndergroundTextPrinter_SetTwoDigitNumberWithIndex(UndergroundMan_GetBaseDecorationTextPrinter(), index, num);
}

static enum Good SecretBases_GetGoodWithCollisionAtCoordinates(SecretBase *secretBase, int xWithinBase, int zWithinBase)
{
    const u8 *collision;

    for (int i = 0; i < MAX_SECRET_BASE_GOODS; i++) {
        enum Good goodID = SecretBase_GetGoodIDAtIndex(secretBase, i);

        if (goodID == UG_GOOD_NONE) {
            continue;
        }

        if (i == 0) {
            continue;
        } else if (i < MAX_PLACED_GOODS + 1) {
            collision = Good_GetCollision(goodID);
        } else {
            continue;
        }

        int xOffset = SecretBase_GetGoodXCoordAtIndex(secretBase, i);
        int zOffset = SecretBase_GetGoodZCoordAtIndex(secretBase, i);

        xOffset = xWithinBase - xOffset;
        zOffset = zWithinBase - zOffset;

        if (xOffset < 0 || MAX_GOOD_WIDTH - 1 < xOffset) {
            continue;
        }

        if (zOffset < 0 || MAX_GOOD_DEPTH - 1 < zOffset) {
            continue;
        }

        if (collision[zOffset * MAX_GOOD_WIDTH + xOffset]) {
            return goodID;
        }
    }

    return UG_GOOD_NONE;
}

BOOL SecretBases_CheckForInteractableGood(int netID, Coordinates *coordinates)
{
    int x = coordinates->x;
    int z = coordinates->z;

    if (!SecretBases_AreCoordinatesWalkable(x, z)) {
        GoodInteractionEvent event;
        event.netID = netID;

        int baseOwnerNetID = SecretBases_GetOwnerNetIDFromCoordinates(x, z);
        SecretBase *secretBase = (SecretBase *)secretBasesEnv->baseInfo[baseOwnerNetID].secretBase;
        enum Good goodID = SecretBases_GetGoodWithCollisionAtCoordinates(secretBase, x % SECRET_BASE_WIDTH, z % SECRET_BASE_DEPTH);

        event.bankEntry = Good_GetInteractMessageID(goodID);

        if (event.bankEntry != 0) {
            CommPlayerMan_SetMovementEnabled(netID, FALSE);
            CommSys_SendDataFixedSizeServer(60, &event);

            return TRUE;
        }
    }

    return FALSE;
}

void SecretBases_ProcessGoodInteractionEvent(int unused0, int unused1, void *data, void *unused3)
{
    GoodInteractionEvent *event = data;
    SecretBase *secretBase = (SecretBase *)secretBasesEnv->currentOccupiedBaseInfo->secretBase;
    UndergroundRecord *undergroundRecord = SecretBase_GetUndergroundRecord(secretBase);

    if (event->netID == CommSys_CurNetId()) {
        UndergroundRecords_PrintEntryForDecoration(undergroundRecord, event->bankEntry);
    }
}

int CommPacketSizeOf_GoodInteractionEvent(void)
{
    return sizeof(GoodInteractionEvent);
}

void SecretBases_QueueObtainedFlagMessage(int netID, int flagOwnerNetID)
{
    if (secretBasesEnv) {
        secretBasesEnv->obtainedFlagOwnerNetIDs[netID] = flagOwnerNetID;
    }
}

void SecretBases_QueueTookFlagMessage(int netID, int victimNetID)
{
    if (secretBasesEnv) {
        secretBasesEnv->flagStealVictimNetIDs[netID] = victimNetID;
    }
}

void SecretBases_QueueTookBackFlagMessage(int netID)
{
    if (secretBasesEnv) {
        secretBasesEnv->tookBackFlagMessageQueued[netID] = TRUE;
    }
}

static void SecretBases_UpdatePCMapProp(FlagRankUpContext *ctx)
{
    VecFx32 position; // needs to be declared here to match
    MapProp *mapProp = MapPropManager_GetLoadedProp(secretBasesEnv->fieldSystem->mapPropManager, 0);

    position = MapProp_GetPosition(mapProp);

    MapPropManager_ClearOne(0, secretBasesEnv->fieldSystem->mapPropManager);
    MapPropManager_LoadOne(secretBasesEnv->fieldSystem->mapPropManager, secretBasesEnv->fieldSystem->areaDataManager, secret_base_pc_bronze_flag_nsbmd + ctx->prevFlagRank, &position, NULL, secretBasesEnv->fieldSystem->mapPropAnimMan);
}

static void SecretBases_EndFlagRankUpTask(SysTask *sysTask, void *ctx)
{
    Heap_Free(ctx);
    SysTask_Done(sysTask);
}

static void SecretBases_FlagRankUpTask(SysTask *sysTask, void *data)
{
    FlagRankUpContext *ctx = data;

    switch (ctx->state) {
    case FLAG_RANK_UP_STATE_PRINT_FLAG_REGISTERED:
        CommPlayerMan_PauseFieldSystem();
        UndergroundTextPrinter_PrintText(UndergroundMan_GetCaptureFlagTextPrinter(), UndergroundCaptureFlag_Text_ObtainedFlagWasRegistered, FALSE, NULL);
        Sound_PlayEffect(SEQ_SE_DP_PIRORIRO2);
        ctx->state = FLAG_RANK_UP_STATE_PRINT_RANK_UP;
        break;
    case FLAG_RANK_UP_STATE_PRINT_RANK_UP:
        if (!UndergroundTextPrinter_IsPrinterActive(UndergroundMan_GetCaptureFlagTextPrinter())) {
            if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
                UndergroundTextPrinter_PrintText(UndergroundMan_GetCaptureFlagTextPrinter(), UndergroundCaptureFlag_Text_FlagBecameBronze + ctx->prevFlagRank, FALSE, NULL);
                ctx->state = FLAG_RANK_UP_STATE_UPDATE_PC_PROP;
            }
        }
        break;
    case FLAG_RANK_UP_STATE_UPDATE_PC_PROP:
        if (!UndergroundTextPrinter_IsPrinterActive(UndergroundMan_GetCaptureFlagTextPrinter())) {
            if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
                SecretBases_UpdatePCMapProp(ctx);
                ctx->state = FLAG_RANK_UP_STATE_END;
                UndergroundTextPrinter_EraseMessageBoxWindow(UndergroundMan_GetCaptureFlagTextPrinter());
                CommPlayerMan_ResumeFieldSystem();
            }
        }
        break;
    case FLAG_RANK_UP_STATE_3_UNUSED:
        StartScreenFade(FADE_SUB_THEN_MAIN, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_FIELD1);
        break;
    case FLAG_RANK_UP_STATE_END:
        Heap_Free(ctx);
        SysTask_Done(sysTask);
        UndergroundMan_ClearCurrentSysTaskInfo();
        break;
    }
}

void SecretBases_ProcessFlagRankUp(int netID, int unused1, void *data, void *unused3)
{
    u8 *prevFlagRank = data;

    FlagRankUpEvent event = {
        .netID = netID,
        .prevFlagRank = *prevFlagRank,
    };

    CommSys_SendDataFixedSizeServer(97, &event);
}

void SecretBases_ProcessFlagRankUpEvent(int unused0, int unused1, void *data, void *unused3)
{
    FlagRankUpEvent *event = data;

    if (event->netID == CommSys_CurNetId()) {
        FlagRankUpContext *ctx = Heap_Alloc(HEAP_ID_FIELD2, sizeof(FlagRankUpContext));

        MI_CpuClear8(ctx, sizeof(ctx));

        ctx->state = FLAG_RANK_UP_STATE_PRINT_FLAG_REGISTERED;
        ctx->prevFlagRank = event->prevFlagRank;
        SysTask *sysTask = SysTask_Start(SecretBases_FlagRankUpTask, ctx, 100);

        UndergroundMan_SetCurrentSysTask(ctx, sysTask, SecretBases_EndFlagRankUpTask);
    }
}

int CommPacketSizeOf_FlagRankUpEvent(void)
{
    return sizeof(FlagRankUpEvent);
}

static enum Good SecretBases_GetPlacedGoodAtCoordinates(SecretBase *secretBase, int xWithinBase, int zWithinBase)
{
    for (int i = 0; i < MAX_SECRET_BASE_GOODS; i++) {
        enum Good goodID = SecretBase_GetGoodIDAtIndex(secretBase, i);

        if (goodID == UG_GOOD_NONE) {
            continue;
        }

        if (i == 0) {
            continue;
        } else if (i < MAX_PLACED_GOODS + 1) {
            Good_GetCollision(goodID);
        } else {
            continue;
        }

        int goodX = SecretBase_GetGoodXCoordAtIndex(secretBase, i);
        int goodZ = SecretBase_GetGoodZCoordAtIndex(secretBase, i);
        goodX = xWithinBase - goodX;
        goodZ = zWithinBase - goodZ;

        if (goodX == 0 && goodZ == 0) {
            return goodID;
        }
    }

    return UG_GOOD_NONE;
}

static enum Trap SecretBases_GetTrapIDFromGoodID(enum Good goodID)
{
    switch (goodID) {
    case UG_GOOD_HOLE_TOOL:
        return TRAP_HOLE;
    case UG_GOOD_PIT_TOOL:
        return TRAP_PIT;
    case UG_GOOD_SMOKE_TOOL:
        return TRAP_SMOKE;
    case UG_GOOD_BIG_SMOKE_TOOL:
        return TRAP_BIG_SMOKE;
    case UG_GOOD_ROCK_TOOL:
        return TRAP_ROCK;
    case UG_GOOD_ROCKFALL_TOOL:
        return TRAP_ROCKFALL;
    case UG_GOOD_FOAM_TOOL:
        return TRAP_FOAM;
    case UG_GOOD_BUBBLE_TOOL:
        return TRAP_BUBBLE;
    case UG_GOOD_ALERT_TOOL_1:
        return TRAP_ALERT_1;
    case UG_GOOD_ALERT_TOOL_2:
        return TRAP_ALERT_2;
    case UG_GOOD_ALERT_TOOL_3:
        return TRAP_ALERT_3;
    case UG_GOOD_ALERT_TOOL_4:
        return TRAP_ALERT_4;
    case UG_GOOD_LEAF_TOOL:
        return TRAP_LEAF;
    case UG_GOOD_FLOWER_TOOL:
        return TRAP_FLOWER;
    case UG_GOOD_EMBER_TOOL:
        return TRAP_EMBER;
    case UG_GOOD_FIRE_TOOL:
        return TRAP_FIRE;
    }

    return TRAP_NONE;
}

BOOL SecretBases_CheckPlayerTriggeredTool(int netID)
{
    int x = CommPlayer_GetXServerIfActive(netID);
    int z = CommPlayer_GetZServerIfActive(netID);
    int dir = CommPlayer_DirServer(netID);

    if (!UndergroundMan_AreCoordinatesInSecretBase(x, z)) {
        return FALSE;
    }

    if (SecretBases_AreCoordinatesWalkable(x, z) == TRUE && !secretBasesEnv->playerAffectedByTool[netID]) {
        int baseOwnerNetID = SecretBases_GetOwnerNetIDFromCoordinates(x, z);
        SecretBase *secretBase = (SecretBase *)secretBasesEnv->baseInfo[baseOwnerNetID].secretBase;

        u8 goodID = SecretBases_GetPlacedGoodAtCoordinates(secretBase, x % SECRET_BASE_WIDTH, z % SECRET_BASE_DEPTH);
        enum Trap trapID = SecretBases_GetTrapIDFromGoodID(goodID);

        if (trapID != TRAP_NONE) {
            secretBasesEnv->playerAffectedByTool[netID] = TRUE;
            Traps_HandleTriggeredTool(netID, NETID_NONE, trapID, x, z, dir);

            return TRUE;
        }
    }

    return FALSE;
}

BOOL SecretBases_ClearToolEffectFlag(int netID)
{
    if (secretBasesEnv) {
        secretBasesEnv->playerAffectedByTool[netID] = FALSE;
    }

    return FALSE;
}

void SecretBases_HandleDisconnectedPlayers(int unused)
{
    int netID;
    int x, z;
    u8 playerRemovedFromBase[MAX_CONNECTED_PLAYERS];

    MI_CpuClear8(playerRemovedFromBase, MAX_CONNECTED_PLAYERS);

    for (netID = 0; netID < MAX_CONNECTED_PLAYERS; netID++) {
        if (CommSys_IsPlayerConnected(netID)) {
            x = CommPlayer_GetXServerIfActive(netID);
            z = CommPlayer_GetZServerIfActive(netID);

            if (x == 0xffff && z == 0xffff) {
                continue;
            }

            int baseOwnerNetID = SecretBases_GetOwnerNetIDFromCoordinates(x, z);

            if (netID == baseOwnerNetID || baseOwnerNetID == NETID_CURRENT_PLAYER_BASE) {
                continue;
            }

            if (CommSys_IsPlayerConnected(baseOwnerNetID)) {
                continue;
            }

            if (secretBasesEnv->baseTransitioningOwnerNetIDs[netID] == NETID_NONE && secretBasesEnv->baseEnteringOwnerNetIDs[netID] == NETID_NONE) {
                if (UndergroundMan_AreCoordinatesInSecretBase(x, z)) {
                    if (!playerRemovedFromBase[netID]) {
                        SecretBases_ExitBase(baseOwnerNetID, netID, TRUE);
                        playerRemovedFromBase[netID] = TRUE;
                    }
                }
            }
        }
    }

    // will always be 0 because this function wouldn't be called otherwise
    netID = CommSys_CurNetId();

    if (secretBasesEnv->moveStatus == MOVE_STATUS_EXIT_IF_HOST) {
        x = CommPlayer_GetXServerIfActive(netID);
        z = CommPlayer_GetZServerIfActive(netID);

        if (!(x == 0xffff && z == 0xffff) && UndergroundMan_AreCoordinatesInSecretBase(x, z)) {
            int baseOwnerNetID = SecretBases_GetOwnerNetIDFromCoordinates(x, z);

            if (!playerRemovedFromBase[netID]) {
                SecretBases_ExitBase(baseOwnerNetID, netID, TRUE);
                playerRemovedFromBase[netID] = TRUE;
            }
        }

        if (playerRemovedFromBase[netID]) {
            secretBasesEnv->moveStatus = MOVE_STATUS_NONE;
        }
    }
}

BOOL SecretBases_RemovePlayerFromBase(int netID, BOOL forceExit)
{
    if (secretBasesEnv->occupiedBaseOwnerIDs[netID] == NETID_NONE) {
        return FALSE;
    }

    int x = CommPlayer_GetXIfActive(CommSys_CurNetId());
    int z = CommPlayer_GetZIfActive(CommSys_CurNetId());

    if (!UndergroundMan_AreCoordinatesInSecretBase(x, z)) {
        secretBasesEnv->occupiedBaseOwnerIDs[netID] = NETID_NONE;

        return FALSE;
    }

    UndergroundRecords_ForceExitTrainerCase();
    UndergroundTalk_ExitConversation();
    UndergroundMan_ForceEndCurrentSysTask();
    Traps_ForceEndCurrentTrapEffectClient(CommSys_CurNetId(), FALSE);

    x = secretBasesEnv->currentBaseReturnXCoord;
    z = secretBasesEnv->currentBaseReturnZCoord;
    int dir = secretBasesEnv->currentBaseReturnDir;

    GF_ASSERT(x != 0 && z != 0);

    x += MapObject_GetDxFromDir(dir);
    z += MapObject_GetDzFromDir(dir);

    secretBasesEnv->currentPlayerInBase = FALSE;

    SecretBases_StartMoveToFromSecretBaseTask(secretBasesEnv->fieldSystem, x, z, dir, netID, forceExit);
    CommManUnderground_TryEnterBaseTransitionState();

    secretBasesEnv->currentOccupiedBaseInfo = NULL;
    secretBasesEnv->occupiedBaseOwnerIDs[netID] = NETID_NONE;

    return TRUE;
}

void SecretBases_AbortBaseEnter(void)
{
    if (secretBasesEnv->moveStatus == MOVE_STATUS_ENTERING) {
        secretBasesEnv->moveStatus = MOVE_STATUS_ERROR_WHILE_ENTERING;
        CommPlayer_InitPersonal();
        SecretBases_ClearBaseEntranceData(0);
    }
}

void SecretBases_FlagEnteringBaseAsClient(void)
{
    if (secretBasesEnv->moveStatus == MOVE_STATUS_ENTERING_2) {
        secretBasesEnv->moveStatus = MOVE_STATUS_ENTERING_AS_CLIENT;
    }
}

// if a new link joins while already in their secret base, kick them out
void SecretBases_RemoveNewLinkFromBase(int netID)
{
    int x = CommPlayer_GetXServer(netID);
    int z = CommPlayer_GetZServer(netID);

    if (!TerrainCollisionManager_CheckCollision(secretBasesEnv->fieldSystem, x, z)) {
        if (netID == 0) {
            return;
        }

        if (CommServerClient_IsInClosedSecretBase()) {
            return;
        }
    }

    if (x == 0xffff && z == 0xffff) {
        SecretBases_ExitBase(netID, netID, TRUE);
    } else if (UndergroundMan_AreCoordinatesInSecretBase(x, z) || TerrainCollisionManager_CheckCollision(secretBasesEnv->fieldSystem, x, z)) {
        SecretBases_ExitBase(netID, netID, TRUE);
    }
}

int SecretBases_GetCurrentBaseReturnXCoord(void)
{
    if (secretBasesEnv) {
        return secretBasesEnv->currentBaseReturnXCoord;
    }

    return DEFAULT_BASE_RETURN_X;
}

int SecretBases_GetCurrentBaseReturnZCoord(void)
{
    if (secretBasesEnv) {
        return secretBasesEnv->currentBaseReturnZCoord;
    }

    return DEFAULT_BASE_RETURN_Z;
}

int SecretBases_GetCurrentBaseReturnDir(void)
{
    if (secretBasesEnv) {
        return secretBasesEnv->currentBaseReturnDir;
    }

    return DIR_SOUTH;
}

void SecretBases_SetBaseReturnXCoord(int netID, int x)
{
    if (secretBasesEnv) {
        secretBasesEnv->baseReturnXCoords[netID] = x;
    }
}

void SecretBases_SetBaseReturnZCoord(int netID, int z)
{
    if (secretBasesEnv) {
        secretBasesEnv->baseReturnZCoords[netID] = z;
    }
}

void SecretBases_SetBaseReturnDir(int netID, int dir)
{
    if (secretBasesEnv) {
        secretBasesEnv->baseReturnDirs[netID] = dir;
    }
}

void SecretBases_SetEntranceGraphicsEnabled(BOOL enabled)
{
    secretBasesEnv->baseEntranceGraphicsEnabled = enabled;
}

static void ov23_0224DC08(void)
{
    sub_02032174(TRUE);
    sub_02032138(TRUE);
    sub_02036814(TRUE);
    sub_020340FC();
}

static void ov23_0224DC24(void)
{
    sub_02032174(FALSE);
    sub_02032138(FALSE);
    sub_02036814(FALSE);
    sub_020340FC();
}
