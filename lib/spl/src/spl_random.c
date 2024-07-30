#include "spl.h"

u32 gSPLRandomState;

void SPLRandom_VecFx32(VecFx32 *vec)
{
    vec->x = rng_next_fx32(8);
    vec->y = rng_next_fx32(8);
    vec->z = rng_next_fx32(8);
    VEC_Normalize(vec, vec);
}

void SPLRandom_VecFx32_XY(VecFx32 *vec)
{
    vec->x = rng_next_fx32(8);
    vec->y = rng_next_fx32(8);
    vec->z = 0;
    VEC_Normalize(vec, vec);
}
