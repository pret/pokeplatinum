#ifndef POKEPLATINUM_SPL_H
#define POKEPLATINUM_SPL_H

#include "spl_manager.h"


static inline void SPL_UnkInline1 (SPLEmitter * param0, const VecFx32 * param1)
{
    param0->unk_98.x = param1->x + param0->p_res->header->unk_04.x;
    param0->unk_98.y = param1->y + param0->p_res->header->unk_04.y;
    param0->unk_98.z = param1->z + param0->p_res->header->unk_04.z;
}

static inline void SPL_UnkInline2 (SPLEmitter * param0, fx32 param1)
{
    param0->unk_98.x = param1 + param0->p_res->header->unk_04.x;
}

static inline void SPL_UnkInline3 (SPLEmitter * param0, fx32 param1)
{
    param0->unk_98.y = param1 + param0->p_res->header->unk_04.y;
}

static inline void SPL_UnkInline4 (SPLEmitter * param0, fx32 param1)
{
    param0->unk_98.z = param1 + param0->p_res->header->unk_04.z;
}

static inline void SPL_UnkInline5 (SPLEmitter * param0, const VecFx16 * param1)
{
    param0->unk_C0 = *param1;
}

#endif // POKEPLATINUM_SPL_H
