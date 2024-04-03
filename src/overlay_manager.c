#include <nitro.h>
#include <string.h>

#include "game_overlay.h"
#include "overlay_manager.h"
#include "heap.h"

OverlayManager * sub_020067E8 (const OverlayManagerTemplate * param0, void * param1, const int param2)
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

void sub_02006814 (OverlayManager * param0)
{
    Heap_FreeToHeap(param0);
}

void * sub_0200681C (OverlayManager * param0, int param1, int param2)
{
    param0->data = Heap_AllocFromHeap(param2, param1);
    return param0->data;
}

void * sub_0200682C (OverlayManager * param0)
{
    return param0->data;
}

void sub_02006830 (OverlayManager * param0)
{
    Heap_FreeToHeap(param0->data);
    param0->data = NULL;
}

void * sub_02006840 (OverlayManager * param0)
{
    return param0->args;
}

BOOL sub_02006844 (OverlayManager * param0)
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
