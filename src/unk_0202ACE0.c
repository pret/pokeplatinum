#include "unk_0202ACE0.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_0202B370.h"
#include "struct_defs/struct_0202B370_sub1.h"

#include "assert.h"
#include "rtc.h"
#include "savedata.h"
#include "string_gf.h"
#include "unk_02038FFC.h"

int WiFiList_SaveSize(void)
{
    return sizeof(WiFiList);
}

void WiFiList_Init(WiFiList *param0)
{
    int v0;

    MI_CpuClearFast(param0, sizeof(WiFiList));

    for (v0 = 0; v0 < 32; v0++) {
        param0->unk_1C0[v0].unk_10[0] = 0xffff;
        param0->unk_1C0[v0].unk_00[0] = 0xffff;
        param0->unk_1C0[v0].unk_2E = 2;
    }

    sub_02039034(param0);
}

DWCUserData *WiFiList_GetUserData(WiFiList *param0)
{
    return &(param0->unk_00);
}

u32 sub_0202AD2C(WiFiList *param0, int param1, int param2)
{
    u32 v0;

    GF_ASSERT(param1 < 32);

    switch (param2) {
    case 0:
        v0 = param0->unk_1C0[param1].unk_20;
        break;
    case 1:
        v0 = param0->unk_1C0[param1].unk_24;
        break;
    case 2:
        v0 = param0->unk_1C0[param1].unk_26;
        break;
    case 3:
        v0 = param0->unk_1C0[param1].unk_28;
        break;
    case 4:
        v0 = param0->unk_1C0[param1].unk_2A;
        break;
    case 5:
        v0 = param0->unk_1C0[param1].unk_2C;
        break;
    case 6:
        v0 = param0->unk_1C0[param1].unk_2D;
        break;
    case 8:
        v0 = param0->unk_1C0[param1].unk_2E;
        break;
    case 7:
        v0 = param0->unk_1C0[param1].unk_2F;
        break;
    case 9:
        v0 = param0->unk_1C0[param1].unk_30;
        break;
    case 10:
        v0 = param0->unk_1C0[param1].unk_32;
        break;
    case 11:
        v0 = param0->unk_1C0[param1].unk_34;
        break;
    case 12:
        v0 = param0->unk_1C0[param1].unk_36;
        break;
    }

    return v0;
}

void sub_0202AE2C(WiFiList *param0, int param1, int param2, u32 param3)
{
    GF_ASSERT(param1 < 32);

    switch (param2) {
    case 0:
        param0->unk_1C0[param1].unk_20 = param3;
        break;
    case 1:
        GF_ASSERT(0);
        break;
    case 2:
        GF_ASSERT(0);
        break;
    case 3:
        GF_ASSERT(0);
        break;
    case 4:
        param0->unk_1C0[param1].unk_2A = param3;
        break;
    case 5:
        param0->unk_1C0[param1].unk_2C = param3;
        break;
    case 6:
        param0->unk_1C0[param1].unk_2D = param3;
        break;
    case 8:
        param0->unk_1C0[param1].unk_2E = param3;
        break;
    case 7:
        param0->unk_1C0[param1].unk_2F = param3;
        break;
    case 9:
        GF_ASSERT(0);
        break;
    }
}

DWCFriendData *sub_0202AED8(WiFiList *param0, int param1)
{
    GF_ASSERT(param1 < 32);
    return &(param0->unk_40[param1]);
}

u16 *sub_0202AEF0(WiFiList *param0, int param1)
{
    GF_ASSERT(param1 < 32);
    return param0->unk_1C0[param1].unk_10;
}

void sub_0202AF0C(WiFiList *param0, int param1, String *param2)
{
    GF_ASSERT(param1 < 32);
    String_ToChars(param2, param0->unk_1C0[param1].unk_10, sizeof(param0->unk_1C0[param1].unk_10));
}

u16 *sub_0202AF34(WiFiList *param0, int param1)
{
    GF_ASSERT(param1 < 32);
    return param0->unk_1C0[param1].unk_00;
}

