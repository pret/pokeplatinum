#ifndef POKEPLATINUM_STRUCT_OV83_0223D9A8_H
#define POKEPLATINUM_STRUCT_OV83_0223D9A8_H

#include "struct_decls/struct_020218BC_decl.h"
#include "overlay019/struct_ov19_021DA864.h"

#include <nitro/fx/fx.h>

typedef struct {
    CellActorCollection * collection;
    const CellActorResourceData * resourceData;
    VecFx32 position;
    u32 priority;
    int vramType;
    int heapID;
} CellActorInitParams;

#endif // POKEPLATINUM_STRUCT_OV83_0223D9A8_H
