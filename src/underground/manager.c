#include "underground/manager.h"

#include <nitro.h>
#include <string.h>

#include "constants/field/map.h"
#include "constants/field/map_matrix.h"
#include "constants/field_base_tiles.h"
#include "constants/map_object.h"

#include "struct_decls/struct_02061AB4_decl.h"

#include "field/field_system.h"
#include "overlay005/land_data.h"
#include "overlay005/ov5_021EAFA4.h"
#include "underground/menus.h"
#include "underground/mining.h"
#include "underground/pc.h"
#include "underground/player.h"
#include "underground/records.h"
#include "underground/secret_bases.h"
#include "underground/spheres.h"
#include "underground/text_printer.h"
#include "underground/traps.h"
#include "underground/vendors.h"

#include "comm_player_manager.h"
#include "communication_information.h"
#include "communication_system.h"
#include "field_system.h"
#include "game_options.h"
#include "graphics.h"
#include "heap.h"
#include "message.h"
#include "render_window.h"
#include "save_player.h"
#include "savedata.h"
#include "string_gf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "system_flags.h"
#include "terrain_collision_manager.h"
#include "trainer_info.h"
#include "underground.h"
#include "unk_02030EE0.h"
#include "unk_020366A0.h"
#include "vars_flags.h"

#include "res/graphics/trap_effects/trap_effects.naix"
#include "res/text/bank/underground_common.h"

#define MAX_STORED_MENU_POSITIONS 20

#define COORDS_TO_EVENT_POS(x, z) (x & 0xF) * 16 + (z & 0xF)

typedef BOOL (*TouchRadarItemCheckFunc)(int x, int z);

typedef struct StoredListMenuPos {
    u16 key;
    u16 menuKey;
    u16 cursorPos;
    u16 listPos;
} StoredListMenuPos;

typedef struct UndergroundManager {
    void *currentSysTaskCtx;
    SysTask *currentSysTask;
    EndSysTaskFunc endCurrentSysTask;
    FieldSystem *fieldSystem;
    u8 padding[4];
    SysTask *sysTask;
    Coordinates2D touchCoordinates;
    Coordinates touchedTileCoords;
    StoredListMenuPos storedPositions[MAX_STORED_MENU_POSITIONS];
    u16 storedPositionKey;
    u8 linksTalkedTo[MAX_CONNECTED_PLAYERS];
    u8 initialized[MAX_CONNECTED_PLAYERS];
    u8 talkedToVendorMessagesQueued[MAX_CONNECTED_PLAYERS];
    String *leftUndergroundMessages[MAX_CONNECTED_PLAYERS];
    u8 touchRadarTrapResults[MAX_TOUCH_RADAR_RESULTS_OF_TYPE];
    u8 touchRadarMiningSpotResults[MAX_TOUCH_RADAR_RESULTS_OF_TYPE];
    u8 touchRadarBuriedSphereResults[MAX_TOUCH_RADAR_RESULTS_OF_TYPE];
    CoordinatesGetter coordinatesGetter;
    UndergroundTextPrinter *commonTextPrinter;
    UndergroundTextPrinter *captureFlagTextPrinter;
    UndergroundTextPrinter *miscTextPrinter;
    UndergroundTextPrinter *baseDecorationTextPrinter;
    UndergroundTextPrinter *itemNameTextPrinter;
    int orderedArrayLength;
    int taskCounter;
    u8 touchCooldown;
    u8 isPlayerConnected[MAX_CONNECTED_PLAYERS];
    u8 hasPlayerLeft[MAX_CONNECTED_PLAYERS];
    u8 dummyCounter;
    u8 interactCooldown;
    u8 activeRadar;
    u8 touchRadarTrapResultCount;
    u8 touchRadarMiningSpotResultCount;
    u8 touchRadarBuriedSphereResultCount;
    u8 resourcesPaused;
    u8 messageRetrieved;
} UndergroundManager;

typedef struct InteractEvent {
    u8 flags;
    u8 pos;
} InteractEvent;

typedef struct {
    u16 baseReturnX;
    u16 baseReturnZ;
    u8 baseReturnDir;
    u8 isMining;
} UndergroundPlayerState;

enum Radar {
    RADAR_NONE = 0,
    RADAR_NORMAL,
    RADAR_SPHERE,
    RADAR_TREASURE,
    RADAR_TRAP,
};

static void UndergroundMan_DisconnectCallback(int netID);
static void UndergroundMan_ClearPrinterIDsTask(SysTask *unused0, void *unused1);
static int UndergroundMan_CountInitializedPlayers(void);

static UndergroundManager *sUndergroundMan = NULL;

