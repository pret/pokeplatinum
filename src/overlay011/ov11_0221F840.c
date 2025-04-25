#include "overlay011/ov11_0221F840.h"

#include <nitro.h>
#include <string.h>

#include "unk_02014000.h"

#include "camera.h"
#include "heap.h"
#include "unk_02014000.h"
#include "unk_0202419C.h"

static u32 ov11_0221F914(u32 param0, BOOL param1);
static u32 ov11_0221F930(u32 param0, BOOL param1);

ParticleSystem *ov11_0221F840(int heapID)
{
    ParticleSystem *v0;
    void *v1;
    Camera *camera;

    v1 = Heap_AllocFromHeap(heapID, 0x4800);
    v0 = ParticleSystem_New(ov11_0221F914, ov11_0221F930, v1, 0x4800, 1, heapID);
    camera = sub_02014784(v0);

    if (camera != NULL) {
        Camera_SetClipping((FX32_ONE), (FX32_ONE * 900), camera);
    }

    return v0;
}

ParticleSystem *ov11_0221F888(int heapID)
{
    ParticleSystem *v0;
    void *v1;
    Camera *camera;

    v1 = Heap_AllocFromHeap(heapID, 0x4200);

    if (v1 == NULL) {
        return NULL;
    }

    v0 = ParticleSystem_New(ov11_0221F914, ov11_0221F930, v1, 0x4200, 1, heapID);
    camera = sub_02014784(v0);

    if (camera != NULL) {
        Camera_SetClipping((FX32_ONE), (FX32_ONE * 900), camera);
    }

    return v0;
}

void ov11_0221F8D8(ParticleSystem *param0)
{
    void *v0 = sub_02014730(param0);

    ParticleSystem_Free(param0);
    Heap_FreeToHeap(v0);
}

void ov11_0221F8F0(void)
{
    int v0;
    const MtxFx43 *v1;

    sub_020241B4();

    if (ParticleSystem_GetActiveAmount() == 0) {
        return;
    }

    v0 = ParticleSystem_DrawAll();

    if (v0 > 0) {
        sub_020241B4();
        NNS_G2dSetupSoftwareSpriteCamera();
    }

    ParticleSystem_UpdateAll();
}

static u32 ov11_0221F914(u32 param0, BOOL param1)
{
    NNSGfdTexKey v0;
    u32 v1;

    v0 = NNS_GfdAllocTexVram(param0, param1, 0);
    ParticleSystem_RegisterTextureKey(v0);
    v1 = NNS_GfdGetTexKeyAddr(v0);

    return v1;
}

static u32 ov11_0221F930(u32 param0, BOOL param1)
{
    NNSGfdPlttKey v0;
    u32 v1;

    v0 = NNS_GfdAllocPlttVram(param0, param1, 0);
    ParticleSystem_RegisterPaletteKey(v0);
    v1 = NNS_GfdGetPlttKeyAddr(v0);

    return v1;
}
