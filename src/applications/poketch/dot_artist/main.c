#include <nitro.h>
#include <nitro/sinit.h>

#include "applications/poketch/dot_artist/graphics.h"
#include "applications/poketch/poketch_system.h"

#include "bg_window.h"
#include "heap.h"
#include "poketch.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "touch_screen.h"

#define PACKED_SIZE ((CANVAS_WIDTH * CANVAS_HEIGHT) / 4)

typedef struct PoketchDotArtist {
    u8 state;
    u8 subState;
    u8 shouldExit;
    u32 x;
    u32 y;
    DotArt dotArt;
    DotArtistGraphics *graphics;
    PoketchSystem *poketchSys;
    u8 packedData[PACKED_SIZE];
} PoketchDotArtist;

enum DotArtistState {
    STATE_LOAD_APP = 0,
    STATE_UPDATE_LOOP,
    STATE_SHUTDOWN,
};

static void NitroStaticInit(void);

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static BOOL Init(PoketchDotArtist *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static void Free(PoketchDotArtist *appData);
static void Exit(void *appData);

static void SetupDotArtGrid(PoketchDotArtist *appData, DotArt *dotArt);
static inline u8 LoadDot(const u8 *packedData, int index);
static inline void SaveDot(u8 *packedData, int index, int value);
static void LoadDotArtGrid(PoketchDotArtist *appData, DotArt *dotArt, Poketch *poketch);
static void SaveDotArtGrid(PoketchDotArtist *appData, DotArt *dotArt, Poketch *poketch);
static void InitDotArtGrid(DotArt *dotArt);
static void SaveCallback(void *appData);

static void Task_Main(SysTask *task, void *appData);
static void ChangeState(PoketchDotArtist *appData, enum DotArtistState newState);
static BOOL State_LoadApp(PoketchDotArtist *appData);
static BOOL State_UpdateApp(PoketchDotArtist *appData);
static BOOL State_UnloadApp(PoketchDotArtist *appData);

static void NitroStaticInit(void)
{
    PoketchSystem_SetAppFunctions(New, Exit);
}

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    PoketchDotArtist *dotArtist = Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(PoketchDotArtist));

    if (dotArtist != NULL) {
        if (Init(dotArtist, poketchSys, bgConfig, appID)) {
            if (SysTask_Start(Task_Main, dotArtist, 1) != NULL) {
                *appData = dotArtist;
                PoketchSystem_SetSaveFunction(SaveCallback, dotArtist);
                return TRUE;
            }
        }

        Heap_Free(dotArtist);
    }

    return FALSE;
}

static BOOL Init(PoketchDotArtist *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    appData->poketchSys = poketchSys;
    SetupDotArtGrid(appData, &appData->dotArt);

    if (PoketchDotArtistGraphics_New(&appData->graphics, &appData->dotArt, bgConfig)) {
        appData->state = STATE_LOAD_APP;
        appData->subState = 0;
        appData->shouldExit = FALSE;
        appData->x = CANVAS_WIDTH + 1;
        appData->y = CANVAS_HEIGHT + 1;

        return TRUE;
    }

    return FALSE;
}

static void SetupDotArtGrid(PoketchDotArtist *appData, DotArt *dotArt)
{
    Poketch *poketch = PoketchSystem_GetPoketchData(appData->poketchSys);

    if (Poketch_DotArtModified(poketch)) {
        LoadDotArtGrid(appData, dotArt, poketch);
    } else {
        InitDotArtGrid(dotArt);
    }
}

static inline u8 LoadDot(const u8 *packedData, int index)
{
    return (packedData[(index / 4)] >> ((index & 0x3) * 2)) & 0x3;
}

static inline void SaveDot(u8 *packedData, int index, int value)
{
    packedData[(index / 4)] |= ((value & 0x3) << ((index & 0x3) * 2));
}

static void LoadDotArtGrid(PoketchDotArtist *appData, DotArt *dotArt, Poketch *poketch)
{
    int x, y, index;

    Poketch_CopyDotArtData(poketch, appData->packedData);

    index = 0;

    for (y = 0; y < CANVAS_HEIGHT; y++) {
        for (x = 0; x < CANVAS_WIDTH; x++) {
            dotArt->dots[y][x] = LoadDot(appData->packedData, index++) + 1;
        }
    }
}

static void SaveDotArtGrid(PoketchDotArtist *appData, DotArt *dotArt, Poketch *poketch)
{
    int x, y, index;

    MI_CpuClear8(appData->packedData, PACKED_SIZE);

    index = 0;

    for (y = 0; y < CANVAS_HEIGHT; y++) {
        for (x = 0; x < CANVAS_WIDTH; x++) {
            SaveDot(appData->packedData, index++, dotArt->dots[y][x] - 1);
        }
    }

    Poketch_ModifyDotArtData(poketch, appData->packedData);
}

