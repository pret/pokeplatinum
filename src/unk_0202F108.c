#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_021C0794_decl.h"

#include "struct_defs/struct_0202F10C.h"

#include "unk_020244AC.h"
#include "unk_0202F108.h"

int sub_0202F108 (void)
{
    return sizeof(UnkStruct_0202F10C);
}

void sub_0202F10C (UnkStruct_0202F10C * param0)
{
    int v0, v1;

    for (v1 = 0; v1 < 5; v1++) {
        for (v0 = 0; v0 < 4; v0++) {
            param0->unk_00[v1][v0] = 0;
        }
    }

    sub_02025C84(33);
}

void sub_0202F134 (UnkStruct_021C0794 * param0, int param1, int param2)
{
    UnkStruct_0202F10C * v0;

    v0 = sub_020245BC(param0, 33);

    if (v0->unk_00[param1][param2] < 9999) {
        v0->unk_00[param1][param2]++;
    }

    sub_02025C84(33);
}

u16 sub_0202F160 (UnkStruct_021C0794 * param0, int param1, int param2)
{
    UnkStruct_0202F10C * v0;

    v0 = sub_020245BC(param0, 33);
    sub_02025C48(33);

    return v0->unk_00[param1][param2];
}
