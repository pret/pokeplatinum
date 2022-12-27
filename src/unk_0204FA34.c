#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0203026C_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "struct_defs/struct_0204F3D0.h"

#include "unk_02030108.h"
#include "unk_0203061C.h"
#include "unk_02034198.h"
#include "unk_0204FA34.h"
#include "unk_0205DFC4.h"

void sub_0204FA34(int param0, int param1, void * param2, void * param3);
void sub_0204FA50(UnkStruct_021C0794 * param0, UnkStruct_0203026C * param1, u8 param2);

void sub_0204FA34 (int param0, int param1, void * param2, void * param3)
{
    int v0, v1;
    UnkStruct_0204F3D0 * v2 = param3;
    const UnkStruct_0204F3D0 * v3 = param2;

    v1 = 0;
    v2->unk_01++;

    if (sub_0203608C() == param0) {
        return;
    }

    v2->unk_06 = v3->unk_04;
    return;
}

void sub_0204FA50 (UnkStruct_021C0794 * param0, UnkStruct_0203026C * param1, u8 param2)
{
    int v0;
    u8 v1[4];
    u16 v2, v3;

    v1[0] = 0;
    sub_02030280(param1, 5, param2, 0, v1);

    if (param2 == 3) {
        sub_020306E4(sub_0203068C(param0), 106, sub_0205E6A8(106), 0);
    }

    sub_020306E4(sub_0203068C(param0), sub_0205E50C(param2), sub_0205E6A8(sub_0205E50C(param2)), 0);

    return;
}
