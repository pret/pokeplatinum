#ifndef POKEPLATINUM_SPL_H
#define POKEPLATINUM_SPL_H

#include "spl_manager.h"


static inline void SPL_UnkInline1 (SPLEmitter * param0, const VecFx32 * param1)
{
    param0->position.x = param1->x + param0->resource->header->emitterBasePos.x;
    param0->position.y = param1->y + param0->resource->header->emitterBasePos.y;
    param0->position.z = param1->z + param0->resource->header->emitterBasePos.z;
}

static inline void SPL_UnkInline2 (SPLEmitter * param0, fx32 param1)
{
    param0->position.x = param1 + param0->resource->header->emitterBasePos.x;
}

static inline void SPL_UnkInline3 (SPLEmitter * param0, fx32 param1)
{
    param0->position.y = param1 + param0->resource->header->emitterBasePos.y;
}

static inline void SPL_UnkInline4 (SPLEmitter * param0, fx32 param1)
{
    param0->position.z = param1 + param0->resource->header->emitterBasePos.z;
}

static inline void SPL_UnkInline5 (SPLEmitter * param0, const VecFx16 * param1)
{
    param0->axis = *param1;
}

#endif // POKEPLATINUM_SPL_H
