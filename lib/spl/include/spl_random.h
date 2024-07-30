#ifndef SPL_RANDOM_H
#define SPL_RANDOM_H

#include <nitro/types.h>
#include <nitro/fx/fx_vec.h>

extern u32 gSPLRandomState;

void SPLRandom_VecFx32(VecFx32 *vec);
void SPLRandom_VecFx32_XY(VecFx32 *vec);

#endif // SPL_RANDOM_H
