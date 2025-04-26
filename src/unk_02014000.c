#include "unk_02014000.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_02014560.h"
#include "struct_defs/struct_020147B8.h"
#include "struct_defs/struct_02014874.h"
#include "struct_defs/struct_02014890.h"
#include "struct_defs/struct_02014910.h"
#include "struct_defs/struct_02014970.h"

#include "functypes/funcptr_020146F4.h"

#include "camera.h"
#include "heap.h"
#include "narc.h"
#include "spl_behavior.h"
#include "spl_manager.h"
#include "sys_task.h"
#include "sys_task_manager.h"

#define MAX_PARTICLE_SYSTEMS    16
#define MAX_EMITTERS            20
#define MAX_PARTICLES           200
#define FIXED_POLYGON_ID        5
#define MIN_POLYGON_ID          6
#define MAX_POLYGON_ID          63


static void *sParticleSystems[MAX_PARTICLE_SYSTEMS];

static void *Unk_021BF614;

// Particle system whose resources are currently being uploaded to VRAM.
// Used so custom Texture/Palette allocators can save the resources.
// See ParticleSystem_Register*Key
static ParticleSystem *sUploadingParticleSystem;

static const VecFx32 sParticleSystemDefaultCameraPos = {
    0, 0, 0x4000
};

static const VecFx32 sParticleSystemDefaultCameraUp = {
    0, FX32_ONE, 0
};

static const VecFx32 sParticleSystemDefaultCameraTarget = {
    0, 0, 0
};

static void *ParticleSystem00_AllocMemory(u32 size);
static void *ParticleSystem01_AllocMemory(u32 size);
static void *ParticleSystem02_AllocMemory(u32 size);
static void *ParticleSystem03_AllocMemory(u32 size);
static void *ParticleSystem04_AllocMemory(u32 size);
static void *ParticleSystem05_AllocMemory(u32 size);
static void *ParticleSystem06_AllocMemory(u32 size);
static void *ParticleSystem07_AllocMemory(u32 size);
static void *ParticleSystem08_AllocMemory(u32 size);
static void *ParticleSystem09_AllocMemory(u32 size);
static void *ParticleSystem10_AllocMemory(u32 size);
static void *ParticleSystem11_AllocMemory(u32 size);
static void *ParticleSystem12_AllocMemory(u32 size);
static void *ParticleSystem13_AllocMemory(u32 size);
static void *ParticleSystem14_AllocMemory(u32 size);
static void *ParticleSystem15_AllocMemory(u32 size);
static inline void *ParticleSystem_AllocMemory(ParticleSystem *param0, u32 param1);
static void ParticleSystem_UploadResourcesInternal(ParticleSystem *param0);
static void ParticleSystem_VBlankResourceUploadInternal(SysTask *param0, void *param1);

static const SPLAllocFunc sParticleSystemAllocFuncs[] = {
    ParticleSystem00_AllocMemory,
    ParticleSystem01_AllocMemory,
    ParticleSystem02_AllocMemory,
    ParticleSystem03_AllocMemory,
    ParticleSystem04_AllocMemory,
    ParticleSystem05_AllocMemory,
    ParticleSystem06_AllocMemory,
    ParticleSystem07_AllocMemory,
    ParticleSystem08_AllocMemory,
    ParticleSystem09_AllocMemory,
    ParticleSystem10_AllocMemory,
    ParticleSystem11_AllocMemory,
    ParticleSystem12_AllocMemory,
    ParticleSystem13_AllocMemory,
    ParticleSystem14_AllocMemory,
    ParticleSystem15_AllocMemory,
};

void ParticleSystem_InitAll(void)
{
    for (int i = 0; i < MAX_PARTICLE_SYSTEMS; i++) {
        sParticleSystems[i] = NULL;
    }
}

