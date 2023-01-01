#include <nitro.h>
#include <string.h>

#include "overlay104/struct_ov104_0222E930_decl.h"

#include "overlay104/struct_ov104_0222E930_t.h"

#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "overlay104/ov104_0222E930.h"
#include "overlay104/ov104_0222FBE4.h"

static BOOL ov104_022390C0(UnkStruct_ov104_0222E930 * param0);
static BOOL ov104_022390F8(UnkStruct_ov104_0222E930 * param0);
BOOL ov104_02239080(UnkStruct_ov104_0222E930 * param0);
BOOL ov104_02239090(UnkStruct_ov104_0222E930 * param0);
BOOL ov104_022390A0(UnkStruct_ov104_0222E930 * param0);
BOOL ov104_022390D8(UnkStruct_ov104_0222E930 * param0);
BOOL ov104_022390E8(UnkStruct_ov104_0222E930 * param0);
BOOL ov104_0223910C(UnkStruct_ov104_0222E930 * param0);
BOOL ov104_0223911C(UnkStruct_ov104_0222E930 * param0);

BOOL ov104_02239080 (UnkStruct_ov104_0222E930 * param0)
{
    sub_02005748(ov104_0222FC00(param0));
    return 0;
}

BOOL ov104_02239090 (UnkStruct_ov104_0222E930 * param0)
{
    sub_020057A4(ov104_0222FC00(param0), 0);
    return 0;
}

BOOL ov104_022390A0 (UnkStruct_ov104_0222E930 * param0)
{
    param0->unk_78[0] = ov104_0222FC00(param0);
    ov104_0222E974(param0, ov104_022390C0);

    return 1;
}

static BOOL ov104_022390C0 (UnkStruct_ov104_0222E930 * param0)
{
    if (sub_020057D4(param0->unk_78[0]) == 0) {
        return 1;
    }

    return 0;
}

BOOL ov104_022390D8 (UnkStruct_ov104_0222E930 * param0)
{
    sub_02006150(ov104_0222EA48(param0));
    return 0;
}

BOOL ov104_022390E8 (UnkStruct_ov104_0222E930 * param0)
{
    ov104_0222E974(param0, ov104_022390F8);
    return 1;
}

static BOOL ov104_022390F8 (UnkStruct_ov104_0222E930 * param0)
{
    if (sub_020061E4() == 0) {
        return 1;
    }

    return 0;
}

BOOL ov104_0223910C (UnkStruct_ov104_0222E930 * param0)
{
    sub_0200549C(ov104_0222EA48(param0));
    return 0;
}

BOOL ov104_0223911C (UnkStruct_ov104_0222E930 * param0)
{
    u16 v0 = ov104_0222EA48(param0);

    sub_020055D0(sub_020041FC(), 0);
    return 0;
}