static void InitDotArtGrid(DotArt *dotArt)
{
    static const u8 defaultArt[CANVAS_HEIGHT][CANVAS_WIDTH] = {
        { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 },
        { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 },
        { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 },
        { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 },
        { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 },
        { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 },
        { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 },
        { 1, 4, 4, 4, 4, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 4, 1 },
        { 1, 1, 1, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 4, 1 },
        { 1, 1, 1, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 4, 1, 1, 1, 4, 1 },
        { 1, 1, 1, 4, 1, 1, 4, 4, 4, 1, 4, 1, 4, 1, 4, 4, 4, 1, 4, 4, 4, 1, 4, 1 },
        { 1, 1, 1, 4, 1, 1, 4, 1, 4, 1, 4, 1, 4, 1, 4, 1, 1, 1, 4, 1, 4, 1, 1, 1 },
        { 1, 1, 1, 4, 1, 1, 4, 4, 4, 1, 4, 4, 4, 1, 4, 4, 4, 1, 4, 1, 4, 1, 4, 1 },
        { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 },
        { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 },
        { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 },
        { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 },
        { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 },
        { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 },
        { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 },
    };
    int x, y;

    for (y = 0; y < CANVAS_HEIGHT; y++) {
        for (x = 0; x < CANVAS_WIDTH; x++) {
            dotArt->dots[y][x] = defaultArt[y][x];
        }
    }
}

static void Free(PoketchDotArtist *appData)
{
    SaveDotArtGrid(appData, &appData->dotArt, PoketchSystem_GetPoketchData(appData->poketchSys));
    PoketchDotArtistGraphics_Free(appData->graphics);

    Heap_Free(appData);
}

static void SaveCallback(void *appData)
{
    PoketchDotArtist *dotArtist = appData;
    SaveDotArtGrid(dotArtist, &dotArtist->dotArt, PoketchSystem_GetPoketchData(dotArtist->poketchSys));
}

static void Task_Main(SysTask *task, void *appData)
{
    static BOOL (*const stateFuncs[])(PoketchDotArtist *) = {
        State_LoadApp,
        State_UpdateApp,
        State_UnloadApp
    };

    PoketchDotArtist *dotArtist = appData;

    if (dotArtist->state < NELEMS(stateFuncs)) {
        if (stateFuncs[dotArtist->state](dotArtist)) {
            Free(dotArtist);
            SysTask_Done(task);
            PoketchSystem_NotifyAppUnloaded(dotArtist->poketchSys);
        }
    }
}

static void Exit(void *appData)
{
    ((PoketchDotArtist *)appData)->shouldExit = TRUE;
}

static void ChangeState(PoketchDotArtist *appData, enum DotArtistState newState)
{
    if (appData->shouldExit == FALSE) {
        appData->state = newState;
    } else {
        appData->state = STATE_SHUTDOWN;
    }

    appData->subState = 0;
}

static BOOL State_LoadApp(PoketchDotArtist *appData)
{
    switch (appData->subState) {
    case 0:
        PoketchDotArtistGraphics_StartTask(appData->graphics, DOT_ARTIST_GRAPHICS_INIT);
        appData->subState++;
        break;
    case 1:
        if (PoketchDotArtistGraphics_TaskIsNotActive(appData->graphics, DOT_ARTIST_GRAPHICS_INIT)) {
            PoketchSystem_NotifyAppLoaded(appData->poketchSys);
            ChangeState(appData, STATE_UPDATE_LOOP);
        }
        break;
    }

    return FALSE;
}

static BOOL State_UpdateApp(PoketchDotArtist *appData)
{
    if (appData->shouldExit) {
        ChangeState(appData, STATE_SHUTDOWN);
        return FALSE;
    }

    if (PoketchDotArtistGraphics_TaskIsNotActive(appData->graphics, DOT_ARTIST_GRAPHICS_UPDATE)) {
        u32 x, y;

        if (PoketchSystem_GetDisplayHeldCoords(&x, &y)) {
            if ((x >= POKETCH_SCREEN_MIN_X) && (y >= POKETCH_SCREEN_MIN_Y)) {
                x = (x - POKETCH_SCREEN_MIN_X) / TILE_WIDTH_PIXELS;
                y = (y - POKETCH_SCREEN_MIN_Y) / TILE_WIDTH_PIXELS;

                if ((x < CANVAS_WIDTH) && (y < CANVAS_HEIGHT)) {
                    if (((appData->x != x) || (appData->y != y)) || (TouchScreen_Tapped() == TRUE)) {

                        appData->dotArt.dots[y][x]++;
                        if (appData->dotArt.dots[y][x] > 4) {
                            appData->dotArt.dots[y][x] = 1;
                        }

                        appData->x = x;
                        appData->y = y;

                        PoketchDotArtistGraphics_StartTask(appData->graphics, DOT_ARTIST_GRAPHICS_UPDATE);
                    }
                }
            }
        }
    }

    return FALSE;
}

static BOOL State_UnloadApp(PoketchDotArtist *appData)
{
    switch (appData->subState) {
    case 0:
        PoketchDotArtistGraphics_StartTask(appData->graphics, DOT_ARTIST_GRAPHICS_FREE);
        appData->subState++;
        break;
    case 1:
        if (PoketchDotArtistGraphics_NoActiveTasks(appData->graphics)) {
            return TRUE;
        }
        break;
    }

    return FALSE;
}
