#ifndef POKEPLATINUM_UNK_02014000_H
#define POKEPLATINUM_UNK_02014000_H

#include <nitro/fx/fx.h>
#include <nnsys.h>

#include "constants/narc.h"
#include "constants/heap.h"

#include "camera.h"
#include "spl.h"

#define MAX_TEXTURE_KEYS 16
#define MAX_PALETTE_KEYS 16

enum VRAMAutoRelease {
    VRAM_AUTO_RELEASE_NONE = 0,

    VRAM_AUTO_RELEASE_TEXTURE_FRM = (1 << 0), // Auto-release VRAM using the Frame Texture VRAM Manager
    VRAM_AUTO_RELEASE_TEXTURE_LNK = (1 << 1), // Auto-release VRAM using the Linked-List Texture VRAM Manager
    VRAM_AUTO_RELEASE_PALETTE_FRM = (1 << 2), // Auto-release VRAM using the Frame Palette VRAM Manager
    VRAM_AUTO_RELEASE_PALETTE_LNK = (1 << 3), // Auto-release VRAM using the Linked-List Palette VRAM Manager
};

typedef struct ParticleSystem {
    SPLManager *manager;
    void *resource;
    SPLEmitter *latestEmitter; // Last created emitter
    void *heapStart;
    void *heap;
    void *heapEnd;
    SPLTexVRAMAllocFunc texAllocFunc;
    SPLPalVRAMAllocFunc palAllocFunc;
    Camera *camera;
    VecFx32 unk_24;
    u16 cameraFov;
    VecFx32 cameraPos;
    VecFx32 cameraUp;
    VecFx32 cameraTarget;
    union {
        NNSGfdFrmTexVramState textureVRAMState;
        NNSGfdTexKey textureKeys[MAX_TEXTURE_KEYS];
    };
    union {
        NNSGfdFrmPlttVramState paletteVRAMState;
        NNSGfdPlttKey paletteKeys[MAX_PALETTE_KEYS];
    };
    u8 vramAutoRelease;
    u8 unk_D9;
    u8 id;
    u8 cameraProjection;
} ParticleSystem;

void ParticleSystem_InitAll(void);

// When using a custom texture/palette allocator function, be sure to use
// ParticleSystem_RegisterTextureKey or ParticleSystem_RegisterPaletteKey to register
// allocated textures in the particle system.
ParticleSystem *ParticleSystem_New(SPLTexVRAMAllocFunc param0, SPLPalVRAMAllocFunc param1, void *param2, int param3, BOOL param4, enum HeapId heapID);
void ParticleSystem_Free(ParticleSystem *param0);
void ParticleSystem_FreeAll(void);
void *ParticleSystem_LoadResourceFromNARC(enum NarcID narcID, int memberIndex, enum HeapId heapID);
void ParticleSystem_SetResource(ParticleSystem *param0, void *resource, enum VRAMAutoRelease autoRelease, BOOL uploadImmediately);
void ParticleSystem_RegisterTextureKey(NNSGfdTexKey param0);
void ParticleSystem_RegisterPaletteKey(NNSGfdPlttKey param0);
void ParticleSystem_Draw(ParticleSystem *param0);
void ParticleSystem_Update(ParticleSystem *param0);
int ParticleSystem_GetActiveAmount(void);
int ParticleSystem_DrawAll(void);
int ParticleSystem_UpdateAll(void);
SPLEmitter *ParticleSystem_CreateEmitter(ParticleSystem *param0, int param1, const VecFx32 *param2);
SPLEmitter *ParticleSystem_CreateEmitterWithCallback(ParticleSystem *param0, int param1, SPLEmitterCallback param2, void *param3);
s32 ParticleSystem_GetActiveEmitterCount(ParticleSystem *param0);
void ParticleSystem_DeleteAllEmitters(ParticleSystem *param0);
void ParticleSystem_DeleteEmitter(ParticleSystem *param0, SPLEmitter *param1);
void *ParticleSystem_GetHeapStart(ParticleSystem *param0);
void ParticleSystem_GetCameraUp(ParticleSystem *param0, VecFx32 *param1);
void ParticleSystem_SetCameraUp(ParticleSystem *param0, const VecFx32 *param1);
void *ParticleSystem_GetEmitterCallbackParam(void);
void ParticleSystem_GetDefaultCameraUp(VecFx32 *param0);
Camera *ParticleSystem_GetCamera(ParticleSystem *param0);
void ParticleSystem_SetCameraProjection(ParticleSystem *param0, enum CameraProjection param1);
u8 ParticleSystem_GetCameraProjection(ParticleSystem *param0);
void ParticleSystem_GetEmitterAxis(SPLEmitter *param0, VecFx16 *param1);
void ParticleSystem_SetEmitterEmissionCount(SPLEmitter *param0, fx32 param1);
void ParticleSystem_SetEmitterGravityMagnitude(SPLEmitter *param0, VecFx16 *param1);
void ParticleSystem_SetEmitterMagnetTarget(SPLEmitter *param0, VecFx32 *param1);
void ParticleSystem_GetEmitterMagnetTarget(SPLEmitter *param0, VecFx32 *param1);
void ParticleSystem_SetEmitterMagnetForce(SPLEmitter *param0, fx16 *param1);
void ParticleSystem_GetEmitterMagnetForce(SPLEmitter *param0, fx16 *param1);
void ParticleSystem_SetEmitterSpinAngle(SPLEmitter *param0, u16 *param1);
void ParticleSystem_GetEmitterSpinAngle(SPLEmitter *param0, u16 *param1);
void ParticleSystem_SetEmitterSpinAxis(SPLEmitter *param0, u16 *param1);
void ParticleSystem_GetEmitterSpinAxis(SPLEmitter *param0, u16 *param1);
void ParticleSystem_SetEmitterConvergenceTarget(SPLEmitter *param0, VecFx32 *param1);
void ParticleSystem_GetEmitterConvergenceTarget(SPLEmitter *param0, VecFx32 *param1);
void ParticleSystem_SetEmitterConvergenceForce(SPLEmitter *param0, fx16 *param1);
void ParticleSystem_GetEmitterConvergenceForce(SPLEmitter *param0, fx16 *param1);

#endif // POKEPLATINUM_UNK_02014000_H
