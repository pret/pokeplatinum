#include <nitro.h>
#include <nitro/code16.h>
#include <string.h>

#include "consts/game_records.h"

#include "struct_decls/struct_0202440C_decl.h"
#include "struct_defs/struct_0204AFC4.h"

#include "overlay104/ov104_0222E930.h"
#include "overlay104/ov104_0222FBE4.h"
#include "overlay104/ov104_02231F74.h"
#include "overlay104/ov104_022394A4.h"
#include "overlay104/ov104_0223A0C4.h"
#include "overlay104/struct_ov104_0222E930_decl.h"
#include "overlay104/struct_ov104_0222E930_t.h"
#include "overlay104/struct_ov104_02230BE4.h"
#include "overlay104/struct_ov104_022320B4_t.h"
#include "savedata/save_table.h"

#include "field_battle_data_transfer.h"
#include "communication_system.h"
#include "game_records.h"
#include "pokemon.h"
#include "savedata.h"
#include "unk_020041CC.h"
#include "unk_020363E8.h"
#include "unk_02049D08.h"
#include "unk_0206CCB0.h"
#include "unk_0209B6F8.h"

#include "constdata/const_020EA358.h"

BOOL ov104_02239130(UnkStruct_ov104_0222E930 *param0);
BOOL ov104_022392C0(UnkStruct_ov104_0222E930 *param0);
BOOL ov104_02239300(UnkStruct_ov104_0222E930 *param0);
BOOL ov104_02239314(UnkStruct_ov104_0222E930 *param0);
BOOL ov104_02239364(UnkStruct_ov104_0222E930 *param0);
BOOL ov104_0223939C(UnkStruct_ov104_0222E930 *param0);
BOOL ov104_02239400(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_0223942C(UnkStruct_ov104_0222E930 *param0);
static u16 ov104_0223927C(UnkStruct_0204AFC4 *param0, u8 param1);
static BOOL ov104_02239464(UnkStruct_ov104_0222E930 *param0, UnkStruct_0204AFC4 *param1, SaveData *param2, u16 param3, u16 param4);

BOOL ov104_02239130(UnkStruct_ov104_0222E930 *param0)
{
    TVBroadcast *v0;
    Pokemon *v1;
    UnkStruct_0204AFC4 *v2;
    int v3, v4;
    u16 v5, v6;
    u16 *v7;
    UnkStruct_ov104_02230BE4 *v8 = sub_0209B970(param0->unk_00->unk_00);

    v5 = ov104_0222EA48(param0);
    v6 = ov104_0222FC00(param0);
    v7 = ov104_0222FBE4(param0);
    v2 = sub_0209B978(param0->unk_00->unk_00);

    switch (v5) {
    case 2:
        sub_02049F8C();
        break;
    case (30 + 16):
        *v7 = sub_0204AA04(v2);
        v0 = SaveData_TVBroadcast(v8->unk_08);
        sub_0206D0C8(v0, *v7);
        GameRecords_AddToRecordValue(SaveData_GetGameRecordsPtr(v8->unk_08), RECORD_UNK_068, *v7);
        break;
    case (30 + 25):
        *v7 = ov104_0223927C(v2, v6);
        break;
    case (30 + 3):
        *v7 = sub_0204A578(v2);
        break;
    case (30 + 4):
        *v7 = ov104_022395B4(v2);
        break;
    case (30 + 5):
        *v7 = sub_0204A57C(v2);
        break;
    case (30 + 6):
        *v7 = ov104_022395D8(v2);
        break;
    case (30 + 13):
        *v7 = (u16)sub_0204A9F8(v2);
        break;
    case (30 + 10):
        ov104_022394A4(v2, v8->unk_08);
        break;
    case (30 + 11):
        *v7 = ov104_02239588(v2, v6);
        break;
    case (30 + 14):
        ov104_022395A0(v2, v6);
        break;
    case (30 + 7):
        sub_0204A660(v2, v8->unk_08);
        break;
    case (30 + 8):
        sub_0204A7A4(v2, v8->unk_08, v8->unk_0C);
        break;
    case (30 + 9):
        sub_0204A8C8(v2);
        break;
    case (30 + 28):
        MI_CpuClear8(v2->unk_884, 70);
        break;
    case (30 + 29):
        v2->unk_8D6 = 1;
        break;
    case 100:
        if (v2 == NULL) {
            *v7 = 1;
        } else {
            *v7 = 0;
        }
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    return 0;
}

static u16 ov104_0223927C(UnkStruct_0204AFC4 *param0, u8 param1)
{
    static const u16 v0[] = {
        0x8d,
        0x91,
        0x8e,
        0x8f,
        0x90
    };

    if (param1 == 2) {
        return param0->unk_10_5;
    }

    if (param1 == 1) {
        if (param0->unk_0F == 2) {
            return v0[param0->unk_10_5];
        } else {
            if (param0->unk_12) {
                return 0x61;
            } else {
                return 0x0;
            }
        }
    }

    if (param0->unk_11) {
        return 0x61;
    } else {
        return 0x0;
    }
}

BOOL ov104_022392C0(UnkStruct_ov104_0222E930 *param0)
{
    u8 v0;
    u16 *v1;
    UnkStruct_0204AFC4 *v2;
    UnkStruct_ov104_02230BE4 *v3 = sub_0209B970(param0->unk_00->unk_00);
    u16 v4 = (*((param0)->unk_1C++));

    v2 = sub_0209B978(param0->unk_00->unk_00);

    if (v2 == NULL) {
        return 0;
    }

    v1 = v2->unk_78[v4].unk_00.unk_18;

    ov104_0223310C(param0, v1, ov104_0223A790(v2->unk_0F));
    return 1;
}

BOOL ov104_02239300(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_0204AFC4 *v0;

    v0 = sub_0209B978(param0->unk_00->unk_00);
    sub_0204A32C(v0);

    return 0;
}

BOOL ov104_02239314(UnkStruct_ov104_0222E930 *param0)
{
    FieldBattleDTO *v0;
    UnkStruct_0204AFC4 *v1;
    UnkStruct_ov104_02230BE4 *v2 = sub_0209B970(param0->unk_00->unk_00);

    v1 = sub_0209B978(param0->unk_00->unk_00);
    v0 = ov104_0223A580(v1, v2);

    v1->unk_8D0 = v0;

    sub_02004550(5, 1119, 1);
    sub_0209B988(param0->unk_00->unk_00, &gBattleOverlayTemplate, v0, 0, NULL);

    return 1;
}

BOOL ov104_02239364(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_0204AFC4 *v0;
    FieldBattleDTO *v1;
    u16 *v2;

    v0 = sub_0209B978(param0->unk_00->unk_00);
    v2 = ov104_0222FBE4(param0);
    v1 = v0->unk_8D0;

    v0->unk_8CC = FieldBattleDTO_PlayerWon(v1->resultMask);
    *v2 = v0->unk_8CC;

    sub_020520A4(v1);
    return 0;
}

BOOL ov104_0223939C(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_0204AFC4 *v0;
    UnkStruct_ov104_02230BE4 *v1 = sub_0209B970(param0->unk_00->unk_00);
    u16 v2 = ov104_0222FC00(param0);
    u16 v3 = ov104_0222FC00(param0);
    u16 *v4 = ov104_0222FBE4(param0);

    v0 = sub_0209B978(param0->unk_00->unk_00);

    switch (v2) {
    case 2:
        ov104_0223A734(v0, v3);
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    if (sub_02036614(CommSys_CurNetId(), v0->unk_83E) == 1) {
        *v4 = 1;
    } else {
        *v4 = 0;
        return 1;
    }

    return 0;
}

BOOL ov104_02239400(UnkStruct_ov104_0222E930 *param0)
{
    u16 v0 = ov104_0222EA48(param0);
    u16 v1 = ov104_0222EA48(param0);

    param0->unk_78[0] = v0;
    param0->unk_78[1] = v1;

    ov104_0222E974(param0, ov104_0223942C);
    return 1;
}

static BOOL ov104_0223942C(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_0204AFC4 *v0;
    UnkStruct_ov104_02230BE4 *v1 = sub_0209B970(param0->unk_00->unk_00);

    v0 = sub_0209B978(param0->unk_00->unk_00);

    if (ov104_02239464(param0, v0, v1->unk_08, param0->unk_78[0], param0->unk_78[1]) == 1) {
        return 1;
    }

    return 0;
}

static BOOL ov104_02239464(UnkStruct_ov104_0222E930 *param0, UnkStruct_0204AFC4 *param1, SaveData *param2, u16 param3, u16 param4)
{
    u16 *v0;
    const void *v1;

    v1 = sub_0203664C(1 - CommSys_CurNetId());

    if (v1 == NULL) {
        return 0;
    }

    v0 = ov104_0222FC14(param0, param4);

    switch (param3) {
    case 2:
        *v0 = ov104_0223A750(param1, v1);
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    return 1;
}
