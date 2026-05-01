#include "wifi_list.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "struct_defs/wi_fi_list.h"

#include "assert.h"
#include "rtc.h"
#include "savedata.h"
#include "string_gf.h"
#include "unk_02038FFC.h"

int WiFiList_SaveSize(void)
{
    return sizeof(WiFiList);
}

void WiFiList_Init(WiFiList *wiFiList)
{
    int v0;

    MI_CpuClearFast(wiFiList, sizeof(WiFiList));

    for (v0 = 0; v0 < 32; v0++) {
        wiFiList->unk_1C0[v0].unk_10[0] = 0xffff;
        wiFiList->unk_1C0[v0].unk_00[0] = 0xffff;
        wiFiList->unk_1C0[v0].unk_2E = 2;
    }

    sub_02039034(wiFiList);
}

DWCUserData *WiFiList_GetUserData(WiFiList *wiFiList)
{
    return &(wiFiList->userData);
}

u32 sub_0202AD2C(WiFiList *wiFiList, int param1, int param2)
{
    u32 v0;

    GF_ASSERT(param1 < 32);

    switch (param2) {
    case 0:
        v0 = wiFiList->unk_1C0[param1].unk_20;
        break;
    case 1:
        v0 = wiFiList->unk_1C0[param1].unk_24;
        break;
    case 2:
        v0 = wiFiList->unk_1C0[param1].unk_26;
        break;
    case 3:
        v0 = wiFiList->unk_1C0[param1].unk_28;
        break;
    case 4:
        v0 = wiFiList->unk_1C0[param1].year;
        break;
    case 5:
        v0 = wiFiList->unk_1C0[param1].month;
        break;
    case 6:
        v0 = wiFiList->unk_1C0[param1].day;
        break;
    case 8:
        v0 = wiFiList->unk_1C0[param1].unk_2E;
        break;
    case 7:
        v0 = wiFiList->unk_1C0[param1].unk_2F;
        break;
    case 9:
        v0 = wiFiList->unk_1C0[param1].unk_30;
        break;
    case 10:
        v0 = wiFiList->unk_1C0[param1].unk_32;
        break;
    case 11:
        v0 = wiFiList->unk_1C0[param1].unk_34;
        break;
    case 12:
        v0 = wiFiList->unk_1C0[param1].unk_36;
        break;
    }

    return v0;
}

void sub_0202AE2C(WiFiList *wiFiList, int param1, int param2, u32 param3)
{
    GF_ASSERT(param1 < 32);

    switch (param2) {
    case 0:
        wiFiList->unk_1C0[param1].unk_20 = param3;
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
        wiFiList->unk_1C0[param1].year = param3;
        break;
    case 5:
        wiFiList->unk_1C0[param1].month = param3;
        break;
    case 6:
        wiFiList->unk_1C0[param1].day = param3;
        break;
    case 8:
        wiFiList->unk_1C0[param1].unk_2E = param3;
        break;
    case 7:
        wiFiList->unk_1C0[param1].unk_2F = param3;
        break;
    case 9:
        GF_ASSERT(0);
        break;
    }
}

DWCFriendData *sub_0202AED8(WiFiList *wiFiList, int param1)
{
    GF_ASSERT(param1 < 32);
    return &(wiFiList->friendData[param1]);
}

u16 *sub_0202AEF0(WiFiList *wiFiList, int param1)
{
    GF_ASSERT(param1 < 32);
    return wiFiList->unk_1C0[param1].unk_10;
}

void sub_0202AF0C(WiFiList *wiFiList, int param1, String *param2)
{
    GF_ASSERT(param1 < 32);
    String_ToChars(param2, wiFiList->unk_1C0[param1].unk_10, sizeof(wiFiList->unk_1C0[param1].unk_10));
}

u16 *sub_0202AF34(WiFiList *wiFiList, int param1)
{
    GF_ASSERT(param1 < 32);
    return wiFiList->unk_1C0[param1].unk_00;
}

void sub_0202AF50(WiFiList *wiFiList, int param1, String *param2)
{
    GF_ASSERT(param1 < 32);
    String_ToChars(param2, wiFiList->unk_1C0[param1].unk_00, sizeof(wiFiList->unk_1C0[param1].unk_00));
}

