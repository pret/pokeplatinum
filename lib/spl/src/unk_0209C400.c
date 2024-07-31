#include <nnsys/gfd/VramManager/gfd_PlttVramMan_Types.h>
#include <nnsys/gfd/VramManager/gfd_TexVramMan_Types.h>
#include <nitro/fx/fx.h>

#include "spl_list.h"
#include "spl_manager.h"
#include "spl_behavior.h"
#include "spl_internal.h"
#include "spl_particle.h"

#define DECODE_WH(X) ((u16)(1 << ((X) + 3)))


static u32 SPLUtil_AllocTextureVRAM(u32 size, BOOL is4x4);
static u32 SPLUtil_AllocPaletteVRAM(u32 size, BOOL is4Pltt);


static u32 SPLUtil_AllocTextureVRAM(u32 size, BOOL is4x4)
{
    return (NNS_GfdAllocTexVram(size, is4x4, 0) & 0xFFFF) * 8;
}

static u32 SPLUtil_AllocPaletteVRAM(u32 size, BOOL is4Pltt)
{
    return (NNS_GfdAllocPlttVram(size, is4Pltt, 0) & 0xFFFF) * 8;
}

SPLManager *SPLManager_New(SPLAllocFunc alloc, u16 maxEmitters, u16 maxParticles, u16 fixPolyID, u16 minPolyID, u16 maxPolyID)
{
    int i; // Required to match

    SPLManager *mgr = alloc(sizeof(SPLManager));
    MI_CpuFill8(mgr, 0, sizeof(SPLManager));

    mgr->unk_34 = maxEmitters;
    mgr->unk_36 = maxParticles;

    mgr->polygonID.min = minPolyID;
    mgr->polygonID.max = maxPolyID;
    mgr->polygonID.current = mgr->polygonID.min;
    mgr->polygonID.fix = fixPolyID;
    mgr->polygonID.drawOrder = SPL_DRAW_ORDER_REVERSE;
    mgr->polygonID.unused = 0;

    mgr->alloc = alloc;

    mgr->activeEmitters.count = 0;
    mgr->inactiveEmitters.count = 0;
    mgr->inactiveParticles.count = 0;

    mgr->activeEmitters.first = NULL;
    mgr->inactiveEmitters.first = NULL;
    mgr->inactiveParticles.first = NULL;

    mgr->unk_3C = 0;
    mgr->unk_48 = 0;

    SPLEmitter *emtr = alloc(maxEmitters * sizeof(SPLEmitter));
    MI_CpuFill8(emtr, 0, maxEmitters * sizeof(SPLEmitter));

    for (i = 0; i < maxEmitters; ++i) {
        SPLEmitterList_PushFront(&mgr->inactiveEmitters, &emtr[i]);
    }

    SPLParticle *ptcl = alloc(maxParticles * sizeof(SPLParticle));
    MI_CpuFill8(ptcl, 0, maxParticles * sizeof(SPLParticle));

    for (i = 0; i < maxParticles; ++i) {
        SPLParticleList_PushFront(&mgr->inactiveParticles, &ptcl[i]);
    }

    mgr->resources = NULL;
    mgr->textures = NULL;
    mgr->resCount = mgr->texCount = 0;

    return mgr;
}

