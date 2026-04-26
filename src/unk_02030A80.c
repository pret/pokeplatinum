#include "unk_02030A80.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/sentence.h"
#include "struct_defs/struct_0202F298_sub1.h"
#include "struct_defs/struct_02030A80.h"
#include "struct_defs/wi_fi_history.h"

#include "appearance.h"
#include "charcode_util.h"
#include "heap.h"
#include "pokemon.h"
#include "save_player.h"
#include "savedata.h"
#include "savedata_misc.h"
#include "species.h"
#include "string_gf.h"
#include "system_data.h"
#include "trainer_info.h"
#include "unk_02014A84.h"
#include "unk_02014D38.h"
#include "unk_020996D0.h"
#include "wifi_history_save_data.h"

#include "res/text/bank/country_names.h"

UnkStruct_02030A80 *sub_02030A80(enum HeapID heapID)
{
    UnkStruct_02030A80 *v0 = Heap_Alloc(heapID, sizeof(UnkStruct_02030A80));
    MI_CpuClear8(v0, sizeof(UnkStruct_02030A80));

    return v0;
}

void sub_02030A98(UnkStruct_02030A80 *param0)
{
    Heap_Free(param0);
}

void sub_02030AA0(UnkStruct_02030A80 *param0, SaveData *saveData)
{
    TrainerInfo *v0 = SaveData_GetTrainerInfo(saveData);
    WiFiHistory *wiFiHistory = SaveData_WiFiHistory(saveData);
    SystemData *systemData = SaveData_GetSystemData(saveData);
    const MiscSaveBlock *miscSaveBlock = SaveData_MiscSaveBlockConst(saveData);
    int species, form, isEgg;
    int v7;
    OSOwnerInfo ownerInfo;

    OS_GetOwnerInfo(&ownerInfo);

    MiscSaveBlock_FavoriteMon(miscSaveBlock, &species, &form, &isEgg);
    MI_CpuClear8(param0, sizeof(UnkStruct_02030A80));
    CharCode_Copy(param0->unk_00, TrainerInfo_Name(v0));

    param0->id = TrainerInfo_ID(v0);
    param0->gender = TrainerInfo_Gender(v0);
    param0->species = species;
    param0->form = form;
    param0->isEgg = isEgg;
    param0->country = WiFiHistory_GetCountry(wiFiHistory);
    param0->region = WiFiHistory_GetRegion(wiFiHistory);

    for (v7 = 0; v7 < 40; v7++) {
        param0->unk_20_val2[v7] = 0xffff;
    }

    MiscSaveBlock_IntroMsg(miscSaveBlock, &param0->unk_20_val1);

    param0->month = ownerInfo.birthday.month;
    param0->appearance = Appearance_GetData(TrainerInfo_Gender(v0), TrainerInfo_Appearance(v0), APPEARANCE_DATA_INDEX);
    param0->version = GAME_VERSION;
    param0->language = GAME_LANGUAGE;
    param0->unk_7C.unk_00 = SaveData_CalculateChecksum(saveData, param0, sizeof(UnkStruct_02030A80) - (sizeof(UnkStruct_0202F298_sub1)));
}

String *sub_02030B94(const UnkStruct_02030A80 *param0, enum HeapID heapID)
{
    String *v0 = String_Init((7 * 2) + 1, heapID);

    String_CopyNumChars(v0, param0->unk_00, (7 * 2) + 1);
    return v0;
}

u32 sub_02030BAC(const UnkStruct_02030A80 *param0)
{
    if ((param0->gender != GENDER_MALE) && (param0->gender != GENDER_FEMALE)) {
        return GENDER_MALE;
    }

    return param0->gender;
}

int sub_02030BBC(const UnkStruct_02030A80 *param0)
{
    if (param0->species >= MAX_SPECIES) {
        return SPECIES_NONE;
    }

    return param0->species;
}

int sub_02030BCC(const UnkStruct_02030A80 *param0)
{
    if (param0->species >= MAX_SPECIES) {
        return SPECIES_NONE;
    }

    return Pokemon_SanitizeFormId(param0->species, param0->form);
}

int sub_02030BEC(const UnkStruct_02030A80 *param0)
{
    if (param0->isEgg > 1) {
        return 1;
    }

    return param0->isEgg;
}

int sub_02030BFC(const UnkStruct_02030A80 *param0)
{
    // Note: 234 is the count of entries in the `country_names` text bank.
    if (param0->country >= 234) {
        return Country_Text_None;
    }

    return param0->country;
}

int sub_02030C08(const UnkStruct_02030A80 *param0)
{
    if (param0->country >= 234) {
        return 0;
    }

    if (sub_020996F4(param0->country) < param0->region) {
        return 0;
    }

    return param0->region;
}

String *sub_02030C28(const UnkStruct_02030A80 *param0, Sentence *param1, enum HeapID heapID)
{
    int v0 = 0;

    if (param0->unk_1E == 0) {
        *param1 = param0->unk_20_val1;

        if (param1->type >= 5) {
            v0++;
        } else if (param1->id > 19) {
            v0++;
        } else {
            u32 v1, v2;

            if (((param1->words[0] != 0xffff) && (sub_02014E4C(param1->words[0], &v1, &v2) == 0)) || ((param1->words[1] != 0xffff) && (sub_02014E4C(param1->words[1], &v1, &v2) == 0))) {
                v0++;
            }
        }

        if (v0 > 0) {
            sub_02014A9C(param1, 4);
            param1->id = 0;
            param1->words[0] = sub_02014DFC(441, 99);
            param1->words[1] = 0xffff;
        }

        return NULL;
    } else {
        String *v3 = String_Init(40, heapID);

        String_CopyNumChars(v3, param0->unk_20_val2, 40);
        return v3;
    }
}

int sub_02030CCC(const UnkStruct_02030A80 *param0)
{
    if ((param0->month >= 1) && (param0->month <= 12)) {
        return param0->month;
    }

    return 1;
}

int sub_02030CDC(const UnkStruct_02030A80 *param0)
{
    if (param0->appearance > TRAINER_APPEARANCE_LADY) {
        return TRAINER_APPEARANCE_SCHOOL_KID_M;
    }

    return param0->appearance;
}
