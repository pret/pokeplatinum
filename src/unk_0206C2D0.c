#include "unk_0206C2D0.h"

#include <nitro.h>
#include <string.h>

#include "save_player.h"
#include "savedata.h"
#include "trainer_card_save_data.h"
#include "trainer_info.h"

void sub_0206C2D0(SaveData *saveData, const s32 param1)
{
    u8 v0;
    int v1;
    TrainerCardSaveData *v2;
    TrainerCardBadge *v3;
    TrainerInfo *v4;

    if (param1 <= 0) {
        return;
    }

    v2 = SaveData_GetTrainerCardSaveData(saveData);
    v3 = TrainerCardSaveData_GetTrainerCardBadges(v2);
    v4 = SaveData_GetTrainerInfo(saveData);

    for (v0 = 0; v0 < 8; v0++) {
        if (TrainerInfo_HasBadge(v4, v0) == 0) {
            continue;
        }

        v1 = TrainerCardBadge_GetCleanliness(v0, v3);

        if ((0 < v1) && (v1 < 200)) {
            v1 -= (10 * param1);
        } else {
            GF_ASSERT(v1 < 200);
            v1 = 0;
        }

        if (v1 < 0) {
            v1 = 0;
        }

        TrainerCardBadge_SetCleanliness(v0, v1, v3);
    }
}
