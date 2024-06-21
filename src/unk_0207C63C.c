#include <nitro.h>
#include <nnsys.h>
#include <string.h>

#include "struct_decls/struct_02014014_decl.h"

#include "struct_defs/struct_0207C690.h"
#include "struct_defs/struct_0207C894.h"
#include "struct_defs/struct_0207C8C4.h"

#include "spl.h"

#include "unk_02014000.h"
#include "heap.h"
#include "gx_layers.h"
#include "camera.h"
#include "unk_0202419C.h"
#include "unk_02024220.h"

void sub_0207C63C(void);
void sub_0207C664(void);
GenericPointerData * sub_0207C690(int param0);
void sub_0207C6AC(void);
void sub_0207C730(void);
void sub_0207C770(void);
UnkStruct_0207C8C4 * sub_0207C894(UnkStruct_0207C894 * param0);
void sub_0207C8C4(UnkStruct_0207C8C4 * param0, int param1);
BOOL sub_0207C8E0(UnkStruct_0207C8C4 * param0);
void sub_0207C8F4(UnkStruct_0207C8C4 * param0);
static u32 sub_0207C794(u32 param0, BOOL param1);
static u32 sub_0207C7B0(u32 param0, BOOL param1);
static UnkStruct_02014014 * sub_0207C7CC(int param0);
static UnkStruct_02014014 * sub_0207C814(int param0, int param1, int param2);
static void sub_0207C83C(UnkStruct_02014014 * param0);
static void sub_0207C854(UnkSPLStruct6 * param0);

void sub_0207C63C (void)
{
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();
    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);
}

void sub_0207C664 (void)
{
    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_NONE, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, 11, 7);
    G2S_SetBlendAlpha(GX_BLEND_PLANEMASK_NONE, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, 7, 8);
}

GenericPointerData * sub_0207C690 (int param0)
{
    GenericPointerData * v0;

    v0 = sub_02024220(param0, 0, 2, 0, 2, sub_0207C6AC);
    return v0;
}

void sub_0207C6AC (void)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
    G2_SetBG0Priority(1);

    G3X_SetShading(GX_SHADING_TOON);
    G3X_AntiAlias(1);
    G3X_AlphaTest(0, 0);
    G3X_AlphaBlend(1);
    G3X_EdgeMarking(0);
    G3X_SetFog(0, GX_FOGBLEND_COLOR_ALPHA, GX_FOGSLOPE_0x8000, 0);

    G3X_SetClearColor(GX_RGB(0, 0, 0), 0, 0x7fff, 63, 0);
    G3_ViewPort(0, 0, 255, 191);
}

void sub_0207C730 (void)
{
    NNSGfdTexKey v0;
    NNSGfdPlttKey v1;
    u32 v2, v3;

    v0 = NNS_GfdAllocTexVram(0x2000 * 4, 0, 0);
    v1 = NNS_GfdAllocPlttVram(0x20 * (4 + 1), 0, 0);

    GF_ASSERT(v0 != NNS_GFD_ALLOC_ERROR_TEXKEY);
    GF_ASSERT(v1 != NNS_GFD_ALLOC_ERROR_PLTTKEY);

    v2 = NNS_GfdGetTexKeyAddr(v0);
    v3 = NNS_GfdGetPlttKeyAddr(v1);

    sub_02014000();
}

void sub_0207C770 (void)
{
    int v0;
    const MtxFx43 * v1;

    sub_020241B4();

    v0 = sub_0201469C();

    if (v0 > 0) {
        sub_020241B4();
        NNS_G2dSetupSoftwareSpriteCamera();
    }

    sub_020146C0();
    sub_020241BC(GX_SORTMODE_MANUAL, GX_BUFFERMODE_Z);
}

static u32 sub_0207C794 (u32 param0, BOOL param1)
{
    NNSGfdTexKey v0;
    u32 v1;

    v0 = NNS_GfdAllocTexVram(param0, param1, 0);
    sub_020145B4(v0);

    v1 = NNS_GfdGetTexKeyAddr(v0);
    return v1;
}

static u32 sub_0207C7B0 (u32 param0, BOOL param1)
{
    NNSGfdPlttKey v0;
    u32 v1;

    v0 = NNS_GfdAllocPlttVram(param0, param1, 0);
    sub_020145F4(v0);

    v1 = NNS_GfdGetPlttKeyAddr(v0);
    return v1;
}

static UnkStruct_02014014 * sub_0207C7CC (int param0)
{
    UnkStruct_02014014 * v0;
    void * v1;
    Camera * camera;

    v1 = Heap_AllocFromHeap(param0, 0x4800);
    v0 = sub_02014014(sub_0207C794, sub_0207C7B0, v1, 0x4800, 1, param0);
    camera = sub_02014784(v0);

    if (camera != NULL) {
        Camera_SetClipping((FX32_ONE), (FX32_ONE * 900), camera);
    }

    return v0;
}

static UnkStruct_02014014 * sub_0207C814 (int param0, int param1, int param2)
{
    UnkStruct_02014014 * v0;
    void * v1;

    v0 = sub_0207C7CC(param0);
    v1 = sub_020144C4(param1, param2, param0);

    sub_020144CC(v0, v1, (1 << 1) | (1 << 3), 1);

    return v0;
}

void sub_0207C83C (UnkStruct_02014014 * param0)
{
    void * v0;

    v0 = sub_02014730(param0);

    sub_0201411C(param0);
    Heap_FreeToHeap(v0);
}

static void sub_0207C854 (UnkSPLStruct6 * param0)
{
    VecFx32 v0 = {0, 0, 0};

    VEC_Set(&v0, 0, (8 * 172), 0);
    SPL_UnkInline1(param0, &v0);
}

UnkStruct_0207C8C4 * sub_0207C894 (UnkStruct_0207C894 * param0)
{
    int v0;
    int v1;
    int v2;
    int v3;
    UnkStruct_0207C8C4 * v4;

    v4 = Heap_AllocFromHeap(param0->unk_00, sizeof(UnkStruct_0207C8C4));

    GF_ASSERT(v4 != NULL);

    v4->unk_00 = *param0;
    v4->unk_0C = sub_0207C814(v4->unk_00.unk_00, 124, v4->unk_00.unk_04);

    sub_02014788(v4->unk_0C, 1);

    return v4;
}

void sub_0207C8C4 (UnkStruct_0207C8C4 * param0, int param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    UnkStruct_0207C8C4 * v4 = param0;

    sub_020146F4(v4->unk_0C, param1, sub_0207C854, v4);
    sub_02014788(v4->unk_0C, 1);
}

BOOL sub_0207C8E0 (UnkStruct_0207C8C4 * param0)
{
    UnkStruct_0207C8C4 * v0 = param0;

    if (sub_02014710(v0->unk_0C) == 0) {
        return 0;
    }

    return 1;
}

void sub_0207C8F4 (UnkStruct_0207C8C4 * param0)
{
    sub_0207C83C(param0->unk_0C);
    Heap_FreeToHeap(param0);
}
