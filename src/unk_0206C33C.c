#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "struct_decls/struct_02025E6C_decl.h"
#include "struct_decls/struct_02073C74_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "struct_defs/struct_0202D7B0.h"
#include "struct_defs/struct_0206C638.h"

#include "heap.h"
#include "unk_02025E08.h"
#include "unk_02025E68.h"
#include "unk_0202D7A8.h"
#include "unk_0206C33C.h"
#include "unk_02073C2C.h"

typedef struct {
    u16 unk_00;
    u16 unk_02[5];
} UnkStruct_020EFBB8;

static void sub_0206C538(UnkStruct_0202D7B0 * param0, const u8 param1, const int param2);
static void sub_0206C588(UnkStruct_0202D7B0 * param0, const u8 param1, const int param2);
static void sub_0206C638(UnkStruct_0202D7B0 * param0, const u8 param1, const u8 param2, const int param3);

static const UnkStruct_020EFBB8 Unk_020EFBB8[29] = {
    {
        0x2,
        {0x1, 0x17, 0xffff, 0xffff, 0xffff}
    },
    {
        0x5,
        {0x0, 0x2, 0x3, 0x16, 0x17}
    },
    {
        0x4,
        {0x1, 0x3, 0x8, 0x16, 0xffff}
    },
    {
        0x4,
        {0x1, 0x2, 0x4, 0x16, 0xffff}
    },
    {
        0x2,
        {0x3, 0x5, 0xffff, 0xffff, 0xffff}
    },
    {
        0x4,
        {0x4, 0x6, 0x1B, 0x1C, 0xffff}
    },
    {
        0x3,
        {0x5, 0x7, 0x9, 0xffff, 0xffff}
    },
    {
        0x3,
        {0x6, 0x8, 0xD, 0xffff, 0xffff}
    },
    {
        0x3,
        {0x2, 0x7, 0x9, 0xffff, 0xffff}
    },
    {
        0x3,
        {0x8, 0xA, 0xF, 0xffff, 0xffff}
    },
    {
        0x3,
        {0x9, 0xB, 0xF, 0xffff, 0xffff}
    },
    {
        0x3,
        {0xA, 0xC, 0x13, 0xffff, 0xffff}
    },
    {
        0x2,
        {0xB, 0xE, 0xffff, 0xffff, 0xffff}
    },
    {
        0x4,
        {0x6, 0x7, 0xE, 0x14, 0xffff}
    },
    {
        0x3,
        {0xC, 0xD, 0x14, 0xffff}
    },
    {
        0x3,
        {0x9, 0xA, 0x10, 0xffff, 0xffff}
    },
    {
        0x2,
        {0xF, 0x11, 0xffff, 0xffff, 0xffff}
    },
    {
        0x3,
        {0x10, 0x12, 0x1A, 0xffff, 0xffff}
    },
    {
        0x3,
        {0x11, 0x13, 0x1A, 0xffff, 0xffff}
    },
    {
        0x2,
        {0xB, 0x12, 0xffff, 0xffff, 0xffff}
    },
    {
        0x3,
        {0xD, 0xE, 0x15, 0xffff, 0xffff}
    },
    {
        0x1,
        {0x14, 0xffff, 0xffff, 0xffff, 0xffff}
    },
    {
        0x3,
        {0x1, 0x2, 0x3, 0xffff, 0xffff}
    },
    {
        0x3,
        {0x0, 0x1, 0x18, 0xffff, 0xffff}
    },
    {
        0x2,
        {0x17, 0x19, 0xffff, 0xffff, 0xffff}
    },
    {
        0x1,
        {0x18, 0xffff, 0xffff, 0xffff, 0xffff}
    },
    {
        0x2,
        {0x11, 0x12, 0xffff, 0xffff, 0xffff}
    },
    {
        0x1,
        {0x5, 0xffff, 0xffff, 0xffff, 0xffff}
    },
    {
        0x1,
        {0x5, 0xffff, 0xffff, 0xffff, 0xffff}
    }
};

static const int Unk_020EFB44[29] = {
    0x156,
    0x157,
    0x158,
    0x159,
    0x15A,
    0x15B,
    0x15D,
    0x15E,
    0x161,
    0x162,
    0x164,
    0x16A,
    0x16B,
    0x16D,
    0x16E,
    0x16F,
    0x173,
    0x175,
    0x17C,
    0x17E,
    0x17F,
    0x181,
    0x184,
    0x187,
    0x1D3,
    0x188,
    0x18B,
    0xC8,
    0xCC
};

void sub_0206C33C (UnkStruct_0202D7B0 * param0, const u8 param1)
{
    int v0;

    v0 = sub_0202D8BC(param0);
    sub_0206C538(param0, param1, v0);
}

