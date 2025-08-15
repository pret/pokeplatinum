#include "unk_0202C858.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/wi_fi_history.h"

#include "savedata.h"

#include "res/text/bank/country_names.h"

int WiFiHistory_SaveSize(void)
{
    return sizeof(WiFiHistory);
}

void WiFiHistory_Init(WiFiHistory *wiFiHistory)
{
    MI_CpuClear32(wiFiHistory, sizeof(WiFiHistory));
    SaveData_SetChecksum(SAVE_TABLE_ENTRY_WIFI_HISTORY);
}

WiFiHistory *SaveData_WiFiHistory(SaveData *saveData)
{
    SaveData_Checksum(SAVE_TABLE_ENTRY_WIFI_HISTORY);
    return SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_WIFI_HISTORY);
}

void WiFiHistory_SetCountryAndRegion(WiFiHistory *wiFiHistory, int country, int region)
{
    GF_ASSERT(country < 256);
    GF_ASSERT(region < 64);

    wiFiHistory->country = country;
    wiFiHistory->region = region;

    WiFiHistory_SetGeonetCommunicatedWith(wiFiHistory, country, region, 3);
    SaveData_SetChecksum(SAVE_TABLE_ENTRY_WIFI_HISTORY);
}

int WiFiHistory_GetCountry(const WiFiHistory *wiFiHistory)
{
    return wiFiHistory->country;
}

int WiFiHistory_GetRegion(const WiFiHistory *wiFiHistory)
{
    return wiFiHistory->region;
}

int WiFiHistory_GetGeonetCommunicatedWith(const WiFiHistory *wiFiHistory, int country, int region)
{
    GF_ASSERT(country < 256);
    GF_ASSERT(region < 64);

    if (country == 0) {
        return 0;
    }

    return (wiFiHistory->geonetCommunicationMap[(country - 1) * 16 + region / 4] >> ((region % 4) * 2)) & 3;
}

void WiFiHistory_SetGeonetCommunicatedWith(WiFiHistory *wiFiHistory, int country, int region, int recency)
{ // 1 = today, 2 = at some point, 3 = self
    u8 *v0;
    u8 v1 = 3;
    u8 v2;

    GF_ASSERT(recency < 4);
    GF_ASSERT(country < 256);
    GF_ASSERT(region < 64);

    if (country == Text_Country_None) {
        return;
    }

    v0 = &wiFiHistory->geonetCommunicationMap[(country - 1) * 16 + region / 4];

    *v0 &= ((v1 << ((region % 4) * 2)) ^ 0xff);
    *v0 |= recency << ((region % 4) * 2);

    if (country != Text_Country_Japan) { // japan
        WiFiHistory_SetInteractedOutsideJapan(wiFiHistory, TRUE);
    }

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_WIFI_HISTORY);
}

BOOL WiFiHistory_HasInteractedOutsideJapan(const WiFiHistory *wiFiHistory)
{
    return wiFiHistory->hasInteractedOutsideOfJapan;
}

void WiFiHistory_SetInteractedOutsideJapan(WiFiHistory *wiFiHistory, BOOL interactedOutsideJapan)
{
    wiFiHistory->hasInteractedOutsideOfJapan = interactedOutsideJapan;
    SaveData_SetChecksum(SAVE_TABLE_ENTRY_WIFI_HISTORY);
}

void WiFiHistory_UpdateGeonetCommunicationMap(WiFiHistory *wiFiHistory)
{
    int j; // has to be here for checksum

    for (int i = 0; i < (256 - 1) * 16; i++) {
        u8 bits = wiFiHistory->geonetCommunicationMap[i];

        // loop through every 2 bits to update values set to 1 (interacted today) to 2 (interacted in the past)
        for (j = 0; j < 8; j += 2) {
            if (((bits >> j) & 3) == 1) {
                bits &= ((3 << j) ^ 0xff);
                bits |= (2 << j);
            }
        }

        wiFiHistory->geonetCommunicationMap[i] = bits;
    }

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_WIFI_HISTORY);
}
