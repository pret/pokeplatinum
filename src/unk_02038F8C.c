#include "unk_02038F8C.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/wi_fi_history.h"

#include "communication_information.h"
#include "communication_system.h"
#include "trainer_info.h"
#include "unk_0202C858.h"

void sub_02038F8C(WiFiHistory *wiFiHistory) {
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

            sub_02038FDC(wiFiHistory, v1, v2, v3);
        }
    }
}

void sub_02038FDC(WiFiHistory *wiFiHistory, int param1, int param2, int param3) {
    if (sub_0202C8C8(wiFiHistory, param1, param2) == 0) {
        sub_0202C918(wiFiHistory, param1, param2, 1);
    }
}
