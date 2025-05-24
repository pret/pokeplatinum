#ifndef POKEPLATINUM_OVERLAY_MANAGER_H
#define POKEPLATINUM_OVERLAY_MANAGER_H

#include <nitro/fs.h>

#include "constants/heap.h"

#define FS_OVERLAY_ID_NONE -1

typedef struct OverlayManager OverlayManager;

typedef BOOL (*OverlayFunc)(OverlayManager *overlayMan, int *state);

typedef struct OverlayManagerTemplate {
    OverlayFunc init;
    OverlayFunc main;
    OverlayFunc exit;
    const FSOverlayID overlayID;
} OverlayManagerTemplate;

struct OverlayManager {
    OverlayManagerTemplate template;
    int execState;
    int procState;
    void *args;
    void *data;
    OverlayManager *parent;
    OverlayManager *child;
};

OverlayManager *OverlayManager_New(const OverlayManagerTemplate *template, void *args, const enum HeapId heapID);
void OverlayManager_Free(OverlayManager *overlayMan);
void *OverlayManager_NewData(OverlayManager *overlayMan, u32 size, enum HeapId heapID);
void *OverlayManager_Data(OverlayManager *overlayMan);
void OverlayManager_FreeData(OverlayManager *overlayMan);
void *OverlayManager_Args(OverlayManager *overlayMan);
BOOL OverlayManager_Exec(OverlayManager *overlayMan);

#endif // POKEPLATINUM_OVERLAY_MANAGER_H