void sub_0202AF50(WiFiList *param0, int param1, String *param2)
{
    GF_ASSERT(param1 < 32);
    String_ToChars(param2, param0->unk_1C0[param1].unk_00, sizeof(param0->unk_1C0[param1].unk_00));
}

BOOL sub_0202AF78(WiFiList *param0, int param1)
{
    GF_ASSERT(param1 < 32);
    return DWC_IsValidFriendData(&param0->unk_40[param1]);
}

int sub_0202AF94(WiFiList *param0)
{
    int v0, v1 = 0;

    for (v0 = 0; v0 < 32; v0++) {
        if (sub_0202AF78(param0, v0)) {
            v1++;
        }
    }

    return v1;
}

int sub_0202AFB4(WiFiList *param0)
{
    int v0, v1 = 0;

    for (v0 = 0; v0 < 32; v0++) {
        if (sub_0202AF78(param0, v0)) {
            v1 = v0 + 1;
        }
    }

    return v1;
}

void sub_0202AFD4(WiFiList *param0, int param1)
{
    int v0;

    GF_ASSERT(param1 < 32);

    for (v0 = param1; v0 < (32 - 1); v0++) {
        MI_CpuCopy8(&param0->unk_1C0[v0 + 1], &param0->unk_1C0[v0], sizeof(UnkStruct_0202B370_sub1));
        MI_CpuCopy8(&param0->unk_40[v0 + 1], &param0->unk_40[v0], sizeof(DWCFriendData));
    }

    v0 = 32 - 1;

    MI_CpuClearFast(&param0->unk_1C0[v0], sizeof(UnkStruct_0202B370_sub1));
    MI_CpuClearFast(&param0->unk_40[v0], sizeof(DWCFriendData));

    param0->unk_1C0[v0].unk_10[0] = 0xffff;
    param0->unk_1C0[v0].unk_00[0] = 0xffff;
    param0->unk_1C0[v0].unk_2E = 2;
}

static void sub_0202B088(WiFiList *param0, int param1, int param2)
{
    int v0;

    MI_CpuCopy8(&param0->unk_1C0[param2], &param0->unk_1C0[param1], sizeof(UnkStruct_0202B370_sub1));
    MI_CpuCopy8(&param0->unk_40[param2], &param0->unk_40[param1], sizeof(DWCFriendData));
    MI_CpuClearFast(&param0->unk_1C0[param2], sizeof(UnkStruct_0202B370_sub1));
    MI_CpuClearFast(&param0->unk_40[param2], sizeof(DWCFriendData));

    param0->unk_1C0[param2].unk_10[0] = 0xffff;
    param0->unk_1C0[param2].unk_00[0] = 0xffff;
    param0->unk_1C0[param2].unk_2E = 2;
}

void sub_0202B0F8(WiFiList *param0)
{
    int v0, v1 = -1;

    for (v0 = 0; v0 < 32; v0++) {
        if (sub_0202AF78(param0, v0)) {
            if (v1 != -1) {
                sub_0202B088(param0, v1, v0);

                v0 = -1;
                v1 = -1;
            }
        } else {
            if (v1 == -1) {
                v1 = v0;
            }
        }
    }
}

void WiFiList_SetHostFriendCurrentDate(WiFiList *wiFiList, int hostFriendID)
{
    RTCDate date;

    GetCurrentDate(&date);

    wiFiList->unk_1C0[hostFriendID].unk_2A = date.year + 2000;
    wiFiList->unk_1C0[hostFriendID].unk_2C = date.month;
    wiFiList->unk_1C0[hostFriendID].unk_2D = date.day;
}

void sub_0202B174(WiFiList *param0, int param1, int param2, int param3, int param4)
{
    param0->unk_1C0[param1].unk_24 += param2;

    if (param0->unk_1C0[param1].unk_24 > 9999) {
        param0->unk_1C0[param1].unk_24 = 9999;
    }

    param0->unk_1C0[param1].unk_26 += param3;

    if (param0->unk_1C0[param1].unk_26 > 9999) {
        param0->unk_1C0[param1].unk_26 = 9999;
    }

    param0->unk_1C0[param1].unk_28 += param4;

    if (param0->unk_1C0[param1].unk_28 > 9999) {
        param0->unk_1C0[param1].unk_28 = 9999;
    }

    WiFiList_SetHostFriendCurrentDate(param0, param1);
}