ParticleSystem *ParticleSystem_New(SPLTexVRAMAllocFunc texAllocFunc, SPLPalVRAMAllocFunc palAllocFunc, void *heap, int heapSize, BOOL hasCamera, enum HeapId heapID)
{
    ParticleSystem *particleSystem;
    int id;

    for (id = 0; id < MAX_PARTICLE_SYSTEMS; id++) {
        if (sParticleSystems[id] == NULL) {
            break;
        }
    }

    if (id >= MAX_PARTICLE_SYSTEMS) {
        return NULL;
    }

    particleSystem = Heap_AllocFromHeap(heapID, sizeof(ParticleSystem));
    if (particleSystem == NULL) {
        GF_ASSERT(FALSE);
    }

    memset(particleSystem, 0, sizeof(ParticleSystem));

    particleSystem->texAllocFunc = texAllocFunc;
    particleSystem->palAllocFunc = palAllocFunc;

    particleSystem->cameraPos = sParticleSystemDefaultCameraPos;
    particleSystem->cameraUp = sParticleSystemDefaultCameraUp;
    particleSystem->cameraTarget = sParticleSystemDefaultCameraTarget;

    memset(heap, 0, heapSize);
    particleSystem->heapStart = heap;
    particleSystem->heap = heap;
    particleSystem->heapEnd = (void *)((u32)heap + heapSize);
    particleSystem->id = id;
    sParticleSystems[id] = particleSystem;

    if (hasCamera == TRUE) {
        particleSystem->camera = Camera_Alloc(heapID);

        {
            VEC_Set(&particleSystem->unk_24, 0, 0, 0);
            particleSystem->cameraFov = 8192;

            Camera_InitWithTargetAndPosition(
                &sParticleSystemDefaultCameraTarget, 
                &sParticleSystemDefaultCameraPos, 
                particleSystem->cameraFov, 
                CAMERA_PROJECTION_PERSPECTIVE, 
                FALSE, 
                particleSystem->camera
            );

            particleSystem->cameraProjection = CAMERA_PROJECTION_PERSPECTIVE;
            Camera_SetAsActive(particleSystem->camera);
        }
    }

    particleSystem->manager = SPLManager_New(
        sParticleSystemAllocFuncs[id], 
        MAX_EMITTERS, 
        MAX_PARTICLES, 
        FIXED_POLYGON_ID, 
        MIN_POLYGON_ID, 
        MAX_POLYGON_ID
    );

    ParticleSystem_SetCameraUp(particleSystem, &sParticleSystemDefaultCameraUp);

    return particleSystem;
}

void ParticleSystem_Free(ParticleSystem *particleSystem)
{
    sub_02014718(particleSystem);

    if (particleSystem->vramAutoRelease & VRAM_AUTO_RELEASE_TEXTURE_FRM) {
        NNS_GfdSetFrmTexVramState(&particleSystem->textureVRAMState);
    } else if (particleSystem->vramAutoRelease & VRAM_AUTO_RELEASE_TEXTURE_LNK) {
        for (int i = 0; i < MAX_TEXTURE_KEYS; i++) {
            if (particleSystem->textureKeys[i] != NNS_GFD_ALLOC_ERROR_TEXKEY) {
                NNS_GfdFreeLnkTexVram(particleSystem->textureKeys[i]);
                particleSystem->textureKeys[i] = NNS_GFD_ALLOC_ERROR_TEXKEY;
            }
        }
    }

    if (particleSystem->vramAutoRelease & (1 << 2)) {
        NNS_GfdSetFrmPlttVramState(&particleSystem->paletteVRAMState);
    } else if (particleSystem->vramAutoRelease & (1 << 3)) {
        for (int i = 0; i < MAX_PALETTE_KEYS; i++) {
            if (particleSystem->paletteKeys[i] != NNS_GFD_ALLOC_ERROR_PLTTKEY) {
                NNS_GfdFreeLnkPlttVram(particleSystem->paletteKeys[i]);
                particleSystem->paletteKeys[i] = NNS_GFD_ALLOC_ERROR_PLTTKEY;
            }
        }
    }

    particleSystem->vramAutoRelease = VRAM_AUTO_RELEASE_NONE;
    particleSystem->unk_08 = NULL;

    if (particleSystem->resource != NULL) {
        Heap_FreeToHeap(particleSystem->resource);
        particleSystem->resource = NULL;
    }

    for (int i = 0; i < MAX_PARTICLE_SYSTEMS; i++) {
        if (sParticleSystems[i] == particleSystem) {
            sParticleSystems[i] = NULL;
            break;
        }
    }

    if (particleSystem->camera != NULL) {
        Camera_Delete(particleSystem->camera);
    }

    Heap_FreeToHeap(particleSystem);
}

void ParticleSystem_FreeAll(void)
{
    for (int i = 0; i < MAX_PARTICLE_SYSTEMS; i++) {
        if (sParticleSystems[i] != NULL) {
            ParticleSystem_Free(sParticleSystems[i]);
        }
    }
}

