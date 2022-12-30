#include <nitro.h>
#include <string.h>
#include <dwc.h>

#include "struct_decls/struct_02023790_decl.h"
#include "struct_decls/struct_02025E6C_decl.h"
#include "struct_decls/struct_0202B370_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "unk_02023790.h"
#include "unk_02025E68.h"
#include "unk_0202ACE0.h"
#include "unk_020329E0.h"
#include "unk_02034198.h"
#include "unk_020366A0.h"
#include "unk_0203909C.h"

int sub_0203909C (UnkStruct_021C0794 * param0, DWCFriendData * param1, int * param2)
{
    int v0;
    DWCUserData * v1 = sub_0202AD28(sub_0202B370(param0));
    DWCFriendData * v2 = sub_0202AED8(sub_0202B370(param0), 0);

    *param2 = -1;

    if (!DWC_IsValidFriendData(param1)) {
        return 3;
    }

    for (v0 = 0; v0 < 32; v0++) {
        if (DWC_IsEqualFriendData(param1, v2 + v0)) {
            *param2 = v0;
            return 0;
        } else if ((DWC_GetGsProfileId(v1, param1) > 0) && (DWC_GetGsProfileId(v1, param1) == DWC_GetGsProfileId(v1, v2 + v0))) {
            *param2 = v0;
            return 1;
        } else if ((*param2 < 0) && !DWC_IsValidFriendData(v2 + v0)) {
            *param2 = v0;
        }
    }

    return 2;
}

int sub_02039140 (UnkStruct_021C0794 * param0, u64 param1, int * param2)
{
    int v0;
    DWCUserData * v1 = sub_0202AD28(sub_0202B370(param0));
    DWCFriendData * v2 = sub_0202AED8(sub_0202B370(param0), 0);
    DWCFriendData v3;

    if (!DWC_CheckFriendKey(v1, param1)) {
        return 3;
    }

    DWC_CreateFriendKeyToken(&v3, param1);

    if (DWC_GetGsProfileId(v1, &v3) <= 0) {
        return 3;
    }

    *param2 = -1;

    for (v0 = 0; v0 < 32; v0++) {
        if (DWC_GetGsProfileId(v1, &v3) == DWC_GetGsProfileId(v1, v2 + v0)) {
            *param2 = v0;
            return 0;
        } else if ((*param2 < 0) && !DWC_IsValidFriendData(v2 + v0)) {
            *param2 = v0;
        }
    }

    return 2;
}

BOOL sub_020391DC (UnkStruct_021C0794 * param0, int * param1, int param2)
{
    int v0, v1 = 0, v2;
    DWCFriendData * v3 = sub_0202AED8(sub_0202B370(param0), 0);
    DWCFriendData * v4;

    for (v0 = 0; v0 < sub_02035E18(); v0++) {
        if (sub_0203608C() == v0) {
            continue;
        }

        v4 = sub_02032F1C(v0);

        if (v4 == NULL) {
            continue;
        }

        param1[v0] = sub_0203909C(param0, v4, &v2);

        GF_ASSERT(param1[v0] != 3);

        if (param1[v0] == 0) {
            sub_02039298(param0, v0, v2, param2, 2);
            sub_02033114(param0);
        } else if (param1[v0] == 1) {
            if (!sub_020389B8()) {
                sub_02039298(param0, v0, v2, param2, 1);
                MI_CpuCopy8(v4, &v3[v2], sizeof(DWCFriendData));

                sub_02033114(param0);
            }
        } else if (param1[v0] == 2) {
            v1 = 1;
        }
    }

    return v1;
}

void sub_02039298 (UnkStruct_021C0794 * param0, int param1, int param2, int param3, int param4)
{
    UnkStruct_0202B370 * v0 = sub_0202B370(param0);
    DWCFriendData * v1 = sub_0202AED8(v0, param2);
    UnkStruct_02025E6C * v2 = sub_02032EE8(param1);
    DWCFriendData * v3;
    UnkStruct_02023790 * v4;

    if (param4 != 2) {
        v3 = sub_02032F1C(param1);
        MI_CpuCopy8(v3, v1, sizeof(DWCFriendData));
    }

    if (param4 == 0) {
        v4 = sub_02025F04(v2, param3);
        sub_0202AF0C(v0, param2, v4);
        sub_020237BC(v4);
        sub_0202AE2C(v0, param2, 8, sub_02025F30(v2));
        sub_0202AE2C(v0, param2, 0, sub_02025F20(v2));
    } else if (param4 == 1) {
        if (sub_0202AD2C(v0, param2, 8) == 2) {
            sub_0202AE2C(v0, param2, 8, sub_02025F30(v2));
            sub_0202AE2C(v0, param2, 0, sub_02025F20(v2));
        }
    }

    v4 = sub_02023790(120, param3);

    sub_02023D28(v4, sub_02032F54(param1));
    sub_0202AF50(v0, param2, v4);
    sub_020237BC(v4);
    sub_0202AE2C(v0, param2, 7, sub_02025F8C(v2));
    sub_02033114(param0);
}

int sub_02039390 (UnkStruct_021C0794 * param0, int param1)
{
    int v0, v1;
    DWCFriendData * v2 = sub_02032F1C(param1);
    UnkStruct_0202B370 * v3 = sub_0202B370(param0);

    for (v0 = 0; v0 < 32; v0++) {
        if (DWC_IsEqualFriendData(v2, sub_0202AED8(v3, v0))) {
            return v0;
        }
    }

    return 32;
}
