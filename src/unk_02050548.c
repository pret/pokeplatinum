#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_02050224.h"

#include "communication_system.h"
#include "unk_02050548.h"

void sub_02050548(int param0, int param1, void * param2, void * param3);

void sub_02050548 (int param0, int param1, void * param2, void * param3)
{
    int v0, v1;
    UnkStruct_02050224 * v2 = param3;
    const UnkStruct_02050224 * v3 = param2;

    v1 = 0;
    v2->unk_01++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    v2->unk_08[0] = v3->unk_04[0];
    v2->unk_08[1] = v3->unk_04[1];

    return;
}
