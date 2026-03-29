#include "applications/frontier/battle_castle/helpers.h"

#include <nitro.h>

#include "battle_frontier_stats.h"
#include "communication_information.h"
#include "communication_system.h"
#include "list_menu.h"
#include "savedata.h"
#include "sound_playback.h"
#include "string_template.h"
#include "trainer_info.h"
#include "unk_0205DFC4.h"

u8 BattleCastleApp_GetSelectedSlot(u8 numSlots, u8 slot)
{
    return slot;
}

u8 BattleCastleApp_GetSlotFromSlotID(u8 exitSlot, u8 slotID)
{
    if (slotID < exitSlot) {
        return slotID;
    }

    return slotID - exitSlot;
}

u8 BattleCastleApp_GetRank(SaveData *saveData, u8 challengeType, u8 rankType)
{
    return BattleFrontierStats_GetStat(SaveData_GetBattleFrontier(saveData), BattleFrontierStats_GetCastleRankIndex(challengeType, rankType), BattleFrontierStats_GetHostFriendIdx(BattleFrontierStats_GetCastleRankIndex(challengeType, rankType)));
}

void BattleCastleApp_PlaySound(u32 input, u16 seqID)
{
    if (input != MENU_NOTHING_CHOSEN) {
        Sound_PlayEffect(seqID);
    }
}

void BattleCastleApp_SetPartnerName(StringTemplate *template, u32 idx)
{
    TrainerInfo *partner = CommInfo_TrainerInfo(CommSys_CurNetId() ^ 1);
    StringTemplate_SetPlayerName(template, idx, partner);
}
