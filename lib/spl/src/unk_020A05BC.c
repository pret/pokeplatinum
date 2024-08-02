#include "nitro/types.h"
#include <nitro/fx/fx.h>
#include <nitro/fx/fx_const.h>
#include <nitro/fx/fx_trig.h>

#include "spl_emitter.h"
#include "spl_internal.h"
#include "spl_list.h"
#include "spl_particle.h"
#include "spl_random.h"
#include "spl_resource.h"


static void SPLEmitter_ComputeOrthogonalAxes(SPLEmitter *emtr);
static void SPLUtil_TiltCoordinates(VecFx32 *ptclPos, VecFx32 *pos, SPLEmitter *emtr);

static VecFx16 sUpVector = { 0, FX16_ONE, 0 };


static void SPLEmitter_ComputeOrthogonalAxes(SPLEmitter *emtr)
{
    VecFx16 vec, axis;

    vec = sUpVector;

    switch (emtr->resource->header->flags.circleAxis) {
    case SPL_CIRCLE_AXIS_X:
        axis.x = FX32_ONE;
        axis.y = 0;
        axis.z = 0;
        break;
    case SPL_CIRCLE_AXIS_Y:
        axis.x = 0;
        axis.y = FX32_ONE;
        axis.z = 0;
        break;
    case SPL_CIRCLE_AXIS_Z:
        axis.x = 0;
        axis.y = 0;
        axis.z = FX32_ONE;
        break;
    default: // SPL_CIRCLE_AXIS_EMITTER
        VEC_Fx16Normalize(&emtr->axis, &axis);
        break;
    }

    fx32 dot = VEC_Fx16DotProduct(&vec, &axis);
    if (dot == FX32_ONE || dot == -FX32_ONE) {
        vec.x = FX32_ONE;
        vec.y = 0;
        vec.z = 0;
    }

    emtr->crossAxis1.x = FX_MUL(axis.y, vec.z) - FX_MUL(axis.z, vec.y);
    emtr->crossAxis1.y = FX_MUL(axis.z, vec.x) - FX_MUL(axis.x, vec.z);
    emtr->crossAxis1.z = FX_MUL(axis.x, vec.y) - FX_MUL(axis.y, vec.x);

    emtr->crossAxis2.x = FX_MUL(axis.y, emtr->crossAxis1.z) - FX_MUL(axis.z, emtr->crossAxis1.y);
    emtr->crossAxis2.y = FX_MUL(axis.z, emtr->crossAxis1.x) - FX_MUL(axis.x, emtr->crossAxis1.z);
    emtr->crossAxis2.z = FX_MUL(axis.x, emtr->crossAxis1.y) - FX_MUL(axis.y, emtr->crossAxis1.x);

    VEC_Fx16Normalize(&emtr->crossAxis1, &emtr->crossAxis1);
    VEC_Fx16Normalize(&emtr->crossAxis2, &emtr->crossAxis2);
}

// Tilt the coordinates of a particle based on the emitter's axis
static void SPLUtil_TiltCoordinates(VecFx32 *ptclPos, VecFx32 *pos, SPLEmitter *emtr)
{
    VecFx16 vec;
    VEC_Fx16CrossProduct(&emtr->crossAxis1, &emtr->crossAxis2, &vec);
    VEC_Fx16Normalize(&vec, &vec);

    ptclPos->x = FX_MUL(pos->x, emtr->crossAxis1.x) + FX_MUL(pos->y, emtr->crossAxis2.x) + FX_MUL(pos->z, vec.x);
    ptclPos->y = FX_MUL(pos->x, emtr->crossAxis1.y) + FX_MUL(pos->y, emtr->crossAxis2.y) + FX_MUL(pos->z, vec.y);
    ptclPos->z = FX_MUL(pos->x, emtr->crossAxis1.z) + FX_MUL(pos->y, emtr->crossAxis2.z) + FX_MUL(pos->z, vec.z);
}

