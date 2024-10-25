#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0202C878_decl.h"
#include "struct_decls/struct_0202D750_decl.h"
#include "struct_defs/struct_0202D314.h"

#include "overlay096/struct_ov96_0223B450_sub1.h"

#include "save_player.h"
#include "savedata.h"
#include "trainer_info.h"
#include "unk_0202C858.h"
#include "unk_0202D05C.h"
#include "unk_0205C980.h"

void sub_02073700(SaveData *param0, int param1, UnkStruct_ov96_0223B450_sub1 *param2);

void sub_02073700(SaveData *param0, int param1, UnkStruct_ov96_0223B450_sub1 *param2)
{
    int v0;
    TrainerInfo *v1 = SaveData_GetTrainerInfo(param0);
    UnkStruct_0202C878 *v2 = sub_0202C878(param0);
    UnkStruct_0202D750 *v3 = sub_0202D750(param0);

    MI_CpuClear8(param2, sizeof(UnkStruct_ov96_0223B450_sub1));
    MI_CpuCopy8(TrainerInfo_Name(v1), param2->unk_A8, 8 * 2);
    *((u32 *)param2->unk_BC) = TrainerInfo_ID(v1);

    param2->unk_B8 = gGameVersion;
    param2->unk_B9 = gGameLanguage;
    param2->unk_BA = (u8)sub_0202C8C0(v2);
    param2->unk_BB = (u8)sub_0202C8C4(v2);
    param2->unk_C8_val1_1 = TrainerInfo_Gender(v1);
    param2->unk_C9 = sub_0205CA14(param2->unk_C8_val1_1, TrainerInfo_Appearance(v1), 1);

    for (v0 = 0; v0 < 3; v0++) {
        MI_CpuCopy8(sub_0202D498(param0, 0 + v0), &(param2->unk_CA[8 * v0]), 8);
    }

    MI_CpuCopy8(sub_0202D498(param0, 3), param2->unk_C0, 8);

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