static void UndergroundMan_Init(UndergroundManager *dest, FieldSystem *fieldSystem)
{
    u8 renderDelay = Options_TextFrameDelay(SaveData_GetOptions(fieldSystem->saveData));

    sUndergroundMan = dest;
    MI_CpuFill8(sUndergroundMan, 0, sizeof(UndergroundManager));

    sUndergroundMan->fieldSystem = fieldSystem;
    sUndergroundMan->touchCooldown = 0;
    sUndergroundMan->touchedTileCoords.x = 0;
    sUndergroundMan->touchedTileCoords.z = 0;
    sUndergroundMan->resourcesPaused = 0;
    sUndergroundMan->activeRadar = RADAR_NORMAL;
    sUndergroundMan->commonTextPrinter = UndergroundTextPrinter_New(TEXT_BANK_UNDERGROUND_COMMON, HEAP_ID_UNDERGROUND, fieldSystem->bgConfig, renderDelay, 500);
    sUndergroundMan->captureFlagTextPrinter = UndergroundTextPrinter_New(TEXT_BANK_UNDERGROUND_CAPTURE_FLAG, HEAP_ID_UNDERGROUND, fieldSystem->bgConfig, renderDelay, 0);
    sUndergroundMan->miscTextPrinter = UndergroundTextPrinter_New(TEXT_BANK_UNDERGROUND_NPCS, HEAP_ID_UNDERGROUND, fieldSystem->bgConfig, renderDelay, 1000);
    sUndergroundMan->baseDecorationTextPrinter = UndergroundTextPrinter_New(TEXT_BANK_UNDERGROUND_BASE_DECORATION, HEAP_ID_UNDERGROUND, fieldSystem->bgConfig, renderDelay, 0);
    sUndergroundMan->itemNameTextPrinter = UndergroundTextPrinter_New(TEXT_BANK_UNDERGROUND_TRAPS, HEAP_ID_UNDERGROUND, fieldSystem->bgConfig, renderDelay, 0);

    LoadMessageBoxGraphics(sUndergroundMan->fieldSystem->bgConfig, BG_LAYER_MAIN_3, BASE_TILE_SCROLLING_MESSAGE_BOX, 10, 0, HEAP_ID_FIELD1);
    Graphics_LoadPalette(NARC_INDEX_DATA__UG_TRAP, text_window_NCLR, 0, PLTT_OFFSET(10), 4 * PALETTE_SIZE_BYTES, HEAP_ID_FIELD1);
    LoadStandardWindowGraphics(sUndergroundMan->fieldSystem->bgConfig, BG_LAYER_MAIN_3, BASE_TILE_STANDARD_WINDOW_FRAME, 11, STANDARD_WINDOW_UNDERGROUND, HEAP_ID_FIELD1);

    for (int netID = 0; netID < MAX_CONNECTED_PLAYERS; netID++) {
        sUndergroundMan->linksTalkedTo[netID] = NETID_NONE;
        sUndergroundMan->talkedToVendorMessagesQueued[netID] = -1;
        sUndergroundMan->leftUndergroundMessages[netID] = NULL;
    }

    SystemFlag_SetEnteredUnderground(SaveData_GetVarsFlags(sUndergroundMan->fieldSystem->saveData));
    sUndergroundMan->sysTask = SysTask_Start(UndergroundMan_ClearPrinterIDsTask, NULL, 0);
    sub_SetDisconnectCallback(UndergroundMan_DisconnectCallback);
}

static void UndergroundMan_Free(void)
{
    for (int netID = 0; netID < MAX_CONNECTED_PLAYERS; netID++) {
        if (sUndergroundMan->leftUndergroundMessages[netID]) {
            String_Free(sUndergroundMan->leftUndergroundMessages[netID]);
        }
    }

    sub_SetDisconnectCallback(NULL);
    SysTask_Done(sUndergroundMan->sysTask);

    UndergroundTextPrinter_Free(sUndergroundMan->commonTextPrinter);
    UndergroundTextPrinter_Free(sUndergroundMan->captureFlagTextPrinter);
    UndergroundTextPrinter_Free(sUndergroundMan->miscTextPrinter);
    UndergroundTextPrinter_Free(sUndergroundMan->baseDecorationTextPrinter);
    UndergroundTextPrinter_Free(sUndergroundMan->itemNameTextPrinter);

    sUndergroundMan->fieldSystem->menuCursorPos = 0;
    Heap_Free(sUndergroundMan);
    sUndergroundMan = NULL;
}

UndergroundTextPrinter *UndergroundMan_GetCommonTextPrinter(void)
{
    return sUndergroundMan->commonTextPrinter;
}

UndergroundTextPrinter *UndergroundMan_GetCaptureFlagTextPrinter(void)
{
    return sUndergroundMan->captureFlagTextPrinter;
}

UndergroundTextPrinter *UndergroundMan_GetMiscTextPrinter(void)
{
    return sUndergroundMan->miscTextPrinter;
}

UndergroundTextPrinter *UndergroundMan_GetBaseDecorationTextPrinter(void)
{
    return sUndergroundMan->baseDecorationTextPrinter;
}

UndergroundTextPrinter *UndergroundMan_GetItemNameTextPrinter(void)
{
    return sUndergroundMan->itemNameTextPrinter;
}

void UndergroundMan_RemovePrinters(void)
{
    UndergroundTextPrinter_RemovePrinter(sUndergroundMan->commonTextPrinter);
    UndergroundTextPrinter_RemovePrinter(sUndergroundMan->captureFlagTextPrinter);
    UndergroundTextPrinter_RemovePrinter(sUndergroundMan->miscTextPrinter);
    UndergroundTextPrinter_RemovePrinter(sUndergroundMan->baseDecorationTextPrinter);
    UndergroundTextPrinter_RemovePrinter(sUndergroundMan->itemNameTextPrinter);
}

BOOL UndergroundMan_FormatCommonStringWith2TrainerNames(TrainerInfo *trainerInfo1, TrainerInfo *trainerInfo2, int bankEntry, String *dest)
{
    if (trainerInfo1 && trainerInfo2) {
        StringTemplate *template = StringTemplate_Default(HEAP_ID_FIELD1);
        String *fmtString = String_Init(50 * 2, HEAP_ID_FIELD1);

        StringTemplate_SetPlayerName(template, 0, trainerInfo1);
        StringTemplate_SetPlayerName(template, 1, trainerInfo2);
        MessageLoader_GetString(UndergroundTextPrinter_GetMessageLoader(UndergroundMan_GetCommonTextPrinter()), bankEntry, fmtString);
        StringTemplate_Format(template, dest, fmtString);
        String_Free(fmtString);
        StringTemplate_Free(template);

        return TRUE;
    }

    return FALSE;
}

BOOL UndergroundMan_FormatCommonStringWithTrainerName(TrainerInfo *trainerInfo, int index, int bankEntry, String *dest)
{
    if (trainerInfo) {
        StringTemplate *template = StringTemplate_Default(HEAP_ID_FIELD1);
        String *fmtString = String_Init(50 * 2, HEAP_ID_FIELD1);

        StringTemplate_SetPlayerName(template, index, trainerInfo);
        MessageLoader_GetString(UndergroundTextPrinter_GetMessageLoader(UndergroundMan_GetCommonTextPrinter()), bankEntry, fmtString);
        StringTemplate_Format(template, dest, fmtString);
        String_Free(fmtString);
        StringTemplate_Free(template);

        return TRUE;
    }

    return FALSE;
}

