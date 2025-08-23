#include "unk_02038F8C.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/wi_fi_history.h"

#include "communication_information.h"
#include "communication_system.h"
#include "trainer_info.h"
#include "unk_0202C858.h"

void sub_02038F8C(WiFiHistory *wiFiHistory)
{
    int v0;
    int v1, v2, v3;
    TrainerInfo *v4;
    int v5 = CommSys_ConnectedCount();

    if (CommInfo_TrainerInfo(0) == NULL) {
        return;
    }

    for (v0 = 0; v0 < v5; v0++) {
        if (CommSys_CurNetId() != v0) {
            v1 = CommInfo_PlayerCountry(v0);
            v2 = CommInfo_PlayerRegion(v0);
            v4 = CommInfo_TrainerInfo(v0);
            v3 = TrainerInfo_RegionCode(v4);

            WiFiHistory_FlagGeonetCommunicatedWith(wiFiHistory, v1, v2, v3);
        }
    }
}

void WiFiHistory_FlagGeonetCommunicatedWith(WiFiHistory *wiFiHistory, int country, int region, int language)
{
    if (WiFiHistory_GetGeonetCommunicatedWith(wiFiHistory, country, region) == 0) {
        WiFiHistory_SetGeonetCommunicatedWith(wiFiHistory, country, region, 1);
    }
}