void sub_0206C354 (UnkStruct_0202D7B0 * param0)
{
    u8 v0;

    for (v0 = 0; v0 < 6; v0++) {
        if (sub_0202D8F8(param0, v0)) {
            sub_0206C33C(param0, v0);
        }
    }
}

void sub_0206C37C (UnkStruct_0202D7B0 * param0)
{
    u8 v0;

    for (v0 = 0; v0 < 6; v0++) {
        if (sub_0202D8F8(param0, v0)) {
            if (inline_020564D0(16) == 0) {
                sub_0206C33C(param0, v0);
            } else {
                {
                    int v1;

                    v1 = sub_0202D8BC(param0);
                    sub_0206C588(param0, v0, v1);
                }
            }
        }
    }
}

int sub_0206C3C8 (const u8 param0)
{
    GF_ASSERT(param0 < 29);
    return Unk_020EFB44[param0];
}

BOOL sub_0206C3E0 (UnkStruct_0202D7B0 * param0)
{
    u8 v0;

    for (v0 = 0; v0 < 6; v0++) {
        if (sub_0202D8F8(param0, v0)) {
            return 1;
        }
    }

    return 0;
}

void sub_0206C404 (UnkStruct_0202D7B0 * param0, const int param1)
{
    if (sub_0206C3E0(param0)) {
        sub_0202D8A4(param0, param1);
    }
}

void sub_0206C41C (UnkStruct_021C0794 * param0, const u8 param1)
{
    Pokemon *v0;
    UnkStruct_0206C638 * v1;
    UnkStruct_0202D7B0 * v2;
    int v3;
    UnkStruct_02025E6C * v4;
    int v5;
    u8 v6;

    v2 = sub_0202D834(param0);
    v1 = sub_0202D924(v2, param1);

    switch (param1) {
    case 0:
        v5 = 481;
        v6 = 50;
        break;
    case 1:
        v5 = 488;
        v6 = 50;
        break;
    case 2:
        v5 = 491;
        v6 = 40;
        break;
    case 3:
        v5 = 146;
        v6 = 60;
        break;
    case 4:
        v5 = 145;
        v6 = 60;
        break;
    case 5:
        v5 = 144;
        v6 = 60;
        break;
    default:
        GF_ASSERT(0);
        return;
    }

    sub_0202D980(v1, 4, v5);
    sub_0202D980(v1, 6, v6);

    v4 = sub_02025E38(param0);
    v0 = sub_02073C74(4);

    sub_02073C2C(v0);
    sub_02073D80(v0, v5, v6, 32, 0, 0, 1, sub_02025F24(v4));
    sub_0202D980(v1, 7, 0);
    sub_0202D980(v1, 8, 1);
    sub_0202D980(v1, 2, GetMonData(v0, MON_DATA_175, NULL));
    sub_0202D980(v1, 3, GetMonData(v0, MON_DATA_PERSONALITY, NULL));
    sub_0202D980(v1, 5, GetMonData(v0, MON_DATA_164, NULL));
    Heap_FreeToHeap(v0);

    v3 = sub_0202D8BC(v2);
    sub_0206C538(v2, param1, v3);
}

static void sub_0206C538 (UnkStruct_0202D7B0 * param0, const u8 param1, const int param2)
{
    u8 v0;
    int v1;
    int v2;

    v1 = Unk_020EFB44[sub_0202D8C4(param0, param1)];

    while (TRUE) {
        v0 = inline_020564D0(29);
        v2 = Unk_020EFB44[v0];

        if ((v2 != param2) && (v2 != v1)) {
            sub_0206C638(param0, param1, v0, v2);
            break;
        }
    }
}

static void sub_0206C588 (UnkStruct_0202D7B0 * param0, const u8 param1, const int param2)
{
    const UnkStruct_020EFBB8 * v0;
    u8 v1;
    int v2;

    v0 = &(Unk_020EFBB8[sub_0202D8C4(param0, param1)]);

    if (v0->unk_00 == 1) {
        v1 = v0->unk_02[0];
        v2 = Unk_020EFB44[v1];

        if (v2 == param2) {
            sub_0206C538(param0, param1, param2);
        } else {
            sub_0206C638(param0, param1, v1, v2);
        }
    } else {
        u8 v3;

        while (TRUE) {
            v3 = inline_020564D0(v0->unk_00);
            v1 = v0->unk_02[v3];
            v2 = Unk_020EFB44[v1];

            if (v2 != param2) {
                sub_0206C638(param0, param1, v1, v2);
                break;
            }
        }
    }
}

static void sub_0206C638 (UnkStruct_0202D7B0 * param0, const u8 param1, const u8 param2, const int param3)
{
    UnkStruct_0206C638 * v0;

    v0 = sub_0202D924(param0, param1);

    sub_0202D8DC(param0, param1, param2);
    sub_0202D980(v0, 1, param3);
}
