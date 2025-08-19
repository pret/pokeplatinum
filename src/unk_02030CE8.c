#include "unk_02030CE8.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_02030CEC.h"
#include "struct_defs/wi_fi_history.h"

#include "overlay096/struct_ov96_0223B574.h"

#include "charcode_util.h"
#include "math_util.h"
#include "save_player.h"
#include "savedata.h"
#include "trainer_info.h"
#include "unk_0202C858.h"

static void sub_02030DD0(SaveData *saveData, WorldExchangeTrainer *param1);

int Email_SaveSize(void)
{
    return sizeof(UnkStruct_02030CEC);
}

void Email_Init(UnkStruct_02030CEC *param0)
{
    MI_CpuClear8(param0, sizeof(UnkStruct_02030CEC));

    memset(param0->unk_00, '\0', (50 + 1));
    param0->unk_34 = 1;

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_EMAIL);
}

void sub_02030D10(SaveData *saveData)
{
    Email_Init(SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_EMAIL));
}

BOOL sub_02030D20(SaveData *saveData)
{
    UnkStruct_02030CEC *v0 = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_EMAIL);

    if (v0->unk_00[0] == '\0') {
        return 0;
    }

    return 1;
}

void sub_02030D38(SaveData *saveData, const char *param1)
{
    UnkStruct_02030CEC *v0 = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_EMAIL);

    strcpy(v0->unk_00, param1);
    SaveData_SetChecksum(SAVE_TABLE_ENTRY_EMAIL);
}

char *Email_GetEmailString(SaveData *saveData)
{
    UnkStruct_02030CEC *v0 = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_EMAIL);
    return v0->unk_00;
}

void sub_02030D5C(SaveData *saveData, int param1, u32 param2)
{
    UnkStruct_02030CEC *v0 = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_EMAIL);

    switch (param1) {
    case 0:
        v0->unk_34 = param2;
        break;
    case 1:
        v0->unk_38 = param2;
        break;
    case 2:
        v0->unk_3A = param2;
        break;
    case 3:
        v0->unk_3C = param2;
        break;
    }

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_EMAIL);
}

u32 sub_02030D98(SaveData *saveData, int param1)
{
    UnkStruct_02030CEC *v0 = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_EMAIL);

    switch (param1) {
    case 0:
        return v0->unk_34;
    case 1:
        return v0->unk_38;
    case 2:
        return v0->unk_3A;
    case 3:
        return v0->unk_3C;
    }

    return 0;
}

static void sub_02030DD0(SaveData *saveData, WorldExchangeTrainer *param1)
{
    WiFiHistory *wiFiHistory = SaveData_WiFiHistory(saveData);
    TrainerInfo *v1 = SaveData_GetTrainerInfo(saveData);
    char *v2 = Email_GetEmailString(saveData);

    MI_CpuClear8(param1, sizeof(WorldExchangeTrainer));

    param1->gameCode = GAME_VERSION;
    param1->languageCode = GAME_LANGUAGE;
    param1->country = WiFiHistory_GetCountry(wiFiHistory);
    param1->unk_03 = WiFiHistory_GetRegion(wiFiHistory);
    param1->trainerId = TrainerInfo_ID(v1);

    CharCode_Copy(param1->trainerName, TrainerInfo_Name(v1));
    param1->unk_10 = 0;

    strcpy(param1->email, v2);
    param1->emailInitialised = sub_02030D98(saveData, 0);

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_EMAIL);
}

u32 sub_02030E48(SaveData *saveData, WorldExchangeTrainer *param1)
{
    u32 v0;

    sub_02030DD0(saveData, param1);

    v0 = LCRNG_Next() % 1000;

    param1->rngValue = v0;
    param1->unk_5A = 0xffff;

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_EMAIL);

    return v0;
}

void WorldExchange_GetTrainerObject(SaveData *saveData, WorldExchangeTrainer *param1)
{
    UnkStruct_02030CEC *v0 = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_EMAIL);

    sub_02030DD0(saveData, param1);

    param1->rngValue = v0->unk_38;
    param1->unk_5A = v0->unk_3A;

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_EMAIL);
}
