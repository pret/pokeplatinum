#include <nitro.h>
#include <nitro/sinit.h>
#include <string.h>

#include "overlay025/poketch_system.h"
#include "overlay032/ov32_02256470.h"

#include "bg_window.h"
#include "heap.h"
#include "party.h"
#include "pokemon.h"
#include "pokemon_icon.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "touch_screen.h"

typedef struct PoketchPartyStatus {
    u8 sysTaskState; // picks which func to run in Task_PartyStatusMain stateFuncs[]
    u8 taskFuncState; // controls the state of the func run by sysTaskState
    u8 shouldExit;
    PlayerPartyStatus playerParty;
    UnkStruct_ov32_02256470 *unk_74;
    PoketchSystem *poketchSys;
} PoketchPartyStatus;

static void NitroStaticInit(void);

static BOOL PoketchPartyStatus_New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 unused);
static BOOL PoketchPartyStatus_Init(PoketchPartyStatus *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 unused);
static void FreeAppResources(PoketchPartyStatus *param0);
static void Task_PartyStatusMain(SysTask *param0, void *param1);
static void PoketchPartyStatus_Exit(void *appData);
static void SetTaskState(PoketchPartyStatus *appData, u32 state);
static BOOL Task_PartyStatusLoadAndWait(PoketchPartyStatus *param0);
static BOOL Task_PartyStatusTryUpdateOnTap(PoketchPartyStatus *appData);
static BOOL Task_PartyStatusUnloadAndWait(PoketchPartyStatus *appData);
static void InitPlayerPartyMons(PlayerPartyStatus *param0, Party *param1);

static void NitroStaticInit(void)
{
    PoketchSystem_SetAppFunctions(PoketchPartyStatus_New, PoketchPartyStatus_Exit);
}

static BOOL PoketchPartyStatus_New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 unused)
{
    PoketchPartyStatus *partyStatusData = (PoketchPartyStatus *)Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(PoketchPartyStatus));

    if (partyStatusData != NULL) {
        if (PoketchPartyStatus_Init(partyStatusData, poketchSys, bgConfig, unused)) {
            if (SysTask_Start(Task_PartyStatusMain, partyStatusData, 1) != NULL) {
                *appData = partyStatusData;
                return TRUE;
            }
        }

        Heap_FreeToHeap(partyStatusData);
    }

    return FALSE;
}

static BOOL PoketchPartyStatus_Init(PoketchPartyStatus *partyStatus, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 unused)
{
    if (ov32_02256470(&(partyStatus->unk_74), &(partyStatus->playerParty), bgConfig)) {
        partyStatus->sysTaskState = 0;
        partyStatus->taskFuncState = 0;
        partyStatus->shouldExit = 0;

        InitPlayerPartyMons(&partyStatus->playerParty, Party_GetFromSavedata(PoketchSystem_GetSaveData(poketchSys)));

        partyStatus->playerParty.isTouchingPoketch = 0;
        partyStatus->playerParty.screenTapped = 0;
        partyStatus->playerParty.touchX = 0;
        partyStatus->playerParty.touchY = 0;
        partyStatus->poketchSys = poketchSys;

        return TRUE;
    }

    return FALSE;
}

static void FreeAppResources(PoketchPartyStatus *appData)
{
    ov32_02256508(appData->unk_74); // removes graphics and kills task(?)
    Heap_FreeToHeap(appData);
}

static void Task_PartyStatusMain(SysTask *task, void *appData)
{
    static BOOL (*const stateFuncs[])(PoketchPartyStatus *) = {
        Task_PartyStatusLoadAndWait,
        Task_PartyStatusTryUpdateOnTap,
        Task_PartyStatusUnloadAndWait
    };

    PoketchPartyStatus *data = (PoketchPartyStatus *)appData;

    if (data->sysTaskState < NELEMS(stateFuncs)) {
        if (stateFuncs[data->sysTaskState](data)) {
            FreeAppResources(data);
            SysTask_Done(task);
            PoketchSystem_NotifyAppUnloaded(data->poketchSys);
        }
    } else {
    }
}

