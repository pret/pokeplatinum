#include <nitro.h>
#include <nitro/code16.h>
#include <string.h>

#include "constants/battle_tower.h"
#include "generated/battle_tower_modes.h"

#include "struct_decls/struct_0202D750_decl.h"
#include "struct_defs/battle_tower.h"
#include "struct_defs/struct_0209BBA4.h"

#include "overlay104/ov104_0222DCE0.h"
#include "overlay104/ov104_0222E930.h"
#include "overlay104/ov104_0222FBE4.h"
#include "overlay104/ov104_02239C58.h"
#include "overlay104/ov104_0223C164.h"
#include "overlay104/struct_ov104_0222E930_decl.h"
#include "overlay104/struct_ov104_0222E930_t.h"
#include "overlay104/struct_ov104_02230BE4.h"
#include "overlay104/struct_ov104_022320B4_t.h"

#include "communication_system.h"
#include "heap.h"
#include "item_use_pokemon.h"
#include "party.h"
#include "unk_0202D05C.h"
#include "unk_02030108.h"
#include "unk_0203061C.h"
#include "unk_02049D08.h"
#include "unk_0204FA34.h"
#include "unk_0205DFC4.h"
#include "unk_0209B6F8.h"
#include "unk_0209BA80.h"

BOOL ov104_022395F0(UnkStruct_ov104_0222E930 *param0);
BOOL ov104_02239610(UnkStruct_ov104_0222E930 *param0);
BOOL ov104_02239624(UnkStruct_ov104_0222E930 *param0);
BOOL ov104_02239660(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02239680(UnkStruct_ov104_0222E930 *param0);
BOOL ov104_022396A4(UnkStruct_ov104_0222E930 *param0);
BOOL ov104_022396D4(UnkStruct_ov104_0222E930 *param0);
BOOL ov104_0223971C(UnkStruct_ov104_0222E930 *param0);
BOOL ov104_02239794(UnkStruct_ov104_0222E930 *param0);
BOOL ov104_022397B0(UnkStruct_ov104_0222E930 *param0);
BOOL ov104_02239B14(UnkStruct_ov104_0222E930 *param0);
BOOL ov104_02239BF4(UnkStruct_ov104_0222E930 *param0);
BOOL ov104_02239C10(UnkStruct_ov104_0222E930 *param0);
static BOOL ov104_02239C20(UnkStruct_ov104_0222E930 *param0);
BOOL ov104_02239C44(UnkStruct_ov104_0222E930 *param0);

BOOL ov104_022395F0(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_ov104_02230BE4 *v1 = sub_0209B970(param0->unk_00->unk_00);
    UnkStruct_0209BBA4 *v0 = ov104_02239C58(v1->saveData);

    sub_0209B980(param0->unk_00->unk_00, v0);
    return 0;
}

BOOL ov104_02239610(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_0209BBA4 *v0 = sub_0209B978(param0->unk_00->unk_00);
    ov104_02239C7C(v0);

    return 0;
}

BOOL ov104_02239624(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_0209BBA4 *v0;
    u16 v1 = ov104_0222FC00(param0);
    u16 v2 = ov104_0222FC00(param0);
    u16 v3 = ov104_0222FC00(param0);
    u16 *v4 = ov104_0222FBE4(param0);

    v0 = sub_0209B978(param0->unk_00->unk_00);
    *v4 = ov104_02239C88(v0, v1, v2, v3);

    return 1;
}

BOOL ov104_02239660(UnkStruct_ov104_0222E930 *param0)
{
    u16 v0 = ov104_0222EA48(param0);

    param0->unk_78[0] = v0;
    ov104_0222E974(param0, ov104_02239680);

    return 1;
}

static BOOL ov104_02239680(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_0209BBA4 *v0 = sub_0209B978(param0->unk_00->unk_00);

    if (v0->unk_6F >= 2) {
        v0->unk_6F = 0;
        return 1;
    }

    return 0;
}

BOOL ov104_022396A4(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_0209BBA4 *v0;
    u16 v1 = ov104_0222FC00(param0);
    u16 *v2 = ov104_0222FBE4(param0);

    v0 = sub_0209B978(param0->unk_00->unk_00);

    if (v1 == v0->unk_6E) {
        *v2 = 1;
    } else {
        *v2 = 0;
    }

    return 0;
}

BOOL ov104_022396D4(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_0209BBA4 *v0;
    UnkStruct_ov104_02230BE4 *v1;
    u16 v2 = ov104_0222FC00(param0);
    u16 v3 = ov104_0222FC00(param0);
    u16 *v4 = ov104_0222FBE4(param0);

    v0 = sub_0209B978(param0->unk_00->unk_00);
    v1 = sub_0209B970(param0->unk_00->unk_00);

    v0->fieldSystem = v1->fieldSystem;
    v0->unk_B0 = v4;

    ov104_02239CD0(param0->unk_00->unk_00, v0, v3);

    return 1;
}

BOOL ov104_0223971C(UnkStruct_ov104_0222E930 *param0)
{
    int v0;
    UnkStruct_0209BBA4 *v1;
    u16 v2;
    u16 *v3 = ov104_0222FBE4(param0);
    u16 *v4 = ov104_0222FBE4(param0);

    v1 = sub_0209B978(param0->unk_00->unk_00);

    if (v1->unk_A8->selectedMonSlot == 7) {
        *v3 = 0xff;

        for (v0 = 0; v0 < 2; v0++) {
            v1->unk_A1[v0] = 0;
        }
    } else if (v1->unk_A8->selectedMonSlot == 6) {
        *v3 = v1->unk_A8->selectionOrder[0];
        *v3 -= 1;

        *v4 = v1->unk_A8->selectionOrder[1];

        if (*v4 > 0) {
            *v4 -= 1;
        }
    }

    Heap_Free(v1->unk_A8);
    v1->unk_A8 = NULL;

    return 0;
}

BOOL ov104_02239794(UnkStruct_ov104_0222E930 *param0)
{
    UnkStruct_0209BBA4 *v0;
    u16 *v1 = ov104_0222FBE4(param0);

    v0 = sub_0209B978(param0->unk_00->unk_00);
    *v1 = v0->unk_59;

    return 0;
}

BOOL ov104_022397B0(UnkStruct_ov104_0222E930 *param0)
{
    int v0;
    u16 v1, v2;
    UnkStruct_0202D750 *v3;
    UnkStruct_0209BBA4 *v4;
    UnkStruct_ov104_02230BE4 *v5;
    u8 v6 = (*((param0)->unk_1C++));
    u8 v7 = (*((param0)->unk_1C++));
    u8 v8 = (*((param0)->unk_1C++));
    u16 *v9 = ov104_0222FBE4(param0);

    v4 = sub_0209B978(param0->unk_00->unk_00);
    v5 = sub_0209B970(param0->unk_00->unk_00);

    switch (v6) {
    case 0:
        sub_0209BA80(v4);
        break;
    case 1:
        *v9 = v4->unk_86[0];
        break;
    case 2:
        if (v7 == 1) {
            *v9 = 0;

            if ((v4->unk_76[0] == v4->unk_86[0]) || (v4->unk_76[0] == v4->unk_86[1])) {
                *v9 += 1;
            }

            if ((v4->unk_76[1] == v4->unk_86[0]) || (v4->unk_76[1] == v4->unk_86[1])) {
                *v9 += 2;
            }
        } else if (v7 == 5) {
            if (v4->unk_76[0] == v4->unk_86[0]) {
                *v9 = 0;
            } else {
                *v9 = 1;
            }
        } else if ((v7 == 4) || (v7 == 6)) {
            *v9 = 0;

            if ((v4->unk_76[0] == v4->unk_86[0]) || (v4->unk_76[0] == v4->unk_86[1])) {
                *v9 += 1;
            }

            if ((v4->unk_76[1] == v4->unk_86[0]) || (v4->unk_76[1] == v4->unk_86[1])) {
                *v9 += 2;
            }
        }

        break;

    case 3:
        *v9 = (u16)sub_02030698(SaveData_GetBattleFrontier(v5->saveData), 106, sub_0205E6A8(106));
        break;
    case 4:
        *v9 = sub_02030698(SaveData_GetBattleFrontier(v5->saveData), sub_0205E55C(3), sub_0205E6A8(sub_0205E55C(3)));
        break;
    case 5:
        *v9 = v4->unk_76[v7];
        break;
    case 6:
        sub_0204FA50(v5->saveData, sub_0203026C(v5->saveData), 3);
        break;
    case 7:
        v4->unk_A0 = v7;
        break;
    case 8:
        *v9 = v4->unk_74;
        break;
    case 9:
        *v9 = v4->unk_A0;
        break;
    case 10:
        *v9 = v4->unk_71;
        break;
    case 11:
        *v9 = 1;
        v1 = ov104_0223C264(v4->unk_A0);
        v2 = sub_02030698(SaveData_GetBattleFrontier(v4->saveData), v1, sub_0205E6A8(v1));

        if (v2 != v4->unk_72) {
            sub_020306E4(SaveData_GetBattleFrontier(v4->saveData), v1, sub_0205E6A8(v1), 0);

            v1 = ov104_0223C29C(v4->unk_A0);
            sub_020306E4(SaveData_GetBattleFrontier(v4->saveData), v1, sub_0205E6A8(v1), 0);

            *v9 = 0;
        }
        break;
    case 12:
        v1 = ov104_0223C29C(v4->unk_A0);
        *v9 = sub_02030698(SaveData_GetBattleFrontier(v4->saveData), v1, sub_0205E6A8(v1));

        if (*v9 == 0) {
            v1 = ov104_0223C264(v4->unk_A0);
            sub_020306E4(SaveData_GetBattleFrontier(v4->saveData), v1, sub_0205E6A8(v1), 0);

            if (v4->unk_A0 == 1) {
                v3 = sub_0202D750(v4->saveData);
                sub_0202D3B4(v3, 6, 2);
            }

            if (v4->unk_A0 == 4) {
                sub_020306E4(SaveData_GetBattleFrontier(v4->saveData), 136, sub_0205E6A8(v1), 0);
                sub_020306E4(SaveData_GetBattleFrontier(v4->saveData), 137, sub_0205E6A8(v1), 0);
            }

            if (v4->unk_A0 == 2) {
                sub_020306E4(SaveData_GetBattleFrontier(v4->saveData), sub_0205E488(0, 3), sub_0205E6A8(sub_0205E488(0, 3)), 0);
            }

            if (v4->unk_A0 == 3) {
                sub_020306E4(SaveData_GetBattleFrontier(v4->saveData), sub_0205E488(1, 3), sub_0205E6A8(sub_0205E488(1, 3)), 0);
            }
        } else {
            sub_020306E4(SaveData_GetBattleFrontier(v4->saveData), v1, sub_0205E6A8(v1), 0);
        }
        break;
    case 13:
        for (v0 = 0; v0 < 2; v0++) {
            v4->unk_A1[v0] = 0;
        }

        v4->unk_9F = 0;
        break;
    }

    return 0;
}

BOOL ov104_02239B14(UnkStruct_ov104_0222E930 *param0)
{
    int v0;
    BattleTower *battleTower;
    UnkStruct_ov104_02230BE4 *v2;
    UnkStruct_0209BBA4 *v3;
    UnkStruct_0209BBA4 v4;

    v2 = sub_0209B970(param0->unk_00->unk_00);
    v3 = sub_0209B978(param0->unk_00->unk_00);

    v4 = *v3;
    ov104_02239C7C(v3);

    battleTower = BattleTower_Init(v2->saveData, 0, BATTLE_TOWER_MODE_6);
    sub_0209B980(param0->unk_00->unk_00, battleTower);

    if (battleTower->challengeMode == BATTLE_TOWER_MODE_6) {
        ov104_0222E630(v2->saveData);
    }

    for (v0 = 0; v0 < battleTower->partySize; v0++) {
        battleTower->unk_2A[v0] = v4.unk_6A[v0];
        battleTower->unk_2E[v0] = v4.unk_76[v0];
        battleTower->unk_36[v0] = v4.unk_7E[v0];
    }

    battleTower->unk_16[0] = v4.unk_86[0];
    battleTower->unk_16[1] = v4.unk_86[1];
    battleTower->partnerGender = v4.unk_58;
    battleTower->partnerID = BT_PARTNERS_COUNT + battleTower->partnerGender;

    if (CommSys_CurNetId() == 0) {
        sub_0204A4C8(battleTower, v2->saveData);
    }

    Party_HealAllMembers(SaveData_GetParty(v2->saveData));
    sub_0209BA80(battleTower);

    battleTower->unk_8D4 = 0;

    return 0;
}

BOOL ov104_02239BF4(UnkStruct_ov104_0222E930 *param0)
{
    BattleTower *battleTower;
    u16 *v1 = ov104_0222FBE4(param0);

    battleTower = sub_0209B978(param0->unk_00->unk_00);
    *v1 = sub_0209BB08(battleTower);

    return 1;
}

BOOL ov104_02239C10(UnkStruct_ov104_0222E930 *param0)
{
    ov104_0222E974(param0, ov104_02239C20);
    return 1;
}

static BOOL ov104_02239C20(UnkStruct_ov104_0222E930 *param0)
{
    BattleTower *battleTower = sub_0209B978(param0->unk_00->unk_00);

    if (battleTower->unk_8D4 < 2) {
        return 0;
    }

    battleTower->unk_8D4 = 0;
    return 1;
}

BOOL ov104_02239C44(UnkStruct_ov104_0222E930 *param0)
{
    BattleTower *battleTower = sub_0209B978(param0->unk_00->unk_00);
    BattleTower_Free(battleTower);
    battleTower = NULL;

    return 0;
}