static inline void *ParticleSystem_AllocMemory(ParticleSystem *particleSystem, u32 size)
{
    void *allocated = particleSystem->heap;

    u32 newHeapPos = (u32)particleSystem->heap + size;
    u32 offset = newHeapPos % 4;
    if (offset > 0) {
        newHeapPos += 4 - offset;
    }

    particleSystem->heap = (void *)newHeapPos;
    if (particleSystem->heap >= particleSystem->heapEnd) {
        GF_ASSERT(FALSE);
    }

    return allocated;
}

static void *ParticleSystem00_AllocMemory(u32 size)
{
    return ParticleSystem_AllocMemory(sParticleSystems[0], size);
}

static void *ParticleSystem01_AllocMemory(u32 size)
{
    return ParticleSystem_AllocMemory(sParticleSystems[1], size);
}

static void *ParticleSystem02_AllocMemory(u32 size)
{
    return ParticleSystem_AllocMemory(sParticleSystems[2], size);
}

static void *ParticleSystem03_AllocMemory(u32 size)
{
    return ParticleSystem_AllocMemory(sParticleSystems[3], size);
}

static void *ParticleSystem04_AllocMemory(u32 size)
{
    return ParticleSystem_AllocMemory(sParticleSystems[4], size);
}

static void *ParticleSystem05_AllocMemory(u32 size)
{
    return ParticleSystem_AllocMemory(sParticleSystems[5], size);
}

static void *ParticleSystem06_AllocMemory(u32 size)
{
    return ParticleSystem_AllocMemory(sParticleSystems[6], size);
}

static void *ParticleSystem07_AllocMemory(u32 size)
{
    return ParticleSystem_AllocMemory(sParticleSystems[7], size);
}

static void *ParticleSystem08_AllocMemory(u32 size)
{
    return ParticleSystem_AllocMemory(sParticleSystems[8], size);
}

static void *ParticleSystem09_AllocMemory(u32 size)
{
    return ParticleSystem_AllocMemory(sParticleSystems[9], size);
}

static void *ParticleSystem10_AllocMemory(u32 size)
{
    return ParticleSystem_AllocMemory(sParticleSystems[10], size);
}

static void *ParticleSystem11_AllocMemory(u32 size)
{
    return ParticleSystem_AllocMemory(sParticleSystems[11], size);
}

static void *ParticleSystem12_AllocMemory(u32 size)
{
    return ParticleSystem_AllocMemory(sParticleSystems[12], size);
}

static void *ParticleSystem13_AllocMemory(u32 size)
{
    return ParticleSystem_AllocMemory(sParticleSystems[13], size);
}

static void *ParticleSystem14_AllocMemory(u32 size)
{
    return ParticleSystem_AllocMemory(sParticleSystems[14], size);
}

static void *ParticleSystem15_AllocMemory(u32 size)
{
    return ParticleSystem_AllocMemory(sParticleSystems[15], size);
}

void *ParticleSystem_LoadResourceFromNARC(enum NarcID narcID, int memberIndex, enum HeapId heapID)
{
    return NARC_AllocAndReadWholeMemberByIndexPair(narcID, memberIndex, heapID);
}

void ParticleSystem_SetResource(ParticleSystem *particleSystem, void *resource, enum VRAMAutoRelease autoRelease, BOOL uploadImmediately)
{
    GF_ASSERT(particleSystem->manager != NULL);
    GF_ASSERT(particleSystem->resource == NULL);

    particleSystem->vramAutoRelease = autoRelease;

    if (autoRelease & VRAM_AUTO_RELEASE_TEXTURE_FRM) {
        NNS_GfdGetFrmTexVramState(&particleSystem->textureVRAMState);
    } else if (autoRelease & VRAM_AUTO_RELEASE_TEXTURE_LNK) {
        for (int i = 0; i < MAX_TEXTURE_KEYS; i++) {
            particleSystem->textureKeys[i] = NNS_GFD_ALLOC_ERROR_TEXKEY;
        }
    }

    if (autoRelease & VRAM_AUTO_RELEASE_PALETTE_FRM) {
        NNS_GfdGetFrmPlttVramState(&particleSystem->paletteVRAMState);
    } else if (autoRelease & VRAM_AUTO_RELEASE_PALETTE_LNK) {
        for (int i = 0; i < MAX_PALETTE_KEYS; i++) {
            particleSystem->paletteKeys[i] = NNS_GFD_ALLOC_ERROR_PLTTKEY;
        }
    }

    particleSystem->resource = resource;

    if (uploadImmediately == TRUE) {
        ParticleSystem_UploadResourcesInternal(particleSystem);
    } else {
        SysTask_ExecuteAfterVBlank(ParticleSystem_VBlankResourceUploadInternal, particleSystem, 5);
    }
}

