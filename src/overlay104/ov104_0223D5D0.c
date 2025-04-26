#include "overlay104/ov104_0223D5D0.h"

#include <nitro.h>
#include <string.h>

#include "camera.h"
#include "heap.h"
#include "particle_system.h"
#include "unk_0202419C.h"

typedef struct UnkStruct_ov104_0223D5F0_t {
    ParticleSystem *unk_00[8];
    u16 heapID;
} UnkStruct_ov104_0223D5F0;

static u32 ov104_0223D720(u32 param0, BOOL param1);
static u32 ov104_0223D744(u32 param0, BOOL param1);
static void ov104_0223D708(ParticleSystem *param0);

UnkStruct_ov104_0223D5F0 *ov104_0223D5D0(int heapID)
{
    UnkStruct_ov104_0223D5F0 *v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov104_0223D5F0));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov104_0223D5F0));

    v0->heapID = heapID;
    ParticleSystem_InitAll();

    return v0;
}

void ov104_0223D5F0(UnkStruct_ov104_0223D5F0 *param0)
{
    int v0;
    void *v1;

    for (v0 = 0; v0 < (((3 + 1) + 3) + 1); v0++) {
        if (param0->unk_00[v0] != NULL) {
            ov104_0223D708(param0->unk_00[v0]);
        }
    }

    Heap_FreeToHeap(param0);
}

ParticleSystem *ov104_0223D614(UnkStruct_ov104_0223D5F0 *param0, int param1, int param2, int param3)
{
    ParticleSystem *v0;
    void *v1;
    Camera *camera;
    void *v3;

    GF_ASSERT(param0->unk_00[param1] == NULL);

    v1 = Heap_AllocFromHeap(param0->heapID, 0x4800);
    v0 = ParticleSystem_New(ov104_0223D720, ov104_0223D744, v1, 0x4800, 1, param0->heapID);
    camera = ParticleSystem_GetCamera(v0);

    Camera_SetClipping((FX32_ONE), (FX32_ONE * 900), camera);
    ParticleSystem_SetCameraProjection(v0, param3);

    v3 = ParticleSystem_LoadResourceFromNARC(157, param2, param0->heapID);
    ParticleSystem_SetResource(v0, v3, (1 << 1) | (1 << 3), 1);

    param0->unk_00[param1] = v0;
    return v0;
}

void ov104_0223D68C(UnkStruct_ov104_0223D5F0 *param0, int param1)
{
    GF_ASSERT(param0->unk_00[param1] != NULL);

    ov104_0223D708(param0->unk_00[param1]);
    param0->unk_00[param1] = NULL;
}

int ov104_0223D6A8(void)
{
    int v0;

    sub_020241B4();

    if (ParticleSystem_GetActiveAmount() == 0) {
        return 0;
    }

    v0 = ParticleSystem_DrawAll();

    if (v0 > 0) {
        sub_020241B4();
    }

    ParticleSystem_UpdateAll();

    return 1;
}

ParticleSystem *ov104_0223D6D0(UnkStruct_ov104_0223D5F0 *param0, int param1)
{
    GF_ASSERT(param0->unk_00[param1] != NULL);
    return param0->unk_00[param1];
}

BOOL ov104_0223D6E4(UnkStruct_ov104_0223D5F0 *param0)
{
    int v0;

    for (v0 = 0; v0 < (((3 + 1) + 3) + 1); v0++) {
        if (param0->unk_00[v0] != NULL) {
            if (ParticleSystem_GetActiveEmitterCount(param0->unk_00[v0]) > 0) {
                return 0;
            }
        }
    }

    return 1;
}

static void ov104_0223D708(ParticleSystem *param0)
{
    void *v0 = ParticleSystem_GetHeapStart(param0);

    ParticleSystem_Free(param0);
    Heap_FreeToHeap(v0);
}

static u32 ov104_0223D720(u32 param0, BOOL param1)
{
    u32 v0;
    NNSGfdTexKey v1;

    v1 = NNS_GfdAllocTexVram(param0, param1, 0);
    GF_ASSERT(v1 != NNS_GFD_ALLOC_ERROR_TEXKEY);

    ParticleSystem_RegisterTextureKey(v1);

    v0 = NNS_GfdGetTexKeyAddr(v1);
    return v0;
}

static u32 ov104_0223D744(u32 param0, BOOL param1)
{
    NNSGfdPlttKey v0;
    u32 v1;

    v0 = NNS_GfdAllocPlttVram(param0, param1, NNS_GFD_ALLOC_FROM_LOW);

    if (v0 == NNS_GFD_ALLOC_ERROR_PLTTKEY) {
        GF_ASSERT(FALSE);
    }

    ParticleSystem_RegisterPaletteKey(v0);
    v1 = NNS_GfdGetPlttKeyAddr(v0);

    return v1;
}
