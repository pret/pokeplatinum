#include "unk_02038F8C.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/wi_fi_history.h"

#include "communication_information.h"
#include "communication_system.h"
#include "trainer_info.h"
#include "unk_0202C858.h"

void WiFiHistory_FlagConnectedPlayersInfo(WiFiHistory *wiFiHistory)
{
    int i;
    int country, region, regionCode;
    TrainerInfo *trainerInfo;
    int connectedCnt = CommSys_ConnectedCount();

    if (CommInfo_TrainerInfo(0) == NULL) {
        return;
    }

    for (i = 0; i < connectedCnt; i++) {
        if (CommSys_CurNetId() != i) {
            country = CommInfo_PlayerCountry(i);
            region = CommInfo_PlayerRegion(i);
            trainerInfo = CommInfo_TrainerInfo(i);
            regionCode = TrainerInfo_RegionCode(trainerInfo);

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
