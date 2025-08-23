#include "field/field_system.h"

#include <nitro.h>
#include <string.h>

#include "constants/field/map_load.h"
#include "constants/heap.h"
#include "generated/map_headers.h"
#include "generated/signpost_commands.h"

#include "applications/poketch/poketch_system.h"
#include "field/field_system_sub2_t.h"
#include "game_opening/const_ov77_021D742C.h"
#include "overlay005/field_control.h"
#include "overlay005/fieldmap.h"
#include "overlay005/map_name_popup.h"
#include "overlay005/ov5_021DFB54.h"
#include "overlay005/ov5_021EA714.h"
#include "overlay005/signpost.h"

#include "bag.h"
#include "bg_window.h"
#include "comm_player_manager.h"
#include "communication_system.h"
#include "field_map_change.h"
#include "field_overworld_state.h"
#include "field_system.h"
#include "field_task.h"
#include "game_overlay.h"
#include "heap.h"
#include "main.h"
#include "map_header_data.h"
#include "map_matrix.h"
#include "overlay_manager.h"
#include "pokedex_memory.h"
#include "pokeradar.h"
#include "savedata.h"
#include "system.h"
#include "unk_0205F180.h"
#include "unk_0209C370.h"

FS_EXTERN_OVERLAY(overlay5);
FS_EXTERN_OVERLAY(game_opening);

static BOOL InitFieldSystemContinue(ApplicationManager *appMan, int *state);
static BOOL InitFieldSystemNewGame(ApplicationManager *appMan, int *state);
static BOOL ExecuteFieldProcesses(ApplicationManager *appMan, int *state);
static BOOL ReturnToTitleScreen(ApplicationManager *appMan, int *state);
static FieldSystem *InitFieldSystem(ApplicationManager *appMan);
static void TeardownFieldSystem(ApplicationManager *appMan);
static void ExecuteAndCleanupIfDone(ApplicationManager **appManPtr);
static BOOL HandleInputsEventsAndProcesses(FieldSystem *fieldSystem);
static void HandleFieldInput(FieldSystem *fieldSystem);

static FieldSystem *sFieldSystem;

static BOOL InitFieldSystemContinue(ApplicationManager *appMan, int *state)
{
    ApplicationArgs *argv = ApplicationManager_Args(appMan);
    sFieldSystem = InitFieldSystem(appMan);

    if (argv->error) {
        FieldSystem_StartLoadMapFromErrorTask(sFieldSystem);
    } else {
        FieldSystem_SetLoadSavedGameMapTask(sFieldSystem);
    }

    argv->error = FALSE;
    return TRUE;
}

static BOOL InitFieldSystemNewGame(ApplicationManager *appMan, int *state)
{
    sFieldSystem = InitFieldSystem(appMan);
    FieldSystem_SetLoadNewGameSpawnTask(sFieldSystem);
    return TRUE;
}

static BOOL ExecuteFieldProcesses(ApplicationManager *appMan, int *state)
{
    if (HandleInputsEventsAndProcesses(ApplicationManager_Data(appMan))) {
        return TRUE;
    } else {
        return FALSE;
    }
}

static BOOL ReturnToTitleScreen(ApplicationManager *appMan, int *state)
{
    TeardownFieldSystem(appMan);
    EnqueueApplication(FS_OVERLAY_ID(game_opening), &gTitleScreenAppTemplate);
    return TRUE;
}

const ApplicationManagerTemplate gFieldSystemNewGameTemplate = {
    .init = InitFieldSystemNewGame,
    .main = ExecuteFieldProcesses,
    .exit = ReturnToTitleScreen,
    .overlayID = FS_OVERLAY_ID_NONE,
};

const ApplicationManagerTemplate gFieldSystemContinueTemplate = {
    .init = InitFieldSystemContinue,
    .main = ExecuteFieldProcesses,
    .exit = ReturnToTitleScreen,
    .overlayID = FS_OVERLAY_ID_NONE,
};

void FieldSystem_StartFieldMapInner(FieldSystem *fieldSystem)
{
    GF_ASSERT(fieldSystem->processManager->child == NULL);
    GF_ASSERT(fieldSystem->processManager->parent == NULL);
    Overlay_LoadByID(FS_OVERLAY_ID(overlay5), OVERLAY_LOAD_ASYNC);

    fieldSystem->runningFieldMap = FALSE;
    fieldSystem->processManager->pause = FALSE;
    fieldSystem->processManager->parent = ApplicationManager_New(&gFieldMapTemplate, fieldSystem, HEAP_ID_FIELDMAP);
}

