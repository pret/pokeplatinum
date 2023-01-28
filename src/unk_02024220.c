#include <nitro.h>
#include <string.h>

#include "functypes/funcptr_02024220.h"
#include "struct_defs/struct_0207C690.h"

#include "heap.h"
#include "gx_layers.h"
#include "unk_02024220.h"

static void sub_020242DC(void);

UnkStruct_0207C690 * sub_02024220 (u32 param0, int param1, int param2, int param3, int param4, UnkFuncPtr_02024220 param5)
{
    int v0, v1;
    UnkStruct_0207C690 * v2 = AllocFromHeap(param0, sizeof(UnkStruct_0207C690));

    v2->unk_00 = param0;

    NNS_G3dInit();

    G3X_InitMtxStack();
    G3_SwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_W);

    if (param1 == 0) {
        v0 = NNS_GfdGetLnkTexVramManagerWorkSize(128 * param2);
        v2->unk_08 = AllocFromHeap(v2->unk_00, v0);
        NNS_GfdInitLnkTexVramManager(0x20000 * param2, 0, v2->unk_08, v0, 1);
    } else {
        NNS_GfdInitFrmTexVramManager(param2, 1);
    }

    if (param3 == 0) {
        v1 = NNS_GfdGetLnkPlttVramManagerWorkSize(256 * param4);
        v2->unk_04 = AllocFromHeap(v2->unk_00, v1);
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

void sub_020242C4 (UnkStruct_0207C690 * param0)
{
    FreeToHeap(param0->unk_04);
    FreeToHeap(param0->unk_08);
    FreeToHeap(param0);
}

static void sub_020242DC (void)
{
    GX_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);

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
