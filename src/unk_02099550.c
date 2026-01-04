#include "unk_02099550.h"

#include <nitro.h>
#include <string.h>

#include "overlay018/ov18_0221F800.h"

#include "game_overlay.h"
#include "heap.h"
#include "main.h"
#include "overlay_manager.h"
#include "savedata.h"

FS_EXTERN_OVERLAY(overlay4);
FS_EXTERN_OVERLAY(overlay18);
FS_EXTERN_OVERLAY(overlay60);
FS_EXTERN_OVERLAY(overlay89);

void Overlay_LoadWFCOverlay(void)
{
    Overlay_LoadByID(FS_OVERLAY_ID(overlay4), 2);
}

void Overlay_UnloadWFCOverlay(void)
{
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay4));
}

void Overlay_LoadWFCSettingsOverlay(void)
{
    Overlay_LoadByID(FS_OVERLAY_ID(overlay18), 2);
}

void Overlay_UnloadWFCSettingsOverlay(void)
{
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay18));
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
    Overlay_LoadByID(FS_OVERLAY_ID(overlay60), 2);
}

void Overlay_UnloadHttpOverlay(void)
{
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay60));
}

static BOOL RebootIntoWFCSettings(ApplicationManager *appMan, int *unused)
{
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_49, 0x41000);
    StartWFCSettings(((ApplicationArgs *)ApplicationManager_Args(appMan))->saveData, HEAP_ID_49);
    Heap_Destroy(HEAP_ID_49);

    OS_ResetSystem(RESET_CLEAN);
    return TRUE;
}

const ApplicationManagerTemplate gRebootIntoWFCSettingsAppTemplate = {
    RebootIntoWFCSettings,
    NULL,
    NULL,
    FS_OVERLAY_ID_NONE,
};