static void PoketchPartyStatus_Exit(void *appData)
{
    ((PoketchPartyStatus *)appData)->shouldExit = 1;
}

static void SetTaskState(PoketchPartyStatus *appData, u32 state)
{
    if (appData->shouldExit == 0) {
        appData->sysTaskState = state;
    } else {
        appData->sysTaskState = 2;
    }

    appData->taskFuncState = 0;
}

static BOOL Task_PartyStatusLoadAndWait(PoketchPartyStatus *appData)
{
    switch (appData->taskFuncState) {
    case 0:
        PartyStatus_StartTaskById(appData->unk_74, 0);
        appData->taskFuncState++;
        break;
    case 1:
        if (PartyStatus_TaskIsNotActive(appData->unk_74, 0)) {
            PoketchSystem_NotifyAppLoaded(appData->poketchSys);
            SetTaskState(appData, 1);
        }
        break;
    }

    return FALSE;
}

static BOOL Task_PartyStatusTryUpdateOnTap(PoketchPartyStatus *appData)
{
    if (appData->shouldExit) {
        SetTaskState(appData, 2);
        return FALSE;
    }

    if (PartyStatus_TaskIsNotActive(appData->unk_74, 2)) {
        appData->playerParty.isTouchingPoketch = PoketchSystem_GetDisplayHeldCoords(&(appData->playerParty.touchX), &(appData->playerParty.touchY));

        if (appData->playerParty.isTouchingPoketch) {
            appData->playerParty.screenTapped = TouchScreen_Tapped();

            if (appData->playerParty.screenTapped) {
                u32 touchedSlot = PoketchPartyStatus_CheckTouchingPartySlot(appData->playerParty.touchX, appData->playerParty.touchY, appData->playerParty.partyCount);

                if (touchedSlot >= appData->playerParty.partyCount) {
                    InitPlayerPartyMons(&appData->playerParty, Party_GetFromSavedata(PoketchSystem_GetSaveData(appData->poketchSys)));
                    PartyStatus_StartTaskById(appData->unk_74, 2);
                }
            }

            return FALSE;
        }
    }

    appData->playerParty.touchX = 0;
    appData->playerParty.touchY = 0;
    appData->playerParty.screenTapped = 0;

    return FALSE;
}

static BOOL Task_PartyStatusUnloadAndWait(PoketchPartyStatus *appData)
{
    switch (appData->taskFuncState) {
    case 0:
        PartyStatus_StartTaskById(appData->unk_74, 1);
        appData->taskFuncState++;
        break;
    case 1:
        if (PartyStatus_AllTasksDone(appData->unk_74)) {
            return TRUE;
        }
        break;
    }

    return FALSE;
}

static void InitPlayerPartyMons(PlayerPartyStatus *data, Party *party)
{
    Pokemon *mon;
    int i;
    BOOL decrypted;

    data->partyCount = Party_GetCurrentCount(party);

    for (i = 0; i < data->partyCount; i++) {
        mon = Party_GetPokemonBySlotIndex(party, i);
        decrypted = Pokemon_EnterDecryptionContext(mon);

        data->mons[i].iconSpriteIndex = BoxPokemon_IconSpriteIndex((const BoxPokemon *)mon);
        data->mons[i].species = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);
        data->mons[i].currentHp = Pokemon_GetValue(mon, MON_DATA_CURRENT_HP, NULL);
        data->mons[i].maxHp = Pokemon_GetValue(mon, MON_DATA_MAX_HP, NULL);
        data->mons[i].heldItem = Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL);
        data->mons[i].status = (Pokemon_GetValue(mon, MON_DATA_STATUS_CONDITION, NULL) != 0);
        data->mons[i].isEgg = Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL);
        data->mons[i].form = Pokemon_GetValue(mon, MON_DATA_FORM, NULL);

        Pokemon_ExitDecryptionContext(mon, decrypted);
    }
}
