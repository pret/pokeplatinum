#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "struct_decls/struct_02026324_decl.h"
#include "struct_decls/struct_0203A790_decl.h"
#include "struct_decls/struct_0203E724_decl.h"
#include "struct_decls/struct_020507E4_decl.h"

#include "struct_defs/struct_0203E724_t.h"
#include "struct_defs/struct_0205EC34.h"

#include "unk_02025E08.h"
#include "unk_02025E68.h"
#include "unk_0202631C.h"
#include "unk_0203A6DC.h"
#include "unk_0204E3CC.h"
#include "unk_020507CC.h"
#include "unk_0205E7D0.h"
#include "unk_0206A8DC.h"

#include <nitro/code16.h>

BOOL sub_0204E3CC (UnkStruct_0203E724 * param0)
{
    const UnkStruct_02026324 * v0 = sub_02027560(param0->unk_34->unk_0C);
    u16 * v1 = inline_0204FCAC(param0);

    *v1 = sub_02027520(v0);
    return 0;
}

BOOL sub_0204E3FC (UnkStruct_0203E724 * param0)
{
    UnkStruct_02026324 * v0 = sub_02027560(param0->unk_34->unk_0C);

    sub_02027540(v0);
    return 0;
}

BOOL sub_0204E410 (UnkStruct_0203E724 * param0)
{
    UnkStruct_0203A790 * v0;
    UnkStruct_0205EC34 * v1;
    u16 * v2 = inline_0204FCAC(param0);

    v0 = sub_0203A790(param0->unk_34->unk_0C);
    v1 = sub_0203A780(v0);
    *v2 = sub_0205EC40(v1);

    return 0;
}

BOOL sub_0204E440 (UnkStruct_0203E724 * param0)
{
    UnkStruct_0203A790 * v0;
    UnkStruct_0205EC34 * v1;

    v0 = sub_0203A790(param0->unk_34->unk_0C);
    v1 = sub_0203A780(v0);

    sub_0205EC54(v1, 1);
    return 0;
}

BOOL sub_0204E45C (UnkStruct_0203E724 * param0)
{
    u16 v0 = inline_02049538(param0);
    u16 * v1 = inline_0204FCAC(param0);

    GF_ASSERT(v0 < 8);
    * v1 = sub_02025F34(sub_02025E38(param0->unk_34->unk_0C), v0);

    return 0;
}

BOOL sub_0204E4A4 (UnkStruct_0203E724 * param0)
{
    u16 v0 = inline_02049538(param0);

    GF_ASSERT(v0 < 8);
    sub_02025F48(sub_02025E38(param0->unk_34->unk_0C), v0);

    return 0;
}

BOOL sub_0204E4D8 (UnkStruct_0203E724 * param0)
{
    u16 * v0 = inline_0204FCAC(param0);

    *v0 = sub_0206A938(sub_020507E4(param0->unk_34->unk_0C));
    return 0;
}

const u8 Unk_020EC064[8] = {
    0x0,
    0x1,
    0x2,
    0x3,
    0x4,
    0x5,
    0x6,
    0x7
};

BOOL sub_0204E504 (UnkStruct_0203E724 * param0)
{
    u16 v0, v1;
    u16 * v2 = inline_0204FCAC(param0);

    for (v0 = 0, v1 = 0; v0 < 8; v0++) {
        if (sub_02025F34(sub_02025E38(param0->unk_34->unk_0C), Unk_020EC064[v0]) == 1) {
            v1++;
        }
    }

    *v2 = v1;
    return 0;
}

BOOL sub_0204E554 (UnkStruct_0203E724 * param0)
{
    sub_0206A92C(sub_020507E4(param0->unk_34->unk_0C));
    return 0;
}

BOOL sub_0204E568 (UnkStruct_0203E724 * param0)
{
    u16 * v0 = inline_0204FCAC(param0);

    *v0 = sub_0206A984(sub_020507E4(param0->unk_34->unk_0C));
    return 0;
}

BOOL sub_0204E594 (UnkStruct_0203E724 * param0)
{
    sub_0206A964(sub_020507E4(param0->unk_34->unk_0C));
    return 0;
}

BOOL sub_0204E5A8 (UnkStruct_0203E724 * param0)
{
    sub_0206A974(sub_020507E4(param0->unk_34->unk_0C));
    return 0;
}

BOOL sub_0204E5BC (UnkStruct_0203E724 * param0)
{
    u16 * v0 = inline_0204FCAC(param0);

    *v0 = sub_0206A9B4(sub_020507E4(param0->unk_34->unk_0C));
    return 0;
}

BOOL sub_0204E5E8 (UnkStruct_0203E724 * param0)
{
    sub_0206A994(sub_020507E4(param0->unk_34->unk_0C));
    return 0;
}

BOOL sub_0204E5FC (UnkStruct_0203E724 * param0)
{
    sub_0206A9A4(sub_020507E4(param0->unk_34->unk_0C));
    return 0;
}

BOOL sub_0204E610 (UnkStruct_0203E724 * param0)
{
    u16 * v0 = inline_0204FCAC(param0);

    *v0 = sub_0206A954(sub_020507E4(param0->unk_34->unk_0C));
    return 0;
}

BOOL sub_0204E63C (UnkStruct_0203E724 * param0)
{
    sub_0206A944(sub_020507E4(param0->unk_34->unk_0C));
    return 0;
}

BOOL sub_0204E650 (UnkStruct_0203E724 * param0)
{
    u8 v0;
    u16 * v1;
    UnkStruct_020507E4 * v2 = sub_020507E4(param0->unk_34->unk_0C);

    v0 = (*((param0)->unk_08++));

    switch (v0) {
    case 1:
        inline_0204E650(v2);
        break;
    case 0:
        inline_0204E650_1(v2);
        break;
    case 2:
        v1 = inline_0204FCAC(param0);
        *v1 = inline_0204E650_2(v2);
        break;
    default:
        GF_ASSERT(0);
    }

    return 0;
}

BOOL sub_0204E6AC (UnkStruct_0203E724 * param0)
{
    u8 v0;
    u16 * v1;
    UnkStruct_020507E4 * v2 = sub_020507E4(param0->unk_34->unk_0C);

    v0 = (*((param0)->unk_08++));

    switch (v0) {
    case 1:
        sub_0206AEBC(v2);
        break;
    case 0:
        sub_0206AECC(v2);
        break;
    case 2:
        v1 = inline_0204FCAC(param0);
        *v1 = sub_0206AEDC(v2);
        break;
    default:
        GF_ASSERT(0);
    }

    return 0;
}

BOOL sub_0204E704 (UnkStruct_0203E724 * param0)
{
    u8 v0;
    u16 * v1;
    UnkStruct_020507E4 * v2 = sub_020507E4(param0->unk_34->unk_0C);

    v0 = (*((param0)->unk_08++));

    switch (v0) {
    case 1:
        sub_0206AEEC(v2);
        break;
    case 0:
        sub_0206AEFC(v2);
        break;
    case 2:
        v1 = inline_0204FCAC(param0);
        *v1 = sub_0206AF0C(v2);
        break;
    default:
        GF_ASSERT(0);
    }

    return 0;
}
