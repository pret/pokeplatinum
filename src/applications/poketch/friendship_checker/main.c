#include <nitro.h>
#include <nitro/sinit.h>

#include "applications/poketch/friendship_checker/graphics.h"
#include "applications/poketch/poketch_system.h"

#include "bg_window.h"
#include "heap.h"
#include "party.h"
#include "pokemon.h"
#include "pokemon_icon.h"
#include "savedata.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "touch_screen.h"

typedef struct PoketchFriendshipChecker {
    u8 activeTask;
    u8 taskFuncState;
    u8 shouldExit;
    FriendshipCheckerState state;
    FriendshipCheckerGraphics *graphics;
    PoketchSystem *poketchSys;
} PoketchFriendshipChecker;

enum FriendshipCheckerTask {
    TASK_LOAD_APP = 0,
    TASK_UPDATE_LOOP,
    TASK_SHUTDOWN,
};

static void NitroStaticInit(void);

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static BOOL Init(PoketchFriendshipChecker *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static void Free(PoketchFriendshipChecker *appData);
static void Exit(void *appData);
static u32 GetFriendshipLevel(u32 friendship);

static void ChangeActiveTask(PoketchFriendshipChecker *appData, enum FriendshipCheckerTask taskID);
static void Task_Main(SysTask *task, void *appData);
static BOOL Task_LoadApp(PoketchFriendshipChecker *appData);
static BOOL Task_UpdateApp(PoketchFriendshipChecker *appData);
static BOOL Task_UnloadApp(PoketchFriendshipChecker *appData);

static void NitroStaticInit(void)
{
    PoketchSystem_SetAppFunctions(New, Exit);
}

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    PoketchFriendshipChecker *friendshipChecker = Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(PoketchFriendshipChecker));

    if (friendshipChecker != NULL) {
        if (Init(friendshipChecker, poketchSys, bgConfig, appID)) {
            if (SysTask_Start(Task_Main, friendshipChecker, 1) != NULL) {
                *appData = friendshipChecker;
                return TRUE;
            }
        }

        Heap_Free(friendshipChecker);
    }

    return FALSE;
}

static BOOL Init(PoketchFriendshipChecker *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    if (PoketchFriendshipCheckerGraphics_New(&appData->graphics, &appData->state, bgConfig)) {
        appData->activeTask = TASK_LOAD_APP;
        appData->taskFuncState = 0;
        appData->shouldExit = FALSE;
        appData->poketchSys = poketchSys;

        Party *party = SaveData_GetParty(SaveData_Ptr());
        Pokemon *pokemon;
        int friendshipLevel;
        int slot;

        slot = 0;
        appData->state.monCount = Party_GetCurrentCount(party);

        for (int i = 0; i < appData->state.monCount; i++) {
            pokemon = Party_GetPokemonBySlotIndex(party, i);

            if (Pokemon_GetValue(pokemon, MON_DATA_IS_EGG, NULL) == 0) {
                appData->state.party[slot].species = Pokemon_GetValue(pokemon, MON_DATA_SPECIES, NULL);
                appData->state.party[slot].form = Pokemon_GetValue(pokemon, MON_DATA_FORM, NULL);
                appData->state.party[slot].spriteIdx = BoxPokemon_IconSpriteIndex((const BoxPokemon *)pokemon);
                friendshipLevel = GetFriendshipLevel(Pokemon_GetValue(pokemon, MON_DATA_FRIENDSHIP, NULL));

                switch (friendshipLevel) {
                case 0:
                case 1:
                case 2:
                    appData->state.party[slot].friendship = FRIENDSHIP_HATE;
                    appData->state.party[slot].intensity = 3 - friendshipLevel;
                    break;
                case 3:
                default:
                    appData->state.party[slot].friendship = FRIENDSHIP_NEUTRAL;
                    appData->state.party[slot].intensity = 0;
                    break;
                case 4:
                case 5:
                case 6:
                    appData->state.party[slot].friendship = FRIENDSHIP_LIKE;
                    appData->state.party[slot].intensity = -(3 - friendshipLevel);
                    break;
                }

                slot++;
            }
        }

        appData->state.monCount = slot;
        appData->state.screenHeld = FALSE;
        appData->state.screenTapped = FALSE;
        appData->state.touchX = 0;
        appData->state.touchY = 0;

        return TRUE;
    }

    return FALSE;
}

