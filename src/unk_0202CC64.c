#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_021C0794_decl.h"

#include "heap.h"
#include "unk_020244AC.h"
#include "unk_0202CC64.h"

typedef struct UnkStruct_0202CC84_t {
    BOOL unk_00;
    s8 unk_04[1000];
} UnkStruct_0202CC84;

int sub_0202CC64 (void)
{
    return sizeof(UnkStruct_0202CC84);
}

void sub_0202CC6C (UnkStruct_0202CC84 * param0)
{
    MI_CpuClear32(param0, sizeof(UnkStruct_0202CC84));
    param0->unk_00 = 0;
}

UnkStruct_0202CC84 * sub_0202CC84 (int param0)
{
    UnkStruct_0202CC84 * v0 = AllocFromHeap(param0, sizeof(UnkStruct_0202CC84));

    sub_0202CC6C(v0);
    return v0;
}

UnkStruct_0202CC84 * sub_0202CC98 (UnkStruct_021C0794 * param0)
{
    return (UnkStruct_0202CC84 *)sub_020245BC(param0, 22);
}

BOOL sub_0202CCA4 (const UnkStruct_0202CC84 * param0)
{
    return param0->unk_00;
}

void sub_0202CCA8 (UnkStruct_0202CC84 * param0)
{
    param0->unk_00 = 0;
}

const void * sub_0202CCB0 (const UnkStruct_0202CC84 * param0)
{
    return param0->unk_04;
}

void sub_0202CCB4 (s8 * param0, const s8 * param1)
{
    int v0, v1 = 0;
    s8 v2;
    u8 v3;

    for (v0 = 0; v0 < 1000; v0++) {
        v3 = param1[v0] & 0xf;
        v2 = v3 - 8;

        param0[v1] = v2 * 16;

        v3 = param1[v0] >> 4;
        v2 = v3 - 8;

        param0[v1 + 1] = v2 * 16;

        v1 += 2;
    }
}

void sub_0202CCEC (UnkStruct_0202CC84 * param0, const s8 * param1)
{
    int v0, v1;
    s8 v2;
    u8 v3;

    param0->unk_00 = 1;
    v1 = 0;

    for (v0 = 0; v0 < 1000 * 2; v0 += 2) {
        v2 = (param1[v0] / 16);
        v3 = v2 + 8;

        param0->unk_04[v1] = v3;

        v2 = (param1[v0 + 1] / 16);
        v3 = v2 + 8;

        param0->unk_04[v1] |= (v3 << 4);

        v1++;
    }
}

void sub_0202CD3C (UnkStruct_0202CC84 * param0, const UnkStruct_0202CC84 * param1)
{
    MI_CpuCopyFast(param1, param0, sizeof(UnkStruct_0202CC84));
}
