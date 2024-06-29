#include <nitro.h>
#include <string.h>

#include "savedata.h"
#include "struct_defs/struct_02055BA8.h"

#include "rtc.h"
#include "savedata.h"
#include "unk_02025CB0.h"

typedef struct UnkStruct_02025CCC_t {
    s64 unk_00;  
    u8 unk_08[6];
    u8 unk_0E;
    u8 unk_0F;
    UnkStruct_02055BA8 unk_10;
    u8 unk_48;
    u8 unk_49;
    s32 unk_4C;
    u32 unk_50[3];
} UnkStruct_02025CCC;

int SystemData_SaveSize (void)
{
    return sizeof(UnkStruct_02025CCC);
}

void SystemData_Init (UnkStruct_02025CCC * param0)
{
    MI_CpuClearFast(param0, sizeof(UnkStruct_02025CCC));
    sub_02025D84(&param0->unk_10);
}

UnkStruct_02025CCC * sub_02025CCC (SaveData * param0)
{
    return SaveData_SaveTable(param0, 0);
}

UnkStruct_02055BA8 * sub_02025CD8 (SaveData * param0)
{
    UnkStruct_02025CCC * v0;

    v0 = sub_02025CCC(param0);
    return &v0->unk_10;
}

void sub_02025CE4 (UnkStruct_02025CCC * param0)
{
    OSOwnerInfo v0;

    param0->unk_00 = OS_GetOwnerRtcOffset();

    OS_GetMacAddress(param0->unk_08);
    OS_GetOwnerInfo(&v0);

    param0->unk_0E = v0.birthday.month;
    param0->unk_0F = v0.birthday.day;
}

BOOL sub_02025D10 (const UnkStruct_02025CCC * param0)
{
    int v0;
    u8 v1[6];

    OS_GetMacAddress(v1);

    for (v0 = 0; v0 < 6; v0++) {
        if (param0->unk_08[v0] != v1[v0]) {
            return 0;
        }
    }

    return 1;
}

BOOL sub_02025D40 (const UnkStruct_02025CCC * param0)
{
    return OS_GetOwnerRtcOffset() == param0->unk_00;
}

u8 sub_02025D5C (const UnkStruct_02025CCC * param0)
{
    return param0->unk_0E;
}

u8 sub_02025D60 (const UnkStruct_02025CCC * param0)
{
    return param0->unk_0F;
}

BOOL sub_02025D64 (const UnkStruct_02025CCC * param0)
{
    return param0->unk_48;
}

void sub_02025D6C (UnkStruct_02025CCC * param0, BOOL param1)
{
    param0->unk_48 = param1;
}

s32 sub_02025D74 (const UnkStruct_02025CCC * param0)
{
    return param0->unk_4C;
}

void sub_02025D78 (UnkStruct_02025CCC * param0, s32 param1)
{
    if (param0->unk_4C == 0) {
        param0->unk_4C = param1;
    }
}

void sub_02025D84 (UnkStruct_02055BA8 * param0)
{
    param0->unk_00 = 1;
    GetCurrentDateTime(&param0->unk_04, &param0->unk_14);
    param0->unk_20 = RTC_ConvertDateToDay(&param0->unk_04);
    param0->unk_24 = RTC_ConvertDateTimeToSecond(&param0->unk_04, &param0->unk_14);
    param0->unk_2C = 0;
    param0->unk_34 = 0;
}

BOOL sub_02025DB8 (const UnkStruct_02055BA8 * param0)
{
    if (param0->unk_34 != 0) {
        return 1;
    } else {
        return 0;
    }
}

void sub_02025DC8 (UnkStruct_02055BA8 * param0, int param1)
{
    if (param0->unk_34 > 24 * 60) {
        param0->unk_34 = 24 * 60;
    }

    if (param0->unk_34 < param1) {
        param0->unk_34 = 0;
    } else {
        param0->unk_34 -= param1;
    }
}

void sub_02025DE8 (UnkStruct_02055BA8 * param0)
{
    param0->unk_34 = 60 * 24;
    GetCurrentDateTime(&param0->unk_04, &param0->unk_14);
    param0->unk_20 = RTC_ConvertDateToDay(&param0->unk_04);
}
