#include <nitro/fx/fx.h>
#include <nitro/fx/fx_const.h>
#include <nitro/gx/g3.h>
#include <nitro/gx/g3imm.h>

#include "spl_emitter.h"
#include "spl_texture.h"
#include "spl_manager.h"
#include "spl_particle.h"
#include "spl_internal.h"
#include "spl_list.h"

#define ANIM_FUNC_NO_LOOP   0
#define ANIM_FUNC_LOOP      1

typedef void(*DrawFunc)(SPLManager *mgr, SPLParticle *ptcl);
typedef void(*SetTexFunc)(SPLTexture *tex);

typedef struct FieldFunc {
    void (*func)(SPLParticle *, SPLResource *, int);
    BOOL loop;
} AnimFunc;

typedef struct FieldFunc8 {
    void (*func)(SPLParticle *, SPLResource *, u8);
    BOOL loop;
} FieldFunc8;

static void SPLUtil_SetTexture(SPLTexture *tex); // spl_set_tex
static void SPLUtil_SetTexture_Stub(SPLTexture *tex); // spl_set_tex_dummy
static void sub_0209D064(SPLManager *mgr);
static void sub_0209CF7C(SPLManager *mgr);
void SPLEmitter_Init(SPLEmitter *emtr, SPLResource *res, const VecFx32 *param2);
void sub_0209CF00(SPLManager *mgr);
void SPLEmitter_Update(SPLManager *mgr, SPLEmitter *emtr);

static void SPLUtil_SetTexture(SPLTexture *tex)
{
    SPLTextureParam param = tex->param;

    G3_TexImageParam(
        param.format,
        GX_TEXGEN_TEXCOORD,
        param.s,
        param.t,
        param.repeat,
        param.flip,
        param.palColor0,
        tex->texAddr);

    G3_TexPlttBase(tex->palAddr, param.format);
    G3_MtxMode(GX_MTXMODE_TEXTURE);
    G3_Identity();
    G3_Scale(tex->width * FX32_ONE, tex->height * FX32_ONE, 0);
    G3_MtxMode(GX_MTXMODE_POSITION);
}

static void SPLUtil_SetTexture_Stub(SPLTexture *tex)
{
}

void SPLEmitter_Init(SPLEmitter *emtr, SPLResource *res, const VecFx32 *pos)
{
    emtr->resource = res;
    emtr->state.all = 0;

    emtr->position.x = pos->x + emtr->resource->header->emitterBasePos.x;
    emtr->position.y = pos->y + emtr->resource->header->emitterBasePos.y;
    emtr->position.z = pos->z + emtr->resource->header->emitterBasePos.z;

    emtr->unk_B0.x = 0;
    emtr->unk_B0.y = 0;
    emtr->unk_B0.z = 0;
    emtr->velocity.x = emtr->velocity.y = emtr->velocity.z = 0;

    emtr->age = 0;
    emtr->unk_BE = 0;

    emtr->unk_C0 = emtr->resource->header->unk_1C;
    emtr->unk_C6 = emtr->resource->header->unk_38;
    emtr->unk_C8 = emtr->resource->header->unk_10;
    emtr->unk_CC = emtr->resource->header->unk_14;
    emtr->unk_D0 = emtr->resource->header->unk_18;
    emtr->unk_D4 = emtr->resource->header->unk_24;
    emtr->unk_D8 = emtr->resource->header->unk_28;
    emtr->unk_DC = emtr->resource->header->unk_2C;
    emtr->particleLifeTime = emtr->resource->header->particleLifeTime;

    emtr->color = GX_RGB(31, 31, 31);
    emtr->misc.emissionInterval = emtr->resource->header->misc.unk_00_0;
    emtr->misc.unk_01_0 = emtr->resource->header->misc.unk_01_0;
    emtr->misc.updateCycle = 0;
    emtr->misc.unk_02_3 = 0;
    emtr->collisionPlaneHeight = FX32_MIN;
    emtr->unk_E8 = FX32_ONE << emtr->resource->header->misc.unk_07_0;
    emtr->unk_EA = FX32_ONE << emtr->resource->header->misc.unk_07_2;

    if (emtr->resource->header->misc.unk_08_0) {
        emtr->unk_E8 *= -1;
    }

    if (emtr->resource->header->misc.unk_08_1) {
        emtr->unk_EA *= -1;
    }

    if (emtr->resource->header->flags.hasChildResource) {
        emtr->unk_EC = FX32_ONE << emtr->resource->childResource->misc.unk_04_0;
        emtr->unk_EE = FX32_ONE << emtr->resource->childResource->misc.unk_04_2;

        if (emtr->resource->childResource->misc.unk_04_4) {
            emtr->unk_EC *= -1;
        }

        if (emtr->resource->childResource->misc.unk_04_5) {
            emtr->unk_EE *= -1;
        }
    }

    emtr->next = emtr->prev = NULL;
    emtr->particles.first = emtr->childParticles.first = NULL;
    emtr->particles.count = emtr->childParticles.count = 0;
    emtr->updateCallback = NULL;
    emtr->unk_104 = NULL;
    emtr->unk_108.unk_108_val1 = 0;
}

