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
    u8 state;
    u8 subState;
    u8 shouldExit;
    FriendshipCheckerData friendshipCheckerData;
    FriendshipCheckerGraphics *graphics;
    PoketchSystem *poketchSys;
} PoketchFriendshipChecker;

enum FriendshipCheckerState {
    STATE_LOAD_APP = 0,
    STATE_UPDATE_LOOP,
    STATE_SHUTDOWN,
};

static void NitroStaticInit(void);

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static BOOL Init(PoketchFriendshipChecker *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static void Free(PoketchFriendshipChecker *appData);
static void Exit(void *appData);
static u32 GetFriendshipLevel(u32 friendship);

static void ChangeState(PoketchFriendshipChecker *appData, enum FriendshipCheckerState newState);
static void Task_Main(SysTask *task, void *appData);
static BOOL State_LoadApp(PoketchFriendshipChecker *appData);
static BOOL State_UpdateApp(PoketchFriendshipChecker *appData);
static BOOL State_UnloadApp(PoketchFriendshipChecker *appData);

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
    if (PoketchFriendshipCheckerGraphics_New(&appData->graphics, &appData->friendshipCheckerData, bgConfig)) {
        appData->state = STATE_LOAD_APP;
        appData->subState = 0;
        appData->shouldExit = FALSE;
        appData->poketchSys = poketchSys;

        Party *party = SaveData_GetParty(SaveData_Ptr());
        Pokemon *pokemon;
        int friendshipLevel;
        int slot;

        slot = 0;
        appData->friendshipCheckerData.monCount = Party_GetCurrentCount(party);

        for (int i = 0; i < appData->friendshipCheckerData.monCount; i++) {
            pokemon = Party_GetPokemonBySlotIndex(party, i);

            if (Pokemon_GetValue(pokemon, MON_DATA_IS_EGG, NULL) == 0) {
                appData->friendshipCheckerData.party[slot].species = Pokemon_GetValue(pokemon, MON_DATA_SPECIES, NULL);
                appData->friendshipCheckerData.party[slot].form = Pokemon_GetValue(pokemon, MON_DATA_FORM, NULL);
                appData->friendshipCheckerData.party[slot].spriteIdx = BoxPokemon_IconSpriteIndex((const BoxPokemon *)pokemon);
                friendshipLevel = GetFriendshipLevel(Pokemon_GetValue(pokemon, MON_DATA_FRIENDSHIP, NULL));

                switch (friendshipLevel) {
                case 0:
                case 1:
                case 2:
                    appData->friendshipCheckerData.party[slot].friendship = FRIENDSHIP_HATE;
                    appData->friendshipCheckerData.party[slot].intensity = 3 - friendshipLevel;
                    break;
                case 3:
                default:
                    appData->friendshipCheckerData.party[slot].friendship = FRIENDSHIP_NEUTRAL;
                    appData->friendshipCheckerData.party[slot].intensity = 0;
                    break;
                case 4:
                case 5:
                case 6:
                    appData->friendshipCheckerData.party[slot].friendship = FRIENDSHIP_LIKE;
                    appData->friendshipCheckerData.party[slot].intensity = -(3 - friendshipLevel);
                    break;
                }

                slot++;
            }
        }

        appData->friendshipCheckerData.monCount = slot;
        appData->friendshipCheckerData.screenHeld = FALSE;
        appData->friendshipCheckerData.screenTapped = FALSE;
        appData->friendshipCheckerData.touchX = 0;
        appData->friendshipCheckerData.touchY = 0;

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
        State_LoadApp,
        State_UpdateApp,
        State_UnloadApp,
    };

    PoketchFriendshipChecker *friendshipChecker = appData;

    if (friendshipChecker->state < NELEMS(stateFuncs)) {
        if (stateFuncs[friendshipChecker->state](friendshipChecker)) {
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

static void ChangeState(PoketchFriendshipChecker *appData, enum FriendshipCheckerState newState)
{
    if (appData->shouldExit == FALSE) {
        appData->state = newState;
    } else {
        appData->state = STATE_SHUTDOWN;
    }

    appData->subState = 0;
}

static BOOL State_LoadApp(PoketchFriendshipChecker *appData)
{
    switch (appData->subState) {
    case 0:
        PoketchFriendshipCheckerGraphics_StartTask(appData->graphics, FRIENDSHIP_CHECKER_GRAPHICS_INIT);
        appData->subState++;
        break;
    case 1:
        if (PoketchFriendshipCheckerGraphics_TaskIsNotActive(appData->graphics, FRIENDSHIP_CHECKER_GRAPHICS_INIT)) {
            PoketchSystem_NotifyAppLoaded(appData->poketchSys);
            ChangeState(appData, STATE_UPDATE_LOOP);
        }
        break;
    }

    return FALSE;
}

static BOOL State_UpdateApp(PoketchFriendshipChecker *appData)
{
    if (appData->shouldExit) {
        ChangeState(appData, STATE_SHUTDOWN);
        return FALSE;
    }

    appData->friendshipCheckerData.screenHeld = PoketchSystem_GetDisplayHeldCoords(&appData->friendshipCheckerData.touchX, &appData->friendshipCheckerData.touchY);

    if (appData->friendshipCheckerData.screenHeld) {
        if (INSIDE_POKETCH_SCREEN(appData->friendshipCheckerData.touchX, appData->friendshipCheckerData.touchY)) {
            appData->friendshipCheckerData.screenTapped = TouchScreen_Tapped();
            return FALSE;
        }

        appData->friendshipCheckerData.screenHeld = FALSE;
    }

    appData->friendshipCheckerData.touchX = 0;
    appData->friendshipCheckerData.touchY = 0;
    appData->friendshipCheckerData.screenTapped = FALSE;

    return FALSE;
}

static BOOL State_UnloadApp(PoketchFriendshipChecker *appData)
{
    switch (appData->subState) {
    case 0:
        PoketchFriendshipCheckerGraphics_StartTask(appData->graphics, FRIENDSHIP_CHECKER_GRAPHICS_FREE);
        appData->subState++;
        break;

    case 1:
        if (PoketchFriendshipCheckerGraphics_NoActiveTasks(appData->graphics)) {
            return TRUE;
        }
        break;
    }

    return FALSE;
}
