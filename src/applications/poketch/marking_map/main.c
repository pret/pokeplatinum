#include <nitro.h>
#include <nitro/sinit.h>

#include "struct_defs/special_encounter.h"

#include "applications/poketch/marking_map/graphics.h"
#include "applications/poketch/poketch_system.h"

#include "bg_window.h"
#include "heap.h"
#include "inlines.h"
#include "poketch.h"
#include "special_encounter.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system_vars.h"
#include "vars_flags.h"

typedef struct {
    u8 state;
    u8 subState;
    u8 shouldExit;
    MarkingMapData mapData;
    MarkingMapGraphics *graphics;
    PoketchSystem *poketchSys;
    Poketch *poketch;
    Roamer *roamers[ROAMING_SLOT_MAX];
    u8 markerOrder[NUM_MARKING_MAP_ICONS];
    u8 roamerLookups;
} PoketchMarkingMap;

typedef BOOL (*StateFunc)(PoketchMarkingMap *);

enum MarkingMapState {
    STATE_LOAD_APP = 0,
    STATE_IDLE,
    STATE_MOVING_MARKER,
    STATE_SHUTDOWN,
};

static void NitroStaticInit(void);

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfi, u32 appID);
static BOOL Init(PoketchMarkingMap *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static void Free(PoketchMarkingMap *appData);
static void Exit(void *appData);

static void Task_Main(SysTask *task, void *appData);
static void ChangeState(PoketchMarkingMap *appData, enum MarkingMapState newState);
static BOOL State_LoadApp(PoketchMarkingMap *appData);
static BOOL State_Idle(PoketchMarkingMap *appData);
static BOOL State_MovingMarker(PoketchMarkingMap *appData);
static BOOL State_UnloadApp(PoketchMarkingMap *appData);

static void UpdateMarkerPriorities(PoketchMarkingMap *appData, int activeMarker);
static BOOL CheckPositionsUpdated(PoketchMarkingMap *appData);

static void NitroStaticInit(void)
{
    PoketchSystem_SetAppFunctions(New, Exit);
}

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    PoketchMarkingMap *markingMap = Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(PoketchMarkingMap));

    if (markingMap != NULL) {
        if (Init(markingMap, poketchSys, bgConfig, appID)) {
            if (SysTask_Start(Task_Main, markingMap, 1) != NULL) {
                *appData = markingMap;
                return TRUE;
            }
        }

        Heap_Free(markingMap);
    }

    return FALSE;
}

static BOOL Init(PoketchMarkingMap *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    int i;

    appData->poketch = PoketchSystem_GetPoketchData(poketchSys);

    for (i = 0; i < NUM_MARKING_MAP_ICONS; i++) {
        appData->mapData.markers[i].isMoving = TRUE;
        appData->mapData.markers[i].priority = i;

        Poketch_MapMarkerPos(appData->poketch, i, &appData->mapData.markers[i].x, &appData->mapData.markers[i].y);

        appData->mapData.markers[i].x += POKETCH_SCREEN_MIN_X;
        appData->mapData.markers[i].y += POKETCH_SCREEN_MIN_Y;
        appData->mapData.markers[i].isMoving = FALSE;
        appData->markerOrder[i] = i;
    }

    appData->mapData.activeMarker = 0;
    appData->mapData.markerMoving = FALSE;
    appData->mapData.positionsUpdated = FALSE;

    VarsFlags *varsFlags = SaveData_GetVarsFlags(PoketchSystem_GetSaveData(poketchSys));

    for (i = 0; i < HIDDEN_LOCATION_MAX; i++) {
        appData->mapData.showHiddenLocation[i] = SystemVars_CheckHiddenLocation(varsFlags, i);
    }

    SpecialEncounter *speEnc = SaveData_GetSpecialEncounters(PoketchSystem_GetSaveData(poketchSys));

    for (i = 0; i < ROAMING_SLOT_MAX; i++) {
        appData->roamers[i] = SpecialEncounter_GetRoamer(speEnc, i);
        appData->mapData.roamerData[i].isActive = Roamer_GetData(appData->roamers[i], ROAMER_DATA_ACTIVE);
        appData->roamerLookups = 0;
    }

    PoketchMap_GetPlayerLocation(PoketchSystem_GetFieldSystem(poketchSys), &appData->mapData.playerX, &appData->mapData.playerY);

    if (PoketchMarkingMapGraphics_New(&appData->graphics, &appData->mapData, bgConfig)) {
        appData->state = STATE_LOAD_APP;
        appData->subState = 0;
        appData->shouldExit = FALSE;
        appData->poketchSys = poketchSys;
        return TRUE;
    }

    return FALSE;
}

static void Free(PoketchMarkingMap *appData)
{
    for (int i = 0; i < NUM_MARKING_MAP_ICONS; i++) {
        Poketch_SetMapMarker(appData->poketch, i, appData->mapData.markers[i].x - POKETCH_SCREEN_MIN_X, appData->mapData.markers[i].y - POKETCH_SCREEN_MIN_Y);
    }

    PoketchMarkingMapGraphics_Free(appData->graphics);
    Heap_Free(appData);
}

static void Task_Main(SysTask *task, void *appData)
{
    static const StateFunc stateFuncs[] = {
        State_LoadApp,
        State_Idle,
        State_MovingMarker,
        State_UnloadApp
    };

    PoketchMarkingMap *markingMap = appData;

    if (markingMap->state < NELEMS(stateFuncs)) {
        if (stateFuncs[markingMap->state](markingMap)) {
            Free(markingMap);
            SysTask_Done(task);
            PoketchSystem_NotifyAppUnloaded(markingMap->poketchSys);
        }
    }
}

