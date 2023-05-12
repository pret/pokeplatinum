#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02023790_decl.h"
#include "struct_decls/struct_02026030_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "struct_defs/struct_02026030_t.h"
#include "struct_defs/struct_0202610C.h"
#include "struct_defs/struct_02026030_t.h"

#include "unk_02023790.h"
#include "unk_020244AC.h"
#include "unk_0202602C.h"

int sub_0202602C (void)
{
    return sizeof(UnkStruct_0202610C);
}

int sub_02026030 (void)
{
    return sizeof(UnkStruct_02026030);
}

void sub_02026034 (const UnkStruct_0202610C * param0, UnkStruct_0202610C * param1)
{
    MI_CpuCopy8(param0, param1, sizeof(UnkStruct_0202610C));
}

void sub_02026040 (UnkStruct_02026030 * param0)
{
    memset(param0, 0, sizeof(UnkStruct_02026030));
}

void sub_0202604C (const UnkStruct_0202610C * param0, Strbuf *param1)
{
    sub_02023D8C(param1, param0->unk_00, (11 + 1));
}

Strbuf* sub_0202605C (const UnkStruct_0202610C * param0, int param1)
{
    Strbuf* v0 = sub_02023790((11 + 1) * 2, param1);

    sub_02023D28(v0, param0->unk_00);
    return v0;
}

int sub_02026074 (const UnkStruct_0202610C * param0, int param1)
{
    int v0 = 0;

    switch (param1) {
    case 1:
        v0 = param0->unk_1A;
        break;
    case 2:
        v0 = param0->unk_1B;
        break;
    case 3:
        v0 = param0->unk_18;
        break;
    case 4:
        v0 = param0->unk_1E_0;
        break;
    case 5:
        v0 = param0->unk_1C;
        break;
    case 6:
        if (param0->unk_1C > 0) {
            v0 = 1;
        } else if (param0->unk_1C < 0) {
            v0 = -1;
        }
        break;
    case 7:
        v0 = param0->unk_1D;
        break;
    case 8:
        if (param0->unk_1D > 0) {
            v0 = 1;
        } else if (param0->unk_1D < 0) {
            v0 = -1;
        }
        break;
    case 9:
        v0 = param0->unk_1E_3;
        break;
    case 10:
        v0 = param0->unk_1E_2;
        break;
    case 11:
        v0 = param0->unk_1E_1;
        break;
    case 12:
        v0 = param0->unk_1E_4;
        break;
    }

    return v0;
}

UnkStruct_0202610C * sub_0202610C (UnkStruct_021C0794 * param0, int param1)
{
    UnkStruct_02026030 * v0 = NULL;

    GF_ASSERT(param1 < 1);
    v0 = sub_020245BC(param0, 13);

    if (sub_02026074(&v0->unk_00[param1], 1) != 0) {
        return &v0->unk_00[param1];
    }

    return NULL;
}

void sub_0202613C (UnkStruct_021C0794 * param0, const UnkStruct_0202610C * param1)
{
    UnkStruct_02026030 * v0 = NULL;

    v0 = sub_020245BC(param0, 13);
    sub_02026034(param1, &v0->unk_00[0]);
}
