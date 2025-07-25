#include "trainer_card_badge_dirt.h"

#include <nitro.h>
#include <string.h>

#include "badges.h"
#include "save_player.h"
#include "savedata.h"
#include "trainer_card.h"
#include "trainer_card_save_data.h"
#include "trainer_info.h"

void TrainerCard_AccumulateBadgeDirt(SaveData *saveData, s32 daysPassed)
{
    if (daysPassed <= 0) {
        return;
    }

    TrainerCardSaveData *tcSaveData = SaveData_GetTrainerCardSaveData(saveData);
    TrainerCardSaveDataBadge *badges = TrainerCardSaveData_GetTrainerCardSaveDataBadges(tcSaveData);
    TrainerInfo *trainerInfo = SaveData_GetTrainerInfo(saveData);

    for (u8 badgeID = 0; badgeID < MAX_BADGES; badgeID++) {
        if (TrainerInfo_HasBadge(trainerInfo, badgeID) == 0) {
            continue;
        }

        int polish = TrainerCardSaveDataBadge_GetPolish(badgeID, badges);

        if (0 < polish && polish < MAX_BADGE_POLISH + 1) {
            polish -= (10 * daysPassed);
        } else {
            GF_ASSERT(polish < MAX_BADGE_POLISH + 1);
            polish = 0;
        }

        if (polish < 0) {
            polish = 0;
        }

        TrainerCardSaveDataBadge_SetPolish(badgeID, polish, badges);
    }
}
