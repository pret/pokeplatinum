#include "unk_02030A80.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02025CCC_decl.h"
#include "struct_decls/struct_0202C878_decl.h"
#include "struct_defs/sentence.h"
#include "struct_defs/struct_0202F298_sub1.h"
#include "struct_defs/struct_02030A80.h"

#include "charcode_util.h"
#include "heap.h"
#include "pokemon.h"
#include "save_player.h"
#include "savedata.h"
#include "savedata_misc.h"
#include "strbuf.h"
#include "trainer_info.h"
#include "unk_02014A84.h"
#include "unk_02014D38.h"
#include "unk_02025CB0.h"
#include "unk_0202C858.h"
#include "unk_0205C980.h"
#include "unk_020996D0.h"

UnkStruct_02030A80 *sub_02030A80(int param0)
{
    UnkStruct_02030A80 *v0;

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_02030A80));
    MI_CpuClear8(v0, sizeof(UnkStruct_02030A80));

    return v0;
}

void sub_02030A98(UnkStruct_02030A80 *param0)
{
    Heap_FreeToHeap(param0);
}

void sub_02030AA0(UnkStruct_02030A80 *param0, SaveData *param1)
{
    TrainerInfo *v0 = SaveData_GetTrainerInfo(param1);
    UnkStruct_0202C878 *v1 = sub_0202C878(param1);
    UnkStruct_02025CCC *v2 = sub_02025CCC(param1);
    const MiscSaveBlock *v3 = SaveData_MiscSaveBlockConst(param1);
    int v4, v5, v6;
    int v7;
    OSOwnerInfo v8;

    OS_GetOwnerInfo(&v8);

    MiscSaveBlock_FavoriteMon(v3, &v4, &v5, &v6);
    MI_CpuClear8(param0, sizeof(UnkStruct_02030A80));
    CharCode_Copy(param0->unk_00, TrainerInfo_Name(v0));

    param0->unk_10 = TrainerInfo_ID(v0);
    param0->unk_14 = TrainerInfo_Gender(v0);
    param0->unk_1C = v4;
    param0->unk_1B_1 = v5;
    param0->unk_1B_0 = v6;
    param0->unk_17 = sub_0202C8C0(v1);
    param0->unk_18 = sub_0202C8C4(v1);

    for (v7 = 0; v7 < 40; v7++) {
        param0->unk_20_val2[v7] = 0xffff;
    }

    MiscSaveBlock_IntroMsg(v3, &param0->unk_20_val1);

    param0->unk_15 = v8.birthday.month;
    param0->unk_16 = sub_0205CA14(TrainerInfo_Gender(v0), TrainerInfo_Appearance(v0), 0);
    param0->unk_19 = GAME_VERSION;
    param0->unk_1A = GAME_LANGUAGE;
    param0->unk_7C.unk_00 = SaveData_CalculateChecksum(param1, param0, sizeof(UnkStruct_02030A80) - (sizeof(UnkStruct_0202F298_sub1)));
}

Strbuf *sub_02030B94(const UnkStruct_02030A80 *param0, int param1)
{
    Strbuf *v0 = Strbuf_Init((7 * 2) + 1, param1);

    Strbuf_CopyNumChars(v0, param0->unk_00, (7 * 2) + 1);
    return v0;
}

u32 sub_02030BAC(const UnkStruct_02030A80 *param0)
{
    if ((param0->unk_14 != 0) && (param0->unk_14 != 1)) {
        return 0;
    }

    return param0->unk_14;
}

int sub_02030BBC(const UnkStruct_02030A80 *param0)
{
    if (param0->unk_1C >= 495) {
        return 0;
    }

    return param0->unk_1C;
}

int sub_02030BCC(const UnkStruct_02030A80 *param0)
{
    if (param0->unk_1C >= 495) {
        return 0;
    }

    return Pokemon_SanitizeFormId(param0->unk_1C, param0->unk_1B_1);
}

int sub_02030BEC(const UnkStruct_02030A80 *param0)
{
    if (param0->unk_1B_0 > 1) {
        return 1;
    }

    return param0->unk_1B_0;
}

int sub_02030BFC(const UnkStruct_02030A80 *param0)
{
    if (param0->unk_17 >= 234) {
        return 0;
    }

    return param0->unk_17;
}

int sub_02030C08(const UnkStruct_02030A80 *param0)
{
    if (param0->unk_17 >= 234) {
        return 0;
    }

    if (sub_020996F4(param0->unk_17) < param0->unk_18) {
        return 0;
    }

    return param0->unk_18;
}

Strbuf *sub_02030C28(const UnkStruct_02030A80 *param0, Sentence *param1, int param2)
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
        Strbuf *v3 = Strbuf_Init(40, param2);

        Strbuf_CopyNumChars(v3, param0->unk_20_val2, 40);
        return v3;
    }
}

int sub_02030CCC(const UnkStruct_02030A80 *param0)
{
    if ((param0->unk_15 >= 1) && (param0->unk_15 <= 12)) {
        return param0->unk_15;
    }

    return 1;
}

int sub_02030CDC(const UnkStruct_02030A80 *param0)
{
    if (param0->unk_16 > 15) {
        return 0;
    }

    return param0->unk_16;
}
