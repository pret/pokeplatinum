#ifndef SPL_BEHAVIOR_H
#define SPL_BEHAVIOR_H

#include <nitro/types.h>

#include "spl.h"

typedef struct SPLGravityBehavior {
    VecFx16 mag;
    u16 reserved0;
} SPLGravityBehavior;

typedef struct SPLRandomBehavior {
    VecFx16 mag;
    u16 intvl;
} SPLRandomBehavior;

typedef struct SPLMagnetBehavior {
    VecFx32 pos;
    fx16 mag;
    u16 reserved0;
} SPLMagnetBehavior;

typedef struct SPLSpinBehavior {
    u16 radian;
    u16 axis_type;
} SPLSpinBehavior;

typedef struct SPLCollisionBehavior {
    fx32 y;
    fx16 coeff_bounce;
    
    struct {
        u16 eventtype : 2;
        u16 global : 1;
        u16 reserved : 13;
    } etc;
} SPLCollisionBehavior;

typedef struct SPLConvergenceBehavior {
    VecFx32 pos;
    fx16 ratio;
    u16 reserved0;
} SPLConvergenceBehavior;


void SPL_020A2204(const void *param0, SPLParticle *param1, VecFx32 *param2, struct SPLEmitter_t *param3);
void SPL_020A213C(const void *param0, SPLParticle *param1, VecFx32 *param2, struct SPLEmitter_t *param3);
void SPL_020A20B8(const void *param0, SPLParticle *param1, VecFx32 *param2, struct SPLEmitter_t *param3);
void SPL_020A1FE0(const void *param0, SPLParticle *param1, VecFx32 *param2, struct SPLEmitter_t *param3);
void SPL_020A1EC4(const void *param0, SPLParticle *param1, VecFx32 *param2, struct SPLEmitter_t *param3);
void SPL_020A1E30(const void *param0, SPLParticle *param1, VecFx32 *param2, struct SPLEmitter_t *param3);

#endif // SPL_BEHAVIOR_H
