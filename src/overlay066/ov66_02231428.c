#include "overlay066/ov66_02231428.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "overlay004/ov4_021D0D80.h"
#include "overlay066/struct_ov66_02231428.h"
#include "overlay066/struct_ov66_02231560.h"

#include "unk_020366A0.h"
#include "unk_020996D0.h"

void ov66_02231428(UnkStruct_ov66_02231428 *param0, const s64 *param1)
{
    RTCDate v0;
    RTCTime v1;

    RTC_ConvertSecondToDateTime(&v0, &v1, *param1);

    param0->unk_00_val2_unk_00 = v1.hour;
    param0->unk_00_val2_unk_01 = v1.minute;
    param0->unk_00_val2_unk_02 = v1.second;
}

void ov66_0223144C(const UnkStruct_ov66_02231428 *param0, const UnkStruct_ov66_02231428 *param1, UnkStruct_ov66_02231428 *param2)
{
    u32 v0;
    UnkStruct_ov66_02231428 v1;
    UnkStruct_ov66_02231428 v2;

    v1 = *param0;
    v2 = *param1;

    v1.unk_00_val2_unk_02 += v2.unk_00_val2_unk_02;
    v0 = v1.unk_00_val2_unk_02 / 60;
    v1.unk_00_val2_unk_01 += v0;

    param2->unk_00_val2_unk_02 = v1.unk_00_val2_unk_02 % 60;

    v1.unk_00_val2_unk_01 += v2.unk_00_val2_unk_01;
    v0 = v1.unk_00_val2_unk_01 / 60;
    v1.unk_00_val2_unk_00 += v0;

    param2->unk_00_val2_unk_01 = v1.unk_00_val2_unk_01 % 60;

    v1.unk_00_val2_unk_00 += v2.unk_00_val2_unk_00;
    param2->unk_00_val2_unk_00 = v1.unk_00_val2_unk_00 % 24;
}

void ov66_022314BC(const UnkStruct_ov66_02231428 *param0, const UnkStruct_ov66_02231428 *param1, UnkStruct_ov66_02231428 *param2)
{
    u32 v0;
    s32 v1;
    UnkStruct_ov66_02231428 v2;
    UnkStruct_ov66_02231428 v3;

    v2 = *param0;
    v3 = *param1;
    v1 = ((s8)v2.unk_00_val2_unk_02 - (s8)v3.unk_00_val2_unk_02);

    if (v1 < 0) {
        v0 = ((-v1) / 60) + 1;
        v2.unk_00_val2_unk_02 += 60 * v0;
        v2.unk_00_val2_unk_01 -= v0;
    }

    param2->unk_00_val2_unk_02 = v2.unk_00_val2_unk_02 - v3.unk_00_val2_unk_02;

    v1 = ((s8)v2.unk_00_val2_unk_01 - (s8)v3.unk_00_val2_unk_01);

    if (v1 < 0) {
        v0 = ((-v1) / 60) + 1;
        v2.unk_00_val2_unk_01 += 60 * v0;
        v2.unk_00_val2_unk_00 -= v0;
    }

    param2->unk_00_val2_unk_01 = v2.unk_00_val2_unk_01 - v3.unk_00_val2_unk_01;

    v1 = ((s8)v2.unk_00_val2_unk_00 - (s8)v3.unk_00_val2_unk_00);

    if (v1 < 0) {
        v0 = ((-v1) / 24) + 1;
        v2.unk_00_val2_unk_00 += 24 * v0;
    }

    param2->unk_00_val2_unk_00 = v2.unk_00_val2_unk_00 - v3.unk_00_val2_unk_00;
}

