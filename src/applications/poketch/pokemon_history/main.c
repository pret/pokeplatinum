#include <nitro.h>
#include <nitro/sinit.h>

#include "applications/poketch/pokemon_history/graphics.h"
#include "applications/poketch/poketch_button.h"
#include "applications/poketch/poketch_system.h"

#include "bg_window.h"
#include "heap.h"
#include "poketch.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "touch_screen.h"

#define MON_HITBOX(r, c)                                               \
    {                                                                  \
        .rect = {                                                      \
            .top = (48 + HISTORY_ICON_STEP_Y * (2 - r)) - (36 / 2),    \
            .bottom = (48 + HISTORY_ICON_STEP_Y * (2 - r)) + (36 / 2), \
            .left = (48 + HISTORY_ICON_STEP_X * (3 - c)) - (48 / 2),   \
            .right = (48 + HISTORY_ICON_STEP_X * (3 - c)) + (48 / 2)   \
        }                                                              \
    }

typedef struct PoketchPokemonHistory {
    u8 state;
    u8 subState;
    u8 shouldExit;
    HistoryData history;
    PokemonHistoryGraphics *graphics;
    PoketchSystem *poketchSys;
    PoketchButtonManager *buttonManager;
    u32 buttonState;
    u32 pressedIdx;
} PoketchPokemonHistory;

typedef BOOL (*StateFunc)(PoketchPokemonHistory *);

enum PokemonHistoryState {
    STATE_LOAD_APP = 0,
    STATE_UPDATE_LOOP,
    STATE_SHUTDOWN,
};

static void NitroStaticInit(void);

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static BOOL Init(PoketchPokemonHistory *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static void Free(PoketchPokemonHistory *appData);
static void Exit(void *appData);
static void TouchCallback(u32 buttonID, u32 buttonState, u32 touchState, void *appData);

static void Task_Main(SysTask *task, void *appData);
static void ChangeState(PoketchPokemonHistory *appData, enum PokemonHistoryState newState);
static BOOL State_LoadApp(PoketchPokemonHistory *appData);
static BOOL State_UpdateApp(PoketchPokemonHistory *appData);
static BOOL State_UnloadApp(PoketchPokemonHistory *appData);

static void NitroStaticInit(void)
{
    PoketchSystem_SetAppFunctions(New, Exit);
}

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    PoketchPokemonHistory *pokemonHistory = Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(PoketchPokemonHistory));

    if (pokemonHistory != NULL) {
        if (Init(pokemonHistory, poketchSys, bgConfig, appID)) {
            if (SysTask_Start(Task_Main, pokemonHistory, 1) != NULL) {
                *appData = pokemonHistory;
                return TRUE;
            }
        }

        Heap_Free(pokemonHistory);
    }

    return FALSE;
}

static BOOL Init(PoketchPokemonHistory *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    static const TouchScreenRect sHitboxes[] = {
        MON_HITBOX(0, 0),
        MON_HITBOX(0, 1),
        MON_HITBOX(0, 2),
        MON_HITBOX(0, 3),
        MON_HITBOX(1, 0),
        MON_HITBOX(1, 1),
        MON_HITBOX(1, 2),
        MON_HITBOX(1, 3),
        MON_HITBOX(2, 0),
        MON_HITBOX(2, 1),
        MON_HITBOX(2, 2),
        MON_HITBOX(2, 3),
    };

    Poketch *poketch = PoketchSystem_GetPoketchData(poketchSys);
    appData->history.count = Poketch_PokemonHistorySize(poketch);

    for (int i = 0; i < appData->history.count; i++) {
        Poketch_PokemonHistorySpeciesAndIcon(poketch, i, &appData->history.mons[i].species, &appData->history.mons[i].icon);
        appData->history.mons[i].form = Poketch_PokemonHistoryForm(poketch, i);
    }

    if (PoketchPokemonHistoryGraphics_New(&appData->graphics, &appData->history, bgConfig)) {
        appData->state = STATE_LOAD_APP;
        appData->subState = 0;
        appData->shouldExit = FALSE;
        appData->buttonManager = PoketchButtonManager_New(sHitboxes, NELEMS(sHitboxes), TouchCallback, appData, HEAP_ID_POKETCH_APP);
        appData->buttonState = BUTTON_MANAGER_STATE_NULL;
        appData->pressedIdx = 0;
        appData->poketchSys = poketchSys;

        return TRUE;
    }

    return FALSE;
}

