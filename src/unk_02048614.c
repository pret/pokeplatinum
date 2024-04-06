#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "struct_decls/sys_task.h"
#include "struct_decls/struct_0203E724_decl.h"
#include "struct_decls/struct_0205E884_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"

#include "field/field_system.h"
#include "struct_defs/struct_0203E724_t.h"

#include "unk_020041CC.h"
#include "unk_0203E724.h"
#include "unk_0203E880.h"
#include "unk_020507CC.h"
#include "unk_02050A74.h"
#include "unk_02051D8C.h"
#include "unk_020528D0.h"
#include "unk_02054884.h"
#include "unk_020553DC.h"
#include "unk_02061804.h"
#include "unk_02067A84.h"
#include "unk_0206A8DC.h"
#include "unk_0206AFE0.h"
#include "party.h"

BOOL sub_02048614(UnkStruct_0203E724 * param0);
BOOL sub_020486E0(UnkStruct_0203E724 * param0);
BOOL sub_02048750(UnkStruct_0203E724 * param0);
BOOL sub_02048778(UnkStruct_0203E724 * param0);
BOOL sub_020487CC(UnkStruct_0203E724 * param0);
BOOL sub_020487FC(UnkStruct_0203E724 * param0);
BOOL sub_0204887C(UnkStruct_0203E724 * param0);
BOOL sub_020488E0(UnkStruct_0203E724 * param0);
BOOL sub_02048968(UnkStruct_0203E724 * param0);
BOOL sub_020489F0(UnkStruct_0203E724 * param0);
BOOL sub_02048A24(UnkStruct_0203E724 * param0);
BOOL sub_02048A44(UnkStruct_0203E724 * param0);
BOOL sub_02048A50(UnkStruct_0203E724 * param0);
BOOL sub_02048A80(UnkStruct_0203E724 * param0);
BOOL sub_02048AB0(UnkStruct_0203E724 * param0);
BOOL sub_02048AE0(UnkStruct_0203E724 * param0);
BOOL sub_02048B0C(UnkStruct_0203E724 * param0);
BOOL sub_02048B34(UnkStruct_0203E724 * param0);
BOOL sub_02048B60(UnkStruct_0203E724 * param0);
BOOL sub_02048BA8(UnkStruct_0203E724 * param0);

BOOL sub_02048614 (UnkStruct_0203E724 * param0)
{
    int * v0;
    int * v1;
    int * v2;
    int * v3;
    int * v4;
    SysTask ** v5;
    LocalMapObject ** v6;
    PlayerAvatar * v7;
    FieldSystem * v8 = param0->unk_34;
    u16 v9 = inline_02049538(param0);

    if (v9 == 0) {
        v0 = sub_0203F098(v8, 24);
        v4 = sub_0203F098(v8, 25);
        v1 = sub_0203F098(v8, 26);
        v2 = sub_0203F098(v8, 27);
        v3 = sub_0203F098(v8, 28);
        v6 = sub_0203F098(v8, 29);
        v5 = sub_0203F098(v8, 30);
    } else {
        v0 = sub_0203F098(v8, 31);
        v4 = sub_0203F098(v8, 32);
        v1 = sub_0203F098(v8, 33);
        v2 = sub_0203F098(v8, 34);
        v3 = sub_0203F098(v8, 35);
        v6 = sub_0203F098(v8, 36);
        v5 = sub_0203F098(v8, 37);
    }

    v7 = v8->playerAvatar;
    *v5 = sub_02067FB8(v8, *v6, v7, *v4, *v0, 0, *v3, v9);

    return 0;
}

BOOL sub_020486E0 (UnkStruct_0203E724 * param0)
{
    SysTask ** v0;
    u16 v1 = inline_02049538(param0);
    u16 * v2 = inline_0204FCAC(param0);

    *v2 = 0;

    if (v1 == 0) {
        v0 = sub_0203F098(param0->unk_34, 30);
    } else {
        v0 = sub_0203F098(param0->unk_34, 37);
    }

    if (*v0 == NULL) {
        *v2 = 1;
        return 1;
    }

    if (sub_02067FD4(*v0) == 1) {
        sub_02067FE8(*v0);
        *v0 = NULL;
        *v2 = 1;
    }

    return 1;
}

BOOL sub_02048750 (UnkStruct_0203E724 * param0)
{
    u16 * v0 = sub_0203F098(param0->unk_34, 28);
    u16 * v1 = inline_0204FCAC(param0);

    *v1 = *v0;
    return 0;
}

BOOL sub_02048778 (UnkStruct_0203E724 * param0)
{
    u16 * v0 = sub_0203F098(param0->unk_34, 27);
    u16 * v1 = sub_0203F098(param0->unk_34, 34);
    u16 v2 = inline_02049538(param0);
    u16 * v3 = inline_0204FCAC(param0);

    *v3 = (v2 == 0) ? (*v0) : (*v1);
    return 0;
}

BOOL sub_020487CC (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    u16 * v1 = sub_0203F098(v0, 8);
    u16 * v2 = inline_0204FCAC(param0);

    *v2 = sub_0203F254(*v1);
    return 0;
}

BOOL sub_020487FC (UnkStruct_0203E724 * param0)
{
    u32 v0;
    FieldSystem * v1 = param0->unk_34;
    u16 * v2 = sub_0203F098(v1, 8);
    BOOL * v3 = sub_0203F098(v1, 23);
    u16 v4 = inline_02049538(param0);
    u16 v5 = inline_02049538(param0);
    u16 v6;

    v6 = 0;

    if (sub_0206A984(SaveData_Events(param0->unk_34->unk_0C)) == 1) {
        v6 = sub_0206B034(SaveData_Events(v1->unk_0C));
    }

    sub_020515CC(param0->unk_28, v4, v5, v6, 11, v3);
    return 1;
}