void SPLManager_LoadResource(SPLManager *mgr, const void *data)
{
    // Required to match
    int i, offset;
    SPLFileHeader *spa;

    spa = (SPLFileHeader *)data;
    offset = sizeof(SPLFileHeader);

    mgr->resCount = spa->resCount;
    mgr->texCount = spa->texCount;

    mgr->resources = mgr->alloc(mgr->resCount * sizeof(SPLResource));

    MI_CpuFill8(mgr->resources, 0, mgr->resCount * sizeof(SPLResource));

    for (i = 0; i < mgr->resCount; ++i) {
        SPLResource *res = mgr->resources + i;
        res->header = (SPLResourceHeader *)((u8 *)spa + offset);

        offset += sizeof(SPLResourceHeader);
        SPLResourceFlags flags = res->header->flags;

        if (flags.hasScaleAnim) {
            res->scaleAnim = (SPLScaleAnim *)((u8 *)spa + offset);
            offset += sizeof(SPLScaleAnim);
        } else {
            res->scaleAnim = NULL;
        }

        if (flags.hasColorAnim) {
            res->colorAnim = (SPLColorAnim *)((u8 *)spa + offset);
            offset += sizeof(SPLColorAnim);
        } else {
            res->colorAnim = NULL;
        }

        if (flags.hasAlphaAnim) {
            res->alphaAnim = (SPLAlphaAnim *)((u8 *)spa + offset);
            offset += sizeof(SPLAlphaAnim);
        } else {
            res->alphaAnim = NULL;
        }

        if (flags.hasTexAnim) {
            res->texAnim = (SPLTexAnim *)((u8 *)spa + offset);
            offset += sizeof(SPLTexAnim);
        } else {
            res->texAnim = NULL;
        }

        if (flags.hasChildResource) {
            res->childResource = (SPLChildResource *)((u8 *)spa + offset);
            offset += sizeof(SPLChildResource);
        } else {
            res->childResource = NULL;
        }

        // Sum up all behaviors
        res->behaviorCount = flags.hasGravityBehavior 
            + flags.hasRandomBehavior 
            + flags.hasMagnetBehavior
            + flags.hasSpinBehavior 
            + flags.hasCollisionPlaneBehavior 
            + flags.hasConvergenceBehavior;

        if (res->behaviorCount != 0) {
            res->behaviors = (SPLBehavior *)mgr->alloc(res->behaviorCount * sizeof(SPLBehavior));
            SPLBehavior *behavior = res->behaviors;

            if (flags.hasGravityBehavior) {
                behavior->object = (const void *)((u8 *)spa + offset);
                behavior->apply = SPLBehavior_ApplyGravity;
                offset += sizeof(SPLGravityBehavior);
                behavior++;
            }

            if (flags.hasRandomBehavior) {
                behavior->object = (const void *)((u8 *)spa + offset);
                behavior->apply = SPLBehavior_ApplyRandom;
                offset += sizeof(SPLRandomBehavior);
                behavior++;
            }

            if (flags.hasMagnetBehavior) {
                behavior->object = (const void *)((u8 *)spa + offset);
                behavior->apply = SPLBehavior_ApplyMagnet;
                offset += sizeof(SPLMagnetBehavior);
                behavior++;
            }

            if (flags.hasSpinBehavior) {
                behavior->object = (const void *)((u8 *)spa + offset);
                behavior->apply = SPLBehavior_ApplySpin;
                offset += sizeof(SPLSpinBehavior);
                behavior++;
            }

            if (flags.hasCollisionPlaneBehavior) {
                behavior->object = (const void *)((u8 *)spa + offset);
                behavior->apply = SPLBehavior_ApplyCollisionPlane;
                offset += sizeof(SPLCollisionPlaneBehavior);
                behavior++;
            }

            if (flags.hasConvergenceBehavior) {
                behavior->object = (void *)((u8 *)spa + offset);
                behavior->apply = SPLBehavior_ApplyConvergence;
                offset += sizeof(SPLConvergenceBehavior);
            }
        } else {
            res->behaviors = NULL;
        }
    }

    mgr->textures = (SPLTexture *)mgr->alloc(mgr->texCount * sizeof(SPLTexture));

    MI_CpuFill8(mgr->textures, 0, mgr->texCount * sizeof(SPLTexture));

    for (i = 0; i < mgr->texCount; ++i) {
        SPLTexture *texture = &mgr->textures[i];
        SPLTextureResource *texRes = (SPLTextureResource *)((u8 *)spa + offset);
        texture->resource = texRes;
        texture->width = DECODE_WH(texRes->param.s);
        texture->height = DECODE_WH(texRes->param.t);
        texture->param = texRes->param;
        offset += texRes->resourceSize;
    }
}

