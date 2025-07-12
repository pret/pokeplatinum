#ifndef POKEPLATINUM_OVERLAY_MANAGER_H
#define POKEPLATINUM_OVERLAY_MANAGER_H

#include <nitro/fs.h>

#include "constants/heap.h"

#define FS_OVERLAY_ID_NONE -1

typedef struct ApplicationManager ApplicationManager;

typedef BOOL (*OverlayFunc)(ApplicationManager *appMan, int *state);

typedef struct ApplicationManagerTemplate {
    OverlayFunc init;
    OverlayFunc main;
    OverlayFunc exit;
    const FSOverlayID overlayID;
} ApplicationManagerTemplate;

struct ApplicationManager {
    ApplicationManagerTemplate template;
    int execState;
    int procState;
    void *args;
    void *data;
    ApplicationManager *parent;
    ApplicationManager *child;
};

ApplicationManager *ApplicationManager_New(const ApplicationManagerTemplate *template, void *args, const enum HeapID heapID);
void ApplicationManager_Free(ApplicationManager *appMan);
void *ApplicationManager_NewData(ApplicationManager *appMan, u32 size, enum HeapID heapID);
void *ApplicationManager_Data(ApplicationManager *appMan);
void ApplicationManager_FreeData(ApplicationManager *appMan);
void *ApplicationManager_Args(ApplicationManager *appMan);
BOOL ApplicationManager_Exec(ApplicationManager *appMan);

#endif // POKEPLATINUM_OVERLAY_MANAGER_H