static BOOL UndergroundMan_GetQueuedPlayerMessage(String *dest)
{
    if (!sUndergroundMan) {
        return FALSE;
    }

    for (int netID = 0; netID < MAX_CONNECTED_PLAYERS; netID++) {
        if (sub_02032DE0(netID)) {
            TrainerInfo *trainerInfo = CommInfo_TrainerInfo(netID);
            CommInfo_SetReceiveEnd(netID);

            if (UndergroundMan_FormatCommonStringWithTrainerName(trainerInfo, 1, UndergroundCommon_Text_PlayerHasEntered, dest)) {
                return TRUE;
            }
        }

        if (sUndergroundMan->linksTalkedTo[netID] != NETID_NONE) {
            TrainerInfo *trainerInfo = CommInfo_TrainerInfo(netID);
            TrainerInfo *linkInfo = CommInfo_TrainerInfo(sUndergroundMan->linksTalkedTo[netID]);

            sUndergroundMan->linksTalkedTo[netID] = NETID_NONE;

            if (UndergroundMan_FormatCommonStringWith2TrainerNames(trainerInfo, linkInfo, UndergroundCommon_Text_PlayerTalkedWithPlayer, dest)) {
                return TRUE;
            }
        }

        if (sUndergroundMan->talkedToVendorMessagesQueued[netID] != (u8)-1) {
            TrainerInfo *trainerInfo = CommInfo_TrainerInfo(netID);
            sUndergroundMan->talkedToVendorMessagesQueued[netID] = -1;

            if (UndergroundMan_FormatCommonStringWithTrainerName(trainerInfo, 0, UndergroundCommon_Text_PlayerTalkedWithSomeone, dest)) {
                return TRUE;
            }
        }

        if (sUndergroundMan->hasPlayerLeft[netID] == TRUE) {
            if (sUndergroundMan->leftUndergroundMessages[netID]) {
                String_Copy(dest, sUndergroundMan->leftUndergroundMessages[netID]);
                String_Free(sUndergroundMan->leftUndergroundMessages[netID]);
                sUndergroundMan->leftUndergroundMessages[netID] = NULL;
            }

            sUndergroundMan->hasPlayerLeft[netID] = FALSE;
            return TRUE;
        }
    }

    return FALSE;
}

// bad
// doesn't check for everything that could be at the coordinates
BOOL UndergroundMan_AreCoordinatesOccupied(int x, int z)
{
    Coordinates coordinates = {
        .x = x,
        .z = z
    };

    if (TerrainCollisionManager_CheckCollision(sUndergroundMan->fieldSystem, x, z)) {
        return TRUE;
    }

    if (Traps_IsTrapAtCoordinates(x, z)) {
        return TRUE;
    }

    if (UndergroundPC_GetPCOwnerNetIDAtCoordinates(&coordinates, DIR_NONE) != NETID_NONE) {
        return TRUE;
    }

    return FALSE;
}

BOOL UndergroundMan_CheckForTouchInput(void)
{
    if (sUndergroundMan->interactCooldown != 0 || sUndergroundMan->touchCooldown != 0) {
        if (sUndergroundMan->touchCooldown > 0) {
            sUndergroundMan->touchCooldown--;
        }

        return FALSE;
    }

    if (gSystem.touchPressed) {
        sUndergroundMan->touchCooldown = 30;

        if (!sUndergroundMan->resourcesPaused) {
            if (CommPlayerMan_IsFieldSystemActive() && !UndergroundPlayer_IsAffectedByTrap(CommSys_CurNetId())) {
                if (CommSys_CheckError()) {
                    return FALSE;
                }

                if (CommPlayer_GetMovementTimer(CommSys_CurNetId()) != 0) {
                    return FALSE;
                }

                VecFx32 pos;
                pos = ov5_GetPositionFromTouchCoordinates(gSystem.touchX, gSystem.touchY, sUndergroundMan->fieldSystem->unk_8C);
                int x, z;
                LandData_ObjectPosToTilePos(pos.x, pos.z, &x, &z);
                Coordinates touchedTileCoords = {
                    .x = x,
                    .z = z
                };

                sUndergroundMan->touchCoordinates.x = gSystem.touchX;
                sUndergroundMan->touchCoordinates.y = gSystem.touchY;
                sUndergroundMan->touchedTileCoords.x = x;
                sUndergroundMan->touchedTileCoords.z = z;

                CommSys_SendData(48, &touchedTileCoords, sizeof(Coordinates));

                return TRUE;
            }
        }
    }

    return FALSE;
}

static int UndergroundMan_TouchRadarSearch(u8 *out, TouchRadarItemCheckFunc isItemAtCoords, Coordinates *touchedTileCoords)
{
    int index = 1;

    int minX = touchedTileCoords->x - TOUCH_RADAR_RADIUS;
    int minZ = touchedTileCoords->z - TOUCH_RADAR_RADIUS;

    TouchRadarSearchContext ctx;
    TouchRadarSearch_Init(&ctx, TOUCH_RADAR_RADIUS);

    TouchRadarCoordinates radarCoords;
    while (TouchRadarSearch_GetNextCoords(&ctx, &radarCoords)) {
        int x = touchedTileCoords->x + radarCoords.x;
        int z = touchedTileCoords->z + radarCoords.z;

        if (isItemAtCoords(x, z)) {
            out[index] = x - minX + (z - minZ) * 16;

            if (index == MAX_TOUCH_RADAR_RESULTS_OF_TYPE) {
                index++;
                break;
            }

            index++;
        }
    }

    return index;
}

static void UndergroundMan_StartTouchRadar(int netID, Coordinates *touchedTileCoords)
{
    u8 buffer[MAX_TOUCH_RADAR_RESULTS_OF_TYPE + 1];
    int size = 1;

    buffer[0] = netID;

    size = UndergroundMan_TouchRadarSearch(buffer, Traps_IsTrapAtCoordinates, touchedTileCoords);
    CommSys_SendDataServer(49, buffer, size);

    size = UndergroundMan_TouchRadarSearch(buffer, Mining_IsMiningSpotAtCoordinates, touchedTileCoords);
    CommSys_SendDataServer(50, buffer, size);
}

void UndergroundMan_ProcessTouchInput(int netID, int unused1, void *data, void *unused3)
{
    Coordinates *touchedTileCoords = data;

    if (!CommPlayerMan_IsMovementEnabled(netID)) {
        return;
    }

    if (UndergroundPlayer_IsAffectedByTrap(netID)) {
        return;
    }

    CommPlayerMan_SetMovementEnabled(netID, FALSE);
    UndergroundMan_StartTouchRadar(netID, touchedTileCoords);
}

