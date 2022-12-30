#include <nitro.h>
#include <string.h>

#include "inlines.h"
#include "data_021BF67C.h"

#include "struct_decls/struct_0203E724_decl.h"

#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_0203E724_t.h"

#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "unk_02006224.h"
#include "unk_0202CC64.h"
#include "unk_0203E724.h"
#include "unk_020553DC.h"

static BOOL sub_02048378(UnkStruct_0203E724 * param0);
static BOOL sub_02048454(UnkStruct_0203E724 * param0);
static BOOL sub_020484B0(UnkStruct_0203E724 * param0);
static BOOL sub_020484E4(UnkStruct_0203E724 * param0);
BOOL sub_020482FC(UnkStruct_0203E724 * param0);
BOOL sub_0204830C(UnkStruct_0203E724 * param0);
BOOL sub_02048320(UnkStruct_0203E724 * param0);
BOOL sub_02048338(UnkStruct_0203E724 * param0);
BOOL sub_02048350(UnkStruct_0203E724 * param0);
BOOL sub_02048378(UnkStruct_0203E724 * param0);
BOOL sub_0204838C(UnkStruct_0203E724 * param0);
BOOL sub_020483B0(UnkStruct_0203E724 * param0);
BOOL sub_020483CC(UnkStruct_0203E724 * param0);
BOOL sub_020483E0(UnkStruct_0203E724 * param0);
BOOL sub_020483F4(UnkStruct_0203E724 * param0);
BOOL sub_02048410(UnkStruct_0203E724 * param0);
BOOL sub_0204842C(UnkStruct_0203E724 * param0);
BOOL sub_0204846C(UnkStruct_0203E724 * param0);
BOOL sub_020484A0(UnkStruct_0203E724 * param0);
BOOL sub_020484C4(UnkStruct_0203E724 * param0);
BOOL sub_020484D4(UnkStruct_0203E724 * param0);
BOOL sub_020484F8(UnkStruct_0203E724 * param0);
BOOL sub_02048530(UnkStruct_0203E724 * param0);
BOOL sub_0204855C(UnkStruct_0203E724 * param0);
BOOL sub_02048568(UnkStruct_0203E724 * param0);
BOOL sub_0204857C(UnkStruct_0203E724 * param0);
BOOL sub_0204858C(UnkStruct_0203E724 * param0);
BOOL sub_020482D4(UnkStruct_0203E724 * param0);
BOOL sub_020485C0(UnkStruct_0203E724 * param0);
BOOL sub_020485D4(UnkStruct_0203E724 * param0);
BOOL sub_020485F4(UnkStruct_0203E724 * param0);

BOOL sub_020482D4 (UnkStruct_0203E724 * param0)
{
    u16 v0 = sub_0203E838(param0);
    u16 * v1 = inline_0204FCAC(param0);

    *v1 = sub_02005690(v0);
    return 0;
}

BOOL sub_020482FC (UnkStruct_0203E724 * param0)
{
    u16 v0 = sub_0203E838(param0);

    sub_0200549C(v0);
    return 0;
}

BOOL sub_0204830C (UnkStruct_0203E724 * param0)
{
    u16 v0 = sub_0203E838(param0);

    sub_020055D0(sub_020041FC(), 0);
    return 0;
}

BOOL sub_02048320 (UnkStruct_0203E724 * param0)
{
    int v0 = param0->unk_34->unk_1C->unk_00;
    u16 v1 = sub_020554A4(param0->unk_34, v0);

    sub_0200549C(v1);
    return 0;
}

BOOL sub_02048338 (UnkStruct_0203E724 * param0)
{
    sub_020553F0(param0->unk_34, sub_0203E838(param0));
    return 0;
}

BOOL sub_02048350 (UnkStruct_0203E724 * param0)
{
    u16 v0 = sub_0203E838(param0);
    u16 v1 = sub_0203E838(param0);

    sub_0200564C(v0, v1);
    sub_0203E764(param0, sub_02048378);
    return 1;
}

static BOOL sub_02048378 (UnkStruct_0203E724 * param0)
{
    if (sub_02005684() == 0) {
        return 1;
    }

    return 0;
}

BOOL sub_0204838C (UnkStruct_0203E724 * param0)
{
    u16 v0 = sub_0203E838(param0);

    sub_0200560C(127, v0, 0);
    sub_0203E764(param0, sub_02048378);

    return 1;
}

