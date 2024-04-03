#include <nitro.h>
#include <string.h>

#include "heap.h"
#include "game_overlay.h"
#include "overlay_manager.h"

OverlayManager* OverlayManager_New(const OverlayManagerTemplate *template, void *args, const enum HeapId heapID)
{
    OverlayManager *ovyManager = Heap_AllocFromHeap(heapID, sizeof(OverlayManager));

    ovyManager->template= *template;
    ovyManager->execState = 0;
    ovyManager->procState = 0;
    ovyManager->args = args;
    ovyManager->data = NULL;
    ovyManager->parent = NULL;
    ovyManager->child = NULL;

    return ovyManager;
}

void OverlayManager_Free(OverlayManager *ovyManager)
{
    Heap_FreeToHeap(ovyManager);
}

void* OverlayManager_NewData(OverlayManager *ovyManager, u32 size, enum HeapId heapID)
{
    ovyManager->data = Heap_AllocFromHeap(heapID, size);
    return ovyManager->data;
}

void* OverlayManager_Data(OverlayManager *ovyManager)
{
    return ovyManager->data;
}

void OverlayManager_FreeData(OverlayManager *ovyManager)
{
    Heap_FreeToHeap(ovyManager->data);
    ovyManager->data = NULL;
}

void* OverlayManager_Args(OverlayManager *ovyManager)
{
    return ovyManager->args;
}

enum OverlayExecState {
    OVERLAY_EXEC_LOAD = 0,
    OVERLAY_EXEC_INIT,
    OVERLAY_EXEC_MAIN,
    OVERLAY_EXEC_EXIT,
};

BOOL OverlayManager_Exec(OverlayManager *ovyManager)
{
    switch (ovyManager->execState) {
    case OVERLAY_EXEC_LOAD:
        if (ovyManager->template.overlayID != FS_OVERLAY_ID_NONE) {
            Overlay_LoadByID(ovyManager->template.overlayID, 2);
        }

        ovyManager->execState = OVERLAY_EXEC_INIT;

    case OVERLAY_EXEC_INIT:
        if (ovyManager->template.init(ovyManager, &ovyManager->procState) == TRUE) {
            ovyManager->execState = OVERLAY_EXEC_MAIN;
            ovyManager->procState = 0;
        }
        break;

    case OVERLAY_EXEC_MAIN:
        if (ovyManager->template.main(ovyManager, &ovyManager->procState) == TRUE) {
            ovyManager->execState = OVERLAY_EXEC_EXIT;
            ovyManager->procState = 0;
        }
        break;

    case OVERLAY_EXEC_EXIT:
        if (ovyManager->template.exit(ovyManager, &ovyManager->procState) == TRUE) {
            if (ovyManager->template.overlayID != FS_OVERLAY_ID_NONE) {
                Overlay_UnloadByID(ovyManager->template.overlayID);
            }

            return TRUE;
        }
        break;
    }

    return FALSE;
}
