#include "overlay_manager.h"

#include <nitro.h>
#include <string.h>

#include "game_overlay.h"
#include "heap.h"

OverlayManager *OverlayManager_New(const OverlayManagerTemplate *template, void *args, const enum HeapId heapID)
{
    OverlayManager *overlayMan = Heap_AllocFromHeap(heapID, sizeof(OverlayManager));

    overlayMan->template = *template;
    overlayMan->execState = 0;
    overlayMan->procState = 0;
    overlayMan->args = args;
    overlayMan->data = NULL;
    overlayMan->parent = NULL;
    overlayMan->child = NULL;

    return overlayMan;
}

void OverlayManager_Free(OverlayManager *overlayMan)
{
    Heap_FreeToHeap(overlayMan);
}

void *OverlayManager_NewData(OverlayManager *overlayMan, u32 size, enum HeapId heapID)
{
    overlayMan->data = Heap_AllocFromHeap(heapID, size);
    return overlayMan->data;
}

void *OverlayManager_Data(OverlayManager *overlayMan)
{
    return overlayMan->data;
}

void OverlayManager_FreeData(OverlayManager *overlayMan)
{
    Heap_FreeToHeap(overlayMan->data);
    overlayMan->data = NULL;
}

void *OverlayManager_Args(OverlayManager *overlayMan)
{
    return overlayMan->args;
}

enum OverlayExecState {
    OVERLAY_EXEC_LOAD = 0,
    OVERLAY_EXEC_INIT,
    OVERLAY_EXEC_MAIN,
    OVERLAY_EXEC_EXIT,
};

BOOL OverlayManager_Exec(OverlayManager *overlayMan)
{
    switch (overlayMan->execState) {
    case OVERLAY_EXEC_LOAD:
        if (overlayMan->template.overlayID != FS_OVERLAY_ID_NONE) {
            Overlay_LoadByID(overlayMan->template.overlayID, 2);
        }

        overlayMan->execState = OVERLAY_EXEC_INIT;

    case OVERLAY_EXEC_INIT:
        if (overlayMan->template.init(overlayMan, &overlayMan->procState) == TRUE) {
            overlayMan->execState = OVERLAY_EXEC_MAIN;
            overlayMan->procState = 0;
        }
        break;

    case OVERLAY_EXEC_MAIN:
        if (overlayMan->template.main(overlayMan, &overlayMan->procState) == TRUE) {
            overlayMan->execState = OVERLAY_EXEC_EXIT;
            overlayMan->procState = 0;
        }
        break;

    case OVERLAY_EXEC_EXIT:
        if (overlayMan->template.exit(overlayMan, &overlayMan->procState) == TRUE) {
            if (overlayMan->template.overlayID != FS_OVERLAY_ID_NONE) {
                Overlay_UnloadByID(overlayMan->template.overlayID);
            }

            return TRUE;
        }
        break;
    }

    return FALSE;
}
