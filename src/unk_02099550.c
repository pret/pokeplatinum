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

void sub_02099550(void)
{
    Overlay_LoadByID(FS_OVERLAY_ID(overlay4), 2);
}

void sub_02099560(void)
{
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay4));
}

void sub_02099570(void)
{
    Overlay_LoadByID(FS_OVERLAY_ID(overlay18), 2);
}

void sub_02099580(void)
{
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay18));
}

static void sub_02099590(SaveData *saveData, int heapID)
{
    sub_02099550();
    sub_02099570();

    ov18_0221F800(heapID);

    sub_02099580();
    sub_02099560();

    OS_ResetSystem(0);
}

void Overlay_LoadHttpOverlay(void)
{
    Overlay_LoadByID(FS_OVERLAY_ID(overlay60), 2);
}

void Overlay_UnloadHttpOverlay(void)
{
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay60));
}

static int sub_020995D4(ApplicationManager *appMan, int *param1)
{
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_49, 0x41000);
    sub_02099590(((ApplicationArgs *)ApplicationManager_Args(appMan))->saveData, HEAP_ID_49);
    Heap_Destroy(HEAP_ID_49);

    OS_ResetSystem(0);
    return 1;
}

const ApplicationManagerTemplate gRebootIntoWFCSettingsAppTemplate = {
    sub_020995D4,
    NULL,
    NULL,
    0xffffffff,
};
