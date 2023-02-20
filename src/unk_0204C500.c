#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "struct_decls/struct_02024440_decl.h"
#include "struct_decls/struct_02025E6C_decl.h"
#include "struct_decls/struct_02026324_decl.h"
#include "struct_decls/struct_0203E724_decl.h"
#include "struct_decls/struct_020507E4_decl.h"
#include "struct_decls/pokemon.h"
#include "struct_decls/struct_020797DC_decl.h"

#include "struct_defs/struct_0203E724_t.h"

#include "heap.h"
#include "unk_0202440C.h"
#include "unk_02025E08.h"
#include "unk_0202631C.h"
#include "unk_0202EEC0.h"
#include "unk_0202F180.h"
#include "unk_0204C500.h"
#include "unk_020507CC.h"
#include "unk_020562F8.h"
#include "unk_0206A8DC.h"
#include "unk_02073C2C.h"
#include "unk_020797C8.h"
#include "unk_02092494.h"

BOOL sub_0204C500 (UnkStruct_0203E724 * param0)
{
    UnkStruct_020507E4 * v0 = sub_020507E4(param0->unk_34->unk_0C);
    u16 v1 = inline_02049538(param0);

    if (v1 == 0) {
        sub_0206AE6C(v0);
        sub_020562F8(param0->unk_34);
    } else if (v1 == 1) {
        sub_0206AE7C(v0);
        sub_02056328(param0->unk_34);
    } else {
        GF_ASSERT(0);
    }

    return 0;
}

BOOL sub_0204C554 (UnkStruct_0203E724 * param0)
{
    UnkStruct_02024440 * v0 = sub_02024440(param0->unk_34->unk_0C);
    Pokemon * v1 = AllocMonZeroed(32);
    u16 * v2 = inline_0204FCAC(param0);

    if (sub_0202F028(v0) == 6) {
        *v2 = 1;
    } else {
        *v2 = 0;
    }

    Heap_FreeToHeap(v1);
    return 0;
}

BOOL sub_0204C59C (UnkStruct_0203E724 * param0)
{
    UnkStruct_02024440 * v0 = sub_02024440(param0->unk_34->unk_0C);
    UnkStruct_020797DC * v1 = sub_02024420(param0->unk_34->unk_0C);
    Pokemon * v2 = AllocMonZeroed(32);
    UnkStruct_02025E6C * v3 = sub_02025E38(param0->unk_34->unk_0C);
    UnkStruct_02026324 * v4 = sub_02027560(param0->unk_34->unk_0C);
    BOOL v5;
    int v6;

    for (v6 = 0; v6 < 6; v6++) {
        sub_0202F000(v0, v6, v2);
        sub_0209304C(v2, v3, 2, 0, 32);
        v5 = sub_02079868(v1, sub_02076B10(v2));
        GF_ASSERT(v5);
        sub_0202F180(param0->unk_34->unk_0C, v2);
    }

    Heap_FreeToHeap(v2);
    sub_0202EF04(v0);

    return 0;
}

BOOL sub_0204C638 (UnkStruct_0203E724 * param0)
{
    u16 v0 = inline_02049538(param0);
    u16 * v1 = inline_0204FCAC(param0);

    switch (v0) {
    case 0:
        *v1 = sub_020563D0(param0->unk_34);
        break;
    case 1:
        *v1 = sub_020563E0(param0->unk_34);
        break;
    case 2:
        *v1 = sub_020563F0(param0->unk_34);
        break;
    case 3:
        *v1 = sub_020563D0(param0->unk_34) + sub_020563F0(param0->unk_34) + sub_020563E0(param0->unk_34);
        break;
    }

    return 0;
}