void ov66_02231560(UnkStruct_ov66_02231560 *param0, u16 param1, u8 param2, BOOL param3)
{
    int v0;
    BOOL v1;
    u32 v2;

    if (param1 == 0) {
        return;
    }

    v2 = sub_020996F4(param1);

    if (param2 > v2) {
        return;
    }

    v1 = 0;

    for (v0 = 0; v0 < 50; v0++) {
        if (param0->unk_00[v0].unk_03_4 == 0) {
            v1 = 1;
        } else {
            if ((param0->unk_00[v0].unk_00 == param1) && (param0->unk_00[v0].unk_02 == param2)) {
                if (param3 == 1) {
                    return;
                } else {
                    v1 = 1;
                }
            }
        }

        if (v1) {
            param0->unk_00[v0].unk_00 = param1;
            param0->unk_00[v0].unk_02 = param2;
            param0->unk_00[v0].unk_03_0 = param3;
            param0->unk_00[v0].unk_03_4 = 1;
            return;
        }
    }
}

u16 ov66_022315D8(const UnkStruct_ov66_02231560 *param0, u8 param1)
{
    GF_ASSERT(param1 < 50);
    GF_ASSERT(param0->unk_00[param1].unk_03_4 == 1);

    return param0->unk_00[param1].unk_00;
}

u8 ov66_022315FC(const UnkStruct_ov66_02231560 *param0, u8 param1)
{
    GF_ASSERT(param1 < 50);
    GF_ASSERT(param0->unk_00[param1].unk_03_4 == 1);

    return param0->unk_00[param1].unk_02;
}

BOOL ov66_02231624(const UnkStruct_ov66_02231560 *param0, u8 param1)
{
    GF_ASSERT(param1 < 50);
    GF_ASSERT(param0->unk_00[param1].unk_03_4 == 1);

    return param0->unk_00[param1].unk_03_0;
}

BOOL ov66_0223164C(const UnkStruct_ov66_02231560 *param0, u8 param1)
{
    GF_ASSERT(param1 < 50);

    return param0->unk_00[param1].unk_03_4;
}

void ov66_02231668(void *param0)
{
    NNSG3dResMdlSet *v0 = NNS_G3dGetMdlSet(param0);
    NNSG3dResMdl *v1 = NNS_G3dGetMdlByIdx(v0, 0);

    NNS_G3dMdlUseGlbDiff(v1);
    NNS_G3dMdlUseGlbAmb(v1);
    NNS_G3dMdlUseGlbSpec(v1);
    NNS_G3dMdlUseGlbEmi(v1);
}

BOOL ov66_022316C4(u16 param0, u16 param1)
{
    u32 v0 = sub_020996F4(param0);

    if (v0 == 0) {
        if (param1 == 0) {
            return 1;
        }
    }

    if ((param1 >= 1) && (param1 <= v0)) {
        return 1;
    }

    return 0;
}

u32 ov66_022316E8(int param0)
{
    static const u8 v0[18] = {
        9,
        0,
        1,
        2,
        3,
        4,
        5,
        6,
        7,
        8,
        10,
        11,
        12,
        13,
        14,
        15,
        16,
        17,
    };

    return v0[param0];
}

int ov66_022316F4(int param0, int param1)
{
    int v0;
    int v1;

    v0 = ov4_021D1F3C(param0, param1);

    if ((v0 == 11) || (param0 == ((DWC_ERROR_NUM) + 5))) {
        v1 = 14;
    } else if (param0 == ((DWC_ERROR_NUM) + 6)) {
        v1 = 13;
    } else {
        if (v0 >= 0) {
            v1 = 0 + v0;
        } else {
            v1 = 11;
        }
    }

    return v1;
}

int ov66_02231718(int param0, int param1)
{
    int v0;
    int v1;

    v0 = ov4_021D1F3C(param0, param1);

    if (param0 == ((DWC_ERROR_NUM) + 5)) {
        v0 = 11;
    } else if (param0 == ((DWC_ERROR_NUM) + 6)) {
        v0 = 12;
    }

    switch (v0) {
    case 1:
    case 4:
    case 5:
    case 11:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
        v1 = 0;
        break;
    case 0:
    case 2:
    case 3:
    default:
        v1 = 1;
        break;
    }

    return v1;
}

BOOL ov66_02231760(void)
{
    if (sub_020383E8() || sub_0203881C()) {
        return 1;
    }

    return 0;
}
