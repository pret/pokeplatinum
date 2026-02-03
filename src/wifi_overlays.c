#include "wifi_overlays.h"

#include <nitro.h>
#include <string.h>

#include "wfc_settings/wfc_settings.h"

#include "game_overlay.h"
#include "heap.h"
#include "main.h"
#include "overlay_manager.h"
#include "savedata.h"

FS_EXTERN_OVERLAY(nintendo_wfc);
FS_EXTERN_OVERLAY(wfc_settings);
FS_EXTERN_OVERLAY(http);

void Overlay_LoadWFCOverlay(void)
{
    Overlay_LoadByID(FS_OVERLAY_ID(nintendo_wfc), OVERLAY_LOAD_ASYNC);
}

void Overlay_UnloadWFCOverlay(void)
{
    Overlay_UnloadByID(FS_OVERLAY_ID(nintendo_wfc));
}

void Overlay_LoadWFCSettingsOverlay(void)
{
    Overlay_LoadByID(FS_OVERLAY_ID(wfc_settings), OVERLAY_LOAD_ASYNC);
}

void Overlay_UnloadWFCSettingsOverlay(void)
{
    Overlay_UnloadByID(FS_OVERLAY_ID(wfc_settings));
}

static void StartWFCSettings(SaveData *saveData, enum HeapID heapID)
{
    Overlay_LoadWFCOverlay();
    Overlay_LoadWFCSettingsOverlay();

    WFCSettings_StartApplication(heapID);

    Overlay_UnloadWFCSettingsOverlay();
    Overlay_UnloadWFCOverlay();

    OS_ResetSystem(RESET_CLEAN);
}

void Overlay_LoadHttpOverlay(void)
{
    Overlay_LoadByID(FS_OVERLAY_ID(http), OVERLAY_LOAD_ASYNC);
}

void Overlay_UnloadHttpOverlay(void)
{
    Overlay_UnloadByID(FS_OVERLAY_ID(http));
}

static BOOL RebootIntoWFCSettings(ApplicationManager *appMan, int *unused)
{
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_NINTENDO_WFC, 0x41000);
    StartWFCSettings(((ApplicationArgs *)ApplicationManager_Args(appMan))->saveData, HEAP_ID_NINTENDO_WFC);
    Heap_Destroy(HEAP_ID_NINTENDO_WFC);

    OS_ResetSystem(RESET_CLEAN);
    return TRUE;
}

const ApplicationManagerTemplate gRebootIntoWFCSettingsAppTemplate = {
    RebootIntoWFCSettings,
    NULL,
    NULL,
    FS_OVERLAY_ID_NONE,
};
