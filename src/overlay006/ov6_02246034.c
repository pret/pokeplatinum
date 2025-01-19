#include "overlay006/ov6_02246034.h"

#include <nitro.h>
#include <string.h>

#include "constants/battle.h"

#include "party.h"
#include "struct_defs/struct_0202D7B0.h"
#include "struct_defs/struct_0206C638.h"

#include "field/field_system.h"

#include "field_battle_data_transfer.h"
#include "inlines.h"
#include "party.h"
#include "pokemon.h"
#include "roaming_pokemon.h"
#include "unk_0202D7A8.h"
#include "unk_0206AFE0.h"
#include "vars_flags.h"

static void ov6_02246110(UnkStruct_0202D7B0 *param0, const int param1);
static UnkStruct_0206C638 *ov6_02246148(UnkStruct_0202D7B0 *param0, const int param1);

void ov6_02246034(FieldSystem *fieldSystem, FieldBattleDTO *param1)
{
    u16 v0;
    u8 v1;
    int v2;
    UnkStruct_0202D7B0 *v3;
    UnkStruct_0206C638 *v4;
    Party *v5;
    Pokemon *v6;

    v5 = param1->parties[1];
    v6 = Party_GetPokemonBySlotIndex(v5, 0);
    v3 = sub_0202D834(fieldSystem->saveData);
    v2 = Pokemon_GetValue(v6, MON_DATA_SPECIES, NULL);
    v4 = ov6_02246148(v3, v2);

    if (v4 != NULL) {
        v0 = (u16)(Pokemon_GetValue(v6, MON_DATA_CURRENT_HP, NULL));
        v1 = (u8)(Pokemon_GetValue(v6, MON_DATA_STATUS_CONDITION, NULL));

        if ((param1->resultMask == BATTLE_RESULT_WIN) && (v0 == 0)) {
            sub_0202D914(&v4);
            sub_0206B688(SaveData_GetVarsFlags(fieldSystem->saveData), v2, 2);
        } else if (param1->resultMask == BATTLE_RESULT_CAPTURED_MON) {
            sub_0202D914(&v4);
            sub_0206B688(SaveData_GetVarsFlags(fieldSystem->saveData), v2, 1);
        } else {
            sub_0202D980(v4, 5, v0);
            sub_0202D980(v4, 7, v1);
        }

        ov6_02246110(v3, fieldSystem->location->mapId);
    } else {
        if (inline_020564D0(100) < 30) {
            ov6_02246110(v3, fieldSystem->location->mapId);
        }
    }
}

static void ov6_02246110(UnkStruct_0202D7B0 *param0, const int param1)
{
    int v0;
    u8 v1;

    for (v1 = 0; v1 < 6; v1++) {
        if (sub_0202D8F8(param0, v1)) {
            v0 = sub_0206C3C8(sub_0202D8C4(param0, v1));

            if (param1 == v0) {
                sub_0206C33C(param0, v1);
            }
        }
    }
}

static UnkStruct_0206C638 *ov6_02246148(UnkStruct_0202D7B0 *param0, const int param1)
{
    u8 v0;
    UnkStruct_0206C638 *v1;

    for (v0 = 0; v0 < 6; v0++) {
        if (sub_0202D8F8(param0, v0)) {
            v1 = sub_0202D924(param0, v0);

            if (param1 == sub_0202D93C(v1, 4)) {
                return v1;
            }
        }
    }

    return NULL;
}