BOOL SPLManager_UploadTexturesEx(SPLManager *mgr, SPLTexVRAMAllocFunc vramAlloc)
{
    GX_BeginLoadTex();

    for (int i = 0; i < mgr->texCount; i++) {
        SPLTexture *textures = mgr->textures;
        SPLTexture *tex = &textures[i];
        SPLTextureResource *texRes = (SPLTextureResource *)tex->resource;

        if (texRes->param.val2_02_1) {
            tex->texAddr = textures[texRes->param.sharedTexID].texAddr;
        } else {
            u32 addr = vramAlloc(texRes->textureSize, texRes->param.format == GX_TEXFMT_COMP4x4);
            const void *data = SPLTextureResource_GetTexData((SPLTextureResource *)tex->resource);
            GX_LoadTex(data, addr, texRes->textureSize);
            tex->texAddr = addr;
        }
    }

    GX_EndLoadTex();
    return TRUE;
}

BOOL SPLManager_UploadPalettesEx(SPLManager *mgr, SPLPalVRAMAllocFunc vramAlloc)
{
    // Required to match
    s32 i;
    SPLTexture *tex;
    SPLTextureResource *texRes;

    GX_BeginLoadTexPltt();

    for (i = 0; i < mgr->texCount; i++) {
        u32 addr = 0;
        tex = &mgr->textures[i];
        texRes = (SPLTextureResource *)tex->resource;

        if (texRes->paletteSize != 0) {
            addr = vramAlloc(texRes->paletteSize, texRes->param.format == GX_TEXFMT_PLTT4);
            GX_LoadTexPltt((u8 *)tex->resource + texRes->paletteOffset, addr, texRes->paletteSize);
        }

        tex->palAddr = addr;
    }

    GX_EndLoadTexPltt();
    return TRUE;
}

BOOL SPLManager_UploadTextures(SPLManager *mgr)
{
    return SPLManager_UploadTexturesEx(mgr, SPLUtil_AllocTextureVRAM);
}

BOOL SPLManager_UploadPalettes(SPLManager *mgr)
{
    return SPLManager_UploadPalettesEx(mgr, SPLUtil_AllocPaletteVRAM);
}

void SPL_0209C6A8(SPLManager *mgr)
{
    SPLEmitter *emtr;
    SPLEmitter *next;

    emtr = mgr->activeEmitters.first;
    while (emtr != NULL) {
        SPLResourceHeader *base = emtr->p_res->header;
        next = emtr->unk_00;

        if (!emtr->unk_94.started && emtr->unk_BC >= base->unk_32) {
            emtr->unk_94.started = TRUE;
            emtr->unk_BC = 0;
        }

        if (!emtr->unk_94.stop_calc) {
            if (emtr->unk_F0.unk_02_0 == 0 || mgr->unk_48 == emtr->unk_F0.unk_02_0 - 1) {
                sub_0209D150(mgr, emtr);
            }
        }

        if (((base->flags.unk_05_6 && base->unk_3C != 0 && emtr->unk_94.started && emtr->unk_BC > base->unk_3C)
                || emtr->unk_94.terminate)
            && emtr->unk_08.count == 0 && emtr->unk_4C.count == 0) {
            SPLEmitter *e0 = (SPLEmitter *)SPLList_Erase((SPLList *)&mgr->activeEmitters, (SPLNode *)emtr);
            SPLList_PushFront((SPLList *)&mgr->inactiveEmitters, (SPLNode *)e0);
        }

        emtr = next;
    }

    mgr->unk_48 += 1;
    if (mgr->unk_48 > 1) {
        mgr->unk_48 = 0;
    }
}

void SPL_0209C5E0(SPLManager *mgr, const MtxFx43 *cmr)
{
    SPLEmitter *emtr;

    G3X_AlphaBlend(TRUE);

    mgr->unk_40.unk_04 = cmr;
    if (mgr->polygonID.drawOrder == SPL_DRAW_ORDER_REVERSE) {
        emtr = mgr->activeEmitters.first;

        while (emtr != NULL) {
            mgr->unk_40.unk_00 = emtr;
            if (!emtr->unk_94.stop_draw) {
                sub_0209CF00(mgr);
            }
            emtr = emtr->unk_00;
        }
    } else {
        emtr = mgr->activeEmitters.last;

        while (emtr != NULL) {
            mgr->unk_40.unk_00 = emtr;
            if (!emtr->unk_94.stop_draw) {
                sub_0209CF00(mgr);
            }
            emtr = emtr->unk_04;
        }
    }
}

