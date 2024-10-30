#include "field/field_system.h"

#include <nitro.h>
#include <string.h>

#include "constants/field/map_load.h"
#include "constants/heap.h"
#include "consts/map.h"

#include "field/field_system_sub2_t.h"
#include "overlay005/const_ov5_021F89B0.h"
#include "overlay005/field_control.h"
#include "overlay005/ov5_021DD6FC.h"
#include "overlay005/ov5_021DFB54.h"
#include "overlay005/ov5_021E1B08.h"
#include "overlay005/ov5_021EA714.h"
#include "overlay025/poketch_system.h"
#include "overlay077/const_ov77_021D742C.h"

#include "bag.h"
#include "bg_window.h"
#include "comm_player_manager.h"
#include "communication_system.h"
#include "core_sys.h"
#include "field_map_change.h"
#include "field_overworld_state.h"
#include "field_system.h"
#include "game_overlay.h"
#include "heap.h"
#include "main.h"
#include "map_header_data.h"
#include "overlay_manager.h"
#include "pokeradar.h"
#include "savedata.h"
#include "unk_02039C80.h"
#include "unk_020508D4.h"
#include "unk_0205F180.h"
#include "unk_0209ACBC.h"
#include "unk_0209C370.h"

FS_EXTERN_OVERLAY(overlay5);
FS_EXTERN_OVERLAY(overlay77);

static BOOL InitFieldSystemContinue(OverlayManager *ovyManager, int *state);
static BOOL InitFieldSystemNewGame(OverlayManager *ovyManager, int *state);
static BOOL ExecuteFieldProcesses(OverlayManager *ovyManager, int *state);
static BOOL ReturnToTitleScreen(OverlayManager *ovyManager, int *state);
static FieldSystem *InitFieldSystem(OverlayManager *ovyManager);
static void TeardownFieldSystem(OverlayManager *ovyManager);
static void ExecuteAndCleanupIfDone(OverlayManager **ovyManagerPtr);
static BOOL HandleInputsEventsAndProcesses(FieldSystem *fieldSystem);
static void HandleFieldInput(FieldSystem *fieldSystem);

static FieldSystem *sFieldSystem;

static BOOL InitFieldSystemContinue(OverlayManager *ovyManager, int *state)
{
    ApplicationArgs *argv = OverlayManager_Args(ovyManager);
    sFieldSystem = InitFieldSystem(ovyManager);

    if (argv->error) {
        FieldSystem_StartLoadMapFromErrorTask(sFieldSystem);
    } else {
        FieldSystem_SetLoadSavedGameMapTask(sFieldSystem);
    }

    argv->error = FALSE;
    return TRUE;
}

static BOOL InitFieldSystemNewGame(OverlayManager *ovyManager, int *state)
{
    sFieldSystem = InitFieldSystem(ovyManager);
    FieldSystem_SetLoadNewGameSpawnTask(sFieldSystem);
    return TRUE;
}

static BOOL ExecuteFieldProcesses(OverlayManager *ovyManager, int *state)
{
    if (HandleInputsEventsAndProcesses(OverlayManager_Data(ovyManager))) {
        return TRUE;
    } else {
        return FALSE;
    }
}

static BOOL ReturnToTitleScreen(OverlayManager *ovyManager, int *state)
{
    TeardownFieldSystem(ovyManager);
    EnqueueApplication(FS_OVERLAY_ID(overlay77), &Unk_ov77_021D742C);
    return TRUE;
}

const OverlayManagerTemplate gFieldSystemNewGameTemplate = {
    .init = InitFieldSystemNewGame,
    .main = ExecuteFieldProcesses,
    .exit = ReturnToTitleScreen,
    .overlayID = FS_OVERLAY_ID_NONE,
};

const OverlayManagerTemplate gFieldSystemContinueTemplate = {
    .init = InitFieldSystemContinue,
    .main = ExecuteFieldProcesses,
    .exit = ReturnToTitleScreen,
    .overlayID = FS_OVERLAY_ID_NONE,
};

void sub_0203CD00(FieldSystem *fieldSystem)
{
    GF_ASSERT(fieldSystem->processManager->child == NULL);
    GF_ASSERT(fieldSystem->processManager->parent == NULL);
    Overlay_LoadByID(FS_OVERLAY_ID(overlay5), 2);

    fieldSystem->unk_68 = 0;
    fieldSystem->processManager->pause = 0;
    fieldSystem->processManager->parent = OverlayManager_New(&gFieldMapTemplate, fieldSystem, HEAP_ID_FIELDMAP);
}

void sub_0203CD44(FieldSystem *fieldSystem)
{
    fieldSystem->unk_68 = 0;
}

BOOL sub_0203CD4C(FieldSystem *fieldSystem)
{
    return fieldSystem->processManager->parent != NULL;
}

