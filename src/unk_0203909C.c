#include <nitro.h>
#include <string.h>
#include <dwc.h>

#include "strbuf.h"
#include "trainer_info.h"
#include "struct_decls/struct_0202B370_decl.h"
#include "savedata.h"

#include "strbuf.h"
#include "trainer_info.h"
#include "unk_0202ACE0.h"
#include "communication_information.h"
#include "communication_system.h"
#include "unk_020366A0.h"
#include "unk_0203909C.h"

int sub_0203909C (SaveData * param0, DWCFriendData * param1, int * param2)
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

int sub_02039140 (SaveData * param0, u64 param1, int * param2)
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

BOOL sub_020391DC (SaveData * param0, int * param1, int param2)
{
    int v0, v1 = 0, v2;
    DWCFriendData * v3 = sub_0202AED8(sub_0202B370(param0), 0);
    DWCFriendData * v4;

    for (v0 = 0; v0 < sub_02035E18(); v0++) {
        if (CommunicationSystem_GetCurNetId() == v0) {
            continue;
        }

        v4 = CommunicationInformation_GetDWCFriendData(v0);

        if (v4 == NULL) {
            continue;
        }

        param1[v0] = sub_0203909C(param0, v4, &v2);

        GF_ASSERT(param1[v0] != 3);

        if (param1[v0] == 0) {
            sub_02039298(param0, v0, v2, param2, 2);
            CommunicationInformation_SavePlayerRecord(param0);
        } else if (param1[v0] == 1) {
            if (!sub_020389B8()) {
                sub_02039298(param0, v0, v2, param2, 1);
                MI_CpuCopy8(v4, &v3[v2], sizeof(DWCFriendData));

                CommunicationInformation_SavePlayerRecord(param0);
            }
        } else if (param1[v0] == 2) {
            v1 = 1;
        }
    }

    return v1;
}

void sub_02039298 (SaveData * param0, int param1, int param2, int param3, int param4)
{
    UnkStruct_0202B370 * v0 = sub_0202B370(param0);
    DWCFriendData * v1 = sub_0202AED8(v0, param2);
    TrainerInfo * v2 = CommunicationInformation_GetTrainerInformation(param1);
    DWCFriendData * v3;
    Strbuf* v4;

    if (param4 != 2) {
        v3 = CommunicationInformation_GetDWCFriendData(param1);
        MI_CpuCopy8(v3, v1, sizeof(DWCFriendData));
    }

    if (param4 == 0) {
        v4 = TrainerInfo_NameNewStrbuf(v2, param3);
        sub_0202AF0C(v0, param2, v4);
        Strbuf_Free(v4);
        sub_0202AE2C(v0, param2, 8, TrainerInfo_Gender(v2));
        sub_0202AE2C(v0, param2, 0, TrainerInfo_ID(v2));
    } else if (param4 == 1) {
        if (sub_0202AD2C(v0, param2, 8) == 2) {
            sub_0202AE2C(v0, param2, 8, TrainerInfo_Gender(v2));
            sub_0202AE2C(v0, param2, 0, TrainerInfo_ID(v2));
        }
    }

    v4 = Strbuf_Init(120, param3);

    Strbuf_CopyChars(v4, sub_02032F54(param1));
    sub_0202AF50(v0, param2, v4);
    Strbuf_Free(v4);
    sub_0202AE2C(v0, param2, 7, TrainerInfo_Appearance(v2));
    CommunicationInformation_SavePlayerRecord(param0);
}

int sub_02039390 (SaveData * param0, int param1)
{
    int v0, v1;
    DWCFriendData * v2 = CommunicationInformation_GetDWCFriendData(param1);
    UnkStruct_0202B370 * v3 = sub_0202B370(param0);

    for (v0 = 0; v0 < 32; v0++) {
        if (DWC_IsEqualFriendData(v2, sub_0202AED8(v3, v0))) {
            return v0;
        }
    }

    return 32;
}
