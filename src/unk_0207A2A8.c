#include <nitro.h>
#include <string.h>

#include "pokemon.h"
#include "struct_decls/struct_party_decl.h"
#include "struct_decls/struct_02098700_decl.h"

#include "struct_defs/struct_0202610C.h"

#include "unk_0202602C.h"
#include "pokemon.h"
#include "party.h"
#include "unk_0207A2A8.h"
#include "unk_02098700.h"

HeightWeightData * sub_0207A2A8 (int param0)
{
    HeightWeightData * v0 = Pokedex_HeightWeightData(param0);

    Pokedex_HeightWeightData_Load(v0, 0, param0);
    return v0;
}

void sub_0207A2C0 (HeightWeightData * param0)
{
    Pokedex_HeightWeightData_Release(param0);
    Pokedex_HeightWeightData_Free(param0);
}

BOOL sub_0207A2D0 (const BattleRegulation * param0, Pokemon * param1, const HeightWeightData * param2)
{
    u16 v0 = (u16)Pokemon_GetValue(param1, MON_DATA_SPECIES, NULL);
    int v1, v2, v3;

    if (param0 == NULL) {
        return 1;
    }

    v1 = sub_02026074(param0, 2);

    if (Pokemon_GetValue(param1, MON_DATA_LEVEL, NULL) > v1) {
        return 0;
    }

    if (Pokemon_GetValue(param1, MON_DATA_IS_EGG, NULL) != 0) {
        return 0;
    }

    v1 = sub_02026074(param0, 4);

    if (v1 == 0) {
        if (v0 != sub_02076FD4(v0)) {
            return 0;
        }
    }

    v1 = sub_02026074(param0, 5);

    if (v1 != 0) {
        v2 = sub_02098808(param2, v0);

        if (v1 > 0) {
            if (v2 < v1) {
                return 0;
            }
        } else {
            if (v2 > (-v1)) {
                return 0;
            }
        }
    }

    v1 = sub_02026074(param0, 7) * 10;

    if (v1 != 0) {
        v3 = Pokedex_HeightWeightData_Weight(param2, v0);

        if (v1 > 0) {
            if (v3 < v1) {
                return 0;
            }
        } else {
            if (v3 > (-v1)) {
                return 0;
            }
        }
    }

    v1 = sub_02026074(param0, 11);

    if (v1 == 0) {
        if (sub_02078838(param1)) {
            return 0;
        }
    }

    return 1;
}

int sub_0207A3AC (const BattleRegulation * param0, Party * param1, const HeightWeightData * param2, u8 * param3)
{
    Pokemon * v0;
    int v1, v2 = 0, v3, v4, v5 = 0;
    u16 v6[6], v7[6];

    if (param0 == NULL) {
        return 0;
    }

    for (v4 = 0; v4 < 6; v4++) {
        v6[v4] = 0;
        v7[v4] = 0;

        if (param3[v4]) {
            v2++;
        }
    }

    v1 = sub_02026074(param0, 1);

    if (v2 != v1) {
        return 4;
    }

    for (v4 = 0; v4 < 6; v4++) {
        if (param3[v4]) {
            int v8 = param3[v4] - 1;

            v0 = Party_GetPokemonBySlotIndex(param1, v8);

            if (sub_0207A2D0(param0, v0, param2) == 0) {
                return 5;
            }

            v6[v4] = (u16)Pokemon_GetValue(v0, MON_DATA_SPECIES, NULL);
            v7[v4] = (u16)Pokemon_GetValue(v0, MON_DATA_HELD_ITEM, NULL);

            v5 += Pokemon_GetValue(v0, MON_DATA_LEVEL, NULL);
        }
    }

    v1 = sub_02026074(param0, 3);

    if ((v5 > v1) && (v1 != 0)) {
        return 1;
    }

    v1 = sub_02026074(param0, 10);

    if ((v1 == 0) && (v2 > 1)) {
        for (v4 = 0; v4 < (6 - 1); v4++) {
            for (v3 = v4 + 1; v3 < 6; v3++) {
                if ((v6[v4] == v6[v3]) && (v6[v4] != 0)) {
                    return 2;
                }
            }
        }
    }

    v1 = sub_02026074(param0, 9);

    if ((v1 == 0) && (v2 > 1)) {
        for (v4 = 0; v4 < (6 - 1); v4++) {
            for (v3 = v4 + 1; v3 < 6; v3++) {
                if ((v7[v4] == v7[v3]) && (v6[v4] != 0) && (0 != v7[v4])) {
                    return 3;
                }
            }
        }
    }

    return 0;
}

static BOOL sub_0207A514 (u16 * param0, u16 * param1, u16 * param2, int param3, int param4, int param5, int param6)
{
    int v0 = param3;
    int v1;
    int v2 = param5;

    if ((param0[param4] != 0) && (param2[param4] == 0)) {
        v0 -= param1[param4];

        if (v0 < 0) {
            return 0;
        }

        v2--;

        if (v2 == 0) {
            return 1;
        }

        param2[param4] = 1;
    }

    for (v1 = param4 + 1; v1 < param6; v1++) {
        if (sub_0207A514(param0, param1, param2, v0, v1, v2, param6)) {
            return 1;
        }
    }

    param2[param4] = 0;
    return 0;
}

int sub_0207A594 (const BattleRegulation * param0, Party * param1, const HeightWeightData * param2)
{
    Pokemon * v0;
    int v1, v2, v3, v4, v5 = 0;
    u16 v6[6], v7[6], v8[6];
    int v9;

    v2 = Party_GetCurrentCount(param1);
    v9 = v2;

    MI_CpuClear8(v8, 6 * sizeof(u16));

    for (v4 = 0; v4 < v2; v4++) {
        v0 = Party_GetPokemonBySlotIndex(param1, v4);
        v6[v4] = (u16)Pokemon_GetValue(v0, MON_DATA_SPECIES, NULL);
        v7[v4] = Pokemon_GetValue(v0, MON_DATA_LEVEL, NULL);

        if (sub_0207A2D0(param0, v0, param2) == 0) {
            v6[v4] = 0;
            v9--;
        }
    }

    v1 = sub_02026074(param0, 10);

    if ((v1 == 0) && (v2 > 1)) {
        for (v4 = 0; v4 < (v2 - 1); v4++) {
            for (v3 = v4 + 1; v3 < v2; v3++) {
                if ((v6[v4] == v6[v3]) && (v6[v4] != 0)) {
                    if (v7[v4] > v7[v3]) {
                        v6[v4] = 0;
                    } else {
                        v6[v3] = 0;
                    }

                    v9--;
                }
            }
        }
    }

    v1 = sub_02026074(param0, 1);

    if (v9 < v1) {
        return 4;
    }

    v9 = v1;
    v1 = sub_02026074(param0, 3);

    if (v1 == 0) {
        return 0;
    }

    for (v4 = 0; v4 < v2; v4++) {
        if (sub_0207A514(v6, v7, v8, v1, v4, v9, v2)) {
            return 0;
        }
    }

    return 1;
}