void sub_0202B1D0(WiFiList *param0, int param1, int param2)
{
    param0->unk_1C0[param1].unk_30 += param2;

    if (param0->unk_1C0[param1].unk_30 > 9999) {
        param0->unk_1C0[param1].unk_30 = 9999;
    }

    WiFiList_SetHostFriendCurrentDate(param0, param1);
}

void sub_0202B1F8(WiFiList *param0, int param1, int param2)
{
    param0->unk_1C0[param1].unk_32 += param2;

    if (param0->unk_1C0[param1].unk_32 > 9999) {
        param0->unk_1C0[param1].unk_32 = 9999;
    }

    WiFiList_SetHostFriendCurrentDate(param0, param1);
}

void sub_0202B220(WiFiList *param0, int param1, int param2)
{
    param0->unk_1C0[param1].unk_34 += param2;

    if (param0->unk_1C0[param1].unk_34 > 9999) {
        param0->unk_1C0[param1].unk_34 = 9999;
    }

    WiFiList_SetHostFriendCurrentDate(param0, param1);
}

void sub_0202B248(WiFiList *param0, int param1, int param2)
{
    param0->unk_1C0[param1].unk_36 += param2;

    if (param0->unk_1C0[param1].unk_36 > 9999) {
        param0->unk_1C0[param1].unk_36 = 9999;
    }

    WiFiList_SetHostFriendCurrentDate(param0, param1);
}

void sub_0202B270(WiFiList *param0, int param1, int param2)
{
    param0->unk_1C0[param2].unk_24 += param0->unk_1C0[param1].unk_24;

    if (param0->unk_1C0[param2].unk_24 > 9999) {
        param0->unk_1C0[param2].unk_24 = 9999;
    }

    param0->unk_1C0[param2].unk_26 += param0->unk_1C0[param1].unk_26;

    if (param0->unk_1C0[param2].unk_26 > 9999) {
        param0->unk_1C0[param2].unk_26 = 9999;
    }

    param0->unk_1C0[param2].unk_28 += param0->unk_1C0[param1].unk_28;

    if (param0->unk_1C0[param2].unk_28 > 9999) {
        param0->unk_1C0[param2].unk_28 = 9999;
    }

    param0->unk_1C0[param2].unk_30 += param0->unk_1C0[param1].unk_30;

    if (param0->unk_1C0[param2].unk_30 > 9999) {
        param0->unk_1C0[param2].unk_30 = 9999;
    }

    param0->unk_1C0[param2].unk_32 += param0->unk_1C0[param1].unk_32;

    if (param0->unk_1C0[param2].unk_32 > 9999) {
        param0->unk_1C0[param2].unk_32 = 9999;
    }

    param0->unk_1C0[param2].unk_34 += param0->unk_1C0[param1].unk_34;

    if (param0->unk_1C0[param2].unk_34 > 9999) {
        param0->unk_1C0[param2].unk_34 = 9999;
    }

    param0->unk_1C0[param2].unk_36 += param0->unk_1C0[param1].unk_36;

    if (param0->unk_1C0[param2].unk_36 > 9999) {
        param0->unk_1C0[param2].unk_36 = 9999;
    }

    MI_CpuCopyFast(param0->unk_1C0[param1].unk_00, param0->unk_1C0[param2].unk_00, (sizeof(u16) * (7 + 1)));
    MI_CpuClearFast(&param0->unk_1C0[param1], sizeof(UnkStruct_0202B370_sub1));

    param0->unk_1C0[param1].unk_10[0] = 0xffff;
    param0->unk_1C0[param1].unk_00[0] = 0xffff;
    param0->unk_1C0[param1].unk_2E = 2;
}

WiFiList *SaveData_GetWiFiList(SaveData *saveData)
{
    return SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_WIFI_LIST);
}
