#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02022550_decl.h"
#include "overlay105/struct_ov105_02245E1C_decl.h"

#include "overlay105/struct_ov105_02245AAC.h"

#include "heap.h"
#include "unk_020218BC.h"
#include "overlay105/ov105_02245AAC.h"
#include "overlay105/ov105_02245DC4.h"

struct UnkStruct_ov105_02245E1C_t {
    int unk_00;
    int unk_04;
    GraphicElementData * unk_08;
};

UnkStruct_ov105_02245E1C * ov105_02245DC4(UnkStruct_ov105_02245AAC * param0, u32 param1, int param2, int param3, u32 param4);
void * ov105_02245E1C(UnkStruct_ov105_02245E1C * param0);
void ov105_02245E30(UnkStruct_ov105_02245E1C * param0, int param1, int param2);
BOOL ov105_02245E48(UnkStruct_ov105_02245E1C * param0);

UnkStruct_ov105_02245E1C * ov105_02245DC4 (UnkStruct_ov105_02245AAC * param0, u32 param1, int param2, int param3, u32 param4)
{
    UnkStruct_ov105_02245E1C * v0;

    v0 = Heap_AllocFromHeap(param4, sizeof(UnkStruct_ov105_02245E1C));
    memset(v0, 0, sizeof(UnkStruct_ov105_02245E1C));

    v0->unk_00 = param2;
    v0->unk_04 = param3;
    v0->unk_08 = ov105_02245BA4(param0, 0, param1, 0, 1, 0);

    ov105_02245E30(v0, param2, param3);

    return v0;
}

void * ov105_02245E1C (UnkStruct_ov105_02245E1C * param0)
{
    sub_02021BD4(param0->unk_08);
    Heap_FreeToHeap(param0);

    return NULL;
}

void ov105_02245E30 (UnkStruct_ov105_02245E1C * param0, int param1, int param2)
{
    VecFx32 v0;

    v0.x = (param1 * FX32_ONE);
    v0.y = (param2 * FX32_ONE);

    sub_02021C50(param0->unk_08, &v0);
    return;
}

BOOL ov105_02245E48 (UnkStruct_ov105_02245E1C * param0)
{
    return sub_02021FD0(param0->unk_08);
}