BOOL sub_0203CD5C(FieldSystem *fieldSystem)
{
    if ((fieldSystem->processManager->parent != NULL) && fieldSystem->unk_68) {
        return 1;
    } else {
        return 0;
    }
}

BOOL sub_0203CD74(FieldSystem *fieldSystem)
{
    return fieldSystem->processManager->child != NULL;
}

void sub_0203CD84(FieldSystem *fieldSystem, const OverlayManagerTemplate *param1, void *param2)
{
    GF_ASSERT(fieldSystem->processManager->child == NULL);
    sub_0203CD44(fieldSystem);
    fieldSystem->processManager->child = OverlayManager_New(param1, param2, HEAP_ID_FIELDMAP);
}

static FieldSystem *InitFieldSystem(OverlayManager *ovyManager)
{
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_FIELDMAP, HEAP_SIZE_FIELDMAP);
    Heap_Create(HEAP_ID_APPLICATION, 32, 0x4000);
    Heap_Create(HEAP_ID_SYSTEM, 91, 0x300);

    FieldSystem *fieldSystem = OverlayManager_NewData(ovyManager, sizeof(FieldSystem), HEAP_ID_FIELDMAP);
    MI_CpuClear8(fieldSystem, sizeof(FieldSystem));

    fieldSystem->processManager = Heap_AllocFromHeap(HEAP_ID_FIELDMAP, sizeof(FieldProcessManager));
    fieldSystem->processManager->parent = NULL;
    fieldSystem->processManager->child = NULL;
    fieldSystem->processManager->pause = FALSE;
    fieldSystem->processManager->kill = FALSE;
    fieldSystem->saveData = ((ApplicationArgs *)OverlayManager_Args(ovyManager))->saveData;
    fieldSystem->taskManager = NULL;
    fieldSystem->location = sub_0203A720(SaveData_GetFieldOverworldState(fieldSystem->saveData));
    fieldSystem->unk_2C = sub_02039D6C();

    MapHeaderData_Init(fieldSystem, HEAP_ID_FIELDMAP);

    fieldSystem->unk_98 = sub_0207D99C(HEAP_ID_FIELDMAP);

    fieldSystem->chain = RadarChain_Init(HEAP_ID_FIELDMAP);
    RadarChain_Clear(fieldSystem->chain);

    fieldSystem->unk_B4 = sub_0209ACBC(HEAP_ID_FIELDMAP);
    fieldSystem->unk_BC = sub_0209C370(HEAP_ID_FIELDMAP);

    return fieldSystem;
}

static void TeardownFieldSystem(OverlayManager *ovyManager)
{
    FieldSystem *fieldSystem = OverlayManager_Data(ovyManager);

    sub_02039DE4(fieldSystem->unk_2C);
    MapHeaderData_Free(fieldSystem);
    Heap_FreeToHeap(fieldSystem->unk_98);
    RadarChain_Free(fieldSystem->chain);
    sub_0209ACDC(fieldSystem->unk_B4);
    sub_0209C388(fieldSystem->unk_BC);

    Heap_FreeToHeap(fieldSystem->processManager);
    OverlayManager_FreeData(ovyManager);
    Heap_Destroy(91);
    Heap_Destroy(HEAP_ID_FIELDMAP);
    Heap_Destroy(32);
}

static void ExecuteAndCleanupIfDone(OverlayManager **ovyManagerPtr)
{
    if (*ovyManagerPtr && OverlayManager_Exec(*ovyManagerPtr)) {
        OverlayManager_Free(*ovyManagerPtr);
        *ovyManagerPtr = NULL;
    }
}

static BOOL HandleInputsEventsAndProcesses(FieldSystem *fieldSystem)
{
    HandleFieldInput(fieldSystem);
    if (sub_02050958(fieldSystem) == TRUE && fieldSystem->unk_04 != NULL) {
        ov5_021EA714(fieldSystem, POKETCH_EVENT_SLEEP, 0);
    }

    if (fieldSystem->processManager->parent) {
        ExecuteAndCleanupIfDone(&fieldSystem->processManager->parent);

        if (fieldSystem->processManager->parent == NULL) {
            Overlay_UnloadByID(FS_OVERLAY_ID(overlay5));
        }
    } else if (fieldSystem->processManager->child) {
        ExecuteAndCleanupIfDone(&fieldSystem->processManager->child);
    }

    // Does not match with return (expression)
    if (fieldSystem->processManager->kill
        && !fieldSystem->taskManager
        && !fieldSystem->processManager->parent
        && !fieldSystem->processManager->child) {
        return TRUE;
    }

    return FALSE;
}

