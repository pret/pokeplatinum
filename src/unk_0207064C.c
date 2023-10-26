#include <nitro.h>
#include <string.h>

#include "struct_decls/sys_task.h"
#include "struct_decls/struct_020508D4_decl.h"
#include "pokemon.h"

#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_02049FA8.h"

#include "heap.h"
#include "unk_0203A7D8.h"
#include "unk_020508D4.h"
#include "unk_020530C8.h"
#include "unk_0205E7D0.h"
#include "unk_0207064C.h"
#include "overlay006/ov6_02243258.h"

typedef struct {
    UnkStruct_0203CDB0 * unk_00;
    int unk_04;
    u16 unk_08;
    s16 unk_0A;
    s16 unk_0C;
    Pokemon * unk_10;
    SysTask * unk_14;
} UnkStruct_0207064C;

void * sub_0207064C (u32 param0, UnkStruct_0203CDB0 * param1, Pokemon * param2, u16 param3, s16 param4, s16 param5)
{
    UnkStruct_0207064C * v0 = Heap_AllocFromHeapAtEnd(param0, (sizeof(UnkStruct_0207064C)));

    memset(v0, 0, (sizeof(UnkStruct_0207064C)));

    v0->unk_00 = param1;
    v0->unk_10 = param2;
    v0->unk_08 = param3;
    v0->unk_0A = param4;
    v0->unk_0C = param5;

    return v0;
}

BOOL sub_02070680 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_0207064C * v1 = sub_02050A64(param0);

    switch (v1->unk_04) {
    case 0:
        v1->unk_14 = ov6_02243F88(v1->unk_00, 1, v1->unk_10, sub_0205EB98(v1->unk_00->unk_3C));
        v1->unk_04++;
        break;
    case 1:
        if (ov6_02243FBC(v1->unk_14) == 0) {
            break;
        }

        ov6_02243FC8(v1->unk_14);

        {
            u16 v2;
            UnkStruct_02049FA8 v3;

            v2 = sub_0203A8A0(v1->unk_08, v1->unk_0A, v1->unk_0C);
            GF_ASSERT(v2 != 0);

            sub_0203A7F0(v2, &v3);
            sub_02053AFC(param0, v3.unk_00, -1, v3.unk_08, v3.unk_0C, 1);
        }

        Heap_FreeToHeap(v1);
    }

    return 0;
}
