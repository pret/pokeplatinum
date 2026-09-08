#include "nintendo_wfc/main.h"

#include <nitro.h>
#include <string.h>

#include "constants/communication/comm_sync.h"

#include "applications/poffin_berry_selection.h"

#include "bag.h"
#include "comm_manager.h"
#include "communication_information.h"
#include "communication_system.h"
#include "heap.h"
#include "overlay_manager.h"
#include "unk_020363E8.h"

BOOL PoffinBerrySelection_RunSubApplication(ApplicationManager **appManPtr)
{
    if (*appManPtr && ApplicationManager_Exec(*appManPtr)) {
        ApplicationManager_Free(*appManPtr);
        *appManPtr = NULL;
        return TRUE;
    }

    return FALSE;
}

int PoffinBerrySelection_Init(ApplicationManager *appMan, int *state)
{
    PoffinBerrySelectionData *data = NULL;
    PoffinBerrySelectionContext *ctx = ApplicationManager_Args(appMan);

    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_POFFIN_BERRY_SELECTION, 0x20000);
    data = ApplicationManager_NewData(appMan, sizeof(PoffinBerrySelectionData), HEAP_ID_POFFIN_BERRY_SELECTION);
    MI_CpuClear8(data, sizeof(PoffinBerrySelectionData));

    data->heapID = HEAP_ID_POFFIN_BERRY_SELECTION;
    data->ctx = ctx;

    if (ctx->unk_20 && ctx->voiceChat) {
        NintendoWFC_StartVoiceChat(HEAP_ID_POFFIN_BERRY_SELECTION);
    }

    data->unk_26 = ctx->unk_20;
    data->voiceChat = ctx->voiceChat;
    data->bagCursor = BagCursor_New(data->heapID);

    if (ctx->isInGroup == TRUE) {
        data->isInGroup = TRUE;
    }

    return TRUE;
}

int PoffinBerrySelection_Main(ApplicationManager *appMan, int *state)
{
    PoffinBerrySelectionData *data = ApplicationManager_Data(appMan);
    PoffinBerrySelectionContext *ctx = ApplicationManager_Args(appMan);

    int prevState = *state;

    switch (*state) {
    case MAIN_STATE_GET_BERRY_SELECTION:
        *state = PoffinBerrySelection_GetBerrySelection(data, &data->subState);
        break;
    case MAIN_STATE_LOAD_POFFIN_COOKING_APP:
        *state = PoffinBerrySelection_LoadPoffinCookingApp(data, &data->subState);
        break;
    case MAIN_STATE_RUN_POFFIN_COOKING_APP:
        *state = PoffinBerrySelection_RunPoffinCookingApp(data, &data->subState);
        break;
    case MAIN_STATE_END:
        *state = PoffinBerrySelection_End(data, &data->subState);
        break;
    case MAIN_STATE_EXIT:
        return TRUE;
    }

    if (prevState != *state) {
        data->subState = SUB_STATE_LOAD_BAG_APP;
    }

    return FALSE;
}

int PoffinBerrySelection_Exit(ApplicationManager *appMan, int *state)
{
    int heapID = HEAP_ID_SYSTEM;
    PoffinBerrySelectionData *data = ApplicationManager_Data(appMan);
    PoffinBerrySelectionContext *ctx = ApplicationManager_Args(appMan);

    switch (*state) {
    case MAIN_STATE_GET_BERRY_SELECTION:
        heapID = data->heapID;

        Heap_Free(data->bagCursor);
        MI_CpuClear8(data, sizeof(PoffinBerrySelectionData));
        ApplicationManager_FreeData(appMan);

        if (ctx->unk_20 && ctx->voiceChat) {
            NintendoWFC_TerminateVoiceChat();
        }

        Heap_Destroy(heapID);

        if (!ctx->unk_20) {
            return TRUE;
        }

        CommManager_SetErrorHandling(FALSE, TRUE);
        CommTiming_StartSync(SYNC_START_VS_LINK_BATTLE);
        (*state)++;
        break;
    case MAIN_STATE_LOAD_POFFIN_COOKING_APP:
        if (CommTiming_IsSyncState(SYNC_START_VS_LINK_BATTLE) || CommSys_ConnectedCount() < CommInfo_CountReceived()) {
            return TRUE;
        }
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }

    return FALSE;
}