static void Free(PoketchPokemonHistory *appData)
{
    PoketchButtonManager_Free(appData->buttonManager);
    PoketchPokemonHistoryGraphics_Free(appData->graphics);

    Heap_Free(appData);
}

static void Task_Main(SysTask *task, void *appData)
{
    static const StateFunc stateFuncs[] = {
        State_LoadApp,
        State_UpdateApp,
        State_UnloadApp
    };

    PoketchPokemonHistory *pokemonHistory = appData;

    if (pokemonHistory->state < NELEMS(stateFuncs)) {
        PoketechSystem_UpdateButtonManager(pokemonHistory->poketchSys, pokemonHistory->buttonManager);

        if (stateFuncs[pokemonHistory->state](pokemonHistory)) {
            Free(pokemonHistory);
            SysTask_Done(task);
            PoketchSystem_NotifyAppUnloaded(pokemonHistory->poketchSys);
        }
    }
}

static void Exit(void *appData)
{
    ((PoketchPokemonHistory *)appData)->shouldExit = TRUE;
}

static void TouchCallback(u32 buttonID, u32 buttonState, u32 touchState, void *appData)
{
    PoketchPokemonHistory *pokemonHistory = appData;

    pokemonHistory->pressedIdx = buttonID;
    pokemonHistory->buttonState = buttonState;
}

static void ChangeState(PoketchPokemonHistory *appData, enum PokemonHistoryState newState)
{
    if (!appData->shouldExit) {
        appData->state = newState;
    } else {
        appData->state = STATE_SHUTDOWN;
    }

    appData->subState = 0;
}

static BOOL State_LoadApp(PoketchPokemonHistory *appData)
{
    switch (appData->subState) {
    case 0:
        PoketchPokemonHistoryGraphics_StartTask(appData->graphics, POKEMON_HISTORY_GRAPHICS_INIT);
        appData->subState++;
        break;
    case 1:
        if (PoketchPokemonHistoryGraphics_TaskIsNotActive(appData->graphics, POKEMON_HISTORY_GRAPHICS_INIT)) {
            PoketchSystem_NotifyAppLoaded(appData->poketchSys);
            ChangeState(appData, STATE_UPDATE_LOOP);
        }
        break;
    }

    return FALSE;
}

static BOOL State_UpdateApp(PoketchPokemonHistory *appData)
{
    if (appData->shouldExit) {
        ChangeState(appData, STATE_SHUTDOWN);
        return FALSE;
    }

    if (appData->buttonState == BUTTON_MANAGER_STATE_TOUCH) {
        int monIdx = MAX_HISTORY_SIZE - 1 - appData->pressedIdx;

        if (monIdx < appData->history.count) {
            PoketchSystem_PlayCry(appData->history.mons[monIdx].species, appData->history.mons[monIdx].form);
        }

        appData->buttonState = BUTTON_MANAGER_STATE_NULL;
    }

    return FALSE;
}

static BOOL State_UnloadApp(PoketchPokemonHistory *appData)
{
    switch (appData->subState) {
    case 0:
        PoketchPokemonHistoryGraphics_StartTask(appData->graphics, POKEMON_HISTORY_GRAPHICS_FREE);
        appData->subState++;
        break;
    case 1:
        if (PoketchPokemonHistoryGraphics_NoActiveTasks(appData->graphics)) {
            return TRUE;
        }
        break;
    }

    return FALSE;
}