BOOL sub_0202AF78(WiFiList *wiFiList, int param1)
{
    GF_ASSERT(param1 < 32);
    return DWC_IsValidFriendData(&wiFiList->friendData[param1]);
}

int sub_0202AF94(WiFiList *wiFiList)
{
    int v0, v1 = 0;

    for (v0 = 0; v0 < 32; v0++) {
        if (sub_0202AF78(wiFiList, v0)) {
            v1++;
        }
    }

    return v1;
}

int sub_0202AFB4(WiFiList *wiFiList)
{
    int v0, v1 = 0;

    for (v0 = 0; v0 < 32; v0++) {
        if (sub_0202AF78(wiFiList, v0)) {
            v1 = v0 + 1;
        }
    }

    return v1;
}

void sub_0202AFD4(WiFiList *wiFiList, int param1)
{
    int v0;

    GF_ASSERT(param1 < 32);

    for (v0 = param1; v0 < (32 - 1); v0++) {
        MI_CpuCopy8(&wiFiList->unk_1C0[v0 + 1], &wiFiList->unk_1C0[v0], sizeof(UnkStruct_0202B370_sub1));
        MI_CpuCopy8(&wiFiList->friendData[v0 + 1], &wiFiList->friendData[v0], sizeof(DWCFriendData));
    }

    v0 = 32 - 1;

    MI_CpuClearFast(&wiFiList->unk_1C0[v0], sizeof(UnkStruct_0202B370_sub1));
    MI_CpuClearFast(&wiFiList->friendData[v0], sizeof(DWCFriendData));

    wiFiList->unk_1C0[v0].unk_10[0] = 0xffff;
    wiFiList->unk_1C0[v0].unk_00[0] = 0xffff;
    wiFiList->unk_1C0[v0].unk_2E = 2;
}

static void sub_0202B088(WiFiList *wiFiList, int param1, int param2)
{
    MI_CpuCopy8(&wiFiList->unk_1C0[param2], &wiFiList->unk_1C0[param1], sizeof(UnkStruct_0202B370_sub1));
    MI_CpuCopy8(&wiFiList->friendData[param2], &wiFiList->friendData[param1], sizeof(DWCFriendData));
    MI_CpuClearFast(&wiFiList->unk_1C0[param2], sizeof(UnkStruct_0202B370_sub1));
    MI_CpuClearFast(&wiFiList->friendData[param2], sizeof(DWCFriendData));

    wiFiList->unk_1C0[param2].unk_10[0] = 0xffff;
    wiFiList->unk_1C0[param2].unk_00[0] = 0xffff;
    wiFiList->unk_1C0[param2].unk_2E = 2;
}

void sub_0202B0F8(WiFiList *wiFiList)
{
    int i, v1 = -1;

    for (i = 0; i < 32; i++) {
        if (sub_0202AF78(wiFiList, i)) {
            if (v1 != -1) {
                sub_0202B088(wiFiList, v1, i);

                i = -1;
                v1 = -1;
            }
        } else if (v1 == -1) {
            v1 = i;
        }
    }
}

void WiFiList_SetHostFriendCurrentDate(WiFiList *wiFiList, int hostFriendID)
{
    RTCDate date;

    GetCurrentDate(&date);

    wiFiList->unk_1C0[hostFriendID].year = date.year + 2000;
    wiFiList->unk_1C0[hostFriendID].month = date.month;
    wiFiList->unk_1C0[hostFriendID].day = date.day;
}

void sub_0202B174(WiFiList *wiFiList, int param1, int param2, int param3, int param4)
{
    wiFiList->unk_1C0[param1].unk_24 += param2;

    if (wiFiList->unk_1C0[param1].unk_24 > 9999) {
        wiFiList->unk_1C0[param1].unk_24 = 9999;
    }

    wiFiList->unk_1C0[param1].unk_26 += param3;

    if (wiFiList->unk_1C0[param1].unk_26 > 9999) {
        wiFiList->unk_1C0[param1].unk_26 = 9999;
    }

    wiFiList->unk_1C0[param1].unk_28 += param4;

    if (wiFiList->unk_1C0[param1].unk_28 > 9999) {
        wiFiList->unk_1C0[param1].unk_28 = 9999;
    }

    WiFiList_SetHostFriendCurrentDate(wiFiList, param1);
}

