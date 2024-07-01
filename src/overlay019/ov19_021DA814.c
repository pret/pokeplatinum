#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "overlay019/struct_ov19_021D61B0_decl.h"

#include "overlay019/struct_ov19_021D4DF0.h"
#include "overlay019/struct_ov19_021DA8D8.h"

#include "unk_02006E3C.h"
#include "heap.h"
#include "cell_actor.h"
#include "overlay019/ov19_021D61B0.h"
#include "overlay019/ov19_021DA814.h"

BOOL ov19_021DA814 (UnkStruct_ov19_021DA8D8 * param0, UnkStruct_ov19_021D61B0 * param1, const UnkStruct_ov19_021D4DF0 * param2, CellActorCollection * param3, NARC * param4)
{
    param0->unk_44 = param1;
    param0->unk_3C = param3;
    param0->unk_40 = param2;
    param0->unk_00 = param3;
    param0->unk_04 = NULL;
    param0->unk_08 = sub_02007204(param4, 10, 1, &(param0->unk_10), 10);
    param0->unk_0C = sub_02007220(param4, 11, 1, &(param0->unk_14), 10);

    if ((param0->unk_08 == NULL) || (param0->unk_0C == NULL)) {
        return 0;
    }

    return 1;
}

void ov19_021DA864 (UnkStruct_ov19_021DA8D8 * param0, NARC * param1)
{
    CellActorResourceData v0;

    NNS_G2dInitImageProxy(&(param0->unk_18));

    sub_0200718C(param1, 9, 1, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 1256 * 0x20, 10, &(param0->unk_18));
    ov19_021D783C(&v0, &(param0->unk_18), ov19_021D77D0(param0->unk_44), param0->unk_10, param0->unk_14, 2);
    param0->unk_04 = ov19_021D785C(param0->unk_00, &v0, 183 + ov19_021D7820(param0->unk_44), 176, 44, NNS_G2D_VRAM_TYPE_2DMAIN);
    CellActor_SetExplicitPalette(param0->unk_04, 1);
}

void ov19_021DA8D8 (UnkStruct_ov19_021DA8D8 * param0)
{
    if (param0->unk_08 != NULL) {
        Heap_FreeToHeap(param0->unk_08);
        param0->unk_08 = NULL;
    }

    if (param0->unk_0C != NULL) {
        Heap_FreeToHeap(param0->unk_0C);
        param0->unk_0C = NULL;
    }
}

void ov19_021DA8FC (UnkStruct_ov19_021DA8D8 * param0, int param1)
{
    switch (param1) {
    case 0:
        CellActor_SetAnim(param0->unk_04, 0);
        break;
    case 1:
        CellActor_SetAnim(param0->unk_04, 1);
        break;
    case 2:
        CellActor_SetAnim(param0->unk_04, 2);
        break;
    }
}