static void ParticleSystem_UploadResourcesInternal(ParticleSystem *particleSystem)
{
    SPLManager_LoadResources(particleSystem->manager, particleSystem->resource);

    sUploadingParticleSystem = particleSystem;

    if (particleSystem->texAllocFunc == NULL) {
        SPLManager_UploadTextures(particleSystem->manager);
    } else {
        SPLManager_UploadTexturesEx(particleSystem->manager, particleSystem->texAllocFunc);
    }

    if (particleSystem->palAllocFunc == NULL) {
        SPLManager_UploadPalettes(particleSystem->manager);
    } else {
        SPLManager_UploadPalettesEx(particleSystem->manager, particleSystem->palAllocFunc);
    }

    sUploadingParticleSystem = NULL;
}

static void ParticleSystem_VBlankResourceUploadInternal(SysTask *task, void *param)
{
    ParticleSystem *particleSystem = param;

    ParticleSystem_UploadResourcesInternal(particleSystem);
    SysTask_Done(task);
}

void ParticleSystem_RegisterTextureKey(NNSGfdTexKey key)
{
    GF_ASSERT(key != NNS_GFD_ALLOC_ERROR_TEXKEY);
    GF_ASSERT(sUploadingParticleSystem != NULL);

    ParticleSystem *particleSystem = sUploadingParticleSystem;

    for (int i = 0; i < MAX_TEXTURE_KEYS; i++) {
        if (particleSystem->textureKeys[i] == NNS_GFD_ALLOC_ERROR_TEXKEY) {
            particleSystem->textureKeys[i] = key;
            return;
        }
    }

    GF_ASSERT(FALSE);
}

void ParticleSystem_RegisterPaletteKey(NNSGfdPlttKey key)
{
    GF_ASSERT(key != NNS_GFD_ALLOC_ERROR_PLTTKEY);
    GF_ASSERT(sUploadingParticleSystem != NULL);

    ParticleSystem *particleSystem = sUploadingParticleSystem;

    for (int i = 0; i < MAX_PALETTE_KEYS; i++) {
        if (particleSystem->paletteKeys[i] == NNS_GFD_ALLOC_ERROR_PLTTKEY) {
            particleSystem->paletteKeys[i] = key;
            return;
        }
    }

    GF_ASSERT(FALSE);
}

void ParticleSystem_Draw(ParticleSystem *particleSystem)
{
    if (particleSystem->camera != NULL) {
        Camera_ComputeProjectionMatrix(particleSystem->cameraProjection, particleSystem->camera);
        Camera_SetAsActive(particleSystem->camera);
        Camera_ComputeViewMatrix();
    }

    NNS_G3dGlbFlush();

    const MtxFx43 *viewMatrix = NNS_G3dGlbGetCameraMtx();
    SPLManager_Draw(particleSystem->manager, viewMatrix);

    if (particleSystem->camera != NULL) {
        Camera_ClearActive();
    }

    NNS_G3dGlbFlush();
}

void ParticleSystem_Update(ParticleSystem *particleSystem)
{
    SPLManager_Update(particleSystem->manager);
}

int ParticleSystem_GetActiveAmount(void)
{
    int count = 0;
    for (int i = 0; i < MAX_PARTICLE_SYSTEMS; i++) {
        if (sParticleSystems[i] != NULL) {
            count++;
        }
    }

    return count;
}

int ParticleSystem_DrawAll(void)
{
    int count = 0;
    for (int i = 0; i < MAX_PARTICLE_SYSTEMS; i++) {
        if (sParticleSystems[i] != NULL) {
            ParticleSystem_Draw(sParticleSystems[i]);
            count++;
        }
    }

    return count;
}

int ParticleSystem_UpdateAll(void)
{
    int count = 0;
    for (int i = 0; i < MAX_PARTICLE_SYSTEMS; i++) {
        if (sParticleSystems[i] != NULL) {
            ParticleSystem_Update(sParticleSystems[i]);
            count++;
        }
    }

    return count;
}