void SPLEmitter_Update(SPLManager *mgr, SPLEmitter *emtr)
{
    SPLParticle *ptcl;
    SPLParticle *next;
    SPLResource *res;
    SPLResourceHeader *header;
    SPLChildResource *child;
    SPLResourceFlags resFlags;
    AnimFunc animFuncs[4];
    AnimFunc childAnimFuncs[4];
    int i, animCount, behaviorCount;
    int airResistance;
    u8 lifeRates[2];
    VecFx32 acc;

    res = emtr->resource;
    child = res->childResource;
    animCount = 0;
    header = res->header;
    resFlags = header->flags;
    behaviorCount = res->behaviorCount;
    airResistance = header->misc.airResistance + FX32_CONST(0.09375);

    if (emtr->updateCallback) {
        emtr->updateCallback(emtr, SPL_CALLBACK_PRE_UPDATE);
    }

    if (header->emitterLifeTime == 0 || emtr->age < header->emitterLifeTime) {
        if (emtr->age % emtr->misc.emissionInterval == 0) {
            if (!emtr->state.terminate && !emtr->state.emissionPaused && emtr->state.started) {
                sub_020A08DC(emtr, (SPLList *)(&mgr->inactiveParticles));
            }
        }
    }

    if (resFlags.hasScaleAnim) { // ScaleAnim
        animFuncs[animCount].func = sub_020A1DA0;
        animFuncs[animCount++].loop = res->scaleAnim->unk_08.unk_00_0;
    }

    if (resFlags.hasColorAnim && !res->colorAnim->unk_08.unk_00_0) { // ColorAnim
        animFuncs[animCount].func = sub_020A1BD4;
        animFuncs[animCount++].loop = res->colorAnim->unk_08.unk_00_1;
    }

    if (resFlags.hasAlphaAnim) { // AlphaAnim
        animFuncs[animCount].func = sub_020A1AF8;
        animFuncs[animCount++].loop = res->alphaAnim->unk_02.unk_01_0;
    }

    if (resFlags.hasTexAnim && !res->texAnim->unk_08.unk_02_0) { // TexAnim
        animFuncs[animCount].func = sub_020A1A94;
        animFuncs[animCount++].loop = res->texAnim->unk_08.unk_02_1;
    }

    for (ptcl = emtr->particles.first; ptcl != NULL; ptcl = next) {
        next = ptcl->next;

        // For non-looping particles, "life rate" is a fraction of the particle's lifetime, represented as a u8.
        // where 0 is the start of the particle's life and 255 is the end
        // For looping particles, it's a fraction of the number of frames in the loop
        // See the SPLParticle struct for more info
        lifeRates[ANIM_FUNC_NO_LOOP] = (ptcl->lifeTimeFactor * ptcl->age) >> 8;
        lifeRates[ANIM_FUNC_LOOP] = ptcl->misc.lifeRateOffset + ((ptcl->loopTimeFactor * ptcl->age) >> 8);

        for (i = 0; i < animCount; i++) {
            animFuncs[i].func(ptcl, res, lifeRates[animFuncs[i].loop]);
        }

        acc.x = acc.y = acc.z = 0;

        if (resFlags.followEmitter) {
            ptcl->emitterPos = emtr->position;
        }

        for (i = 0; i < behaviorCount; i++) {
            res->behaviors[i].apply(res->behaviors[i].object, ptcl, &acc, emtr);
        }

        ptcl->rotation += ptcl->angularVelocity;

        ptcl->velocity.x = ptcl->velocity.x * airResistance >> 9;
        ptcl->velocity.y = ptcl->velocity.y * airResistance >> 9;
        ptcl->velocity.z = ptcl->velocity.z * airResistance >> 9;

        ptcl->velocity.x += acc.x;
        ptcl->velocity.y += acc.y;
        ptcl->velocity.z += acc.z;

        ptcl->position.x += ptcl->velocity.x + emtr->velocity.x;
        ptcl->position.y += ptcl->velocity.y + emtr->velocity.y;
        ptcl->position.z += ptcl->velocity.z + emtr->velocity.z;

        if (resFlags.hasChildResource) {
            fx32 emissionDelay = FX_MUL((fx32)ptcl->lifeTime << FX32_SHIFT, (fx32)child->misc.emissionDelay << FX32_SHIFT);

            // The >> 8 here is a division by 256 because emissionDelay is a fraction of the particle's lifetime represented as a u8
            fx32 diff = ((fx32)ptcl->age * FX32_ONE) - (emissionDelay >> 8);

            if (diff >= 0) {
                if ((diff >> FX32_SHIFT) % child->misc.emissionInterval == 0) {
                    sub_020A05BC(ptcl, emtr, (SPLList *)&mgr->inactiveParticles);
                }
            }
        }

        if (emtr->resource->header->flags.hasFixedPolygonID) {
            ptcl->unk_2E.currentPolygonID = mgr->polygonID.fix;
        } else {
            ptcl->unk_2E.currentPolygonID = mgr->polygonID.current;
            mgr->polygonID.current += 1;

            if (mgr->polygonID.current > mgr->polygonID.max) {
                mgr->polygonID.current = mgr->polygonID.min;
            }
        }

        ptcl->age += 1;

        if (ptcl->age > ptcl->lifeTime) {
            SPLParticle *erased = SPLParticleList_Erase(&emtr->particles, ptcl);
            SPLParticleList_PushFront(&mgr->inactiveParticles, erased);
        }
    }

    if (resFlags.hasChildResource) {
        animCount = 0;
        if (child->flags.hasScaleAnim) {
            childAnimFuncs[animCount].func = sub_020A1A48;
            childAnimFuncs[animCount++].loop = FALSE;
        }

        if (child->flags.hasAlphaAnim) {
            childAnimFuncs[animCount].func = sub_020A19F0;
            childAnimFuncs[animCount++].loop = FALSE;
        }

        if (!child->flags.usesBehaviors) {
            behaviorCount = 0;
        }

        for (ptcl = emtr->childParticles.first; ptcl != NULL; ptcl = next) {
            next = ptcl->next;

            // "life rate" is a fraction of the particle's lifetime, represented as a u8
            // where 0 is the start of the particle's life and 255 is the end
            lifeRates[0] = (ptcl->age << 8) / ptcl->lifeTime;
            for (i = 0; i < animCount; i++) {
                childAnimFuncs[i].func(ptcl, res, lifeRates[0]);
            }

            acc.x = acc.y = acc.z = 0;

            if (child->flags.followEmitter) {
                ptcl->emitterPos = emtr->position;
            }

            for (i = 0; i < behaviorCount; i++) {
                res->behaviors[i].apply(res->behaviors[i].object, ptcl, &acc, emtr);
            }

            ptcl->rotation += ptcl->angularVelocity;

            ptcl->velocity.x = ptcl->velocity.x * airResistance >> 9;
            ptcl->velocity.y = ptcl->velocity.y * airResistance >> 9;
            ptcl->velocity.z = ptcl->velocity.z * airResistance >> 9;

            ptcl->velocity.x += acc.x;
            ptcl->velocity.y += acc.y;
            ptcl->velocity.z += acc.z;

            ptcl->position.x += ptcl->velocity.x + emtr->velocity.x;
            ptcl->position.y += ptcl->velocity.y + emtr->velocity.y;
            ptcl->position.z += ptcl->velocity.z + emtr->velocity.z;

            if (emtr->resource->header->flags.childHasFixedPolygonID) {
                ptcl->unk_2E.currentPolygonID = mgr->polygonID.fix;
            } else {
                ptcl->unk_2E.currentPolygonID = mgr->polygonID.current;
                mgr->polygonID.current += 1;

                if (mgr->polygonID.current > mgr->polygonID.max) {
                    mgr->polygonID.current = mgr->polygonID.min;
                }
            }

            ptcl->age += 1;

            if (ptcl->age > ptcl->lifeTime) {
                SPLParticle *erased = SPLParticleList_Erase(&emtr->childParticles, ptcl);
                SPLParticleList_PushFront(&mgr->inactiveParticles, erased);
            }
        }
    }

    emtr->age += 1;

    if (emtr->updateCallback) {
        emtr->updateCallback(emtr, SPL_CALLBACK_POST_UPDATE);
    }
}