void sub_0202B1D0(WiFiList *wiFiList, int param1, int param2)
{
    wiFiList->unk_1C0[param1].unk_30 += param2;

    if (wiFiList->unk_1C0[param1].unk_30 > 9999) {
        wiFiList->unk_1C0[param1].unk_30 = 9999;
    }

    WiFiList_SetHostFriendCurrentDate(wiFiList, param1);
}

void sub_0202B1F8(WiFiList *wiFiList, int param1, int param2)
{
    wiFiList->unk_1C0[param1].unk_32 += param2;

    if (wiFiList->unk_1C0[param1].unk_32 > 9999) {
        wiFiList->unk_1C0[param1].unk_32 = 9999;
    }

    WiFiList_SetHostFriendCurrentDate(wiFiList, param1);
}

void sub_0202B220(WiFiList *wiFiList, int param1, int param2)
{
    wiFiList->unk_1C0[param1].unk_34 += param2;

    if (wiFiList->unk_1C0[param1].unk_34 > 9999) {
        wiFiList->unk_1C0[param1].unk_34 = 9999;
    }

    WiFiList_SetHostFriendCurrentDate(wiFiList, param1);
}

void sub_0202B248(WiFiList *wiFiList, int param1, int param2)
{
    wiFiList->unk_1C0[param1].unk_36 += param2;

    if (wiFiList->unk_1C0[param1].unk_36 > 9999) {
        wiFiList->unk_1C0[param1].unk_36 = 9999;
    }

    WiFiList_SetHostFriendCurrentDate(wiFiList, param1);
}

void sub_0202B270(WiFiList *wiFiList, int param1, int param2)
{
    wiFiList->unk_1C0[param2].unk_24 += wiFiList->unk_1C0[param1].unk_24;

    if (wiFiList->unk_1C0[param2].unk_24 > 9999) {
        wiFiList->unk_1C0[param2].unk_24 = 9999;
    }

    wiFiList->unk_1C0[param2].unk_26 += wiFiList->unk_1C0[param1].unk_26;

    if (wiFiList->unk_1C0[param2].unk_26 > 9999) {
        wiFiList->unk_1C0[param2].unk_26 = 9999;
    }

    wiFiList->unk_1C0[param2].unk_28 += wiFiList->unk_1C0[param1].unk_28;

    if (wiFiList->unk_1C0[param2].unk_28 > 9999) {
        wiFiList->unk_1C0[param2].unk_28 = 9999;
    }

    wiFiList->unk_1C0[param2].unk_30 += wiFiList->unk_1C0[param1].unk_30;

    if (wiFiList->unk_1C0[param2].unk_30 > 9999) {
        wiFiList->unk_1C0[param2].unk_30 = 9999;
    }

    wiFiList->unk_1C0[param2].unk_32 += wiFiList->unk_1C0[param1].unk_32;

    if (wiFiList->unk_1C0[param2].unk_32 > 9999) {
        wiFiList->unk_1C0[param2].unk_32 = 9999;
    }

    wiFiList->unk_1C0[param2].unk_34 += wiFiList->unk_1C0[param1].unk_34;

    if (wiFiList->unk_1C0[param2].unk_34 > 9999) {
        wiFiList->unk_1C0[param2].unk_34 = 9999;
    }

    wiFiList->unk_1C0[param2].unk_36 += wiFiList->unk_1C0[param1].unk_36;

    if (wiFiList->unk_1C0[param2].unk_36 > 9999) {
        wiFiList->unk_1C0[param2].unk_36 = 9999;
    }

    MI_CpuCopyFast(wiFiList->unk_1C0[param1].unk_00, wiFiList->unk_1C0[param2].unk_00, sizeof(u16) * (7 + 1));
    MI_CpuClearFast(&wiFiList->unk_1C0[param1], sizeof(UnkStruct_0202B370_sub1));

    wiFiList->unk_1C0[param1].unk_10[0] = 0xffff;
    wiFiList->unk_1C0[param1].unk_00[0] = 0xffff;
    wiFiList->unk_1C0[param1].unk_2E = 2;
}

WiFiList *SaveData_GetWiFiList(SaveData *saveData)
{
    return SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_WIFI_LIST);
}