void SPLEmitter_EmitParticles(SPLEmitter *emtr, SPLParticleList *list)
{
    SPLResource *res = emtr->resource;
    SPLResourceHeader *header = res->header;

    int i = 0;
    int emitCountDec = emtr->emissionCount + FX32_CAST(emtr->emissionCountFractional);
    int totalEmissions = emitCountDec >> FX32_SHIFT;
    int emission = 0;
    emtr->emissionCountFractional = emitCountDec & FX32_DEC_MASK;

    enum SPLEmissionType emitType = header->flags.emissionType;
    if (emitType == SPL_EMISSION_TYPE_CIRCLE_BORDER || 
        emitType == SPL_EMISSION_TYPE_CIRCLE_BORDER_UNIFORM || 
        emitType == SPL_EMISSION_TYPE_CIRCLE || 
        emitType == SPL_EMISSION_TYPE_CYLINDER_SURFACE ||
        emitType == SPL_EMISSION_TYPE_CYLINDER || 
        emitType == SPL_EMISSION_TYPE_HEMISPHERE_SURFACE || 
        emitType == SPL_EMISSION_TYPE_HEMISPHERE) {
        SPLEmitter_ComputeOrthogonalAxes(emtr);
    }

    for (i = 0; i < totalEmissions; i++) {
        SPLParticle *ptcl = SPLParticleList_PopFront(list);
        if (ptcl == NULL) {
            return;
        }

        SPLParticleList_PushFront(&emtr->particles, ptcl);

        switch (header->flags.emissionType) {
        case SPL_EMISSION_TYPE_POINT:
            ptcl->position.x = ptcl->position.y = ptcl->position.z = 0;
            break;

        case SPL_EMISSION_TYPE_SPHERE_SURFACE:
            SPLRandom_VecFx32(&ptcl->position);
            ptcl->position.x = FX_MUL(ptcl->position.x, emtr->radius);
            ptcl->position.y = FX_MUL(ptcl->position.y, emtr->radius);
            ptcl->position.z = FX_MUL(ptcl->position.z, emtr->radius);
            break;

        case SPL_EMISSION_TYPE_CIRCLE_BORDER: {
            VecFx32 pos;
            SPLRandom_VecFx32_XY(&pos);
            pos.x = FX_MUL(pos.x, emtr->radius);
            pos.y = FX_MUL(pos.y, emtr->radius);
            pos.z = 0;
            SPLUtil_TiltCoordinates(&ptcl->position, &pos, emtr);
        } break;

        case SPL_EMISSION_TYPE_CIRCLE_BORDER_UNIFORM: {
            VecFx32 pos;
            int idx = (emission * FX32_CONST(16)) / totalEmissions;
            emission += 1;

            fx32 sin = FX_SinIdx(idx);
            fx32 cos = FX_CosIdx(idx);
            pos.x = FX_MUL(sin, emtr->radius);
            pos.y = FX_MUL(cos, emtr->radius);
            pos.z = 0;
            SPLUtil_TiltCoordinates(&ptcl->position, &pos, emtr);
        } break;

        case SPL_EMISSION_TYPE_SPHERE:
            SPLRandom_VecFx32(&ptcl->position);
            ptcl->position.x = FX_MUL(FX_MUL(ptcl->position.x, emtr->radius), SPLRandom_RangeFX32(FX32_ONE));
            ptcl->position.y = FX_MUL(FX_MUL(ptcl->position.y, emtr->radius), SPLRandom_RangeFX32(FX32_ONE));
            ptcl->position.z = FX_MUL(FX_MUL(ptcl->position.z, emtr->radius), SPLRandom_RangeFX32(FX32_ONE));
            break;

        case SPL_EMISSION_TYPE_CIRCLE: {
            VecFx32 pos;
            SPLRandom_VecFx32_XY(&pos);
            pos.x = FX_MUL(FX_MUL(pos.x, emtr->radius), SPLRandom_RangeFX32(FX32_ONE));
            pos.y = FX_MUL(FX_MUL(pos.y, emtr->radius), SPLRandom_RangeFX32(FX32_ONE));
            SPLUtil_TiltCoordinates(&ptcl->position, &pos, emtr);
        } break;

        case SPL_EMISSION_TYPE_HEMISPHERE_SURFACE: {
            VecFx32 pos;
            VecFx16 emitterUp;
            SPLRandom_VecFx32(&ptcl->position);
            VEC_Fx16CrossProduct(&emtr->crossAxis1, &emtr->crossAxis2, &emitterUp);
            pos.x = emitterUp.x;
            pos.y = emitterUp.y;
            pos.z = emitterUp.z;
            if (VEC_DotProduct(&pos, &ptcl->position) <= 0) {
                ptcl->position.x = -ptcl->position.x;
                ptcl->position.y = -ptcl->position.y;
                ptcl->position.z = -ptcl->position.z;
            }

            ptcl->position.x = FX_MUL(ptcl->position.x, emtr->radius);
            ptcl->position.y = FX_MUL(ptcl->position.y, emtr->radius);
            ptcl->position.z = FX_MUL(ptcl->position.z, emtr->radius);
        } break;

        case SPL_EMISSION_TYPE_HEMISPHERE: {
            VecFx32 pos;
            VecFx16 tmpUnitVec;
            SPLRandom_VecFx32(&ptcl->position);
            VEC_Fx16CrossProduct(&emtr->crossAxis1, &emtr->crossAxis2, &tmpUnitVec);
            pos.x = tmpUnitVec.x;
            pos.y = tmpUnitVec.y;
            pos.z = tmpUnitVec.z;
            if (VEC_DotProduct(&pos, &ptcl->position) < 0) {
                ptcl->position.x = -ptcl->position.x;
                ptcl->position.y = -ptcl->position.y;
                ptcl->position.z = -ptcl->position.z;
            }

            ptcl->position.x = FX_MUL(FX_MUL(ptcl->position.x, emtr->radius), (SPLRandom_RangeFX32(FX32_ONE) >> 1) + FX32_HALF);
            ptcl->position.y = FX_MUL(FX_MUL(ptcl->position.y, emtr->radius), (SPLRandom_RangeFX32(FX32_ONE) >> 1) + FX32_HALF);
            ptcl->position.z = FX_MUL(FX_MUL(ptcl->position.z, emtr->radius), (SPLRandom_RangeFX32(FX32_ONE) >> 1) + FX32_HALF);
        } break;

        case SPL_EMISSION_TYPE_CYLINDER_SURFACE: {
            VecFx32 pos;
            SPLRandom_VecFx32_XY(&ptcl->velocity);
            pos.x = FX_MUL(ptcl->velocity.x, emtr->radius);
            pos.y = FX_MUL(ptcl->velocity.y, emtr->radius);
            pos.z = SPLRandom_RangeFX32(emtr->length);
            SPLUtil_TiltCoordinates(&ptcl->position, &pos, emtr);
        } break;

        case SPL_EMISSION_TYPE_CYLINDER: {
            VecFx32 pos;
            SPLRandom_VecFx32_XY(&ptcl->velocity);
            pos.x = FX_MUL(FX_MUL(ptcl->velocity.x, emtr->radius), SPLRandom_RangeFX32(FX32_ONE));
            pos.y = FX_MUL(FX_MUL(ptcl->velocity.y, emtr->radius), SPLRandom_RangeFX32(FX32_ONE));
            pos.z = SPLRandom_RangeFX32(emtr->length);
            SPLUtil_TiltCoordinates(&ptcl->position, &pos, emtr);
        } break;
        }

        fx32 magPos = SPLRandom_DoubleScaledRangeFX32(emtr->initVelPositionAmplifier, header->randomAttenuation.initVel);
        fx32 magAxis = SPLRandom_DoubleScaledRangeFX32(emtr->initVelAxisAmplifier, header->randomAttenuation.initVel);

        VecFx32 posNorm;
        if (header->flags.emissionType == SPL_EMISSION_TYPE_CYLINDER_SURFACE) {
            VecFx32 tmp;
            tmp.x = FX_MUL(ptcl->velocity.x, emtr->crossAxis1.x) + FX_MUL(ptcl->velocity.y, emtr->crossAxis2.x);
            tmp.y = FX_MUL(ptcl->velocity.x, emtr->crossAxis1.y) + FX_MUL(ptcl->velocity.y, emtr->crossAxis2.y);
            tmp.z = FX_MUL(ptcl->velocity.x, emtr->crossAxis1.z) + FX_MUL(ptcl->velocity.y, emtr->crossAxis2.z);

            VEC_Normalize(&tmp, &posNorm);
        } else if (ptcl->position.x == 0 && ptcl->position.y == 0 && ptcl->position.z == 0) {
            SPLRandom_VecFx32(&posNorm);
        } else {
            VEC_Normalize(&ptcl->position, &posNorm);
        }

        ptcl->velocity.x = FX_MUL(posNorm.x, magPos) + FX_MUL(emtr->axis.x, magAxis) + emtr->particleInitVelocity.x;
        ptcl->velocity.y = FX_MUL(posNorm.y, magPos) + FX_MUL(emtr->axis.y, magAxis) + emtr->particleInitVelocity.y;
        ptcl->velocity.z = FX_MUL(posNorm.z, magPos) + FX_MUL(emtr->axis.z, magAxis) + emtr->particleInitVelocity.z;

        ptcl->emitterPos = emtr->position;

        ptcl->baseScale = SPLRandom_DoubleScaledRangeFX32(emtr->baseScale, header->randomAttenuation.baseScale);
        ptcl->unk_34 = FX32_ONE;

        if (header->flags.hasColorAnim && res->colorAnim->unk_08.unk_00_0) {
            u16 clr[3];
            u32 index = SPLRandom_S32(12);
            clr[0] = res->colorAnim->startColor;
            clr[1] = header->color;
            clr[2] = res->colorAnim->endColor;
            ptcl->color = clr[index % 3];
        } else {
            ptcl->color = header->color;
        }

        ptcl->visibility.baseAlpha = emtr->misc.baseAlpha;
        ptcl->visibility.animAlpha = 31;

        if (header->flags.unk_05_5) {
            ptcl->rotation = SPLRandom_S32(32);
        } else {
            ptcl->rotation = emtr->unk_C6;
        }

        if (header->flags.hasRotation) {
            ptcl->angularVelocity = (u32)SPLRandom_BetweenFX32(header->minRotation, header->maxRotation) >> FX32_SHIFT;
        } else {
            ptcl->angularVelocity = 0;
        }

        ptcl->lifeTime = SPLRandom_ScaledRangeFX32(emtr->particleLifeTime, header->randomAttenuation.lifeTime) + 1; // Life is always at least 1 frame
        ptcl->age = 0;

        if (header->flags.hasTexAnim && res->texAnim->param.randomizeInit) {
            ptcl->misc.texture = res->texAnim->textures[SPLRandom_U32(12) % res->texAnim->param.frameCount];
        } else if (header->flags.hasTexAnim && !res->texAnim->param.randomizeInit) {
            ptcl->misc.texture = res->texAnim->textures[0];
        } else {
            ptcl->misc.texture = header->misc.textureIndex;
        }
        
        ptcl->loopTimeFactor = 0xFFFF / res->header->misc.loopFrames;
        ptcl->lifeTimeFactor = 0xFFFF / ptcl->lifeTime;

        ptcl->misc.lifeRateOffset = 0;

        if (header->flags.randomizeLoopedAnim) {
            ptcl->misc.lifeRateOffset = (u8)SPLRandom_S32(8);
        }
    }
}