void UndergroundMan_ProcessTouchRadarTrapResults(int unused0, int size, void *data, void *unused3)
{
    u8 *buffer = data;

    if (CommSys_CurNetId() != buffer[0]) {
        return;
    }

    MI_CpuCopy8(&buffer[1], sUndergroundMan->touchRadarTrapResults, size - 1);
    sUndergroundMan->touchRadarTrapResultCount = size - 1;
}

void UndergroundMan_ProcessTouchRadarMiningSpotResults(int unused0, int size, void *data, void *unused3)
{
    u8 *buffer = data;
    u8 sphereResults[MAX_TOUCH_RADAR_RESULTS_OF_TYPE + 1];

    if (CommSys_CurNetId() != buffer[0]) {
        return;
    }

    MI_CpuCopy8(&buffer[1], sUndergroundMan->touchRadarMiningSpotResults, size - 1);
    sUndergroundMan->touchRadarMiningSpotResultCount = size - 1;

    sUndergroundMan->touchRadarBuriedSphereResultCount = UndergroundMan_TouchRadarSearch(sphereResults, Spheres_IsBuriedSphereAtCoordinates, &sUndergroundMan->touchedTileCoords);
    sUndergroundMan->touchRadarBuriedSphereResultCount -= 1;

    MI_CpuCopy8(&sphereResults[1], sUndergroundMan->touchRadarBuriedSphereResults, sUndergroundMan->touchRadarBuriedSphereResultCount);
    TouchRadar_StartTask(sUndergroundMan->fieldSystem, sUndergroundMan->touchedTileCoords.x, sUndergroundMan->touchedTileCoords.z, sUndergroundMan->touchCoordinates.x, sUndergroundMan->touchCoordinates.y, sUndergroundMan->touchRadarTrapResults, sUndergroundMan->touchRadarTrapResultCount, sUndergroundMan->touchRadarMiningSpotResults, sUndergroundMan->touchRadarMiningSpotResultCount, sUndergroundMan->touchRadarBuriedSphereResults, sUndergroundMan->touchRadarBuriedSphereResultCount);
}

static int UndergroundMan_GetOrderedCoordinatesValue(Coordinates *coordinates)
{
    int x = 0, z = 0;

    if (coordinates == NULL) {
        return MAP_MATRIX_MAX_WIDTH * MAP_TILES_COUNT_X * MAP_MATRIX_MAX_HEIGHT * MAP_TILES_COUNT_Z;
    }

    x = coordinates->x;
    z = coordinates->z;

    return (z * MAP_MATRIX_MAX_WIDTH * MAP_TILES_COUNT_X) + x;
}

int UndergroundMan_CalcCoordsIndexGet(Coordinates *coordinates)
{
    int index = 0;
    int max = sUndergroundMan->orderedArrayLength - 1;
    int orderedValue = UndergroundMan_GetOrderedCoordinatesValue(coordinates);
    Coordinates _;
    CoordinatesGetter getCoordinates = sUndergroundMan->coordinatesGetter;

    while (index < max) {
        int midpoint = (index + max) / 2;

        if (UndergroundMan_GetOrderedCoordinatesValue(getCoordinates(&_, midpoint)) < orderedValue) {
            index = midpoint + 1;
        } else {
            max = midpoint;
        }
    }

    if (UndergroundMan_GetOrderedCoordinatesValue(getCoordinates(&_, index)) == orderedValue) {
        return index;
    }

    return -1;
}

int UndergroundMan_CalcCoordsIndexInsert(Coordinates *coordinates)
{
    int index = 0;
    int max = sUndergroundMan->orderedArrayLength - 2;
    int orderedValue = UndergroundMan_GetOrderedCoordinatesValue(coordinates);
    Coordinates _;
    CoordinatesGetter getCoordinates = sUndergroundMan->coordinatesGetter;

    max++; // why?

    while (index < max) {
        int midpoint = (index + max) / 2;

        if (UndergroundMan_GetOrderedCoordinatesValue(getCoordinates(&_, midpoint)) < orderedValue) {
            index = midpoint + 1;
        } else {
            max = midpoint;
        }
    }

    return index;
}

void UndergroundMan_InitCoordsOrderingState(int orderedArrayLength, CoordinatesGetter coordinatesGetter)
{
    sUndergroundMan->coordinatesGetter = coordinatesGetter;
    sUndergroundMan->orderedArrayLength = orderedArrayLength;
}

void UndergroundMan_OpenMenu(void)
{
    if (CommPlayer_GetMovementTimer(CommSys_CurNetId()) == 0) {
        CommSys_SendMessage(27);
        CommSys_Dummy();
    }
}

void UndergroundMan_ProgressInteractCooldown(void)
{
    if (sUndergroundMan->interactCooldown != 0) {
        sUndergroundMan->interactCooldown--;
    }
}

void UndergroundMan_ProcessInteract(u8 flags)
{
    Underground *underground = SaveData_GetUnderground(sUndergroundMan->fieldSystem->saveData);

    if (sUndergroundMan->interactCooldown != 0 && sUndergroundMan->touchCooldown != 0) {
        return;
    }

    if (CommPlayer_GetMovementTimer(CommSys_CurNetId()) != 0) {
        return;
    }

    if (Underground_GetTrapCount(underground) == MAX_TRAP_SLOTS) {
        flags |= FLAG_TRAPS_FULL;
    }

    int x = CommPlayer_GetXInFrontOfPlayer(CommSys_CurNetId());
    int z = CommPlayer_GetZInFrontOfPlayer(CommSys_CurNetId());

    if (Spheres_IsBuriedSphereAtCoordinates(x, z)) {
        flags |= FLAG_BURIED_SPHERE_IN_FRONT;
    }

    InteractEvent event = {
        .flags = flags,
        .pos = COORDS_TO_EVENT_POS(x, z)
    };

    CommSys_SendDataFixedSize(28, &event);
    CommSys_Dummy();

    sUndergroundMan->interactCooldown = 8;
}