static void sub_0209D064(SPLManager *mgr)
{
    SPLEmitter *emtr;
    SPLResourceHeader *resBase;
    SPLParticle *ptcl;
    DrawFunc drawFunc;
    SetTexFunc setTexFunc;

    emtr = mgr->renderState.emitter;
    resBase = emtr->resource->header;
    drawFunc = NULL;

    SPLUtil_SetTexture(mgr->textures + resBase->misc.unk_03_0);

    switch (resBase->flags.unk_04_4) {
    case 0:
        drawFunc = sub_0209FF0C;
        break;
    case 1:
        drawFunc = sub_0209F3D0;
        break;
    case 2:
        drawFunc = sub_0209E9A0;
        break;
    case 3:
        drawFunc = sub_0209E1D4;
        break;
    case 4:
        drawFunc = sub_0209E1D4;
        break;
    }

    setTexFunc = resBase->flags.hasTexAnim ? SPLUtil_SetTexture : SPLUtil_SetTexture_Stub;
    ptcl = emtr->particles.first;

    while (ptcl != NULL) {
        setTexFunc(mgr->textures + ptcl->misc.unk_00);
        drawFunc(mgr, ptcl);
        ptcl = ptcl->next;
    }
}

static void sub_0209CF7C(SPLManager *mgr)
{
    SPLEmitter *emtr;
    SPLResource *res;
    DrawFunc drawFunc;
    SPLParticle *ptcl;

    emtr = mgr->renderState.emitter;
    drawFunc = NULL;
    res = emtr->resource;

    if (!res->header->flags.hasChildResource) {
        return;
    }

    SPLUtil_SetTexture(mgr->textures + res->childResource->misc.unk_03_0);

    switch (res->childResource->flags.unk_02_7) {
    case 0:
        drawFunc = sub_0209FAB8;
        break;
    case 1:
        drawFunc = sub_0209ECF0;
        break;
    case 2:
        drawFunc = sub_0209E650;
        break;
    case 3:
        drawFunc = sub_0209DD54;
        break;
    case 4:
        drawFunc = sub_0209DD54;
        break;
    }

    ptcl = emtr->childParticles.first;
    while (ptcl != NULL) {
        drawFunc(mgr, ptcl);
        ptcl = ptcl->next;
    }
}

