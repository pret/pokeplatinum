#include <nitro.h>
#include <nitro/sinit.h>

#include "applications/poketch/poketch_button.h"
#include "applications/poketch/poketch_system.h"
#include "applications/poketch/trainer_counter/graphics.h"
#include "field/field_system_decl.h"
#include "overlay006/radar_chain_records.h"

#include "bg_window.h"
#include "heap.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "touch_screen.h"

typedef struct PoketchTrainerCounter {
    u8 state;
    u8 subState;
    u8 shouldExit;
    TrainerCounterData chainData;
    TrainerCounterGraphics *graphics;
    PoketchSystem *poketchSys;
    PoketchButtonManager *buttonManager;
    enum ButtonManagerState buttonState;
    u32 pressedIcon;
} PoketchTrainerCounter;

typedef BOOL (*StateFunc)(PoketchTrainerCounter *);

enum TrainerCounterState {
    STATE_LOAD_APP = 0,
    STATE_UPDATE_LOOP,
    STATE_SHUTDOWN,
};

static void NitroStaticInit(void);

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static BOOL Init(PoketchTrainerCounter *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static void Free(PoketchTrainerCounter *appData);
static void Exit(void *appData);
static void TouchCallback(u32 buttonID, u32 buttonState, u32 touchState, void *appData);

static void Task_Main(SysTask *task, void *appData);
static void ChangeState(PoketchTrainerCounter *appData, enum TrainerCounterState newState);
static BOOL State_LoadApp(PoketchTrainerCounter *appData);
static BOOL State_UpdateApp(PoketchTrainerCounter *appData);
static BOOL State_UnloadApp(PoketchTrainerCounter *appData);

static void NitroStaticInit(void)
{
    PoketchSystem_SetAppFunctions(New, Exit);
}

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    PoketchTrainerCounter *trainerCounter = Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(PoketchTrainerCounter));

    if (trainerCounter != NULL) {
        if (Init(trainerCounter, poketchSys, bgConfig, appID)) {
            if (SysTask_Start(Task_Main, trainerCounter, 1) != NULL) {
                *appData = trainerCounter;
                return TRUE;
            }
        }

        Heap_Free(trainerCounter);
    }

    return FALSE;
}

static BOOL Init(PoketchTrainerCounter *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    static const TouchScreenRect sMonHitboxes[] = {
        { .rect = { .top = 62, .bottom = 98, .left = 88, .right = 136 } },
        { .rect = { .top = 78, .bottom = 114, .left = 152, .right = 200 } },
        { .rect = { .top = 86, .bottom = 122, .left = 24, .right = 72 } }
    };

    FieldSystem *fieldSystem = PoketchSystem_GetFieldSystem(poketchSys);
    appData->chainData.activeChain = RadarChainRecords_GetActiveChain(fieldSystem);

    if (appData->chainData.activeChain) {
        appData->chainData.activeSpecies = GetRadarSpecies(fieldSystem);
    } else {
        appData->chainData.activeSpecies = SPECIES_NONE;
    }

    for (int i = 0; i < NUM_RADAR_RECORDS; i++) {
        appData->chainData.bestChains[i] = RadarChainRecords_GetChainCount(fieldSystem, i);
        appData->chainData.bestChainSpecies[i] = RadarChainRecords_GetSpecies(fieldSystem, i);
    }

    appData->chainData.bestChainsCount = RadarChainRecords_GetNumFilledSlots(fieldSystem);

    if (PoketchTrainerCounterGraphics_New(&appData->graphics, &appData->chainData, bgConfig)) {
        appData->state = STATE_LOAD_APP;
        appData->subState = 0;
        appData->shouldExit = FALSE;
        appData->buttonManager = PoketchButtonManager_New(sMonHitboxes, NELEMS(sMonHitboxes), TouchCallback, appData, HEAP_ID_POKETCH_APP);
        appData->buttonState = BUTTON_MANAGER_STATE_NULL;
        appData->pressedIcon = 0;
        appData->poketchSys = poketchSys;

        return TRUE;
    }

    return FALSE;
}

static void Free(PoketchTrainerCounter *appData)
{
    PoketchButtonManager_Free(appData->buttonManager);
    PoketchTrainerCounterGraphics_Free(appData->graphics);

    Heap_Free(appData);
}