static void Exit(void *appData)
{
    ((PoketchMarkingMap *)appData)->shouldExit = TRUE;
}

static void ChangeState(PoketchMarkingMap *markingMap, enum MarkingMapState newState)
{
    if (markingMap->shouldExit == FALSE) {
        markingMap->state = newState;
    } else {
        markingMap->state = STATE_SHUTDOWN;
    }

    markingMap->subState = 0;
}

static BOOL State_LoadApp(PoketchMarkingMap *appData)
{
    switch (appData->subState) {
    case 0:
        PoketchMarkingMapGraphics_StartTask(appData->graphics, MARKING_MAP_GRAPHICS_INIT);
        appData->subState++;
        break;
    case 1:
        if (PoketchMarkingMapGraphics_TaskIsNotActive(appData->graphics, MARKING_MAP_GRAPHICS_INIT)) {
            PoketchSystem_NotifyAppLoaded(appData->poketchSys);
            ChangeState(appData, STATE_IDLE);
        }
        break;
    }

    return FALSE;
}

static BOOL State_Idle(PoketchMarkingMap *appData)
{

    if (appData->shouldExit) {
        ChangeState(appData, STATE_SHUTDOWN);
        return FALSE;
    }

    appData->mapData.positionsUpdated = CheckPositionsUpdated(appData);
    appData->mapData.markerMoving = FALSE;

    u32 x, y;
    if (PoketchSystem_GetDisplayTappedCoords(&x, &y)) {

        for (int i = 0; i < NUM_MARKING_MAP_ICONS; i++) {
            int marker = appData->markerOrder[i];
            int distX = appData->mapData.markers[marker].x - x;

            if ((distX >= -8) && (distX <= 8)) {
                int distY = appData->mapData.markers[marker].y - y;

                if ((distY >= -8) && (distY <= 8)) {
                    UpdateMarkerPriorities(appData, marker);
                    appData->mapData.markers[marker].x = x;
                    appData->mapData.markers[marker].y = y;
                    appData->mapData.markers[marker].isMoving = TRUE;
                    appData->mapData.activeMarker = marker;
                    appData->mapData.markerMoving = TRUE;
                    ChangeState(appData, STATE_MOVING_MARKER);
                    break;
                }
            }
        }
    }

    return FALSE;
}

static BOOL State_MovingMarker(PoketchMarkingMap *appData)
{

    if (appData->shouldExit) {
        ChangeState(appData, STATE_SHUTDOWN);
        return FALSE;
    }

    appData->mapData.positionsUpdated = CheckPositionsUpdated(appData);

    u32 x, y;
    if (PoketchSystem_GetDisplayHeldCoords(&x, &y)) {
        appData->mapData.markers[appData->mapData.activeMarker].x = x;
        appData->mapData.markers[appData->mapData.activeMarker].y = y;
    } else {
        appData->mapData.markers[appData->mapData.activeMarker].isMoving = FALSE;
        ChangeState(appData, STATE_IDLE);
    }

    return FALSE;
}

static BOOL State_UnloadApp(PoketchMarkingMap *appData)
{
    switch (appData->subState) {
    case 0:
        PoketchMarkingMapGraphics_StartTask(appData->graphics, MARKING_MAP_GRAPHICS_FREE);
        appData->subState++;
        break;
    case 1:
        if (PoketchMarkingMapGraphics_NoActiveTasks(appData->graphics)) {
            return TRUE;
        }
        break;
    }

    return FALSE;
}

static void UpdateMarkerPriorities(PoketchMarkingMap *appData, int activeMarker)
{
    if (appData->markerOrder[0] != activeMarker) {
        int i;

        for (i = 0; i < NUM_MARKING_MAP_ICONS; i++) {
            if (appData->markerOrder[i] == activeMarker) {
                break;
            }
        }

        while (i) {
            appData->markerOrder[i] = appData->markerOrder[i - 1];
            i--;
        }

        appData->markerOrder[0] = activeMarker;

        for (i = 0; i < NUM_MARKING_MAP_ICONS; i++) {
            int marker = appData->markerOrder[i];
            appData->mapData.markers[marker].priority = i;
        }
    }
}

static BOOL CheckPositionsUpdated(PoketchMarkingMap *appData)
{
    BOOL updated = FALSE;

    if (PoketchSystem_IsPlayerMoving(appData->poketchSys)) {
        int x, y;

        PoketchMap_GetPlayerLocation(PoketchSystem_GetFieldSystem(appData->poketchSys), &x, &y);

        if ((x != appData->mapData.playerX) || (y != appData->mapData.playerY)) {
            appData->mapData.playerX = x;
            appData->mapData.playerY = y;
            updated = TRUE;
        }

        if (++appData->roamerLookups >= 5) {
            for (int i = 0; i < ROAMING_SLOT_MAX; i++) {
                if (appData->mapData.roamerData[i].isActive == FALSE) {
                    appData->mapData.roamerData[i].isActive = Roamer_GetData(appData->roamers[i], ROAMER_DATA_ACTIVE);

                    if (appData->mapData.roamerData[i].isActive) {
                        updated = TRUE;
                    }
                }

                if (appData->mapData.roamerData[i].isActive) {
                    appData->mapData.roamerData[i].mapID = Roamer_GetData(appData->roamers[i], ROAMER_DATA_MAP_ID);
                    updated = TRUE;
                }
            }
        }
    }

    return updated;
}