int CommPacketSizeOf_InteractEvent(void)
{
    return sizeof(InteractEvent);
}

void UndergroundMan_ProcessInteractEvent(int netID, int unused1, void *data, void *unused3)
{
    TalkEvent talkEvent;
    InteractEvent *event = data;
    Coordinates coordinates;
    u8 netIDBuffer = netID;
    coordinates.x = CommPlayer_GetXInFrontOfPlayerServer(netID);
    coordinates.z = CommPlayer_GetZInFrontOfPlayerServer(netID);

    if ((CommPlayer_GetXServerIfActive(netID) == 0xffff) && (CommPlayer_GetZServerIfActive(netID) == 0xffff)) {
        return;
    }

    if (!CommPlayerMan_IsMovementEnabled(netID)) {
        return;
    }

    if (UndergroundPlayer_IsAffectedByTrap(netID)) {
        return;
    }

    int linkNetID = CommPlayerMan_GetLinkNetIDAtLocation(coordinates.x, coordinates.z);

    if (linkNetID != NETID_NONE) {
        if (SecretBases_IsPlayerMidBaseTransition(linkNetID)) {
            return;
        } else if (Mining_IsPlayerMining(linkNetID)) {
            talkEvent.result = TALK_RESULT_MINING;
            talkEvent.talkTargetNetID = linkNetID;
            talkEvent.netID = netID;

            CommSys_SendDataServer(30, &talkEvent, sizeof(talkEvent));
            CommPlayerMan_SetMovementEnabled(netID, FALSE);
        } else if (UndergroundPlayer_TalkHeldFlagCheck(netID, linkNetID, FALSE)) {
            return;
        } else if (UndergroundPlayer_IsAffectedByTrap(linkNetID)) {
            if (!Traps_HasPlayerTriggeredTool(linkNetID)) {
                Traps_HelpLink(netID, linkNetID);
            } else {
                talkEvent.result = TALK_RESULT_FAIL;
                talkEvent.talkTargetNetID = linkNetID;
                talkEvent.netID = netID;

                CommSys_SendDataServer(30, &talkEvent, sizeof(talkEvent));
                CommPlayerMan_SetMovementEnabled(netID, FALSE);
            }
        } else if (!CommPlayerMan_IsMovementEnabled(netID)) {
            return;
        } else if (!CommPlayerMan_IsMovementEnabled(linkNetID) || CommPlayer_GetMovementTimerServer(linkNetID) != 0) {
            talkEvent.result = TALK_RESULT_FAIL;
            talkEvent.talkTargetNetID = linkNetID;
            talkEvent.netID = netID;

            CommSys_SendDataServer(30, &talkEvent, sizeof(talkEvent));
            CommPlayerMan_SetMovementEnabled(netID, FALSE);
        } else {
            talkEvent.result = TALK_RESULT_SUCCESS;
            talkEvent.talkTargetNetID = linkNetID;
            talkEvent.netID = netID;

            if (CommPlayerMan_IsMovementEnabled(linkNetID)) {
                if (CommSys_SendDataServer(30, &talkEvent, sizeof(talkEvent))) {
                    CommPlayerMan_SetMovementEnabled(netID, FALSE);
                    CommPlayerMan_SetMovementEnabled(linkNetID, FALSE);
                    CommPlayer_LookTowardsServer(netID, linkNetID);
                }
            }
        }

        return;
    }

    if (Traps_TryDisengageTrap(netID, &coordinates, event->flags)) {
        CommPlayerMan_SetMovementEnabled(netID, FALSE);
        return;
    }

    if (Mining_CheckForMiningSpotInteract(netID, &coordinates)) {
        CommPlayerMan_SetMovementEnabled(netID, FALSE);
        return;
    }

    if (UndergroundPC_TryUsePC(netID, &coordinates)) {
        CommPlayerMan_SetMovementEnabled(netID, FALSE);
        return;
    }

    if (SecretBases_CheckForInteractableGood(netID, &coordinates)) {
        CommPlayerMan_SetMovementEnabled(netID, FALSE);
        return;
    }

    if (CommPlayer_CheckNPCCollision(coordinates.x, coordinates.z)) {
        if (UndergroundPlayer_TalkHeldFlagCheck(netID, NETID_NONE, FALSE)) {
            return;
        }

        CommSys_SendDataFixedSizeServer(24, &netIDBuffer);
        CommPlayerMan_SetMovementEnabled(netID, FALSE);

        return;
    }

    if (event->flags & FLAG_BURIED_SPHERE_IN_FRONT) {
        if (UndergroundPlayer_BuriedObjectHeldFlagCheck(netID)) {
            return;
        }

        if (event->pos == COORDS_TO_EVENT_POS(coordinates.x, coordinates.z)) {
            CommSys_SendDataFixedSizeServer(63, &netIDBuffer);
            CommPlayerMan_SetMovementEnabled(netID, FALSE);
        }
    }
}

void UndergroundMan_Process(void)
{
    if (CommSys_CurNetId() == 0) {
        for (int netID = 0; netID < MAX_CONNECTED_PLAYERS; netID++) {
            if (CommInfo_TrainerInfo(netID) && !sUndergroundMan->isPlayerConnected[netID]) {
                SecretBases_ClearBaseEntranceData(netID);
            }

            if (CommInfo_TrainerInfo(netID)) {
                sUndergroundMan->isPlayerConnected[netID] = TRUE;
            } else {
                sUndergroundMan->isPlayerConnected[netID] = FALSE;
            }
        }

        sub_02037B58(UndergroundMan_CountInitializedPlayers() + 2);
    }

    sUndergroundMan->dummyCounter++;

    if (CommSys_CurNetId() == 0) {
        if (CommInfo_ServerSendArray()) {
            CommPlayer_SendPos(TRUE);
        }
    }

    Spheres_AdvanceBuriedSphereSparkleTimer();
    Traps_SendTrapRadarResults();
    Mining_SendRadarResults();

    if (!sUndergroundMan->resourcesPaused) {
        Traps_Dummy2(sUndergroundMan->fieldSystem->bgConfig);
    }
}

