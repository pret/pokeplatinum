#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_021C0794_decl.h"

#include "struct_defs/struct_02027F8C.h"

#include "unk_020021B0.h"
#include "heap.h"
#include "unk_020244AC.h"
#include "unk_02027F84.h"

int PalPad_SaveSize (void)
{
    return sizeof(UnkStruct_02027F8C) * 16;
}

UnkStruct_02027F8C * sub_02027F8C (SaveData * param0)
{
    return SaveData_Get(param0, 9);
}

void PalPad_Init (UnkStruct_02027F8C * param0)
{
    int v0;

    for (v0 = 0; v0 < 16; v0++) {
        memset(&param0[v0], 0, sizeof(UnkStruct_02027F8C));
        param0[v0].unk_00[0] = 0xffff;
    }
}

const u16 * sub_02027FBC (const UnkStruct_02027F8C * param0, int param1)
{
    return param0[param1].unk_00;
}

u8 sub_02027FC4 (const UnkStruct_02027F8C * param0, int param1)
{
    return param0->unk_68[param1];
}

BOOL sub_02027FCC (const UnkStruct_02027F8C * param0, const UnkStruct_02027F8C * param1)
{
    if (0 == sub_0200220C(param0->unk_00, param1->unk_00)) {
        if (param0->unk_10 == param1->unk_10) {
            return 1;
        }
    }

    return 0;
}

void sub_02027FEC (UnkStruct_02027F8C * param0, UnkStruct_02027F8C * param1, int param2, int param3)
{
    int v0, v1, v2;
    int v3[5];
    UnkStruct_02027F8C * v4;

    v4 = Heap_AllocFromHeap(param3, sizeof(UnkStruct_02027F8C) * 16);
    PalPad_Init(v4);

    for (v0 = 0; v0 < param2; v0++) {
        v3[v0] = -1;

        for (v1 = 0; v1 < 16; v1++) {
            if (sub_02027FCC(&param0[v1], &param1[v0])) {
                v3[v0] = v1;
            }
        }
    }

    v2 = 0;

    for (v0 = 0; v0 < param2; v0++) {
        v4[v2] = param1[v0];

        if (v3[v0] >= 0) {
            param0[v3[v0]].unk_00[0] = 0xffff;
        }

        v2++;
    }

    for (v0 = 0; v0 < 16; v0++) {
        if (param0[v0].unk_00[0] != 0xffff) {
            v4[v2] = param0[v0];
            v2++;

            if (v2 >= 16) {
                break;
            }
        }
    }

    memcpy(param0, v4, sizeof(UnkStruct_02027F8C) * 16);
    Heap_FreeToHeap(v4);
}

int sub_020280E0 (UnkStruct_02027F8C * param0, u32 param1)
{
    int v0, v1;

    for (v0 = 0; v0 < 16; v0++) {
        if (param0[v0].unk_10 == param1) {
            return 1;
        }
    }

    for (v0 = 0; v0 < 16; v0++) {
        for (v1 = 0; v1 < 16; v1++) {
            if (param0[v0].unk_18[v1] == param1) {
                return 2 + v0;
            }
        }
    }

    return 0;
}