void FieldSystem_FlagNotRunningFieldMap(FieldSystem *fieldSystem)
{
    fieldSystem->runningFieldMap = FALSE;
}

BOOL FieldSystem_HasParentProcess(FieldSystem *fieldSystem)
{
    return fieldSystem->processManager->parent != NULL;
}

BOOL FieldSystem_IsRunningFieldMapInner(FieldSystem *fieldSystem)
{
    return fieldSystem->processManager->parent != NULL && fieldSystem->runningFieldMap;
}

BOOL FieldSystem_HasChildProcess(FieldSystem *fieldSystem)
{
    return fieldSystem->processManager->child != NULL;
}

void FieldSystem_StartChildProcess(FieldSystem *fieldSystem, const ApplicationManagerTemplate *appTemplate, void *appArgs)
{
    GF_ASSERT(fieldSystem->processManager->child == NULL);
    FieldSystem_FlagNotRunningFieldMap(fieldSystem);
    fieldSystem->processManager->child = ApplicationManager_New(appTemplate, appArgs, HEAP_ID_FIELDMAP);
}

static FieldSystem *InitFieldSystem(ApplicationManager *appMan)
{
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_FIELDMAP, HEAP_SIZE_FIELDMAP);
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_FIELD_TASK, HEAP_SIZE_FIELD_TASK);
    Heap_Create(HEAP_ID_SYSTEM, HEAP_ID_91, 0x300);

    FieldSystem *fieldSystem = ApplicationManager_NewData(appMan, sizeof(FieldSystem), HEAP_ID_FIELDMAP);
    MI_CpuClear8(fieldSystem, sizeof(FieldSystem));

    fieldSystem->processManager = Heap_AllocFromHeap(HEAP_ID_FIELDMAP, sizeof(FieldProcessManager));
    fieldSystem->processManager->parent = NULL;
    fieldSystem->processManager->child = NULL;
    fieldSystem->processManager->pause = FALSE;
    fieldSystem->processManager->kill = FALSE;
    fieldSystem->saveData = ((ApplicationArgs *)ApplicationManager_Args(appMan))->saveData;
    fieldSystem->task = NULL;
    fieldSystem->location = FieldOverworldState_GetPlayerLocation(SaveData_GetFieldOverworldState(fieldSystem->saveData));
    fieldSystem->mapMatrix = MapMatrix_New();

    MapHeaderData_Init(fieldSystem, HEAP_ID_FIELDMAP);

    fieldSystem->bagCursor = BagCursor_New(HEAP_ID_FIELDMAP);

    fieldSystem->chain = RadarChain_Init(HEAP_ID_FIELDMAP);
    RadarChain_Clear(fieldSystem->chain);

    fieldSystem->pokedexMemory = PokedexMemory_New(HEAP_ID_FIELDMAP);
    fieldSystem->battleSubscreenCursorOn = sub_0209C370(HEAP_ID_FIELDMAP);

    return fieldSystem;
}

static void TeardownFieldSystem(ApplicationManager *appMan)
{
    FieldSystem *fieldSystem = ApplicationManager_Data(appMan);

    MapMatrix_Free(fieldSystem->mapMatrix);
    MapHeaderData_Free(fieldSystem);
    Heap_Free(fieldSystem->bagCursor);
    RadarChain_Free(fieldSystem->chain);
    PokedexMemory_Free(fieldSystem->pokedexMemory);
    sub_0209C388(fieldSystem->battleSubscreenCursorOn);

    Heap_Free(fieldSystem->processManager);
    ApplicationManager_FreeData(appMan);
    Heap_Destroy(HEAP_ID_91);
    Heap_Destroy(HEAP_ID_FIELDMAP);
    Heap_Destroy(HEAP_ID_FIELD_TASK);
}

static void ExecuteAndCleanupIfDone(ApplicationManager **appManPtr)
{
    if (*appManPtr && ApplicationManager_Exec(*appManPtr)) {
        ApplicationManager_Free(*appManPtr);
        *appManPtr = NULL;
    }
}