static u32 GetFriendshipLevel(u32 friendship)
{
    static const u8 friendshipTiers[] = {
        1,
        35,
        70,
        150,
        200,
        255,
    };

    for (u32 i = 0; i < NELEMS(friendshipTiers); i++) {
        if (friendship < friendshipTiers[i]) {
            return i;
        }
    }

    return NELEMS(friendshipTiers);
}

static void Free(PoketchFriendshipChecker *appData)
{
    PoketchFriendshipCheckerGraphics_Free(appData->graphics);
    Heap_Free(appData);
}

static void Task_Main(SysTask *task, void *appData)
{
    static BOOL (*const stateFuncs[])(PoketchFriendshipChecker *) = {
        Task_LoadApp,
        Task_UpdateApp,
        Task_UnloadApp,
    };

    PoketchFriendshipChecker *friendshipChecker = appData;

    if (friendshipChecker->activeTask < NELEMS(stateFuncs)) {
        if (stateFuncs[friendshipChecker->activeTask](friendshipChecker)) {
            Free(friendshipChecker);
            SysTask_Done(task);
            PoketchSystem_NotifyAppUnloaded(friendshipChecker->poketchSys);
        }
    }
}

static void Exit(void *appData)
{
    ((PoketchFriendshipChecker *)appData)->shouldExit = TRUE;
}

static void ChangeActiveTask(PoketchFriendshipChecker *appData, enum FriendshipCheckerTask taskID)
{
    if (appData->shouldExit == FALSE) {
        appData->activeTask = taskID;
    } else {
        appData->activeTask = TASK_SHUTDOWN;
    }

    appData->taskFuncState = 0;
}

static BOOL Task_LoadApp(PoketchFriendshipChecker *appData)
{
    switch (appData->taskFuncState) {
    case 0:
        PoketchFriendshipCheckerGraphics_StartTask(appData->graphics, FRIENDSHIP_CHECKER_GRAPHICS_INIT);
        appData->taskFuncState++;
        break;
    case 1:
        if (PoketchFriendshipCheckerGraphics_TaskIsNotActive(appData->graphics, FRIENDSHIP_CHECKER_GRAPHICS_INIT)) {
            PoketchSystem_NotifyAppLoaded(appData->poketchSys);
            ChangeActiveTask(appData, TASK_UPDATE_LOOP);
        }
        break;
    }

    return FALSE;
}

static BOOL Task_UpdateApp(PoketchFriendshipChecker *appData)
{
    if (appData->shouldExit) {
        ChangeActiveTask(appData, TASK_SHUTDOWN);
        return FALSE;
    }

    appData->state.screenHeld = PoketchSystem_GetDisplayHeldCoords(&appData->state.touchX, &appData->state.touchY);

    if (appData->state.screenHeld) {
        if (INSIDE_POKETCH_SCREEN(appData->state.touchX, appData->state.touchY)) {
            appData->state.screenTapped = TouchScreen_Tapped();
            return FALSE;
        }

        appData->state.screenHeld = FALSE;
    }

    appData->state.touchX = 0;
    appData->state.touchY = 0;
    appData->state.screenTapped = FALSE;

    return FALSE;
}

static BOOL Task_UnloadApp(PoketchFriendshipChecker *appData)
{
    switch (appData->taskFuncState) {
    case 0:
        PoketchFriendshipCheckerGraphics_StartTask(appData->graphics, FRIENDSHIP_CHECKER_GRAPHICS_FREE);
        appData->taskFuncState++;
        break;

    case 1:
        if (PoketchFriendshipCheckerGraphics_NoActiveTasks(appData->graphics)) {
            return TRUE;
        }
        break;
    }

    return FALSE;
}