BOOL sub_0204887C (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    BOOL * v1 = sub_0203F098(v0, 23);
    u16 v2 = inline_02049538(param0);
    u16 v3 = inline_02049538(param0);
    u16 v4 = inline_02049538(param0);

    sub_020515CC(param0->unk_28, v3, v4, v2, 11, v1);
    return 1;
}

BOOL sub_020488E0 (UnkStruct_0203E724 * param0)
{
    u16 v0, v1, v2, v3, v4;
    u16 * v5 = sub_0203F098(param0->unk_34, 8);
    u16 * v6 = inline_0204FCAC(param0);
    u16 * v7 = inline_0204FCAC(param0);
    u16 * v8 = inline_0204FCAC(param0);

    v0 = sub_0203F28C(sub_0203F254(*v5));

    if (v0 == 0) {
        v2 = 0;
        v3 = 2;
        v4 = 0;
    } else {
        v1 = sub_0203F278(*v5);

        if (v1 == 0) {
            v2 = 3;
            v3 = 5;
            v4 = 6;
        } else {
            v2 = 7;
            v3 = 9;
            v4 = 10;
        }
    }

    *v6 = v2;
    *v7 = v3;
    *v8 = v4;

    return 0;
}

BOOL sub_02048968 (UnkStruct_0203E724 * param0)
{
    u16 v0, v1, v2, v3, v4;
    u16 * v5 = sub_0203F098(param0->unk_34, 8);
    u16 * v6 = inline_0204FCAC(param0);
    u16 * v7 = inline_0204FCAC(param0);
    u16 * v8 = inline_0204FCAC(param0);

    v0 = sub_0203F28C(sub_0203F254(*v5));

    if (v0 == 0) {
        v2 = 17;
        v3 = 0;
        v4 = 0;
    } else {
        v1 = sub_0203F278(*v5);

        if (v1 == 0) {
            v2 = 18;
            v3 = 0;
            v4 = 6;
        } else {
            v2 = 19;
            v3 = 0;
            v4 = 10;
        }
    }

    *v6 = v2;
    *v7 = v3;
    *v8 = v4;

    return 0;
}

BOOL sub_020489F0 (UnkStruct_0203E724 * param0)
{
    u16 * v0 = sub_0203F098(param0->unk_34, 8);
    u16 * v1 = inline_0204FCAC(param0);

    *v1 = sub_0203F28C(sub_0203F254(*v0));
    return 0;
}

BOOL sub_02048A24 (UnkStruct_0203E724 * param0)
{
    u16 v0 = inline_02049538(param0);

    sub_02004950(sub_0205560C(v0));
    return 1;
}

BOOL sub_02048A44 (UnkStruct_0203E724 * param0)
{
    sub_02052C5C(param0->unk_28);
    return 1;
}

BOOL sub_02048A50 (UnkStruct_0203E724 * param0)
{
    BOOL * v0 = sub_0203F098(param0->unk_34, 23);
    u16 * v1 = inline_0204FCAC(param0);

    *v1 = sub_02052868(*v0);
    return 1;
}

BOOL sub_02048A80 (UnkStruct_0203E724 * param0)
{
    BOOL * v0 = sub_0203F098(param0->unk_34, 23);
    u16 * v1 = inline_0204FCAC(param0);

    *v1 = sub_02052878(*v0);
    return 1;
}

BOOL sub_02048AB0 (UnkStruct_0203E724 * param0)
{
    BOOL * v0 = sub_0203F098(param0->unk_34, 23);
    u16 * v1 = inline_0204FCAC(param0);

    *v1 = sub_02052888(*v0);
    return 1;
}

BOOL sub_02048AE0 (UnkStruct_0203E724 * param0)
{
    u16 * v0 = inline_0204FCAC(param0);

    *v0 = sub_02054AB0(Party_GetFromSavedata(param0->unk_34->unk_0C));
    return 0;
}

BOOL sub_02048B0C (UnkStruct_0203E724 * param0)
{
    FieldSystem * v0 = param0->unk_34;
    BOOL * v1 = sub_0203F098(v0, 23);

    sub_020515CC(param0->unk_28, 1, 0, 0, 11, v1);

    return 1;
}

BOOL sub_02048B34 (UnkStruct_0203E724 * param0)
{
    LocalMapObject ** v0;
    FieldSystem * v1 = param0->unk_34;

    v0 = sub_0203F098(v1, 10);
    sub_0203F2BC(sub_02062C00(*v0), sub_02062910(*v0));

    return 0;
}

BOOL sub_02048B60 (UnkStruct_0203E724 * param0)
{
    int v0;
    s32 v1;
    LocalMapObject ** v2;
    FieldSystem * v3 = param0->unk_34;

    v2 = sub_0203F098(v3, 10);
    v1 = (s32)sub_0203E850(param0);
    v0 = sub_0203F2A0(sub_02062C00(*v2), sub_02062910(*v2));

    if (v0 == 1) {
        sub_0203E818(param0, (u8 *)(param0->unk_08 + v1));
        return 1;
    }

    return 0;
}

BOOL sub_02048BA8 (UnkStruct_0203E724 * param0)
{
    BOOL * v0 = sub_0203F098(param0->unk_34, 23);
    u16 * v1 = inline_0204FCAC(param0);

    *v1 = *v0;
    return 1;
}
