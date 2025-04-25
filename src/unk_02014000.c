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

// enum {
//     EMIT_MAX = 20,
//     PARTICLE_MAX = 200,
//     FIX_POLYGON_ID = 5,
//     MIN_POLYGON_ID = 6,
//     MAX_POLYGON_ID = 63,
// };

static void *sParticleSystems[MAX_PARTICLE_SYSTEMS];

static void *Unk_021BF614;

static ParticleSystem *Unk_021BF610;

static const VecFx32 sParticleSystemDefaultCameraPos = {
    0, 0, 0x4000
};

static const VecFx32 sParticleSystemDefaultCameraUp = {
    0, FX32_ONE, 0
};

static const VecFx32 sParticleSystemDefaultCameraTarget = {
    0, 0, 0
};

static void *sub_02014204(u32 param0);
static void *sub_02014230(u32 param0);
static void *sub_0201425C(u32 param0);
static void *sub_02014288(u32 param0);
static void *sub_020142B4(u32 param0);
static void *sub_020142E0(u32 param0);
static void *sub_0201430C(u32 param0);
static void *sub_02014338(u32 param0);
static void *sub_02014364(u32 param0);
static void *sub_02014390(u32 param0);
static void *sub_020143BC(u32 param0);
static void *sub_020143E8(u32 param0);
static void *sub_02014414(u32 param0);
static void *sub_02014440(u32 param0);
static void *sub_0201446C(u32 param0);
static void *sub_02014498(u32 param0);
static inline void *Particle_LocalAlloc(ParticleSystem *param0, u32 param1);
static void sub_02014560(ParticleSystem *param0);
static void sub_020145A0(SysTask *param0, void *param1);

void sub_0201411C(ParticleSystem *param0);
void sub_02014718(ParticleSystem *param0);
void sub_020144CC(ParticleSystem *param0, void *param1, int param2, int param3);

