#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0202D750_decl.h"
#include "struct_defs/struct_0202D314.h"
#include "struct_defs/wi_fi_history.h"

#include "overlay096/struct_ov96_0223B450_sub1.h"

#include "appearance.h"
#include "save_player.h"
#include "savedata.h"
#include "trainer_info.h"
#include "unk_0202D05C.h"
#include "wifi_history_save_data.h"

void sub_02073700(SaveData *saveData, int param1, UnkStruct_ov96_0223B450_sub1 *param2)
{
    TrainerInfo *trainerInfo = SaveData_GetTrainerInfo(saveData);
    WiFiHistory *wiFiHistory = SaveData_WiFiHistory(saveData);
    UnkStruct_0202D750 *v3 = sub_0202D750(saveData);

    MI_CpuClear8(param2, sizeof(UnkStruct_ov96_0223B450_sub1));
    MI_CpuCopy8(TrainerInfo_Name(trainerInfo), param2->name, sizeof(param2->name));
    *(u32 *)param2->trainerInfoId = TrainerInfo_ID(trainerInfo);

    param2->version = gGameVersion;
    param2->language = gGameLanguage;
    param2->country = (u8)WiFiHistory_GetCountry(wiFiHistory);
    param2->region = (u8)WiFiHistory_GetRegion(wiFiHistory);
    param2->gender = TrainerInfo_Gender(trainerInfo);
    param2->appearance = Appearance_GetData(param2->gender, TrainerInfo_Appearance(trainerInfo), APPEARANCE_DATA_TRAINER_CLASS_2);

    for (int i = 0; i < 3; i++) {
        MI_CpuCopy8(sub_0202D498(saveData, 0 + i), &param2->unk_CA[8 * i], 8);
    }

    MI_CpuCopy8(sub_0202D498(saveData, 3), param2->unk_C0, 8);

    if (param1 == 0) {
        param2->unk_E2 = sub_0202D414(v3, 7, 0);

        if (param2->unk_E2) {
            sub_0202D314(v3, param1, (UnkStruct_0202D314 *)param2->unk_00);
        }
    } else {
        param2->unk_E2 = sub_0202D39C(v3);
        sub_0202D314(v3, param1, (UnkStruct_0202D314 *)param2->unk_00);
    }
}
