#include "overlay104/frontier_particle_system.h"

#include <nitro.h>

#include "camera.h"
#include "heap.h"
#include "particle_system.h"
#include "unk_0202419C.h"

static u32 AllocTexVram(u32 size, BOOL is4x4comp);
static u32 AllocPaletteVram(u32 size, BOOL is4pltt);
static void FreeParticleSystem(ParticleSystem *ps);

FrontierParticleSystem *FrontierParticleSystem_New(enum HeapID heapID)
{
    FrontierParticleSystem *fps = Heap_Alloc(heapID, sizeof(FrontierParticleSystem));
    MI_CpuClear8(fps, sizeof(FrontierParticleSystem));

    fps->heapID = heapID;
    ParticleSystem_ZeroAll();

    return fps;
}

void FrontierParticleSystem_Free(FrontierParticleSystem *fps)
{
    for (int i = 0; i < NUM_FRONTIER_PARTICLE_SYSTEMS; i++) {
        if (fps->particleSys[i] != NULL) {
            FreeParticleSystem(fps->particleSys[i]);
        }
    }

    Heap_Free(fps);
}

ParticleSystem *FrontierParticleSystem_NewParticleSystem(FrontierParticleSystem *fps, int index, int narcIdx, enum CameraProjection projection)
{
    GF_ASSERT(fps->particleSys[index] == NULL);

    void *heap = Heap_Alloc(fps->heapID, 0x4800);
    ParticleSystem *ps = ParticleSystem_New(AllocTexVram, AllocPaletteVram, heap, 0x4800, TRUE, fps->heapID);
    Camera *camera = ParticleSystem_GetCamera(ps);

    Camera_SetClipping(FX32_ONE, FX32_CONST(900), camera);
    ParticleSystem_SetCameraProjection(ps, projection);

    void *resource = ParticleSystem_LoadResourceFromNARC(NARC_INDEX_PARTICLEDATA__PL_FRONTIER__FRONTIER_PARTICLE, narcIdx, fps->heapID);
    ParticleSystem_SetResource(ps, resource, VRAM_AUTO_RELEASE_TEXTURE_LNK | VRAM_AUTO_RELEASE_PALETTE_LNK, TRUE);

    fps->particleSys[index] = ps;
    return ps;
}

void FrontierParticleSystem_FreeParticleSystem(FrontierParticleSystem *fps, int index)
{
    GF_ASSERT(fps->particleSys[index] != NULL);

    FreeParticleSystem(fps->particleSys[index]);
    fps->particleSys[index] = NULL;
}

BOOL FrontierParticleSystem_Update(void)
{
    G3_ResetG3X();

    if (ParticleSystem_GetActiveAmount() == 0) {
        return FALSE;
    }

    if (ParticleSystem_DrawAll() > 0) {
        G3_ResetG3X();
    }

    ParticleSystem_UpdateAll();

    return TRUE;
}

ParticleSystem *FrontierParticleSystem_GetParticleSystem(FrontierParticleSystem *fps, int index)
{
    GF_ASSERT(fps->particleSys[index] != NULL);
    return fps->particleSys[index];
}

BOOL FrontierParticleSystem_NoActiveEmitters(FrontierParticleSystem *fps)
{
    for (int i = 0; i < NUM_FRONTIER_PARTICLE_SYSTEMS; i++) {
        if (fps->particleSys[i] != NULL && ParticleSystem_GetActiveEmitterCount(fps->particleSys[i]) > 0) {
            return FALSE;
        }
    }

    return TRUE;
}

static void FreeParticleSystem(ParticleSystem *ps)
{
    void *heap = ParticleSystem_GetHeapStart(ps);

    ParticleSystem_Free(ps);
    Heap_Free(heap);
}

static u32 AllocTexVram(u32 size, BOOL is4x4comp)
{
    NNSGfdTexKey texKey = NNS_GfdAllocTexVram(size, is4x4comp, 0);
    GF_ASSERT(texKey != NNS_GFD_ALLOC_ERROR_TEXKEY);
    ParticleSystem_RegisterTextureKey(texKey);

    return NNS_GfdGetTexKeyAddr(texKey);
}

static u32 AllocPaletteVram(u32 size, BOOL is4pltt)
{
    NNSGfdPlttKey plttKey = NNS_GfdAllocPlttVram(size, is4pltt, NNS_GFD_ALLOC_FROM_LOW);
    GF_ASSERT(plttKey != NNS_GFD_ALLOC_ERROR_PLTTKEY);
    ParticleSystem_RegisterPaletteKey(plttKey);

    return NNS_GfdGetPlttKeyAddr(plttKey);
}
