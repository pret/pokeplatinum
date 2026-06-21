#include <nitro.h>
#include <string.h>

#include "struct_defs/wi_fi_history.h"
#include "struct_defs/wifi_battle_tower_data.h"

#include "overlay096/struct_wifi_player_profile.h"
#include "overlay104/frontier_data_transfer.h"

#include "appearance.h"
#include "save_player.h"
#include "savedata.h"
#include "trainer_info.h"
#include "wifi_battle_tower_save.h"
#include "wifi_history_save_data.h"

void sub_02073700(SaveData *saveData, int param1, WifiPlayerProfile *profile)
{
    TrainerInfo *trainerInfo = SaveData_GetTrainerInfo(saveData);
    WiFiHistory *wiFiHistory = SaveData_WiFiHistory(saveData);
    WifiBattleTowerRecord *record = SaveData_GetWifiBattleTowerRecord(saveData);

    MI_CpuClear8(profile, sizeof(WifiPlayerProfile));
    MI_CpuCopy8(TrainerInfo_Name(trainerInfo), profile->name, sizeof(profile->name));
    *(u32 *)profile->trainerInfoId = TrainerInfo_ID(trainerInfo);

    profile->version = gGameVersion;
    profile->language = gGameLanguage;
    profile->country = (u8)WiFiHistory_GetCountry(wiFiHistory);
    profile->region = (u8)WiFiHistory_GetRegion(wiFiHistory);
    profile->gender = TrainerInfo_Gender(trainerInfo);
    profile->appearance = Appearance_GetData(profile->gender, TrainerInfo_Appearance(trainerInfo), APPEARANCE_DATA_TRAINER_CLASS_2);

    for (int i = 0; i < 3; i++) {
        MI_CpuCopy8(FrontierEasyChatMessages_GetSentence(saveData, 0 + i), &profile->battleSentences[8 * i], 8);
    }

    MI_CpuCopy8(FrontierEasyChatMessages_GetSentence(saveData, 3), profile->no1Sentence, 8);

    if (param1 == 0) {
        profile->ratingScore = WifiBattleTowerRecord_UpdateBitFlag(record, 7, 0);

        if (profile->ratingScore) {
            WifiBattleTowerRecord_GetTeam(record, param1, profile->dto);
        }
    } else {
        profile->ratingScore = WifiBattleTowerRecord_GetRatingScore(record);
        WifiBattleTowerRecord_GetTeam(record, param1, profile->dto);
    }
}
