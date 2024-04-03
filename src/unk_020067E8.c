#include <nitro.h>
#include <string.h>


#include "game_overlay.h"
#include "unk_020067E8.h"
#include "heap.h"

OverlayManager * sub_020067E8 (const OverlayManagerTemplate * param0, void * param1, const int param2)
{
    OverlayManager * v0;

    v0 = Heap_AllocFromHeap(param2, sizeof(OverlayManager));

    v0->unk_00 = *param0;
    v0->unk_10 = 0;
    v0->unk_14 = 0;
    v0->unk_18 = param1;
    v0->unk_1C = NULL;
    v0->unk_20 = NULL;
    v0->unk_24 = NULL;

    return v0;
}

void sub_02006814 (OverlayManager * param0)
{
    Heap_FreeToHeap(param0);
}

void * sub_0200681C (OverlayManager * param0, int param1, int param2)
{
    param0->unk_1C = Heap_AllocFromHeap(param2, param1);
    return param0->unk_1C;
}

void * sub_0200682C (OverlayManager * param0)
{
    return param0->unk_1C;
}

void sub_02006830 (OverlayManager * param0)
{
    Heap_FreeToHeap(param0->unk_1C);
    param0->unk_1C = NULL;
}

void * sub_02006840 (OverlayManager * param0)
{
    return param0->unk_18;
}

BOOL sub_02006844 (OverlayManager * param0)
{
    int v0;

    switch (param0->unk_10) {
    case 0:
        if (param0->unk_00.unk_0C != 0xffffffff) {
            Overlay_LoadByID(param0->unk_00.unk_0C, 2);
        }

        param0->unk_10 = 1;
    case 1:
        v0 = param0->unk_00.unk_00(param0, &param0->unk_14);

        if (v0 == 1) {
            param0->unk_10 = 2;
            param0->unk_14 = 0;
        }
        break;
    case 2:
        v0 = param0->unk_00.unk_04(param0, &param0->unk_14);

        if (v0 == 1) {
            param0->unk_10 = 3;
            param0->unk_14 = 0;
        }
        break;
    case 3:
        v0 = param0->unk_00.unk_08(param0, &param0->unk_14);

        if (v0 == 1) {
            if (param0->unk_00.unk_0C != 0xffffffff) {
                Overlay_UnloadByID(param0->unk_00.unk_0C);
            }

            return 1;
        }
        break;
    }

    return 0;
}