static void Task_Main(SysTask *task, void *appData)
{
    static const StateFunc stateFuncs[] = {
        State_LoadApp,
        State_UpdateApp,
        State_UnloadApp
    };

    PoketchTrainerCounter *trainerCounter = appData;

    if (trainerCounter->state < NELEMS(stateFuncs)) {
        PoketechSystem_UpdateButtonManager(trainerCounter->poketchSys, trainerCounter->buttonManager);

        if (stateFuncs[trainerCounter->state](trainerCounter)) {
            Free(trainerCounter);
            SysTask_Done(task);
            PoketchSystem_NotifyAppUnloaded(trainerCounter->poketchSys);
        }
    }
}

static void Exit(void *appData)
{
    ((PoketchTrainerCounter *)appData)->shouldExit = TRUE;
}

static void TouchCallback(u32 buttonID, u32 buttonState, u32 touchState, void *appData)
{
    PoketchTrainerCounter *trainerCounter = appData;

    trainerCounter->pressedIcon = buttonID;
    trainerCounter->buttonState = buttonState;
}

static void ChangeState(PoketchTrainerCounter *appData, enum TrainerCounterState newState)
{
    if (appData->shouldExit == FALSE) {
        appData->state = newState;
    } else {
        appData->state = STATE_SHUTDOWN;
    }

    appData->subState = 0;
}

static BOOL State_LoadApp(PoketchTrainerCounter *appData)
{
    switch (appData->subState) {
    case 0:
        PoketchTrainerCounterGraphics_StartTask(appData->graphics, TRAINER_COUNTER_GRAPHICS_INIT);
        appData->subState++;
        break;
    case 1:
        if (PoketchTrainerCounterGraphics_TaskIsNotActive(appData->graphics, TRAINER_COUNTER_GRAPHICS_INIT)) {
            PoketchSystem_NotifyAppLoaded(appData->poketchSys);
            ChangeState(appData, STATE_UPDATE_LOOP);
        }
        break;
    }

    return FALSE;
}

static BOOL State_UpdateApp(PoketchTrainerCounter *appData)
{
    if (appData->shouldExit) {
        ChangeState(appData, STATE_SHUTDOWN);
        return FALSE;
    }

    enum Species activeSpecies;

    FieldSystem *fieldSystem = PoketchSystem_GetFieldSystem(appData->poketchSys);
    appData->chainData.activeChain = RadarChainRecords_GetActiveChain(fieldSystem);

    if (appData->chainData.activeChain == 0) {
        activeSpecies = SPECIES_NONE;
    } else {
        activeSpecies = GetRadarSpecies(fieldSystem);
    }

    if (activeSpecies != appData->chainData.activeSpecies) {
        appData->chainData.activeSpecies = activeSpecies;
        PoketchTrainerCounterGraphics_StartTask(appData->graphics, TRAINER_COUNTER_GRAPHICS_REFRESH);
        return FALSE;
    }

    if (PoketchTrainerCounterGraphics_TaskIsNotActive(appData->graphics, TRAINER_COUNTER_GRAPHICS_PLAY_CRY)) {
        if (appData->buttonState == BUTTON_MANAGER_STATE_TOUCH) {
            if (appData->pressedIcon < appData->chainData.bestChainsCount) {
                int pressedPosition = appData->pressedIcon;

                if (appData->chainData.bestChains[pressedPosition]) {
                    appData->chainData.pressedIcon = pressedPosition;
                    PoketchTrainerCounterGraphics_StartTask(appData->graphics, TRAINER_COUNTER_GRAPHICS_PLAY_CRY);
                }
            }

            appData->buttonState = BUTTON_MANAGER_STATE_NULL;
        }
    }

    return FALSE;
}

static BOOL State_UnloadApp(PoketchTrainerCounter *appData)
{
    switch (appData->subState) {
    case 0:
        PoketchTrainerCounterGraphics_StartTask(appData->graphics, TRAINER_COUNTER_GRAPHICS_FREE);
        appData->subState++;
        break;
    case 1:
        if (PoketchTrainerCounterGraphics_NoActiveTasks(appData->graphics)) {
            return TRUE;
        }
        break;
    }

    return FALSE;
}