SPLEmitter *ParticleSystem_CreateEmitter(ParticleSystem *particleSystem, int resourceID, const VecFx32 *position)
{
    SPLEmitter *emitter = SPLManager_CreateEmitter(particleSystem->manager, resourceID, position);
    particleSystem->unk_08 = emitter;

    return emitter;
}

SPLEmitter *sub_020146F4(ParticleSystem *particleSystem, int resourceID, UnkFuncPtr_020146F4 param2, void *param3)
{
    SPLEmitter *v0;

    Unk_021BF614 = param3;
    v0 = SPLManager_CreateEmitterWithCallback(particleSystem->manager, resourceID, param2);
    Unk_021BF614 = NULL;
    particleSystem->unk_08 = v0;

    return v0;
}

s32 sub_02014710(ParticleSystem *param0)
{
    return param0->manager->activeEmitters.count;
}

void sub_02014718(ParticleSystem *param0)
{
    SPLManager_DeleteAllEmitters(param0->manager);
}

void sub_02014724(ParticleSystem *param0, SPLEmitter *param1)
{
    SPLManager_DeleteEmitter(param0->manager, param1);
}

void *sub_02014730(ParticleSystem *param0)
{
    return param0->heapStart;
}

void sub_02014734(ParticleSystem *param0, VecFx32 *param1)
{
    *param1 = param0->cameraUp;
}

void ParticleSystem_SetCameraUp(ParticleSystem *particleSystem, const VecFx32 *up)
{
    particleSystem->cameraUp = *up;
    Camera_SetUp(up, particleSystem->camera);
}

void *sub_02014764(void)
{
    return Unk_021BF614;
}

void sub_02014770(VecFx32 *param0)
{
    *param0 = sParticleSystemDefaultCameraUp;
}

Camera *sub_02014784(ParticleSystem *param0)
{
    return param0->camera;
}

void sub_02014788(ParticleSystem *param0, int param1)
{
    param0->cameraProjection = param1;
}

u8 sub_02014790(ParticleSystem *param0)
{
    return param0->cameraProjection;
}

void sub_02014798(SPLEmitter *param0, VecFx16 *param1)
{
    *param1 = param0->axis;
}

void sub_020147B0(SPLEmitter *param0, fx32 param1)
{
    param0->resource->header->emissionCount = param1;
}

enum SpecialFieldType {
    SPL_FLD_TYPE_GRAVITY = 0,
    SPL_FLD_TYPE_RANDOM,
    SPL_FLD_TYPE_MAGNET,
    SPL_FLD_TYPE_SPIN,
    SPL_FLD_TYPE_SIMPLE_COLL,
    SPL_FLD_TYPE_CONVERGENCE,
};

static const void *sub_020147B8(SPLEmitter *param0, int param1)
{
    int v0;
    int v1;
    SPLBehavior *v2;

    v1 = param0->resource->behaviorCount;

    if (v1 == 0) {
        return NULL;
    }

    for (v0 = 0; v0 < v1; v0++) {
        v2 = &param0->resource->behaviors[v0];

        if (v2 == NULL) {
            continue;
        }

        switch (param1) {
        case SPL_FLD_TYPE_GRAVITY:
            if (v2->applyFunc == SPLBehavior_ApplyGravity) {
                return v2->object;
            }
            continue;
        case SPL_FLD_TYPE_RANDOM:
            if (v2->applyFunc == SPLBehavior_ApplyRandom) {
                return v2->object;
            }
            continue;
        case SPL_FLD_TYPE_MAGNET:
            if (v2->applyFunc == SPLBehavior_ApplyMagnet) {
                return v2->object;
            }
            continue;
        case SPL_FLD_TYPE_SPIN:
            if (v2->applyFunc == SPLBehavior_ApplySpin) {
                return v2->object;
            }
            continue;
        case SPL_FLD_TYPE_SIMPLE_COLL:
            if (v2->applyFunc == SPLBehavior_ApplyCollisionPlane) {
                return v2->object;
            }
            break;
        case SPL_FLD_TYPE_CONVERGENCE:
            if (v2->applyFunc == SPLBehavior_ApplyConvergence) {
                return v2->object;
            }
            continue;
        default:
            return NULL;
        }
    }

    return NULL;
}

