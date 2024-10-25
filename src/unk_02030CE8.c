#include "unk_02030CE8.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0202C878_decl.h"
#include "struct_defs/struct_02030CEC.h"

#include "overlay096/struct_ov96_0223B574.h"

#include "charcode_util.h"
#include "save_player.h"
#include "savedata.h"
#include "trainer_info.h"
#include "unk_0201D15C.h"
#include "unk_0202C858.h"

static void sub_02030DD0(SaveData *param0, UnkStruct_ov96_0223B574 *param1);

int Email_SaveSize(void)
{
    return sizeof(UnkStruct_02030CEC);
}

void Email_Init(UnkStruct_02030CEC *param0)
{
    MI_CpuClear8(param0, sizeof(UnkStruct_02030CEC));

    memset(param0->unk_00, '\0', (50 + 1));
    param0->unk_34 = 1;

    SaveData_SetChecksum(35);
}

void sub_02030D10(SaveData *param0)
{
    Email_Init(SaveData_SaveTable(param0, 35));
}

BOOL sub_02030D20(SaveData *param0)
{
    UnkStruct_02030CEC *v0;

    v0 = SaveData_SaveTable(param0, 35);

    if (v0->unk_00[0] == '\0') {
        return 0;
    }

    return 1;
}

void sub_02030D38(SaveData *param0, const char *param1)
{
    UnkStruct_02030CEC *v0;

    v0 = SaveData_SaveTable(param0, 35);

    strcpy(v0->unk_00, param1);
    SaveData_SetChecksum(35);
}

char *sub_02030D50(SaveData *param0)
{
    UnkStruct_02030CEC *v0;

    v0 = SaveData_SaveTable(param0, 35);
    return v0->unk_00;
}

void sub_02030D5C(SaveData *param0, int param1, u32 param2)
{
    UnkStruct_02030CEC *v0 = SaveData_SaveTable(param0, 35);

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

    SaveData_SetChecksum(35);
}

u32 sub_02030D98(SaveData *param0, int param1)
{
    UnkStruct_02030CEC *v0 = SaveData_SaveTable(param0, 35);

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

static void sub_02030DD0(SaveData *param0, UnkStruct_ov96_0223B574 *param1)
{
    UnkStruct_0202C878 *v0 = sub_0202C878(param0);
    TrainerInfo *v1 = SaveData_GetTrainerInfo(param0);
    char *v2 = sub_02030D50(param0);

    MI_CpuClear8(param1, sizeof(UnkStruct_ov96_0223B574));

    param1->unk_00 = GAME_VERSION;
    param1->unk_01 = GAME_LANGUAGE;
    param1->unk_02 = sub_0202C8C0(v0);
    param1->unk_03 = sub_0202C8C4(v0);
    param1->unk_04 = TrainerInfo_ID(v1);

    GF_strcpy(param1->unk_08, TrainerInfo_Name(v1));
    param1->unk_10 = 0;

    strcpy(param1->unk_1C, v2);
    param1->unk_54 = sub_02030D98(param0, 0);

    SaveData_SetChecksum(35);
}

u32 sub_02030E48(SaveData *param0, UnkStruct_ov96_0223B574 *param1)
{
    u32 v0;

    sub_02030DD0(param0, param1);

    v0 = LCRNG_Next() % 1000;

    param1->unk_58 = v0;
    param1->unk_5A = 0xffff;

    SaveData_SetChecksum(35);

    return v0;
}

void sub_02030E78(SaveData *param0, UnkStruct_ov96_0223B574 *param1)
{
    UnkStruct_02030CEC *v0 = SaveData_SaveTable(param0, 35);

    sub_02030DD0(param0, param1);

    param1->unk_58 = v0->unk_38;
    param1->unk_5A = v0->unk_3A;

    SaveData_SetChecksum(35);
}