BOOL sub_020483B0 (UnkStruct_0203E724 * param0)
{
    u8 v0 = (*((param0)->unk_08++));
    BOOL v1 = (*((param0)->unk_08++));

    sub_020049F4(v0, v1);
    return 0;
}

BOOL sub_020483CC (UnkStruct_0203E724 * param0)
{
    sub_02005588(4, sub_0203E838(param0));
    return 0;
}

BOOL sub_020483E0 (UnkStruct_0203E724 * param0)
{
    sub_020041CC((*((param0)->unk_08++)));
    return 0;
}

BOOL sub_020483F4 (UnkStruct_0203E724 * param0)
{
    sub_02005748(inline_02049538(param0));
    return 0;
}

BOOL sub_02048410 (UnkStruct_0203E724 * param0)
{
    sub_020057A4(inline_02049538(param0), 0);
    return 0;
}

BOOL sub_0204842C (UnkStruct_0203E724 * param0)
{
    param0->unk_18[0] = inline_02049538(param0);

    sub_0203E764(param0, sub_02048454);
    return 1;
}

static BOOL sub_02048454 (UnkStruct_0203E724 * param0)
{
    if (sub_020057D4(param0->unk_18[0]) == 0) {
        return 1;
    }

    return 0;
}

BOOL sub_0204846C (UnkStruct_0203E724 * param0)
{
    u16 v0, v1;

    v0 = inline_02049538(param0);
    v1 = inline_02049538(param0);

    sub_02005844(v0, 0);

    return 0;
}

BOOL sub_020484A0 (UnkStruct_0203E724 * param0)
{
    sub_0203E764(param0, sub_020484B0);
    return 1;
}

static BOOL sub_020484B0 (UnkStruct_0203E724 * param0)
{
    if (sub_0200598C() == 0) {
        return 1;
    }

    return 0;
}

BOOL sub_020484C4 (UnkStruct_0203E724 * param0)
{
    UnkStruct_0203CDB0 * v0 = param0->unk_34;

    sub_02006150(sub_0203E838(param0));
    return 0;
}

BOOL sub_020484D4 (UnkStruct_0203E724 * param0)
{
    sub_0203E764(param0, sub_020484E4);
    return 1;
}

static BOOL sub_020484E4 (UnkStruct_0203E724 * param0)
{
    UnkStruct_0203CDB0 * v0 = param0->unk_34;

    if (sub_020061E4() == 0) {
        return 1;
    }

    return 0;
}

BOOL sub_020484F8 (UnkStruct_0203E724 * param0)
{
    u16 * v0 = inline_0204FCAC(param0);

    if (sub_02006260(sub_0202CC98(param0->unk_34->unk_0C)) == 1) {
        *v0 = 1;
        return 0;
    }

    *v0 = 0;
    return 0;
}

BOOL sub_02048530 (UnkStruct_0203E724 * param0)
{
    u16 * v0 = inline_0204FCAC(param0);

    if (sub_0200637C() == MIC_RESULT_SUCCESS) {
        *v0 = 1;
        return 0;
    }

    *v0 = 0;
    return 0;
}

BOOL sub_0204855C (UnkStruct_0203E724 * param0)
{
    sub_020063B8();
    return 1;
}

BOOL sub_02048568 (UnkStruct_0203E724 * param0)
{
    sub_020063C0(sub_0202CC98(param0->unk_34->unk_0C));
    return 1;
}

BOOL sub_0204857C (UnkStruct_0203E724 * param0)
{
    sub_02004550(63, 0, 0);
    return 1;
}

BOOL sub_0204858C (UnkStruct_0203E724 * param0)
{
    u16 v0 = inline_02049538(param0);
    u16 v1 = inline_02049538(param0);

    sub_02004AD4(v0, v1);
    return 0;
}

BOOL sub_020485C0 (UnkStruct_0203E724 * param0)
{
    if (Unk_021BF67C.unk_44 & PAD_KEY_UP) {
        sub_02004550(22, 1218, 1);
    } else {
        sub_02004550(22, 1218, 1);
    }

    return 1;
}

BOOL sub_020485D4 (UnkStruct_0203E724 * param0)
{
    u16 v0 = inline_02049538(param0);

    sub_02004550(4, v0, 1);
    return 1;
}

BOOL sub_020485F4 (UnkStruct_0203E724 * param0)
{
    u16 * v0 = inline_0204FCAC(param0);

    *v0 = sub_020041FC();
    return 0;
}