void sub_02014874(SPLEmitter *param0, VecFx16 *param1)
{
    UnkStruct_02014874 *v0 = (UnkStruct_02014874 *)sub_020147B8(param0, SPL_FLD_TYPE_GRAVITY);

    if (v0 == NULL) {
        return;
    }

    v0->unk_00 = *param1;
}

void sub_02014890(SPLEmitter *param0, VecFx32 *param1)
{
    UnkStruct_02014890 *v0 = (UnkStruct_02014890 *)sub_020147B8(param0, SPL_FLD_TYPE_MAGNET);

    if (v0 == NULL) {
        return;
    }

    v0->unk_00 = *param1;
}

void sub_020148A8(SPLEmitter *param0, VecFx32 *param1)
{
    UnkStruct_02014890 *v0 = (UnkStruct_02014890 *)sub_020147B8(param0, SPL_FLD_TYPE_MAGNET);

    if (v0 == NULL) {
        VecFx32 v1 = { 0, 0, 0 };
        *param1 = v1;
        return;
    }

    *param1 = v0->unk_00;
}

void sub_020148DC(SPLEmitter *param0, fx16 *param1)
{
    UnkStruct_02014890 *v0 = (UnkStruct_02014890 *)sub_020147B8(param0, SPL_FLD_TYPE_MAGNET);

    if (v0 == NULL) {
        return;
    }

    v0->unk_0C = *param1;
}

void sub_020148F4(SPLEmitter *param0, fx16 *param1)
{
    UnkStruct_02014890 *v0 = (UnkStruct_02014890 *)sub_020147B8(param0, SPL_FLD_TYPE_MAGNET);

    if (v0 == NULL) {
        *param1 = 0;
        return;
    }

    *param1 = v0->unk_0C;
}

void sub_02014910(SPLEmitter *param0, u16 *param1)
{
    UnkStruct_02014910 *v0 = (UnkStruct_02014910 *)sub_020147B8(param0, SPL_FLD_TYPE_SPIN);

    if (v0 == NULL) {
        return;
    }

    v0->unk_00 = *param1;
}

void sub_02014924(SPLEmitter *param0, u16 *param1)
{
    UnkStruct_02014910 *v0 = (UnkStruct_02014910 *)sub_020147B8(param0, SPL_FLD_TYPE_SPIN);

    if (v0 == NULL) {
        *param1 = 0;
        return;
    }

    *param1 = v0->unk_00;
}

void sub_02014940(SPLEmitter *param0, u16 *param1)
{
    UnkStruct_02014910 *v0 = (UnkStruct_02014910 *)sub_020147B8(param0, SPL_FLD_TYPE_SPIN);

    if (v0 == NULL) {
        return;
    }

    v0->unk_02 = *param1;
}

void sub_02014954(SPLEmitter *param0, u16 *param1)
{
    UnkStruct_02014910 *v0 = (UnkStruct_02014910 *)sub_020147B8(param0, SPL_FLD_TYPE_SPIN);

    if (v0 == NULL) {
        *param1 = 0;
        return;
    }

    *param1 = v0->unk_02;
}

void sub_02014970(SPLEmitter *param0, VecFx32 *param1)
{
    UnkStruct_02014970 *v0 = (UnkStruct_02014970 *)sub_020147B8(param0, SPL_FLD_TYPE_CONVERGENCE);

    if (v0 == NULL) {
        return;
    }

    v0->unk_00 = *param1;
}

void sub_02014988(SPLEmitter *param0, VecFx32 *param1)
{
    UnkStruct_02014970 *v0 = (UnkStruct_02014970 *)sub_020147B8(param0, SPL_FLD_TYPE_CONVERGENCE);

    if (v0 == NULL) {
        VecFx32 v1 = { 0, 0, 0 };
        *param1 = v1;
        return;
    }

    *param1 = v0->unk_00;
}

void sub_020149BC(SPLEmitter *param0, fx16 *param1)
{
    UnkStruct_02014970 *v0 = (UnkStruct_02014970 *)sub_020147B8(param0, SPL_FLD_TYPE_CONVERGENCE);

    if (v0 == NULL) {
        return;
    }

    v0->unk_0C = *param1;
}

void sub_020149D4(SPLEmitter *param0, fx16 *param1)
{
    UnkStruct_02014970 *v0 = (UnkStruct_02014970 *)sub_020147B8(param0, SPL_FLD_TYPE_CONVERGENCE);

    if (v0 == NULL) {
        *param1 = 0;
        return;
    }

    *param1 = v0->unk_0C;
}