static void HandleFieldInput(FieldSystem *fieldSystem)
{
    BOOL processInput = FALSE;
    if (!fieldSystem->processManager->pause && fieldSystem->unk_68 && sub_020509A4(fieldSystem) == FALSE) {
        processInput = TRUE;
    }

    FieldInput fieldInput;
    if (processInput) {
        sub_0205F490(fieldSystem->playerAvatar);
        FieldInput_Update(&fieldInput, fieldSystem, gCoreSys.pressedKeys, gCoreSys.heldKeys);
    }

    enum MapLoadType loadType = fieldSystem->mapLoadType;
    if (fieldSystem->location->mapId == MAP_HEADER_BATTLE_TOWER) {
        loadType = MAP_LOAD_TYPE_OVERWORLD;
    }

    switch (loadType) {
    case MAP_LOAD_TYPE_UNDERGROUND:
        if (processInput && sub_02058C40()) {
            FieldInput_Process_Underground(&fieldInput, fieldSystem);
        }

        sub_0205805C(fieldSystem, processInput);
        break;

    case MAP_LOAD_TYPE_COLOSSEUM:
        if (processInput) {
            if (sub_02058C40()) {
                if (FieldInput_Process_Colosseum(&fieldInput, fieldSystem) == TRUE) {
                    processInput = FALSE;
                }
            } else {
                processInput = FALSE;
            }
        }

        sub_0205805C(fieldSystem, processInput);
        break;

    case MAP_LOAD_TYPE_UNION:
        if (processInput) {
            if (FieldInput_Process_UnionRoom(&fieldInput, fieldSystem) != TRUE) {
                PlayerAvatar_MoveControl(fieldSystem->playerAvatar, fieldSystem->unk_28, -1, fieldInput.pressedKeys, fieldInput.heldKeys, 0);
            }
        }
        break;

    case MAP_LOAD_TYPE_BATTLE_TOWER:
        if (processInput) {
            if (FieldInput_Process_BattleTower(&fieldInput, fieldSystem) == TRUE) {
                ov5_021DDA78(fieldSystem->unk_04->unk_08);
                ov5_021E1BCC(fieldSystem, 4);
                ov5_021E0EEC(fieldSystem->playerAvatar);
                ov5_021EA714(fieldSystem, 0, 1);
            } else {
                if (gCoreSys.pressedKeys & PAD_BUTTON_A) {
                    ov5_021DDA78(fieldSystem->unk_04->unk_08);
                }

                BOOL tappedPoketch = FALSE;
                PoketchSystem *poketchSys = FieldSystem_GetPoketchSystem();
                if (poketchSys != NULL) {
                    tappedPoketch = PoketchSystem_IsTapped(poketchSys);
                }

                PlayerAvatar_MoveControl(fieldSystem->playerAvatar, fieldSystem->unk_28, -1, fieldInput.pressedKeys, fieldInput.heldKeys, tappedPoketch);
            }
        }
        break;

    default:
        if (processInput) {
            if (FieldInput_Process(&fieldInput, fieldSystem) == TRUE) {
                ov5_021DDA78(fieldSystem->unk_04->unk_08);
                ov5_021E1BCC(fieldSystem, 4);
                sub_0205F56C(fieldSystem->playerAvatar);
                ov5_021E0EEC(fieldSystem->playerAvatar);
                ov5_021EA714(fieldSystem, 0, 1);
            } else {
                if (gCoreSys.pressedKeys & PAD_BUTTON_A) {
                    ov5_021DDA78(fieldSystem->unk_04->unk_08);
                }

                BOOL tappedPoketch = 0;
                PoketchSystem *poketchSys = FieldSystem_GetPoketchSystem();
                if (poketchSys != NULL) {
                    tappedPoketch = PoketchSystem_IsTapped(poketchSys);
                }

                PlayerAvatar_MoveControl(fieldSystem->playerAvatar, fieldSystem->unk_28, -1, fieldInput.pressedKeys, fieldInput.heldKeys, tappedPoketch);
            }
        }
        break;
    }
}

void sub_0203D128(void)
{
    sFieldSystem->processManager->pause = TRUE;
    CommSys_DisableSendMovementData();
}

void sub_0203D140(void)
{
    sFieldSystem->processManager->pause = FALSE;
    CommSys_EnableSendMovementData();
}

struct PoketchSystem *FieldSystem_GetPoketchSystem(void)
{
    if (sFieldSystem->unk_04 == NULL) {
        return NULL;
    }

    return sFieldSystem->unk_04->poketchSys;
}

BgConfig *sub_0203D170(void *param0)
{
    FieldSystem *fieldSystem = (FieldSystem *)param0;
    return fieldSystem->bgConfig;
}

SaveData *FieldSystem_SaveData(void *param0)
{
    return ((FieldSystem *)param0)->saveData;
}