void sub_0209CF00(SPLManager *mgr)
{
    SPLResourceHeader *resBase;

    resBase = mgr->renderState.emitter->resource->header;
    if (resBase->flags.unk_06_5) {
        sub_0209CF7C(mgr);

        if (!resBase->flags.unk_06_6) {
            sub_0209D064(mgr);
        }
    } else {
        if (!resBase->flags.unk_06_6) {
            sub_0209D064(mgr);
        }

        sub_0209CF7C(mgr);
    }
}

void spl_generate(SPLEmitter *emtr, SPLList *list)
{
    sub_020A08DC(emtr, list);
}

void SPL_Util_SetCylinderEmiterDirection(SPLEmitter *emtr, VecFx32 *p1, VecFx32 *p2)
{
    VecFx32 vex;

    if (emtr->resource->header->flags.unk_04_0 == 6 || emtr->resource->header->flags.unk_04_0 == 7) {
        emtr->position.x = (p2->x + p1->x) / 2;
        emtr->position.y = (p2->y + p1->y) / 2;
        emtr->position.z = (p2->z + p1->z) / 2;
        emtr->unk_D0 = VEC_Distance(p1, p2) / 2;

        vex.x = p2->x - p1->x;
        vex.y = p2->y - p1->y;
        vex.z = p2->z - p1->z;
        VEC_Normalize(&vex, &vex);

        emtr->unk_C0.x = (fx16)vex.x;
        emtr->unk_C0.y = (fx16)vex.y;
        emtr->unk_C0.z = (fx16)vex.z;
    }
}
