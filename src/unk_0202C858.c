#include "unk_0202C858.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/wi_fi_history.h"

#include "savedata.h"

int WiFiHistory_SaveSize(void) {
    return sizeof(WiFiHistory);
}

void WiFiHistory_Init(WiFiHistory *wiFiHistory) {
    MI_CpuClear32(wiFiHistory, sizeof(WiFiHistory));
    SaveData_SetChecksum(SAVE_TABLE_ENTRY_WIFI_HISTORY);
}

WiFiHistory *SaveData_WiFiHistory(SaveData *saveData) {
    SaveData_Checksum(SAVE_TABLE_ENTRY_WIFI_HISTORY);
    return SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_WIFI_HISTORY);
}

void sub_0202C88C(WiFiHistory *wiFiHistory, int param1, int param2) {
    GF_ASSERT(param1 < 256);
    GF_ASSERT(param2 < 64);

    wiFiHistory->country = param1;
    wiFiHistory->unk_06 = param2;

    sub_0202C918(wiFiHistory, param1, param2, 3);
    SaveData_SetChecksum(SAVE_TABLE_ENTRY_WIFI_HISTORY);
}

int WiFiHistory_GetCountry(const WiFiHistory *wiFiHistory) {
    return wiFiHistory->country;
}

int sub_0202C8C4(const WiFiHistory *wiFiHistory) {
    return wiFiHistory->unk_06;
}

int sub_0202C8C8(const WiFiHistory *wiFiHistory, int param1, int param2) {
    int v0;

    GF_ASSERT(param1 < 256);
    GF_ASSERT(param2 < 64);

    if (param1 == 0) {
        return 0;
    }

    v0 = (wiFiHistory->unk_07[(param1 - 1) * 16 + param2 / 4] >> ((param2 % 4) * 2)) & 3;

    return v0;
}

void sub_0202C918(WiFiHistory *wiFiHistory, int param1, int param2, int param3) {
    u8 *v0;
    u8 v1 = 3;
    u8 v2;

    GF_ASSERT(param3 < 4);
    GF_ASSERT(param1 < 256);
    GF_ASSERT(param2 < 64);

    if (param1 == 0) {
        return;
    }

    v0 = &wiFiHistory->unk_07[(param1 - 1) * 16 + param2 / 4];

    *v0 &= ((v1 << ((param2 % 4) * 2)) ^ 0xff);
    *v0 |= param3 << ((param2 % 4) * 2);

    if (param1 != 103) {
        sub_0202C994(wiFiHistory, 1);
    }

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_WIFI_HISTORY);
}

BOOL sub_0202C990(const WiFiHistory *wiFiHistory) {
    return wiFiHistory->unk_04;
}

void sub_0202C994(WiFiHistory *wiFiHistory, BOOL param1) {
    wiFiHistory->unk_04 = param1;
    SaveData_SetChecksum(SAVE_TABLE_ENTRY_WIFI_HISTORY);
}

void sub_0202C9A0(WiFiHistory *wiFiHistory) {
    int v0, v1;
    u8 v2;

    for (v0 = 0; v0 < (256 - 1) * 16; v0++) {
        v2 = wiFiHistory->unk_07[v0];

        for (v1 = 0; v1 < 8; v1 += 2) {
            if (((v2 >> v1) & 3) == 1) {
                v2 &= ((3 << v1) ^ 0xff);
                v2 |= (2 << v1);
            }
        }

        wiFiHistory->unk_07[v0] = v2;
    }

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_WIFI_HISTORY);
}
