#include "trainer_case_badge_dirt.h"

#include <nitro.h>
#include <string.h>

#include "badges.h"
#include "save_player.h"
#include "savedata.h"
#include "trainer_case.h"
#include "trainer_case_save_data.h"
#include "trainer_info.h"

void TrainerCase_AccumulateBadgeDirt(SaveData *saveData, s32 daysPassed)
{
    if (daysPassed <= 0) {
        return;
    }

    TrainerCaseSaveData *tcSaveData = SaveData_GetTrainerCaseSaveData(saveData);
    TrainerCaseSaveDataBadge *badges = TrainerCaseSaveData_GetTrainerCaseSaveDataBadges(tcSaveData);
    TrainerInfo *trainerInfo = SaveData_GetTrainerInfo(saveData);

    for (u8 badgeID = 0; badgeID < MAX_BADGES; badgeID++) {
        if (!TrainerInfo_HasBadge(trainerInfo, badgeID)) {
            continue;
        }

        int polish = TrainerCaseSaveDataBadge_GetPolish(badgeID, badges);

        if (0 < polish && polish < MAX_BADGE_POLISH + 1) {
            polish -= 10 * daysPassed;
        } else {
            GF_ASSERT(polish < MAX_BADGE_POLISH + 1);
            polish = 0;
        }

        if (polish < 0) {
            polish = 0;
        }

        TrainerCaseSaveDataBadge_SetPolish(badgeID, polish, badges);
    }
}
