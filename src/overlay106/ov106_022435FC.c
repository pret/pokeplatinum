#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02022550_decl.h"
#include "pokemon.h"
#include "overlay106/struct_ov106_02243650_decl.h"

#include "overlay106/struct_ov106_02243310.h"

#include "heap.h"
#include "unk_020218BC.h"
#include "pokemon_icon.h"
#include "overlay106/ov106_02243310.h"
#include "overlay106/ov106_022435FC.h"

struct UnkStruct_ov106_02243650_t {
    u32 unk_00;
    u32 unk_04;
    u32 unk_08;
    const u8 * unk_0C;
    CellActor * unk_10;
};

UnkStruct_ov106_02243650 * ov106_022435FC(UnkStruct_ov106_02243310 * param0, u32 param1, u32 param2, u16 param3, u16 param4, const u8 * param5);
void * ov106_02243650(UnkStruct_ov106_02243650 * param0);
void ov106_02243664(UnkStruct_ov106_02243650 * param0, int param1);
void ov106_02243670(UnkStruct_ov106_02243650 * param0, u16 param1, u16 param2);
void ov106_022436B0(UnkStruct_ov106_02243650 * param0, u32 param1);
void ov106_022436CC(UnkStruct_ov106_02243650 * param0, Pokemon * param1);

UnkStruct_ov106_02243650 * ov106_022435FC (UnkStruct_ov106_02243310 * param0, u32 param1, u32 param2, u16 param3, u16 param4, const u8 * param5)
{
    UnkStruct_ov106_02243650 * v0;
    VecFx32 v1;

    v0 = Heap_AllocFromHeap(98, sizeof(UnkStruct_ov106_02243650));
    memset(v0, 0, sizeof(UnkStruct_ov106_02243650));

    v0->unk_0C = param5;

    if (param5 != NULL) {
        v0->unk_10 = ov106_022434BC(param0, param1, param2, 0, 0);
    } else {
        v0->unk_10 = ov106_022434BC(param0, param1, param2, 0, 0);
    }

    v1.x = (param3 * FX32_ONE);
    v1.y = (param4 * FX32_ONE);

    CellActor_SetPosition(v0->unk_10, &v1);

    return v0;
}

void * ov106_02243650 (UnkStruct_ov106_02243650 * param0)
{
    CellActor_Delete(param0->unk_10);
    Heap_FreeToHeap(param0);

    return NULL;
}

void ov106_02243664 (UnkStruct_ov106_02243650 * param0, int param1)
{
    CellActor_SetDrawFlag(param0->unk_10, param1);
    return;
}

void ov106_02243670 (UnkStruct_ov106_02243650 * param0, u16 param1, u16 param2)
{
    VecFx32 v0;

    if (param0->unk_0C != NULL) {
        CellActor_SetAnimNoRestart(param0->unk_10, param0->unk_0C[0]);
    }

    v0 = *(CellActor_GetPosition(param0->unk_10));

    v0.x = (param1 * FX32_ONE);
    v0.y = (param2 * FX32_ONE);

    CellActor_SetPosition(param0->unk_10, &v0);
    return;
}

void ov106_022436B0 (UnkStruct_ov106_02243650 * param0, u32 param1)
{
    CellActor_SetAnimSpeed(param0->unk_10, FX32_ONE);
    CellActor_SetAnimNoRestart(param0->unk_10, param1);

    return;
}

void ov106_022436CC (UnkStruct_ov106_02243650 * param0, Pokemon * param1)
{
    CellActor_SetExplicitPaletteOffsetAutoAdjust(param0->unk_10, Pokemon_IconPaletteIndex(param1));
    return;
}