SPLEmitter *SPL_0209C56C(SPLManager *mgr, int resno, const VecFx32 *pos)
{
    SPLEmitter *emtr = NULL;

    if (mgr->inactiveEmitters.first != NULL) {
        emtr = (SPLEmitter *)SPLList_PopFront((SPLList *)&mgr->inactiveEmitters);
        sub_0209D998(emtr, mgr->resources + resno, pos);
        SPLList_PushFront((SPLList *)&mgr->activeEmitters, (SPLNode *)emtr);
        if (emtr->p_res->header->flags.unk_05_6) {
            emtr = NULL;
        }
    }

    return emtr;
}

SPLEmitter *SPL_0209C4D8(SPLManager *mgr, int resno, EmitterCallback fpcb)
{
    SPLEmitter *emtr;

    emtr = NULL;
    if (mgr->inactiveEmitters.first != NULL) {
        VecFx32 v0 = { 0, 0, 0 };
        emtr = (SPLEmitter *)SPLList_PopFront((SPLList *)&mgr->inactiveEmitters);
        sub_0209D998(emtr, mgr->resources + resno, &v0);
        if (fpcb != NULL) {
            fpcb(emtr);
        }
        SPLList_PushFront((SPLList *)&mgr->activeEmitters, (SPLNode *)emtr);
        if (emtr->p_res->header->flags.unk_05_6) {
            emtr = NULL;
        }
    }

    return emtr;
}

SPLEmitter *SPL_CreateWithInitializeEx(SPLManager *mgr, int resNo, VecFx32 *pos, void *pvoid, EmitterCallbackEx cb)
{
    SPLEmitter *emtr;

    emtr = NULL;
    if (mgr->inactiveEmitters.first != NULL) {
        emtr = (SPLEmitter *)SPLList_PopFront((SPLList *)&mgr->inactiveEmitters);
        sub_0209D998(emtr, mgr->resources + resNo, pos);
        if (cb != NULL) {
            cb(emtr, pvoid);
        }

        SPLList_PushFront((SPLList *)&mgr->activeEmitters, (SPLNode *)emtr);
        if (emtr->p_res->header->flags.unk_05_6) {
            emtr = NULL;
        }
    }

    return emtr;
}

void SPL_0209C444(SPLManager *p0, SPLEmitter *p1)
{
    SPLEmitter *v0 = (SPLEmitter *)SPLList_PopFront((SPLList *)&p1->unk_08);
    if (v0 != NULL) {
        do {
            SPLList_PushFront((SPLList *)&p0->inactiveParticles, (SPLNode *)v0);
            v0 = (SPLEmitter *)SPLList_PopFront((SPLList *)&p1->unk_08);
        } while (v0 != NULL);
    }
    v0 = (SPLEmitter *)SPLList_PopFront((SPLList *)&p1->unk_4C);
    if (v0 != NULL) {
        do {
            SPLList_PushFront((SPLList *)&p0->inactiveParticles, (SPLNode *)v0);
            v0 = (SPLEmitter *)SPLList_PopFront((SPLList *)&p1->unk_4C);
        } while (v0 != NULL);
    }
    SPLList_Erase((SPLList *)&p0->activeEmitters, (SPLNode *)p1);
    SPLList_PushFront((SPLList *)&p0->inactiveEmitters, (SPLNode *)p1);
}

void SPL_0209C400(SPLManager *p0)
{
    SPLEmitter *next;
    SPLEmitter *emtr = p0->activeEmitters.first;

    while (emtr != NULL) {
        next = emtr->unk_00;
        SPL_0209C444(p0, emtr);
        emtr = next;
    }
}

void SPL_Emit(SPLManager *mgr, SPLEmitter *emtr)
{
    spl_generate(emtr, (SPLList *)&mgr->inactiveParticles);
}

void SPL_EmitAt(SPLManager *mgr, SPLEmitter *emtr, VecFx32 *pos)
{
    emtr->unk_98.x = pos->x + emtr->p_res->header->unk_04.x;
    emtr->unk_98.y = pos->y + emtr->p_res->header->unk_04.y;
    emtr->unk_98.z = pos->z + emtr->p_res->header->unk_04.z;
    spl_generate(emtr, (SPLList *)&mgr->inactiveParticles);
}
