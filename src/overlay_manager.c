#include <nitro.h>
#include <string.h>

#include "game_overlay.h"
#include "overlay_manager.h"
#include "heap.h"

OverlayManager * OverlayManager_New (const OverlayManagerTemplate * param0, void * param1, const enum HeapId param2)
{
    OverlayManager * v0;

    v0 = Heap_AllocFromHeap(param2, sizeof(OverlayManager));

    v0->template= *param0;
    v0->execState = 0;
    v0->procState = 0;
    v0->args = param1;
    v0->data = NULL;
    v0->parent = NULL;
    v0->child = NULL;

    return v0;
}

void OverlayManager_Free (OverlayManager * param0)
{
    Heap_FreeToHeap(param0);
}

void * OverlayManager_NewData (OverlayManager * param0, u32 param1, enum HeapId param2)
{
    param0->data = Heap_AllocFromHeap(param2, param1);
    return param0->data;
}

void * OverlayManager_Data (OverlayManager * param0)
{
    return param0->data;
}

void OverlayManager_FreeData (OverlayManager * param0)
{
    Heap_FreeToHeap(param0->data);
    param0->data = NULL;
}

void * OverlayManager_Args (OverlayManager * param0)
{
    return param0->args;
}

BOOL OverlayManager_Exec (OverlayManager * param0)
{
    int v0;

    switch (param0->execState) {
    case 0:
        if (param0->template.overlayID != 0xffffffff) {
            Overlay_LoadByID(param0->template.overlayID, 2);
        }

        param0->execState = 1;
    case 1:
        v0 = param0->template.init(param0, &param0->procState);

        if (v0 == 1) {
            param0->execState = 2;
            param0->procState = 0;
        }
        break;
    case 2:
        v0 = param0->template.main(param0, &param0->procState);

        if (v0 == 1) {
            param0->execState = 3;
            param0->procState = 0;
        }
        break;
    case 3:
        v0 = param0->template.exit(param0, &param0->procState);

        if (v0 == 1) {
            if (param0->template.overlayID != 0xffffffff) {
                Overlay_UnloadByID(param0->template.overlayID);
            }

            return 1;
        }
        break;
    }

    return 0;
}
