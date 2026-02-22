#include "unk_0204FA34.h"

#include <nitro.h>

#include "constants/battle_frontier.h"

#include "struct_decls/struct_0203026C_decl.h"

#include "communication_system.h"
#include "savedata.h"
#include "unk_02030108.h"
#include "unk_0203061C.h"
#include "unk_0205DFC4.h"

void BattleHall_ProcessSelectedSpeciesMsg(int netID, int unused, void *data, void *context)
{
    BattleHallSameSpeciesCheck *myData = context;
    const BattleHallSameSpeciesCheck *partnersData = data;

    myData->receivedMessages++;

    if (CommSys_CurNetId() == netID) {
        return;
    }

    myData->partnersSpecies = partnersData->species;
    return;
}

void sub_0204FA50(SaveData *saveData, UnkStruct_0203026C *param1, u8 challengeType)
{
    u8 v1[4];

    v1[0] = 0;
    sub_02030280(param1, 5, challengeType, 0, v1);

    if (challengeType == FRONTIER_CHALLENGE_MULTI_WFC) {
        sub_020306E4(SaveData_GetBattleFrontier(saveData), 106, sub_0205E6A8(106), 0);
    }

    sub_020306E4(SaveData_GetBattleFrontier(saveData), sub_0205E50C(challengeType), sub_0205E6A8(sub_0205E50C(challengeType)), 0);

    return;
}
