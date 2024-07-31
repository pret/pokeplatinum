#ifndef SPL_MANAGER_H
#define SPL_MANAGER_H

#include <nitro/types.h>

#include "spl_particle.h"
#include "spl_emitter.h"
#include "spl_texture.h"

typedef void *(* SPLAllocFunc)(u32);

enum SPLDrawOrder {
    SPL_DRAW_ORDER_REVERSE = 0,
    SPL_DRAW_ORDER_NORMAL = 1,
};

typedef struct SPLManager {
    SPLAllocFunc alloc;
    SPLEmitterList activeEmitters;
    SPLEmitterList inactiveEmitters;
    SPLParticleList inactiveParticles;
    SPLResource * resources;
    SPLTexture * textures;
    u16 resCount;
    u16 texCount;
    u16 unk_34;
    u16 unk_36;
    struct {
        u32 min : 6;
        u32 max : 6;
        u32 current : 6;
        u32 fix : 6;
        u32 drawOrder : 1;
        u32 unused : 7;
    } polygonID;
    s32 unk_3C;
    struct {
        SPLEmitter * unk_00;
        const MtxFx43 * unk_04;
    } unk_40;
    u16 currentCycle;
    u16 unk_4A;
} SPLManager; // size=0x4c

typedef void(* EmitterCallback)(SPLEmitter *);
typedef void(* EmitterCallbackEx)(SPLEmitter *, void *);

typedef u32(* SPLTexVRAMAllocFunc)(u32 size, BOOL is4x4comp);
typedef u32(* SPLPalVRAMAllocFunc)(u32 size, BOOL is4pal);

SPLManager *SPLManager_New(SPLAllocFunc alloc, u16 maxEmitters, u16 maxParticles, u16 fixPolyID, u16 minPolyID, u16 maxPolyID);
void SPL_0209C400(SPLManager * param0);
void SPL_0209C444(SPLManager * param0, SPLEmitter * param1);
SPLEmitter * SPL_0209C4D8(SPLManager * param0, int param1, EmitterCallback cb);
SPLEmitter *SPL_CreateWithInitializeEx(SPLManager *mgr, int resNo, VecFx32 *pos, void *pvoid, EmitterCallbackEx cb);
void SPL_0209C5E0(SPLManager * param0, const MtxFx43 * param1);
SPLEmitter * SPL_0209C56C(SPLManager * param0, int param1, const VecFx32 * param2);
void SPLManager_Update(SPLManager * param0);
BOOL SPLManager_UploadPalettes(SPLManager * param0);
BOOL SPLManager_UploadTextures(SPLManager * param0);
BOOL SPLManager_UploadPalettesEx(SPLManager * param0, u32 (* param1)(u32, BOOL));
BOOL SPLManager_UploadTexturesEx(SPLManager * param0, u32 (* param1)(u32, BOOL));
void SPLManager_LoadResource(SPLManager * param0, const void * param1);

#endif // SPL_MANAGER_H
