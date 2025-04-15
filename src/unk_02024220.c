#include "unk_02024220.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_0207C690.h"

#include "functypes/funcptr_02024220.h"

#include "gx_layers.h"
#include "heap.h"

static void sub_020242DC(void);

GenericPointerData *sub_02024220(u32 heapID, int param1, int param2, int param3, int param4, UnkFuncPtr_02024220 param5)
{
    int v0, v1;
    GenericPointerData *v2 = Heap_AllocFromHeap(heapID, sizeof(GenericPointerData));

    v2->heapID = heapID;

    NNS_G3dInit();

    G3X_InitMtxStack();
    G3_SwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_W);

    if (param1 == 0) {
        v0 = NNS_GfdGetLnkTexVramManagerWorkSize(128 * param2);
        v2->unk_08 = Heap_AllocFromHeap(v2->heapID, v0);
        NNS_GfdInitLnkTexVramManager(0x20000 * param2, 0, v2->unk_08, v0, 1);
    } else {
        NNS_GfdInitFrmTexVramManager(param2, 1);
    }

    if (param3 == 0) {
        v1 = NNS_GfdGetLnkPlttVramManagerWorkSize(256 * param4);
        v2->unk_04 = Heap_AllocFromHeap(v2->heapID, v1);
        NNS_GfdInitLnkPlttVramManager(0x2000 * param4, v2->unk_04, v1, 1);
    } else {
        NNS_GfdInitFrmTexVramManager(0x2000 * param4, 1);
    }

    if (param5 != NULL) {
        param5();
    } else {
        sub_020242DC();
    }

    return v2;
}

void sub_020242C4(GenericPointerData *param0)
{
    Heap_FreeToHeap(param0->unk_04);
    Heap_FreeToHeap(param0->unk_08);
    Heap_FreeToHeap(param0);
}

static void sub_020242DC(void)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);

    G2_SetBG0Priority(0);
    G3X_SetShading(GX_SHADING_TOON);
    G3X_AntiAlias(0);
    G3X_AlphaTest(0, 0);
    G3X_AlphaBlend(0);
    G3X_EdgeMarking(0);
    G3X_SetFog(0, GX_FOGBLEND_COLOR_ALPHA, GX_FOGSLOPE_0x8000, 0);
    G3X_SetClearColor(GX_RGB(0, 0, 0), 0, 0x7fff, 63, 0);
    G3_ViewPort(0, 0, 255, 191);
}
