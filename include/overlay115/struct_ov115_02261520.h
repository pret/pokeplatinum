#ifndef POKEPLATINUM_STRUCT_OV115_02261520_H
#define POKEPLATINUM_STRUCT_OV115_02261520_H

#include "struct_decls/struct_020218BC_decl.h"
#include "overlay019/struct_ov19_021DA864.h"

#include <nitro/fx/fx.h>

typedef struct {
    GraphicElementManager * manager;
    const CellActorResourceData * unk_04;
    VecFx32 position;
    VecFx32 affineScale;
    u16 affineZRotation;
    u32 priority;
    int vramType;
    int unk_2C;
} CellActorInitParamsEx;

#endif // POKEPLATINUM_STRUCT_OV115_02261520_H
