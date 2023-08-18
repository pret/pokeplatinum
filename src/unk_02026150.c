#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0200B144_decl.h"
#include "struct_decls/struct_02023790_decl.h"
#include "struct_decls/struct_02026030_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "struct_defs/struct_02026030_t.h"
#include "struct_defs/struct_0202610C.h"
#include "struct_defs/struct_02026030_t.h"

#include "unk_0200AC5C.h"
#include "unk_020244AC.h"
#include "unk_0202602C.h"
#include "unk_02026150.h"

UnkStruct_0202610C Unk_02100880[] = {
    {
        {0xffff},
        0x0,
        0x3,
        0x32,
        0x0,
        0x0,
        0x1,
        0x0,
        0x0,
        0x0,
        0x0
    },
    {
        {0xffff},
        0x50,
        0x3,
        0x1E,
        -20,
        -20,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0
    },
    {
        {0xffff},
        0x0,
        0x3,
        0x5,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1
    },
    {
        {0xffff},
        0x0,
        0x3,
        0x32,
        0x0,
        -99,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0
    },
    {
        {0xffff},
        0x0,
        0x4,
        0x32,
        0x0,
        0x0,
        0x1,
        0x0,
        0x0,
        0x0,
        0x0
    }
};

UnkStruct_0202610C Unk_02100860 = {
    {0xffff},
    0x0,
    0x6,
    0x64,
    0x0,
    0x0,
    0x1,
    0x1,
    0x1,
    0x1,
    0x0
};

const UnkStruct_0202610C * sub_02026150 (UnkStruct_021C0794 * param0, int param1)
{
    UnkStruct_02026030 * v0 = NULL;

    if (param1 < NELEMS(Unk_02100880)) {
        return &Unk_02100880[param1];
    }

    v0 = sub_020245BC(param0, 13);
    return &v0->unk_00[0];
}

void sub_0202616C (UnkStruct_021C0794 * param0, int param1, Strbuf *param2, int param3)
{
    UnkStruct_0200B144 * v0;
    UnkStruct_02026030 * v1 = NULL;

    if (param1 < NELEMS(Unk_02100880)) {
        v0 = sub_0200B144(0, 26, 353, param3);
        MessageFormatter_LoadStrbuf(v0, 70 + param1, param2);
        sub_0200B190(v0);
    } else {
        sub_0202604C(sub_0202610C(param0, 0), param2);
    }
}

const UnkStruct_0202610C * sub_020261A8 (void)
{
    return &Unk_02100860;
}

int sub_020261B0 (const UnkStruct_0202610C * param0)
{
    int v0;

    if (param0 == NULL) {
        return 0xff;
    }

    for (v0 = 0; v0 < NELEMS(Unk_02100880); v0++) {
        if (memcmp(param0, &Unk_02100880[v0], sizeof(UnkStruct_0202610C)) == 0) {
            return v0;
        }
    }

    return 5;
}