static BOOL HandleInputsEventsAndProcesses(FieldSystem *fieldSystem)
{
    HandleFieldInput(fieldSystem);
    if (FieldTask_Run(fieldSystem) == TRUE && fieldSystem->unk_04 != NULL) {
        FieldSystem_SendPoketchEvent(fieldSystem, POKETCH_EVENT_SLEEP, 0);
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
        && !fieldSystem->task
        && !fieldSystem->processManager->parent
        && !fieldSystem->processManager->child) {
        return TRUE;
    }

    return FALSE;
}

static void HandleFieldInput(FieldSystem *fieldSystem)
{
    BOOL processInput = FALSE;
    if (!fieldSystem->processManager->pause && fieldSystem->runningFieldMap && FieldSystem_IsRunningTask(fieldSystem) == FALSE) {
        processInput = TRUE;
    }

    FieldInput fieldInput;
    if (processInput) {
        sub_0205F490(fieldSystem->playerAvatar);
        FieldInput_Update(&fieldInput, fieldSystem, gSystem.pressedKeys, gSystem.heldKeys);
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
                PlayerAvatar_MoveControl(fieldSystem->playerAvatar, fieldSystem->landDataMan, -1, fieldInput.pressedKeys, fieldInput.heldKeys, 0);
            }
        }
        break;

    case MAP_LOAD_TYPE_BATTLE_TOWER:
        if (processInput) {
            if (FieldInput_Process_BattleTower(&fieldInput, fieldSystem) == TRUE) {
                MapNamePopUp_Hide(fieldSystem->unk_04->unk_08);
                Signpost_DoCommand(fieldSystem, SIGNPOST_CMD_REMOVE);
                ov5_021E0EEC(fieldSystem->playerAvatar);
                FieldSystem_SendPoketchEvent(fieldSystem, POKETCH_EVENT_SLEEP, 1);
            } else {
                if (gSystem.pressedKeys & PAD_BUTTON_A) {
                    MapNamePopUp_Hide(fieldSystem->unk_04->unk_08);
                }

                BOOL tappedPoketch = FALSE;
                PoketchSystem *poketchSys = FieldSystem_GetPoketchSystem();
                if (poketchSys != NULL) {
                    tappedPoketch = PoketchSystem_IsTapped(poketchSys);
                }

                PlayerAvatar_MoveControl(fieldSystem->playerAvatar, fieldSystem->landDataMan, -1, fieldInput.pressedKeys, fieldInput.heldKeys, tappedPoketch);
            }
        }
        break;

    default:
        if (processInput) {
            if (FieldInput_Process(&fieldInput, fieldSystem) == TRUE) {
                MapNamePopUp_Hide(fieldSystem->unk_04->unk_08);
                Signpost_DoCommand(fieldSystem, SIGNPOST_CMD_REMOVE);
                sub_0205F56C(fieldSystem->playerAvatar);
                ov5_021E0EEC(fieldSystem->playerAvatar);
                FieldSystem_SendPoketchEvent(fieldSystem, POKETCH_EVENT_SLEEP, 1);
            } else {
                if (gSystem.pressedKeys & PAD_BUTTON_A) {
                    MapNamePopUp_Hide(fieldSystem->unk_04->unk_08);
                }

                BOOL tappedPoketch = 0;
                PoketchSystem *poketchSys = FieldSystem_GetPoketchSystem();
                if (poketchSys != NULL) {
                    tappedPoketch = PoketchSystem_IsTapped(poketchSys);
                }

                PlayerAvatar_MoveControl(fieldSystem->playerAvatar, fieldSystem->landDataMan, -1, fieldInput.pressedKeys, fieldInput.heldKeys, tappedPoketch);
            }
        }
        break;
    }
}

void FieldSystem_PauseProcessing(void)
{
    sFieldSystem->processManager->pause = TRUE;
    CommSys_DisableSendMovementData();
}

void FieldSystem_ResumeProcessing(void)
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

BgConfig *FieldSystem_GetBgConfig(void *fieldSystem)
{
    return ((FieldSystem *)fieldSystem)->bgConfig;
}

SaveData *FieldSystem_GetSaveData(void *fieldSystem)
{
    return ((FieldSystem *)fieldSystem)->saveData;
}
