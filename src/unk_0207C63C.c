#include <nitro.h>
#include <nnsys.h>
#include <string.h>

#include "struct_defs/struct_0207C690.h"
#include "struct_defs/struct_0207C894.h"
#include "struct_defs/struct_0207C8C4.h"

#include "camera.h"
#include "gx_layers.h"
#include "heap.h"
#include "particle_system.h"
#include "spl.h"
#include "unk_0202419C.h"
#include "unk_02024220.h"

void sub_0207C63C(void);
void sub_0207C664(void);
void sub_0207C6AC(void);
void sub_0207C730(void);
void sub_0207C770(void);
UnkStruct_0207C8C4 *sub_0207C894(UnkStruct_0207C894 *param0);
void sub_0207C8C4(UnkStruct_0207C8C4 *param0, int param1);
BOOL sub_0207C8E0(UnkStruct_0207C8C4 *param0);
void sub_0207C8F4(UnkStruct_0207C8C4 *param0);
static u32 sub_0207C794(u32 param0, BOOL param1);
static u32 sub_0207C7B0(u32 param0, BOOL param1);
static ParticleSystem *sub_0207C7CC(int heapID);
static ParticleSystem *sub_0207C814(int heapID, int param1, int param2);
static void sub_0207C83C(ParticleSystem *param0);
static void sub_0207C854(SPLEmitter *param0);

void sub_0207C63C(void)
{
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();
    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);
}

void sub_0207C664(void)
{
    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_NONE, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, 11, 7);
    G2S_SetBlendAlpha(GX_BLEND_PLANEMASK_NONE, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, 7, 8);
}

GenericPointerData *sub_0207C690(int heapID)
{
    return sub_02024220(heapID, 0, 2, 0, 2, sub_0207C6AC);
}

void sub_0207C6AC(void)
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

void sub_0207C730(void)
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

    ParticleSystem_ZeroAll();
}

void sub_0207C770(void)
{
    int v0;
    const MtxFx43 *v1;

    sub_020241B4();

    v0 = ParticleSystem_DrawAll();

    if (v0 > 0) {
        sub_020241B4();
        NNS_G2dSetupSoftwareSpriteCamera();
    }

    ParticleSystem_UpdateAll();
    G3_RequestSwapBuffers(GX_SORTMODE_MANUAL, GX_BUFFERMODE_Z);
}

static u32 sub_0207C794(u32 param0, BOOL param1)
{
    NNSGfdTexKey v0;
    u32 v1;

    v0 = NNS_GfdAllocTexVram(param0, param1, 0);
    ParticleSystem_RegisterTextureKey(v0);

    v1 = NNS_GfdGetTexKeyAddr(v0);
    return v1;
}

static u32 sub_0207C7B0(u32 param0, BOOL param1)
{
    NNSGfdPlttKey v0;
    u32 v1;

    v0 = NNS_GfdAllocPlttVram(param0, param1, 0);
    ParticleSystem_RegisterPaletteKey(v0);

    v1 = NNS_GfdGetPlttKeyAddr(v0);
    return v1;
}

static ParticleSystem *sub_0207C7CC(int heapID)
{
    ParticleSystem *v0;
    void *v1;
    Camera *camera;

    v1 = Heap_AllocFromHeap(heapID, 0x4800);
    v0 = ParticleSystem_New(sub_0207C794, sub_0207C7B0, v1, 0x4800, 1, heapID);
    camera = ParticleSystem_GetCamera(v0);

    if (camera != NULL) {
        Camera_SetClipping((FX32_ONE), (FX32_ONE * 900), camera);
    }

    return v0;
}

static ParticleSystem *sub_0207C814(int heapID, int param1, int param2)
{
    ParticleSystem *v0 = sub_0207C7CC(heapID);
    void *v1 = ParticleSystem_LoadResourceFromNARC(param1, param2, heapID);

    ParticleSystem_SetResource(v0, v1, (1 << 1) | (1 << 3), 1);

    return v0;
}

void sub_0207C83C(ParticleSystem *param0)
{
    void *v0 = ParticleSystem_GetHeapStart(param0);

    ParticleSystem_Free(param0);
    Heap_FreeToHeap(v0);
}

static void sub_0207C854(SPLEmitter *param0)
{
    VecFx32 v0 = { 0, 0, 0 };

    VEC_Set(&v0, 0, (8 * 172), 0);
    SPLEmitter_SetPos(param0, &v0);
}

UnkStruct_0207C8C4 *sub_0207C894(UnkStruct_0207C894 *param0)
{
    int v0;
    int v1;
    int v2;
    int v3;
    UnkStruct_0207C8C4 *v4 = Heap_AllocFromHeap(param0->heapID, sizeof(UnkStruct_0207C8C4));

    GF_ASSERT(v4 != NULL);

    v4->unk_00 = *param0;
    v4->unk_0C = sub_0207C814(v4->unk_00.heapID, 124, v4->unk_00.unk_04);

    ParticleSystem_SetCameraProjection(v4->unk_0C, 1);

    return v4;
}

void sub_0207C8C4(UnkStruct_0207C8C4 *param0, int param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    UnkStruct_0207C8C4 *v4 = param0;

    ParticleSystem_CreateEmitterWithCallback(v4->unk_0C, param1, sub_0207C854, v4);
    ParticleSystem_SetCameraProjection(v4->unk_0C, 1);
}

BOOL sub_0207C8E0(UnkStruct_0207C8C4 *param0)
{
    UnkStruct_0207C8C4 *v0 = param0;

    if (ParticleSystem_GetActiveEmitterCount(v0->unk_0C) == 0) {
        return 0;
    }

    return 1;
}

void sub_0207C8F4(UnkStruct_0207C8C4 *param0)
{
    sub_0207C83C(param0->unk_0C);
    Heap_FreeToHeap(param0);
}
