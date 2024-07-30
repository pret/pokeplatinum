#include <nitro/fx/fx.h>
#include <nitro/fx/fx_mtx33.h>
#include <nitro/fx/fx_trig.h>

#include "spl_behavior.h"
#include "spl_random.h"


void SPL_020A2204(const void *obj, SPLParticle *ptcl, VecFx32 *pos, SPLEmitter *emtr)
{
    SPLGravityBehavior *gravity = (SPLGravityBehavior *)obj;
    pos->x += gravity->mag.x;
    pos->y += gravity->mag.y;
    pos->z += gravity->mag.z;
}

void SPL_020A213C(const void *obj, SPLParticle *ptcl, VecFx32 *acc, SPLEmitter *emtr)
{
    SPLRandomBehavior *rng = (SPLRandomBehavior *)obj;
    if ((ptcl->unk_26 % rng->intvl) == 0) {
        acc->x += SPLRandom_RangeFX32(rng->mag.x);
        acc->y += SPLRandom_RangeFX32(rng->mag.y);
        acc->z += SPLRandom_RangeFX32(rng->mag.z);
    }
}

void SPL_020A20B8(const void *obj, SPLParticle *ptcl, VecFx32 *pos, SPLEmitter *emtr)
{
    SPLMagnetBehavior *magnet = (SPLMagnetBehavior *)obj;
    pos->x += (magnet->mag * ((magnet->pos.x - ptcl->unk_08.x) - ptcl->unk_14.x)) >> FX32_SHIFT;
    pos->y += (magnet->mag * ((magnet->pos.y - ptcl->unk_08.y) - ptcl->unk_14.y)) >> FX32_SHIFT;
    pos->z += (magnet->mag * ((magnet->pos.z - ptcl->unk_08.z) - ptcl->unk_14.z)) >> FX32_SHIFT;
}

void SPL_020A1FE0(const void *obj, SPLParticle *ptcl, VecFx32 *pos, SPLEmitter *emtr)
{
    SPLSpinBehavior *spin = (SPLSpinBehavior *)obj;
    MtxFx33 rot;
    switch (spin->axis_type) {
    case 0:
        MTX_RotX33(&rot, FX_SinIdx(spin->radian), FX_CosIdx(spin->radian));
        break;
    case 1:
        MTX_RotY33(&rot, FX_SinIdx(spin->radian), FX_CosIdx(spin->radian));
        break;
    case 2:
        MTX_RotZ33(&rot, FX_SinIdx(spin->radian), FX_CosIdx(spin->radian));
        break;
    }

    MTX_MultVec33(&ptcl->unk_08, &rot, &ptcl->unk_08);
}

void SPL_020A1EC4(const void *obj, SPLParticle *ptcl, VecFx32 *pos, SPLEmitter *emtr)
{
    SPLCollisionBehavior *fld = (SPLCollisionBehavior *)obj;
    fx32 y = fld->y;
    fx32 ey;
    
    if (emtr->unk_E4 != FX32_MIN) {
        y = emtr->unk_E4;
    }

    switch (fld->etc.eventtype) {
    case 0:
        ey = ptcl->unk_38.y;
        if (ey < y && ey + ptcl->unk_08.y > y) {
            ptcl->unk_08.y = y - ey;
            ptcl->unk_26 = ptcl->unk_24;
        } else if (ey >= y) {
            if (ey + ptcl->unk_08.y < y) {
                ptcl->unk_08.y = y - ey;
                ptcl->unk_26 = ptcl->unk_24;
            }
        }
        break;
    case 1:
        ey = ptcl->unk_38.y;
        if (ey < y && ey + ptcl->unk_08.y > y) {
            ptcl->unk_08.y = y - ey;
            ptcl->unk_14.y = -FX32_CAST(FX_MUL(ptcl->unk_14.y, fld->coeff_bounce));
            return;
        }
        if (ey < y) {
            return;
        }
        if (ey + ptcl->unk_08.y < y) {
            ptcl->unk_08.y = y - ey;
            ptcl->unk_14.y = -FX32_CAST(FX_MUL(ptcl->unk_14.y, fld->coeff_bounce));
        }
        break;
    }
}

void SPL_020A1E30(const void *obj, SPLParticle *ptcl, VecFx32 *pos, SPLEmitter *emtr)
{
    SPLConvergenceBehavior *conv = (SPLConvergenceBehavior *)obj;
    ptcl->unk_08.x += FX32_CAST(FX_MUL(conv->ratio, (conv->pos.x - ptcl->unk_08.x)));
    ptcl->unk_08.y += FX32_CAST(FX_MUL(conv->ratio, (conv->pos.y - ptcl->unk_08.y)));
    ptcl->unk_08.z += FX32_CAST(FX_MUL(conv->ratio, (conv->pos.z - ptcl->unk_08.z)));
}