void UndergroundMan_InitAllResources(FieldSystem *fieldSystem)
{
    void *resource;

    if (sUndergroundMan == NULL) {
        resource = Heap_Alloc(HEAP_ID_COMMUNICATION, sizeof(UndergroundManager));
        UndergroundMan_Init(resource, fieldSystem);

        resource = Heap_Alloc(HEAP_ID_COMMUNICATION, CommPlayer_Size());
        CommPlayerMan_Init(resource, fieldSystem, TRUE);

        resource = Heap_Alloc(HEAP_ID_COMMUNICATION, TrapsEnv_Size());
        TrapsEnv_Init(resource, fieldSystem);

        resource = Heap_Alloc(HEAP_ID_COMMUNICATION, SecretBasesEnv_Size());
        SecretBasesEnv_Init(resource, fieldSystem);

        resource = Heap_Alloc(HEAP_ID_COMMUNICATION, SpheresEnv_Size());
        SpheresEnv_Init(resource, fieldSystem);

        resource = Heap_Alloc(HEAP_ID_COMMUNICATION, MiningEnv_Size());
        MiningEnv_Init(resource, fieldSystem);

        resource = Heap_Alloc(HEAP_ID_COMMUNICATION, RecordsEnv_Size());
        RecordsEnv_Init(resource, SaveData_GetUndergroundRecord(FieldSystem_GetSaveData(fieldSystem)), FieldSystem_GetSaveData(fieldSystem));

        UndergroundMenuContext_Init(SaveData_GetUnderground(FieldSystem_GetSaveData(fieldSystem)));
    }
}

void UndergroundMan_PauseResources(void)
{
    if (sUndergroundMan) {
        UndergroundRecords_ForceExitTrainerCase();
        Spheres_DisableBuriedSphereSparkles();
        SecretBases_DisableBaseEntranceGraphics();
        Traps_DisableTrapGraphics();
        CommPlayerMan_Disable();
        Mining_Dummy();
        UndergroundMan_RemovePrinters();

        sUndergroundMan->resourcesPaused = TRUE;
    }
}

void UndergroundMan_UnpauseResources(void)
{
    if (sUndergroundMan) {
        CommPlayerMan_Restart();
        UndergroundRecords_Dummy();
        Spheres_EnableBuriedSphereSparkles();
        SecretBases_EnableBaseEntranceGraphics();
        Traps_EnableTrapGraphics();
        Mining_Dummy2();

        sUndergroundMan->resourcesPaused = FALSE;
        LoadMessageBoxGraphics(sUndergroundMan->fieldSystem->bgConfig, BG_LAYER_MAIN_3, BASE_TILE_SCROLLING_MESSAGE_BOX, 10, 0, HEAP_ID_FIELD1);
    }
}

void UndergroundMan_FreeAllResources(void)
{
    if (sUndergroundMan != NULL) {
        Underground_ClearGiftPenaltyFlag(sUndergroundMan->fieldSystem->saveData);
        SecretBasesEnv_Free();
        TrapsEnv_Free();
        CommPlayerMan_Delete(TRUE);
        SpheresEnv_Free();
        MiningEnv_Free();
        UndergroundMenuContext_Free();
        RecordsEnv_Free();
        UndergroundMan_Free();
    }
}

void UndergroundMan_ResetResources(FieldSystem *fieldSystem)
{
    if (sUndergroundMan != NULL) {
        Traps_Reinit(fieldSystem);
        CommPlayerMan_Reinit();
        SecretBases_ResetAllBaseInfo();
    }
}

BOOL UndergroundMan_GetQueuedMessage(String *dest)
{
    if (sUndergroundMan->messageRetrieved) {
        sUndergroundMan->messageRetrieved = FALSE;
        return FALSE;
    }

    if (UndergroundMan_GetQueuedPlayerMessage(dest)) {
        sUndergroundMan->messageRetrieved = TRUE;
        return TRUE;
    } else if (Traps_GetQueuedMessage(dest)) {
        sUndergroundMan->messageRetrieved = TRUE;
        return TRUE;
    } else if (Traps_GetQueuedMessage2(dest)) {
        sUndergroundMan->messageRetrieved = TRUE;
        return TRUE;
    } else if (SecretBases_GetQueuedMessage(dest)) {
        sUndergroundMan->messageRetrieved = TRUE;
        return TRUE;
    } else if (Mining_GetQueuedMessage(dest)) {
        sUndergroundMan->messageRetrieved = TRUE;
        return TRUE;
    } else if (Spheres_GetQueuedMessage(dest)) {
        sUndergroundMan->messageRetrieved = TRUE;
        return TRUE;
    }

    return FALSE;
}

SecretBase *UndergroundMan_GetCurrentOccupiedSecretBase(SaveData *saveData)
{
    if (!sUndergroundMan) {
        return NULL;
    }

    return SecretBases_GetCurrentOccupiedBase(saveData);
}

// refers to a 8x2 grid of secret bases, not the grid of walkable tiles
int UndergroundMan_GetSecretBaseXCoordinate(void)
{
    if (!sUndergroundMan) {
        return 0;
    }

    return SecretBases_GetBaseXCoordinate();
}

// refers to a 8x2 grid of secret bases, not the grid of walkable tiles
int UndergroundMan_GetSecretBaseZCoordinate(void)
{
    if (!sUndergroundMan) {
        return 0;
    }

    return SecretBases_GetBaseZCoordinate();
}

// also returns true for out of bounds coordinates in general
BOOL UndergroundMan_AreCoordinatesInSecretBase(int x, int z)
{
    if (x > UNDERGROUND_MAIN_AREA_START_X && z > UNDERGROUND_MAIN_AREA_START_Z && x < UNDERGROUND_MAX_X && z < UNDERGROUND_MAX_Z) {
        return FALSE;
    }

    return TRUE;
}