void sub_020A05BC(SPLParticle *ptcl, SPLEmitter *emtr, SPLList *list)
{
    SPLParticle *chld;
    fx32 velBase, velRand;
    u32 rng;
    int i;
    SPLChildResource *chldRes = emtr->resource->childResource;
    fx32 vel = FX_MUL((fx32)(chldRes->unk_08.unk_00_0 << FX32_SHIFT), FX32_CONST(1 / 256.0f));

    for (i = 0; i < chldRes->misc.unk_00_0; i++) {
        chld = (SPLParticle *)SPLList_PopFront(list);
        if (chld == NULL) {
            return;
        }
        SPLList_PushFront((SPLList *)&emtr->childParticles, (SPLNode *)chld);

        chld->position = ptcl->position;

        velBase = FX_MUL(ptcl->velocity.x, vel);
        velRand = SPLRandom_RangeFX32(chldRes->unk_02);
        chld->velocity.x = velBase + velRand;

        velBase = FX_MUL(ptcl->velocity.y, vel);
        velRand = SPLRandom_RangeFX32(chldRes->unk_02);
        chld->velocity.y = velBase + velRand;

        velBase = FX_MUL(ptcl->velocity.z, vel);
        velRand = SPLRandom_RangeFX32(chldRes->unk_02);
        chld->velocity.z = velBase + velRand;

        chld->emitterPos = ptcl->emitterPos;

        // `unk_08.unk_00_0` and `unk_08.unk_01_0` in `UnkSPLStruct14`
        // could just be `u8 unk_08;` and `u8 unk_09;`
        // instead of an inner struct
        int idk = ptcl->baseScale * ptcl->unk_34 >> FX32_SHIFT;
        chld->baseScale = idk * (chldRes->unk_08.unk_01_0 + 1) >> 6;

        chld->unk_34 = FX32_ONE;

        if (chldRes->flags.unk_02_6) {
            chld->color = chldRes->unk_0A;
        } else {
            chld->color = ptcl->color;
        }

        chld->visibility.baseAlpha = (ptcl->visibility.baseAlpha * (ptcl->visibility.animAlpha + 1)) >> 5;
        chld->visibility.animAlpha = 31;

        switch (chldRes->flags.unk_02_3) {
        case 0:
            chld->rotation = 0;
            chld->angularVelocity = 0;
            break;
        case 1:
            chld->rotation = ptcl->rotation;
            chld->angularVelocity = 0;
            break;
        case 2:
            chld->rotation = ptcl->rotation;
            chld->angularVelocity = ptcl->angularVelocity;
            break;
        }

        chld->lifeTime = chldRes->unk_06;
        chld->age = 0;
        chld->misc.texture = chldRes->misc.textureIndex;

        chld->loopTimeFactor = 0xFFFF / (ptcl->lifeTime / 2);
        chld->lifeTimeFactor = 0xFFFF / ptcl->lifeTime;
        chld->misc.lifeRateOffset = 0;
    }
}
