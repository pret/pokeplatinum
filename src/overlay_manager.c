#include "overlay_manager.h"

#include <nitro.h>
#include <string.h>

#include "game_overlay.h"
#include "heap.h"

ApplicationManager *ApplicationManager_New(const ApplicationManagerTemplate *template, void *args, const enum HeapID heapID)
{
    ApplicationManager *appMan = Heap_AllocFromHeap(heapID, sizeof(ApplicationManager));

    appMan->template = *template;
    appMan->execState = 0;
    appMan->procState = 0;
    appMan->args = args;
    appMan->data = NULL;
    appMan->parent = NULL;
    appMan->child = NULL;

    return appMan;
}

void ApplicationManager_Free(ApplicationManager *appMan)
{
    Heap_FreeToHeap(appMan);
}

void *ApplicationManager_NewData(ApplicationManager *appMan, u32 size, enum HeapID heapID)
{
    appMan->data = Heap_AllocFromHeap(heapID, size);
    return appMan->data;
}

void *ApplicationManager_Data(ApplicationManager *appMan)
{
    return appMan->data;
}

void ApplicationManager_FreeData(ApplicationManager *appMan)
{
    Heap_FreeToHeap(appMan->data);
    appMan->data = NULL;
}

void *ApplicationManager_Args(ApplicationManager *appMan)
{
    return appMan->args;
}

enum OverlayExecState {
    OVERLAY_EXEC_LOAD = 0,
    OVERLAY_EXEC_INIT,
    OVERLAY_EXEC_MAIN,
    OVERLAY_EXEC_EXIT,
};

BOOL ApplicationManager_Exec(ApplicationManager *appMan)
{
    switch (appMan->execState) {
    case OVERLAY_EXEC_LOAD:
        if (appMan->template.overlayID != FS_OVERLAY_ID_NONE) {
            Overlay_LoadByID(appMan->template.overlayID, 2);
        }

        appMan->execState = OVERLAY_EXEC_INIT;

    case OVERLAY_EXEC_INIT:
        if (appMan->template.init(appMan, &appMan->procState) == TRUE) {
            appMan->execState = OVERLAY_EXEC_MAIN;
            appMan->procState = 0;
        }
        break;

    case OVERLAY_EXEC_MAIN:
        if (appMan->template.main(appMan, &appMan->procState) == TRUE) {
            appMan->execState = OVERLAY_EXEC_EXIT;
            appMan->procState = 0;
        }
        break;

    case OVERLAY_EXEC_EXIT:
        if (appMan->template.exit(appMan, &appMan->procState) == TRUE) {
            if (appMan->template.overlayID != FS_OVERLAY_ID_NONE) {
                Overlay_UnloadByID(appMan->template.overlayID);
            }

            return TRUE;
        }
        break;
    }

    return FALSE;
}