int UndergroundMan_GetRadarItemXCoord(int index)
{
    if (sUndergroundMan) {
        if (index < MAX_RADAR_BLIPS) {
            switch (sUndergroundMan->activeRadar) {
            case RADAR_NONE:
                return 0;
            case RADAR_NORMAL:
                if (index < MAX_NORMAL_RADAR_BLIPS) {
                    return NormalRadar_GetXCoordOfMiningSpot(index);
                }
            case RADAR_SPHERE:
                return SphereRadar_GetXCoordOfBuriedSphere(index);
            case RADAR_TRAP:
                return TrapRadar_GetXCoordOfBuriedTrap(index);
            case RADAR_TREASURE:
                return TreasureRadar_GetXCoordOfMiningSpot(index);
            }
        } else {
            SecretBase *secretBase = SaveData_GetSecretBase(sUndergroundMan->fieldSystem->saveData);
            return SecretBase_GetEntranceXCoord(secretBase);
        }
    }

    return 0;
}

int UndergroundMan_GetRadarItemZCoord(int index)
{
    if (sUndergroundMan) {
        if (index < MAX_RADAR_BLIPS) {
            switch (sUndergroundMan->activeRadar) {
            case RADAR_NONE:
                return 0;
            case RADAR_NORMAL:
                if (index < MAX_NORMAL_RADAR_BLIPS) {
                    return NormalRadar_GetZCoordOfMiningSpot(index);
                }
            case RADAR_SPHERE:
                return SphereRadar_GetZCoordOfBuriedSphere(index);
            case RADAR_TRAP:
                return TrapRadar_GetZCoordOfBuriedTrap(index);
            case RADAR_TREASURE:
                return TreasureRadar_GetZCoordOfMiningSpot(index);
            }
        } else {
            SecretBase *secretBase = SaveData_GetSecretBase(sUndergroundMan->fieldSystem->saveData);
            return SecretBase_GetEntranceZCoord(secretBase);
        }
    }

    return 0;
}

int UndergroundMan_GetRadarItemAnimID(int index)
{
    if (sUndergroundMan) {
        if (index < MAX_RADAR_BLIPS) {
            switch (sUndergroundMan->activeRadar) {
            case RADAR_NORMAL:
                if (index < MAX_NORMAL_RADAR_BLIPS) {
                    return MARKER_ANIM_MINING_SPOT;
                }
            case RADAR_SPHERE:
                return MARKER_ANIM_SPHERE;
            case RADAR_TRAP:
                return MARKER_ANIM_TRAP;
            case RADAR_TREASURE:
                return MARKER_ANIM_MINING_SPOT;
            }
        } else {
            SecretBase *secretBase = SaveData_GetSecretBase(sUndergroundMan->fieldSystem->saveData);

            if (SecretBase_IsActive(secretBase)) {
                return MARKER_ANIM_SECRET_BASE;
            }
        }
    }

    return 0;
}

void UndergroundMan_DeactivateRadar(void)
{
    sUndergroundMan->activeRadar = RADAR_NONE;
}

void UndergroundMan_SetNormalRadarActive(void)
{
    sUndergroundMan->activeRadar = RADAR_NORMAL;
}

void UndergroundMan_SetSphereRadarActive(void)
{
    sUndergroundMan->activeRadar = RADAR_SPHERE;
}

void UndergroundMan_SetTrapRadarActive(void)
{
    sUndergroundMan->activeRadar = RADAR_TRAP;
}

void UndergroundMan_SetTreasureRadarActive(void)
{
    sUndergroundMan->activeRadar = RADAR_TREASURE;
}

void UndergroundMan_SetLinkTalkedTo(int netID, int targetNetID)
{
    if (sUndergroundMan) {
        sUndergroundMan->linksTalkedTo[netID] = targetNetID;
    }
}

void UndergroundMan_QueueTalkedToVendorMessage(int netID)
{
    if (sUndergroundMan) {
        sUndergroundMan->talkedToVendorMessagesQueued[netID] = TRUE;
    }
}

void UndergroundMan_SetLeftUndergroundMessage(int netID)
{
    if (sUndergroundMan) {
        if (sUndergroundMan->leftUndergroundMessages[netID] == NULL) {
            sUndergroundMan->leftUndergroundMessages[netID] = String_Init(50 * 2, HEAP_ID_COMMUNICATION);

            StringTemplate *template = StringTemplate_Default(HEAP_ID_FIELD2);
            String *fmtString = String_Init(50 * 2, HEAP_ID_FIELD2);

            StringTemplate_SetPlayerName(template, 0, CommInfo_TrainerInfo(netID));
            MessageLoader_GetString(UndergroundTextPrinter_GetMessageLoader(UndergroundMan_GetCommonTextPrinter()), UndergroundCommon_Text_PlayerLeftUnderground, fmtString);
            StringTemplate_Format(template, sUndergroundMan->leftUndergroundMessages[netID], fmtString);
            String_Free(fmtString);
            StringTemplate_Free(template);
        }
    }
}

void UndergroundMan_SetPlayerLeft(int netID)
{
    sUndergroundMan->hasPlayerLeft[netID] = TRUE;
}

void UndergroundMan_SetStoredPosKey(u16 key)
{
    sUndergroundMan->storedPositionKey = key;
}

void UndergroundMan_StoreCursorAndListPos(u16 menuKey, u16 cursorPos, u16 listPos)
{
    int i;

    if (sUndergroundMan->storedPositionKey == UNDERGROUND_STORED_POS_NONE) {
        return;
    }

    for (i = 0; i < MAX_STORED_MENU_POSITIONS; i++) {
        if (sUndergroundMan->storedPositionKey == sUndergroundMan->storedPositions[i].key) {
            if (sUndergroundMan->storedPositions[i].menuKey == menuKey) {
                sUndergroundMan->storedPositions[i].cursorPos = cursorPos;
                sUndergroundMan->storedPositions[i].listPos = listPos;
                return;
            }
        }
    }

    for (i = 0; i < MAX_STORED_MENU_POSITIONS; i++) {
        if (sUndergroundMan->storedPositions[i].key == UNDERGROUND_STORED_POS_NONE) {
            sUndergroundMan->storedPositions[i].key = sUndergroundMan->storedPositionKey;
            sUndergroundMan->storedPositions[i].menuKey = menuKey;
            sUndergroundMan->storedPositions[i].cursorPos = cursorPos;
            sUndergroundMan->storedPositions[i].listPos = listPos;
            return;
        }
    }

    GF_ASSERT(FALSE);
}

