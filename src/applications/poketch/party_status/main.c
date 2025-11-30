#include <nitro.h>
#include <nitro/sinit.h>

#include "applications/poketch/party_status/graphics.h"
#include "applications/poketch/poketch_system.h"

#include "bg_window.h"
#include "heap.h"
#include "party.h"
#include "pokemon.h"
#include "pokemon_icon.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "touch_screen.h"

typedef struct PoketchPartyStatus {
    u8 state;
    u8 subState;
    u8 shouldExit;
    PartyStatus partyData;
    PartyStatusGraphics *graphics;
    PoketchSystem *poketchSys;
} PoketchPartyStatus;

typedef BOOL (*StateFunc)(PoketchPartyStatus *);

enum PartyStatusState {
    STATE_LOAD_APP = 0,
    STATE_UPDATE_LOOP,
    STATE_SHUTDOWN,
};

static void NitroStaticInit(void);

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static BOOL Init(PoketchPartyStatus *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static void Free(PoketchPartyStatus *appData);
static void Exit(void *appData);

static void Task_Main(SysTask *task, void *appData);
static void ChangeState(PoketchPartyStatus *appData, u32 newState);
static BOOL State_LoadApp(PoketchPartyStatus *appData);
static BOOL State_UpdateApp(PoketchPartyStatus *appData);
static BOOL State_UnloadApp(PoketchPartyStatus *appData);
static void GetPartyMonInfo(PartyStatus *data, Party *playerParty);

static void NitroStaticInit(void)
{
    PoketchSystem_SetAppFunctions(New, Exit);
}

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    PoketchPartyStatus *partyStatus = Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(PoketchPartyStatus));

    if (partyStatus != NULL) {
        if (Init(partyStatus, poketchSys, bgConfig, appID)
            && SysTask_Start(Task_Main, partyStatus, 1) != NULL) {
            *appData = partyStatus;
            return TRUE;
        }

        Heap_Free(partyStatus);
    }

    return FALSE;
}

static BOOL Init(PoketchPartyStatus *partyStatus, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    if (PartyStatusGraphics_New(&partyStatus->graphics, &partyStatus->partyData, bgConfig)) {
        partyStatus->state = STATE_LOAD_APP;
        partyStatus->subState = 0;
        partyStatus->shouldExit = FALSE;

        GetPartyMonInfo(&partyStatus->partyData, SaveData_GetParty(PoketchSystem_GetSaveData(poketchSys)));

        partyStatus->partyData.screenTouched = FALSE;
        partyStatus->partyData.screenTapped = FALSE;
        partyStatus->partyData.touchX = 0;
        partyStatus->partyData.touchY = 0;
        partyStatus->poketchSys = poketchSys;

        return TRUE;
    }

    return FALSE;
}

static void Free(PoketchPartyStatus *appData)
{
    PartyStatusGraphics_Free(appData->graphics);
    Heap_Free(appData);
}

static void Task_Main(SysTask *task, void *appData)
{
    static const StateFunc stateFuncs[] = {
        State_LoadApp,
        State_UpdateApp,
        State_UnloadApp
    };

    PoketchPartyStatus *data = appData;

    if (data->state < NELEMS(stateFuncs)) {
        if (stateFuncs[data->state](data)) {
            Free(data);
            SysTask_Done(task);
            PoketchSystem_NotifyAppUnloaded(data->poketchSys);
        }
    }
}

static void Exit(void *appData)
{
    ((PoketchPartyStatus *)appData)->shouldExit = TRUE;
}

static void ChangeState(PoketchPartyStatus *appData, u32 state)
{
    if (appData->shouldExit == FALSE) {
        appData->state = state;
    } else {
        appData->state = STATE_SHUTDOWN;
    }

    appData->subState = 0;
}

static BOOL State_LoadApp(PoketchPartyStatus *appData)
{
    switch (appData->subState) {
    case 0:
        PartyStatusGraphics_StartTask(appData->graphics, PARTY_STATUS_GRAPHICS_INIT);
        appData->subState++;
        break;
    case 1:
        if (PartyStatusGraphics_TaskIsNotActive(appData->graphics, PARTY_STATUS_GRAPHICS_INIT)) {
            PoketchSystem_NotifyAppLoaded(appData->poketchSys);
            ChangeState(appData, STATE_UPDATE_LOOP);
        }
        break;
    }

    return FALSE;
}

static BOOL State_UpdateApp(PoketchPartyStatus *appData)
{
    if (appData->shouldExit) {
        ChangeState(appData, STATE_SHUTDOWN);
        return FALSE;
    }

    if (PartyStatusGraphics_TaskIsNotActive(appData->graphics, 2)) {
        appData->partyData.screenTouched = PoketchSystem_GetDisplayHeldCoords(&appData->partyData.touchX, &appData->partyData.touchY);

        if (appData->partyData.screenTouched) {
            appData->partyData.screenTapped = TouchScreen_Tapped();

            if (appData->partyData.screenTapped) {
                u32 slot = PoketchPartyStatusGraphics_CheckTouchingMon(appData->partyData.touchX, appData->partyData.touchY, appData->partyData.partyCount);

                if (slot >= appData->partyData.partyCount) { // Tapped the screen but not any mon icons
                    GetPartyMonInfo(&appData->partyData, SaveData_GetParty(PoketchSystem_GetSaveData(appData->poketchSys)));
                    PartyStatusGraphics_StartTask(appData->graphics, PARTY_STATUS_GRAPHICS_REFRESH);
                }
            }

            return FALSE;
        }
    }

    appData->partyData.touchX = 0;
    appData->partyData.touchY = 0;
    appData->partyData.screenTapped = FALSE;

    return FALSE;
}

static BOOL State_UnloadApp(PoketchPartyStatus *appData)
{
    switch (appData->subState) {
    case 0:
        PartyStatusGraphics_StartTask(appData->graphics, PARTY_STATUS_GRAPHICS_FREE);
        appData->subState++;
        break;
    case 1:
        if (PartyStatusGraphics_NoActiveTasks(appData->graphics)) {
            return TRUE;
        }
        break;
    }

    return FALSE;
}

static void GetPartyMonInfo(PartyStatus *data, Party *party)
{
    Pokemon *mon;
    BOOL decrypted;

    data->partyCount = Party_GetCurrentCount(party);

    for (int i = 0; i < data->partyCount; i++) {
        mon = Party_GetPokemonBySlotIndex(party, i);
        decrypted = Pokemon_EnterDecryptionContext(mon);

        data->mons[i].iconSpriteIndex = BoxPokemon_IconSpriteIndex((const BoxPokemon *)mon);
        data->mons[i].species = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);
        data->mons[i].currentHp = Pokemon_GetValue(mon, MON_DATA_HP, NULL);
        data->mons[i].maxHp = Pokemon_GetValue(mon, MON_DATA_MAX_HP, NULL);
        data->mons[i].heldItem = Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL);
        data->mons[i].hasStatus = Pokemon_GetValue(mon, MON_DATA_STATUS, NULL) != 0;
        data->mons[i].isEgg = Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL);
        data->mons[i].form = Pokemon_GetValue(mon, MON_DATA_FORM, NULL);

        Pokemon_ExitDecryptionContext(mon, decrypted);
    }
}
