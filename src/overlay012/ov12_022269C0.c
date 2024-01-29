#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/sys_task.h"
#include "struct_decls/struct_02022550_decl.h"
#include "overlay012/struct_ov12_0221FCDC_decl.h"

#include "struct_defs/struct_0200D0F4.h"
#include "overlay104/struct_ov104_0223F9E0.h"

#include "unk_0200C6E4.h"
#include "unk_0200D9E8.h"
#include "heap.h"
#include "overlay012/ov12_0221FC20.h"
#include "overlay012/ov12_022269C0.h"

typedef struct {
    u8 unk_00;
    UnkStruct_ov12_0221FCDC * unk_04;
} UnkStruct_ov12_022269C4;

typedef struct {
    u8 unk_00;
    UnkStruct_ov12_0221FCDC * unk_04;
} UnkStruct_ov12_02226A14;

typedef struct {
    u8 unk_00;
    UnkStruct_ov12_0221FCDC * unk_04;
} UnkStruct_ov12_02226A64;

typedef struct {
    u8 unk_00;
    UnkStruct_ov12_0221FCDC * unk_04;
    CellTransferStateData * unk_08;
    AnimationResourceCollection * unk_0C;
    CellActorData * unk_10;
    CellActorData * unk_14[100];
    GraphicElementData * unk_1A4[10];
} UnkStruct_ov12_02226AAC;

void ov12_022269C0 (UnkStruct_ov12_0221FCDC * param0)
{
    return;
}

static void ov12_022269C4 (SysTask * param0, void * param1)
{
    UnkStruct_ov12_022269C4 * v0 = (UnkStruct_ov12_022269C4 *)param1;

    switch (v0->unk_00) {
    case 0:
        v0->unk_00++;
        break;
    case 1:
        ov12_02220220(v0->unk_04, param0);
        Heap_FreeToHeap(v0);
        break;
    }
}

void ov12_022269EC (UnkStruct_ov12_0221FCDC * param0)
{
    UnkStruct_ov12_022269C4 * v0;

    v0 = Heap_AllocFromHeap(5, sizeof(UnkStruct_ov12_022269C4));

    v0->unk_00 = 0;
    v0->unk_04 = param0;

    ov12_022201CC(v0->unk_04, ov12_022269C4, v0, 0x1000);
}

static void ov12_02226A14 (SysTask * param0, void * param1)
{
    UnkStruct_ov12_02226A14 * v0 = (UnkStruct_ov12_02226A14 *)param1;

    switch (v0->unk_00) {
    case 0:
        v0->unk_00++;
        break;
    case 1:
        ov12_02220230(v0->unk_04, param0);
        Heap_FreeToHeap(v0);
        break;
    }
}

void ov12_02226A3C (UnkStruct_ov12_0221FCDC * param0)
{
    UnkStruct_ov12_02226A14 * v0;

    v0 = Heap_AllocFromHeap(5, sizeof(UnkStruct_ov12_02226A14));

    v0->unk_00 = 0;
    v0->unk_04 = param0;

    ov12_02220204(v0->unk_04, ov12_02226A14, v0, 0x1000);
}

static void ov12_02226A64 (SysTask * param0, void * param1)
{
    UnkStruct_ov12_02226A64 * v0 = (UnkStruct_ov12_02226A64 *)param1;

    switch (v0->unk_00) {
    case 0:
        v0->unk_00++;
        break;
    case 1:
        SysTask_Done(param0);
        Heap_FreeToHeap(v0);
        break;
    }
}

void ov12_02226A88 (UnkStruct_ov12_0221FCDC * param0)
{
    UnkStruct_ov12_02226A64 * v0;

    v0 = Heap_AllocFromHeap(5, sizeof(UnkStruct_ov12_02226A64));

    v0->unk_00 = 0;
    v0->unk_04 = param0;

    SysTask_Start(ov12_02226A64, v0, 0x1000);
}

static void ov12_02226AAC (SysTask * param0, void * param1)
{
    UnkStruct_ov12_02226AAC * v0 = (UnkStruct_ov12_02226AAC *)param1;

    switch (v0->unk_00) {
    case 0:
        sub_0200D324(v0->unk_14[0]->unk_00);
        sub_0200D324(v0->unk_14[1]->unk_00);
        sub_0200D324(v0->unk_14[2]->unk_00);

        sub_0200D5AC(v0->unk_14[0]->unk_00, 1, 0);
        sub_0200D5AC(v0->unk_14[1]->unk_00, -1, 0);
        sub_0200D5AC(v0->unk_14[2]->unk_00, 1, 1);

        sub_0200C7EC(v0->unk_0C);
        break;
    case 1:
    {
        UnkStruct_ov12_0221FCDC * v1 = v0->unk_04;

        sub_0200D0F4(v0->unk_10);
        Heap_FreeToHeap(v0);
        ov12_02220220(v1, param0);
    }
    break;
    }
}

void ov12_02226B1C (UnkStruct_ov12_0221FCDC * param0, CellTransferStateData * param1, AnimationResourceCollection * param2, CellActorData * param3)
{
    UnkStruct_ov12_02226AAC * v0;
    UnkStruct_ov104_0223F9E0 v1;

    v0 = Heap_AllocFromHeap(5, sizeof(UnkStruct_ov12_02226AAC));

    GF_ASSERT(v0 != NULL);

    v0->unk_00 = 0;
    v0->unk_08 = param1;
    v0->unk_0C = param2;
    v0->unk_10 = param3;
    v0->unk_04 = param0;

    v1 = ov12_0222329C(param0);
    v0->unk_14[0] = param3;

    {
        int v2;

        for (v2 = 1; v2 < 3; v2++) {
            v0->unk_14[v2] = sub_0200CE6C(v0->unk_08, v0->unk_0C, &v1);
        }
    }

    ov12_022201CC(param0, ov12_02226AAC, v0, 0x1000);
}
