#include "spl.h"

#include <nitro/fx/fx.h>

void sub_020A2354(VecFx32 *vec)
{
    vec->x = rng_next(8);
    vec->y = rng_next(8);
    vec->z = 0;
    VEC_Normalize(vec, vec);
}

void sub_020A23B0(VecFx32 *vec)
{
    vec->x = rng_next(8);
    vec->y = rng_next(8);
    vec->z = rng_next(8);
    VEC_Normalize(vec, vec);
}
