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
    UnkSPLStruct4 * unk_28;
    UnkSPLStruct5 * unk_2C;
    u16 unk_30;
    u16 unk_32;
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
    u16 unk_48;
    u16 unk_4A;
} SPLManager; // size=0x4c

typedef void(* EmitterCallback)(SPLEmitter *);
typedef void(* EmitterCallbackEx)(SPLEmitter *, void *);


SPLManager *SPLManager_New(SPLAllocFunc alloc, u16 maxEmitters, u16 maxParticles, u16 fixPolyID, u16 minPolyID, u16 maxPolyID);
void SPL_0209C400(SPLManager * param0);
void SPL_0209C444(SPLManager * param0, SPLEmitter * param1);
SPLEmitter * SPL_0209C4D8(SPLManager * param0, int param1, EmitterCallback cb);
SPLEmitter *SPL_CreateWithInitializeEx(SPLManager *mgr, int resNo, VecFx32 *pos, void *pvoid, EmitterCallbackEx cb);
void SPL_0209C5E0(SPLManager * param0, const MtxFx43 * param1);
SPLEmitter * SPL_0209C56C(SPLManager * param0, int param1, const VecFx32 * param2);
void SPL_0209C6A8(SPLManager * param0);
BOOL SPL_0209C7E0(SPLManager * param0);
BOOL SPL_0209C7F4(SPLManager * param0);
BOOL SPL_0209C808(SPLManager * param0, u32 (* param1)(u32, BOOL));
BOOL SPL_0209C8BC(SPLManager * param0, u32 (* param1)(u32, BOOL));
void SPL_0209C988(SPLManager * param0, const void * param1);

#endif // SPL_MANAGER_H
