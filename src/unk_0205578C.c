#include <nitro.h>
#include <string.h>

#include "field/field_system_decl.h"
#include "struct_decls/struct_020508D4_decl.h"

#include "unk_020041CC.h"
#include "heap.h"
#include "unk_020508D4.h"
#include "overlay005/ov5_021DDBE8.h"

typedef struct {
    int unk_00;
    BOOL unk_04;
    int unk_08;
    int unk_0C;
} UnkStruct_0205578C;

void sub_020557DC(TaskManager * param0, int param1, int param2);

static BOOL sub_0205578C (TaskManager * param0)
{
    FieldSystem * v0;
    UnkStruct_0205578C * v1;

    v0 = TaskManager_FieldSystem(param0);
    v1 = TaskManager_Environment(param0);

    switch (v1->unk_00) {
    case 0:
        ov5_021DDBE8(v1->unk_08, v0, &v1->unk_04);
        sub_02004550(5, v1->unk_0C, 1);
        v1->unk_00++;
        break;
    case 1:
        if (v1->unk_04 == 1) {
            Heap_FreeToHeap(v1);
            return 1;
        }
        break;
    }

    return 0;
}

void sub_020557DC (TaskManager * param0, int param1, int param2)
{
    UnkStruct_0205578C * v0 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_0205578C));

    v0->unk_00 = 0;
    v0->unk_04 = 0;
    v0->unk_08 = param1;
    v0->unk_0C = param2;

    sub_02050944(param0, sub_0205578C, v0);
}