u16 UndergroundMan_GetStoredListPos(u16 menuKey)
{
    for (int i = 0; i < MAX_STORED_MENU_POSITIONS; i++) {
        if (sUndergroundMan->storedPositionKey == sUndergroundMan->storedPositions[i].key) {
            if (sUndergroundMan->storedPositions[i].menuKey == menuKey) {
                return sUndergroundMan->storedPositions[i].listPos;
            }
        }
    }

    return 0;
}

u16 UndergroundMan_GetStoredCursorPos(u16 menuKey)
{
    for (int i = 0; i < MAX_STORED_MENU_POSITIONS; i++) {
        if (sUndergroundMan->storedPositionKey == sUndergroundMan->storedPositions[i].key) {
            if (sUndergroundMan->storedPositions[i].menuKey == menuKey) {
                return sUndergroundMan->storedPositions[i].cursorPos;
            }
        }
    }

    return 0;
}

void UndergroundMan_ProcessVendorTalkRequest(int unused0, int unused1, void *data, void *unused3)
{
    u8 *buffer = data;
    int netID = *buffer;

    if (netID == CommSys_CurNetId()) {
        UndergroundVendors_StartShopMenuTask(sUndergroundMan->fieldSystem);
        CommSys_SendMessage(25);
        CommPlayerMan_PauseFieldSystem();
    }
}

void UndergroundMan_SetCurrentSysTask(void *ctx, SysTask *sysTask, EndSysTaskFunc endFunc)
{
    sUndergroundMan->currentSysTaskCtx = ctx;
    sUndergroundMan->currentSysTask = sysTask;
    sUndergroundMan->endCurrentSysTask = endFunc;
}

void UndergroundMan_ClearCurrentSysTaskInfo(void)
{
    sUndergroundMan->currentSysTaskCtx = NULL;
    sUndergroundMan->currentSysTask = NULL;
    sUndergroundMan->endCurrentSysTask = NULL;
}

BOOL UndergroundMan_ForceEndCurrentSysTask(void)
{
    BOOL taskEnded = FALSE;

    if (sUndergroundMan->currentSysTask) {
        sUndergroundMan->endCurrentSysTask(sUndergroundMan->currentSysTask, sUndergroundMan->currentSysTaskCtx);
        UndergroundMan_ClearCurrentSysTaskInfo();
        taskEnded = TRUE;
    }

    UndergroundMan_RemovePrinters();
    UndergroundTextPrinter_EraseMessageBoxWindow(sUndergroundMan->commonTextPrinter);
    UndergroundTextPrinter_EraseMessageBoxWindow(sUndergroundMan->captureFlagTextPrinter);
    UndergroundTextPrinter_EraseMessageBoxWindow(sUndergroundMan->miscTextPrinter);
    UndergroundTextPrinter_EraseMessageBoxWindow(sUndergroundMan->baseDecorationTextPrinter);
    UndergroundTextPrinter_EraseMessageBoxWindow(sUndergroundMan->itemNameTextPrinter);
    UndergroundTextPrinter_EraseMessageBoxWindow(sUndergroundMan->commonTextPrinter);

    return taskEnded;
}

BOOL UndergroundMan_ShouldFieldSystemBeResumed(int netID)
{
    if (sUndergroundMan->currentSysTask) {
        return FALSE;
    }

    if (sUndergroundMan->fieldSystem->task) {
        sUndergroundMan->taskCounter++;

        if (sUndergroundMan->taskCounter > 100) {
            GF_ASSERT(FALSE);
        }

        return FALSE;
    }

    if (UndergroundPlayer_IsAffectedByTrap(netID)) {
        return FALSE;
    }

    int x = CommPlayer_GetX(netID);
    int z = CommPlayer_GetZ(netID);

    if (UndergroundMan_AreCoordinatesInSecretBase(x, z) && netID != 0) {
        return FALSE;
    }

    sUndergroundMan->taskCounter = 0;

    return TRUE;
}

static void UndergroundMan_ClearPrinterIDsTask(SysTask *unused0, void *unused1)
{
    UndergroundTextPrinter_ClearPrinterID(sUndergroundMan->commonTextPrinter);
    UndergroundTextPrinter_ClearPrinterID(sUndergroundMan->captureFlagTextPrinter);
    UndergroundTextPrinter_ClearPrinterID(sUndergroundMan->miscTextPrinter);
    UndergroundTextPrinter_ClearPrinterID(sUndergroundMan->baseDecorationTextPrinter);
    UndergroundTextPrinter_ClearPrinterID(sUndergroundMan->itemNameTextPrinter);
}

void UndergroundMan_SendPlayerState(void)
{
    UndergroundPlayerState playerState = {
        .baseReturnX = SecretBases_GetCurrentBaseReturnXCoord(),
        .baseReturnZ = SecretBases_GetCurrentBaseReturnZCoord(),
        .baseReturnDir = SecretBases_GetCurrentBaseReturnDir(),
        .isMining = Mining_IsMiningGameTaskActive()
    };

    CommSys_SendDataFixedSize(70, &playerState);
}

void UndergroundMan_ProcessPlayerState(int netID, int unused1, void *data, void *unused3)
{
    UndergroundPlayerState *playerState = data;

    SecretBases_SetBaseReturnXCoord(netID, playerState->baseReturnX);
    SecretBases_SetBaseReturnZCoord(netID, playerState->baseReturnZ);
    SecretBases_SetBaseReturnDir(netID, playerState->baseReturnDir);
    Mining_SetPlayerMiningStatus(netID, playerState->isMining);
}

int CommPacketSizeOf_UndergroundPlayerState(void)
{
    return sizeof(UndergroundPlayerState);
}

void UndergroundMan_ProcessAllDataSentMessage(int netID, int unused1, void *unused2, void *unused3)
{
    sUndergroundMan->initialized[netID] = TRUE;
}

static int UndergroundMan_CountInitializedPlayers(void)
{
    int count = 0;

    for (int netID = 0; netID < MAX_CONNECTED_PLAYERS; netID++) {
        if (sUndergroundMan->initialized[netID]) {
            count++;
        }
    }

    return count;
}

static void UndergroundMan_DisconnectCallback(int netID)
{
    sUndergroundMan->initialized[netID] = FALSE;
    SecretBases_ClearBaseEntranceData(netID);
}