static const SPLAllocFunc sParticleSystemAllocFuncs[] = {
    sub_02014204,
    sub_02014230,
    sub_0201425C,
    sub_02014288,
    sub_020142B4,
    sub_020142E0,
    sub_0201430C,
    sub_02014338,
    sub_02014364,
    sub_02014390,
    sub_020143BC,
    sub_020143E8,
    sub_02014414,
    sub_02014440,
    sub_0201446C,
    sub_02014498,
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

void sub_0201411C(ParticleSystem *param0)
{
    int v0;

    sub_02014718(param0);

    if (param0->unk_D8 & (1 << 0)) {
        NNS_GfdSetFrmTexVramState(&param0->unk_58_val1);
    } else if (param0->unk_D8 & (1 << 1)) {
        int v1;
        for (v1 = 0; v1 < 16; v1++) {
            if (param0->unk_58_val2[v1] != NNS_GFD_ALLOC_ERROR_TEXKEY) {
                NNS_GfdFreeLnkTexVram(param0->unk_58_val2[v1]);
                param0->unk_58_val2[v1] = NNS_GFD_ALLOC_ERROR_TEXKEY;
            }
        }
    }

    if (param0->unk_D8 & (1 << 2)) {
        NNS_GfdSetFrmPlttVramState(&param0->unk_98_val1);
    } else if (param0->unk_D8 & (1 << 3)) {
        int v2;
        for (v2 = 0; v2 < 16; v2++) {
            if (param0->unk_98_val2[v2] != NNS_GFD_ALLOC_ERROR_PLTTKEY) {
                NNS_GfdFreeLnkPlttVram(param0->unk_98_val2[v2]);
                param0->unk_98_val2[v2] = NNS_GFD_ALLOC_ERROR_PLTTKEY;
            }
        }
    }
    param0->unk_D8 = 0 | 0;
    param0->unk_08 = NULL;

    if (param0->unk_04 != NULL) {
        Heap_FreeToHeap(param0->unk_04);
        param0->unk_04 = NULL;
    }

    for (v0 = 0; v0 < 16; v0++) {
        if (sParticleSystems[v0] == param0) {
            sParticleSystems[v0] = NULL;
            break;
        }
    }

    if (param0->camera != NULL) {
        Camera_Delete(param0->camera);
    }

    Heap_FreeToHeap(param0);
}

void sub_020141E4(void)
{
    int i;

    for (i = 0; i < 16; i++) {
        if (sParticleSystems[i] != NULL) {
            sub_0201411C(sParticleSystems[i]);
        }
    }
}

static inline void *Particle_LocalAlloc(ParticleSystem *param0, u32 param1)
{
    void *v0;
    u32 v1, v2;

    v0 = param0->heap;

    v1 = (u32)param0->heap + param1;
    v2 = v1 % 4;
    if (v2 > 0) {
        v1 += 4 - v2;
    }
    param0->heap = (void *)v1;

    if (param0->heap >= param0->heapEnd) {
        GF_ASSERT(FALSE);
    }
    return v0;
}

static void *sub_02014204(u32 param0)
{
    ParticleSystem *v0 = sParticleSystems[0];
    return Particle_LocalAlloc(v0, param0);
}

static void *sub_02014230(u32 param0)
{
    ParticleSystem *v0 = sParticleSystems[1];
    return Particle_LocalAlloc(v0, param0);
}

static void *sub_0201425C(u32 param0)
{
    ParticleSystem *v0 = sParticleSystems[2];
    return Particle_LocalAlloc(v0, param0);
}

static void *sub_02014288(u32 param0)
{
    ParticleSystem *v0 = sParticleSystems[3];
    return Particle_LocalAlloc(v0, param0);
}

static void *sub_020142B4(u32 param0)
{
    ParticleSystem *v0 = sParticleSystems[4];
    return Particle_LocalAlloc(v0, param0);
}

static void *sub_020142E0(u32 param0)
{
    ParticleSystem *v0 = sParticleSystems[5];
    return Particle_LocalAlloc(v0, param0);
}

static void *sub_0201430C(u32 param0)
{
    ParticleSystem *v0 = sParticleSystems[6];
    return Particle_LocalAlloc(v0, param0);
}

static void *sub_02014338(u32 param0)
{
    ParticleSystem *v0 = sParticleSystems[7];
    return Particle_LocalAlloc(v0, param0);
}

static void *sub_02014364(u32 param0)
{
    ParticleSystem *v0 = sParticleSystems[8];
    return Particle_LocalAlloc(v0, param0);
}

static void *sub_02014390(u32 param0)
{
    ParticleSystem *v0 = sParticleSystems[9];
    return Particle_LocalAlloc(v0, param0);
}

static void *sub_020143BC(u32 param0)
{
    ParticleSystem *v0 = sParticleSystems[10];
    return Particle_LocalAlloc(v0, param0);
}

static void *sub_020143E8(u32 param0)
{
    ParticleSystem *v0 = sParticleSystems[11];
    return Particle_LocalAlloc(v0, param0);
}

static void *sub_02014414(u32 param0)
{
    ParticleSystem *v0 = sParticleSystems[12];
    return Particle_LocalAlloc(v0, param0);
}

static void *sub_02014440(u32 param0)
{
    ParticleSystem *v0 = sParticleSystems[13];
    return Particle_LocalAlloc(v0, param0);
}

static void *sub_0201446C(u32 param0)
{
    ParticleSystem *v0 = sParticleSystems[14];
    return Particle_LocalAlloc(v0, param0);
}

static void *sub_02014498(u32 param0)
{
    ParticleSystem *v0 = sParticleSystems[15];
    return Particle_LocalAlloc(v0, param0);
}

void *sub_020144C4(int param0, int param1, int param2)
{
    return NARC_AllocAndReadWholeMemberByIndexPair(param0, param1, param2);
}

void sub_020144CC(ParticleSystem *param0, void *param1, int param2, int param3)
{
    GF_ASSERT(param0->manager != NULL);
    GF_ASSERT(param0->unk_04 == NULL);

    param0->unk_D8 = param2;

    if (param2 & (1 << 0)) {
        NNS_GfdGetFrmTexVramState(&param0->unk_58_val1);
    } else if (param2 & (1 << 1)) {
        int v0;
        for (v0 = 0; v0 < 16; v0++) {
            param0->unk_58_val2[v0] = NNS_GFD_ALLOC_ERROR_TEXKEY;
        }
    }

    if (param2 & (1 << 2)) {
        NNS_GfdGetFrmPlttVramState(&param0->unk_98_val1);
    } else if (param2 & (1 << 3)) {
        int v1;
        for (v1 = 0; v1 < 16; v1++) {
            param0->unk_98_val2[v1] = NNS_GFD_ALLOC_ERROR_PLTTKEY;
        }
    }

    param0->unk_04 = param1;

    if (param3 == 1) {
        sub_02014560(param0);
    } else {
        SysTask_ExecuteAfterVBlank(sub_020145A0, param0, 5);
    }
}

static void sub_02014560(ParticleSystem *param0)
{
    SPLManager_LoadResources(param0->manager, param0->unk_04);

    Unk_021BF610 = param0;
    if (param0->texAllocFunc == NULL) {
        (void)SPLManager_UploadTextures(param0->manager);
    } else {
        SPLManager_UploadTexturesEx(param0->manager, param0->texAllocFunc);
    }
    if (param0->palAllocFunc == NULL) {
        (void)SPLManager_UploadPalettes(param0->manager);
    } else {
        SPLManager_UploadPalettesEx(param0->manager, param0->palAllocFunc);
    }
    Unk_021BF610 = NULL;

    {
        u32 v0;
        v0 = ((const UnkStruct_02014560 *)param0->unk_04)->unk_14;
    }
}

static void sub_020145A0(SysTask *param0, void *param1)
{
    ParticleSystem *v0 = param1;

    sub_02014560(v0);
    SysTask_Done(param0);
}

void sub_020145B4(NNSGfdTexKey param0)
{
    int v0;
    ParticleSystem *v1;

    GF_ASSERT(param0 != NNS_GFD_ALLOC_ERROR_TEXKEY);
    GF_ASSERT(Unk_021BF610 != NULL);

    v1 = Unk_021BF610;

    for (v0 = 0; v0 < 16; v0++) {
        if (v1->unk_58_val2[v0] == NNS_GFD_ALLOC_ERROR_TEXKEY) {
            v1->unk_58_val2[v0] = param0;
            return;
        }
    }
    GF_ASSERT(FALSE);
}

void sub_020145F4(NNSGfdPlttKey param0)
{
    int v0;
    ParticleSystem *v1;

    GF_ASSERT(param0 != NNS_GFD_ALLOC_ERROR_PLTTKEY);
    GF_ASSERT(Unk_021BF610 != NULL);

    v1 = Unk_021BF610;

    for (v0 = 0; v0 < 16; v0++) {
        if (v1->unk_98_val2[v0] == NNS_GFD_ALLOC_ERROR_PLTTKEY) {
            v1->unk_98_val2[v0] = param0;
            return;
        }
    }
    GF_ASSERT(FALSE);
}

void sub_02014638(ParticleSystem *param0)
{
    const MtxFx43 *v0;

    if (param0->camera != NULL) {
        Camera_ComputeProjectionMatrix(param0->cameraProjection, param0->camera);
        Camera_SetAsActive(param0->camera);
        Camera_ComputeViewMatrix();
    }

    NNS_G3dGlbFlush();

    v0 = NNS_G3dGlbGetCameraMtx();
    SPLManager_Draw(param0->manager, v0);

    if (param0->camera != NULL) {
        Camera_ClearActive();
    }

    NNS_G3dGlbFlush();
}

void sub_02014674(ParticleSystem *param0)
{
    SPLManager_Update(param0->manager);
}

int sub_02014680(void)
{
    int i, count = 0;
    for (i = 0; i < 16; i++) {
        if (sParticleSystems[i] != NULL) {
            count++;
        }
    }
    return count;
}

int sub_0201469C(void)
{
    int i, count = 0;
    for (i = 0; i < 16; i++) {
        if (sParticleSystems[i] != NULL) {
            sub_02014638(sParticleSystems[i]);
            count++;
        }
    }
    return count;
}

int sub_020146C0(void)
{
    int i, count = 0;
    for (i = 0; i < 16; i++) {
        if (sParticleSystems[i] != NULL) {
            sub_02014674(sParticleSystems[i]);
            count++;
        }
    }
    return count;
}

SPLEmitter *sub_020146E4(ParticleSystem *param0, int param1, const VecFx32 *param2)
{
    SPLEmitter *v0 = SPLManager_CreateEmitter(param0->manager, param1, param2);
    param0->unk_08 = v0;

    return v0;
}

SPLEmitter *sub_020146F4(ParticleSystem *param0, int param1, UnkFuncPtr_020146F4 param2, void *param3)
{
    SPLEmitter *v0;

    Unk_021BF614 = param3;
    v0 = SPLManager_CreateEmitterWithCallback(param0->manager, param1, param2);
    Unk_021BF614 = NULL;
    param0->unk_08 = v0;

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
