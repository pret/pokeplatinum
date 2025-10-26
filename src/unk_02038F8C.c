#include "unk_02038F8C.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/wi_fi_history.h"

#include "communication_information.h"
#include "communication_system.h"
#include "trainer_info.h"
#include "unk_0202C858.h"

void WiFiHistory_FlagGeonetLinkInfo(WiFiHistory *wiFiHistory)
{
    int connectedCnt = CommSys_ConnectedCount();

    if (CommInfo_TrainerInfo(0) == NULL) {
        return;
    }

    for (int i = 0; i < connectedCnt; i++) {
        if (CommSys_CurNetId() != i) {
            int country = CommInfo_PlayerCountry(i);
            int region = CommInfo_PlayerRegion(i);
            TrainerInfo *trainerInfo = CommInfo_TrainerInfo(i);
            int regionCode = TrainerInfo_RegionCode(trainerInfo);

            WiFiHistory_FlagGeonetCommunicatedWith(wiFiHistory, country, region, regionCode);
        }
    }
}

void WiFiHistory_FlagGeonetCommunicatedWith(WiFiHistory *wiFiHistory, int country, int region, int language)
{
    if (WiFiHistory_GetGeonetCommunicatedWith(wiFiHistory, country, region) == 0) {
        WiFiHistory_SetGeonetCommunicatedWith(wiFiHistory, country, region, 1);
    }
}
