#include "unk_02096420.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_party_decl.h"

#include "heap.h"
#include "item.h"
#include "move_table.h"
#include "party.h"
#include "pokemon.h"

static u8 CheckMovePPAvailability(Pokemon *param0, u32 param1);
static u8 UpdatePokemonMovePP(Pokemon *param0, u32 param1, u32 param2);
static u8 IncreaseMovePPUps(Pokemon *param0, u32 param1, u32 param2);
static void RestorePokemonHP(Pokemon *param0, u32 param1, u32 param2, u32 param3);
static s32 CalculateEVUpdate(s32 param0, s32 param1, s32 param2);
static u8 UpdatePokemonFriendship(Pokemon *param0, s32 param1, s32 param2, u16 param3, u32 param4);
static u8 CheckFriendshipItemEffect(Pokemon *param0, ItemData *param1);

u8 CheckItemEffectsOnPokemon(Pokemon *param0, u16 param1, u16 param2, u32 param3)
{
    ItemData *v0;
    s32 v1[8];

    v0 = Item_Load(param1, 0, param3);

    if (Item_Get(v0, 14) != 1) {
        Heap_FreeToHeap(v0);
        return 0;
    }

    v1[0] = Pokemon_GetValue(param0, MON_DATA_STATUS_CONDITION, NULL);

    if (Item_Get(v0, 15) != 0) {
        if ((v1[0] & 0x7) != 0) {
            Heap_FreeToHeap(v0);
            return 1;
        }
    }

    if (Item_Get(v0, 16) != 0) {
        if ((v1[0] & (0x8 | 0x80)) != 0) {
            Heap_FreeToHeap(v0);
            return 1;
        }
    }

    if (Item_Get(v0, 17) != 0) {
        if ((v1[0] & 0x10) != 0) {
            Heap_FreeToHeap(v0);
            return 1;
        }
    }

    if (Item_Get(v0, 18) != 0) {
        if ((v1[0] & 0x20) != 0) {
            Heap_FreeToHeap(v0);
            return 1;
        }
    }

    if (Item_Get(v0, 19) != 0) {
        if ((v1[0] & 0x40) != 0) {
            Heap_FreeToHeap(v0);
            return 1;
        }
    }

    v1[0] = Pokemon_GetValue(param0, MON_DATA_CURRENT_HP, NULL);

    if (((Item_Get(v0, 23) != 0) || (Item_Get(v0, 24) != 0)) && (Item_Get(v0, 25) == 0)) {
        if (v1[0] == 0) {
            Heap_FreeToHeap(v0);
            return 1;
        }
    } else if (Item_Get(v0, 38) != 0) {
        if ((v1[0] != 0) && (v1[0] < Pokemon_GetValue(param0, MON_DATA_MAX_HP, NULL))) {
            Heap_FreeToHeap(v0);
            return 1;
        }
    }

    if (Item_Get(v0, 25) != 0) {
        if (Pokemon_GetValue(param0, MON_DATA_LEVEL, NULL) < 100) {
            Heap_FreeToHeap(v0);
            return 1;
        }
    }

    if (Item_Get(v0, 26) != 0) {
        if (sub_02076B94(NULL, param0, 3, param1, NULL) != 0) {
            Heap_FreeToHeap(v0);
            return 1;
        }
    }

    if ((Item_Get(v0, 34) != 0) || (Item_Get(v0, 35) != 0)) {
        if ((Pokemon_GetValue(param0, MON_DATA_MOVE1_PP_UPS + param2, NULL) < 3) && (MoveTable_CalcMaxPP(Pokemon_GetValue(param0, MON_DATA_MOVE1 + param2, NULL), 0) >= 5)) {
            Heap_FreeToHeap(v0);
            return 1;
        }
    }

    if (Item_Get(v0, 36) != 0) {
        if (CheckMovePPAvailability(param0, param2) == 1) {
            Heap_FreeToHeap(v0);
            return 1;
        }
    }

    if (Item_Get(v0, 37) != 0) {
        for (v1[0] = 0; v1[0] < 4; v1[0]++) {
            if (CheckMovePPAvailability(param0, v1[0]) == 1) {
                Heap_FreeToHeap(v0);
                return 1;
            }
        }
    }

    v1[0] = Pokemon_GetValue(param0, MON_DATA_HP_EV, NULL);
    v1[1] = Pokemon_GetValue(param0, MON_DATA_ATK_EV, NULL);
    v1[2] = Pokemon_GetValue(param0, MON_DATA_DEF_EV, NULL);
    v1[3] = Pokemon_GetValue(param0, MON_DATA_SPEED_EV, NULL);
    v1[4] = Pokemon_GetValue(param0, MON_DATA_SPATK_EV, NULL);
    v1[5] = Pokemon_GetValue(param0, MON_DATA_SPDEF_EV, NULL);

    if (Pokemon_GetValue(param0, MON_DATA_SPECIES, NULL) != 292) {
        if (Item_Get(v0, 39) != 0) {
            v1[6] = Item_Get(v0, 48);

            if (v1[6] > 0) {
                if ((v1[0] < 100) && ((v1[0] + v1[1] + v1[2] + v1[3] + v1[4] + v1[5]) < 510)) {
                    Heap_FreeToHeap(v0);
                    return 1;
                }
            } else if (v1[6] < 0) {
                if (v1[0] > 0) {
                    Heap_FreeToHeap(v0);
                    return 1;
                }

                if (CheckFriendshipItemEffect(param0, v0) == 1) {
                    Heap_FreeToHeap(v0);
                    return 1;
                }
            }
        }
    }

    if (Item_Get(v0, 40) != 0) {
        v1[6] = Item_Get(v0, 49);

        if (v1[6] > 0) {
            if ((v1[1] < 100) && ((v1[0] + v1[1] + v1[2] + v1[3] + v1[4] + v1[5]) < 510)) {
                Heap_FreeToHeap(v0);
                return 1;
            }
        } else if (v1[6] < 0) {
            if (v1[1] > 0) {
                Heap_FreeToHeap(v0);
                return 1;
            }

            if (CheckFriendshipItemEffect(param0, v0) == 1) {
                Heap_FreeToHeap(v0);
                return 1;
            }
        }
    }

    if (Item_Get(v0, 41) != 0) {
        v1[6] = Item_Get(v0, 50);

        if (v1[6] > 0) {
            if ((v1[2] < 100) && ((v1[0] + v1[1] + v1[2] + v1[3] + v1[4] + v1[5]) < 510)) {
                Heap_FreeToHeap(v0);
                return 1;
            }
        } else if (v1[6] < 0) {
            if (v1[2] > 0) {
                Heap_FreeToHeap(v0);
                return 1;
            }

            if (CheckFriendshipItemEffect(param0, v0) == 1) {
                Heap_FreeToHeap(v0);
                return 1;
            }
        }
    }

    if (Item_Get(v0, 42) != 0) {
        v1[6] = Item_Get(v0, 51);

        if (v1[6] > 0) {
            if ((v1[3] < 100) && ((v1[0] + v1[1] + v1[2] + v1[3] + v1[4] + v1[5]) < 510)) {
                Heap_FreeToHeap(v0);
                return 1;
            }
        } else if (v1[6] < 0) {
            if (v1[3] > 0) {
                Heap_FreeToHeap(v0);
                return 1;
            }

            if (CheckFriendshipItemEffect(param0, v0) == 1) {
                Heap_FreeToHeap(v0);
                return 1;
            }
        }
    }

    if (Item_Get(v0, 43) != 0) {
        v1[6] = Item_Get(v0, 52);

        if (v1[6] > 0) {
            if ((v1[4] < 100) && ((v1[0] + v1[1] + v1[2] + v1[3] + v1[4] + v1[5]) < 510)) {
                Heap_FreeToHeap(v0);
                return 1;
            }
        } else if (v1[6] < 0) {
            if (v1[4] > 0) {
                Heap_FreeToHeap(v0);
                return 1;
            }

            if (CheckFriendshipItemEffect(param0, v0) == 1) {
                Heap_FreeToHeap(v0);
                return 1;
            }
        }
    }

    if (Item_Get(v0, 44) != 0) {
        v1[6] = Item_Get(v0, 53);

        if (v1[6] > 0) {
            if ((v1[5] < 100) && ((v1[0] + v1[1] + v1[2] + v1[3] + v1[4] + v1[5]) < 510)) {
                Heap_FreeToHeap(v0);
                return 1;
            }
        } else if (v1[6] < 0) {
            if (v1[5] > 0) {
                Heap_FreeToHeap(v0);
                return 1;
            }

            if (CheckFriendshipItemEffect(param0, v0) == 1) {
                Heap_FreeToHeap(v0);
                return 1;
            }
        }
    }

    Heap_FreeToHeap(v0);

    return 0;
}

u8 CheckItemEffectsOnPartyMember(Party *param0, u16 param1, u8 param2, u8 param3, u32 param4)
{
    Pokemon *v0 = Party_GetPokemonBySlotIndex(param0, param2);
    return CheckItemEffectsOnPokemon(v0, param1, param3, param4);
}

u8 ApplyItemEffectsToPokemon(Pokemon *param0, u16 param1, u16 param2, u16 param3, u32 param4)
{
    ItemData *v0;
    s32 v1[8];
    u8 v2;
    u8 v3;

    v0 = Item_Load(param1, 0, param4);

    if (Item_Get(v0, 14) != 1) {
        Heap_FreeToHeap(v0);
        return 0;
    }

    v2 = 0;
    v3 = 0;

    v1[0] = Pokemon_GetValue(param0, MON_DATA_STATUS_CONDITION, NULL);
    v1[1] = v1[0];

    if (Item_Get(v0, 15) != 0) {
        v1[1] &= (0x7 ^ 0xffffffff);
        v3 = 1;
    }

    if (Item_Get(v0, 16) != 0) {
        v1[1] &= ((0x8 | 0x80 | 0xf00) ^ 0xffffffff);
        v3 = 1;
    }

    if (Item_Get(v0, 17) != 0) {
        v1[1] &= (0x10 ^ 0xffffffff);
        v3 = 1;
    }

    if (Item_Get(v0, 18) != 0) {
        v1[1] &= (0x20 ^ 0xffffffff);
        v3 = 1;
    }

    if (Item_Get(v0, 19) != 0) {
        v1[1] &= (0x40 ^ 0xffffffff);
        v3 = 1;
    }

    if (v1[0] != v1[1]) {
        Pokemon_SetValue(param0, MON_DATA_STATUS_CONDITION, &v1[1]);
        v2 = 1;
    }

    v1[0] = Pokemon_GetValue(param0, MON_DATA_CURRENT_HP, NULL);
    v1[1] = Pokemon_GetValue(param0, MON_DATA_MAX_HP, NULL);

    if (((Item_Get(v0, 23) != 0) || (Item_Get(v0, 24) != 0)) && (Item_Get(v0, 25) != 0)) {
        if (v1[0] == 0) {
            RestorePokemonHP(param0, v1[0], v1[1], Item_Get(v0, 54));
            v2 = 1;
        }

        v3 = 1;
    } else if (Item_Get(v0, 38) != 0) {
        if (v1[0] < v1[1]) {
            RestorePokemonHP(param0, v1[0], v1[1], Item_Get(v0, 54));
            v2 = 1;
        }

        v3 = 1;
    }

    v1[2] = Pokemon_GetValue(param0, MON_DATA_LEVEL, NULL);

    if (Item_Get(v0, 25) != 0) {
        if (v1[2] < 100) {
            Pokemon_IncreaseValue(param0, MON_DATA_EXP, Pokemon_GetExpToNextLevel(param0));
            Pokemon_CalcLevelAndStats(param0);

            if (v1[0] == 0) {
                v1[3] = Pokemon_GetValue(param0, MON_DATA_MAX_HP, NULL);
                RestorePokemonHP(param0, v1[0], v1[3], v1[3] - v1[1]);
            }

            v2 = 1;
        }

        v3 = 1;
    }

    if (Item_Get(v0, 26) != 0) {
        v3 = 1;
    }

    if (Item_Get(v0, 34) != 0) {
        if (IncreaseMovePPUps(param0, param2, 1) == 1) {
            v2 = 1;
        }

        v3 = 1;
    } else if (Item_Get(v0, 35) != 0) {
        if (IncreaseMovePPUps(param0, param2, 3) == 1) {
            v2 = 1;
        }

        v3 = 1;
    }

    if (Item_Get(v0, 36) != 0) {
        if (UpdatePokemonMovePP(param0, param2, Item_Get(v0, 55)) == 1) {
            v2 = 1;
        }

        v3 = 1;
    } else if (Item_Get(v0, 37) != 0) {
        for (v1[0] = 0; v1[0] < 4; v1[0]++) {
            if (UpdatePokemonMovePP(param0, v1[0], Item_Get(v0, 55)) == 1) {
                v2 = 1;
            }
        }

        v3 = 1;
    }

    v1[0] = Pokemon_GetValue(param0, MON_DATA_HP_EV, NULL);
    v1[1] = Pokemon_GetValue(param0, MON_DATA_ATK_EV, NULL);
    v1[2] = Pokemon_GetValue(param0, MON_DATA_DEF_EV, NULL);
    v1[3] = Pokemon_GetValue(param0, MON_DATA_SPEED_EV, NULL);
    v1[4] = Pokemon_GetValue(param0, MON_DATA_SPATK_EV, NULL);
    v1[5] = Pokemon_GetValue(param0, MON_DATA_SPDEF_EV, NULL);

    if (Pokemon_GetValue(param0, MON_DATA_SPECIES, NULL) != 292) {
        if (Item_Get(v0, 39) != 0) {
            v1[7] = Item_Get(v0, 48);
            v1[6] = CalculateEVUpdate(v1[0], (v1[1] + v1[2] + v1[3] + v1[4] + v1[5]), v1[7]);

            if (v1[6] != -1) {
                v1[0] = v1[6];
                Pokemon_SetValue(param0, MON_DATA_HP_EV, &v1[0]);
                Pokemon_CalcLevelAndStats(param0);
                v2 = 1;
            }

            if (v1[7] > 0) {
                v3 = 1;
            }
        }
    }

    if (Item_Get(v0, 40) != 0) {
        v1[7] = Item_Get(v0, 49);
        v1[6] = CalculateEVUpdate(v1[1], (v1[0] + v1[2] + v1[3] + v1[4] + v1[5]), v1[7]);

        if (v1[6] != -1) {
            v1[1] = v1[6];
            Pokemon_SetValue(param0, MON_DATA_ATK_EV, &v1[1]);
            Pokemon_CalcLevelAndStats(param0);
            v2 = 1;
        }

        if (v1[7] > 0) {
            v3 = 1;
        }
    }

    if (Item_Get(v0, 41) != 0) {
        v1[7] = Item_Get(v0, 50);
        v1[6] = CalculateEVUpdate(v1[2], (v1[0] + v1[1] + v1[3] + v1[4] + v1[5]), v1[7]);

        if (v1[6] != -1) {
            v1[2] = v1[6];
            Pokemon_SetValue(param0, MON_DATA_DEF_EV, &v1[2]);
            Pokemon_CalcLevelAndStats(param0);
            v2 = 1;
        }

        if (v1[7] > 0) {
            v3 = 1;
        }
    }

    if (Item_Get(v0, 42) != 0) {
        v1[7] = Item_Get(v0, 51);
        v1[6] = CalculateEVUpdate(v1[3], (v1[0] + v1[1] + v1[2] + v1[4] + v1[5]), v1[7]);

        if (v1[6] != -1) {
            v1[3] = v1[6];
            Pokemon_SetValue(param0, MON_DATA_SPEED_EV, &v1[3]);
            Pokemon_CalcLevelAndStats(param0);
            v2 = 1;
        }

        if (v1[7] > 0) {
            v3 = 1;
        }
    }

    if (Item_Get(v0, 43) != 0) {
        v1[7] = Item_Get(v0, 52);
        v1[6] = CalculateEVUpdate(v1[4], (v1[0] + v1[1] + v1[2] + v1[3] + v1[5]), v1[7]);

        if (v1[6] != -1) {
            v1[4] = v1[6];
            Pokemon_SetValue(param0, MON_DATA_SPATK_EV, &v1[4]);
            Pokemon_CalcLevelAndStats(param0);
            v2 = 1;
        }

        if (v1[7] > 0) {
            v3 = 1;
        }
    }

    if (Item_Get(v0, 44) != 0) {
        v1[7] = Item_Get(v0, 53);
        v1[6] = CalculateEVUpdate(v1[5], (v1[0] + v1[1] + v1[2] + v1[3] + v1[4]), v1[7]);

        if (v1[6] != -1) {
            v1[5] = v1[6];
            Pokemon_SetValue(param0, MON_DATA_SPDEF_EV, &v1[5]);
            Pokemon_CalcLevelAndStats(param0);
            v2 = 1;
        }

        if (v1[7] > 0) {
            v3 = 1;
        }
    }

    if ((v2 == 0) && (v3 == 1)) {
        Heap_FreeToHeap(v0);
        return 0;
    }

    v1[0] = Pokemon_GetValue(param0, MON_DATA_FRIENDSHIP, NULL);

    if (v1[0] < 100) {
        if (Item_Get(v0, 45) != 0) {
            if (UpdatePokemonFriendship(param0, v1[0], Item_Get(v0, 56), param3, param4) == 0) {
                Heap_FreeToHeap(v0);
                return v2;
            }
        }
    } else if ((v1[0] >= 100) && (v1[0] < 200)) {
        if (Item_Get(v0, 46) != 0) {
            if (UpdatePokemonFriendship(param0, v1[0], Item_Get(v0, 57), param3, param4) == 0) {
                Heap_FreeToHeap(v0);
                return v2;
            }
        }
    } else if ((v1[0] >= 200) && (v1[0] <= 255)) {
        if (Item_Get(v0, 47) != 0) {
            if (UpdatePokemonFriendship(param0, v1[0], Item_Get(v0, 58), param3, param4) == 0) {
                Heap_FreeToHeap(v0);
                return v2;
            }
        }
    }

    Heap_FreeToHeap(v0);
    return v2;
}

u8 sub_02096F14(Party *param0, u16 param1, u8 param2, u8 param3, u16 param4, u32 param5)
{
    Pokemon *v0 = Party_GetPokemonBySlotIndex(param0, param2);

    return ApplyItemEffectsToPokemon(v0, param1, param3, param4, param5);
}

static u8 CheckMovePPAvailability(Pokemon *mon, u32 moveIDX) // param0,1
{
    u16 move; // v0
    u8 ppCurr; // v1
    u8 ppUps; // v2

    move = (u16)Pokemon_GetValue(mon, MON_DATA_MOVE1 + moveIDX, NULL);

    if (move == 0) {
        return 0;
    }

    ppCurr = (u8)Pokemon_GetValue(mon, MON_DATA_MOVE1_CUR_PP + moveIDX, NULL);
    ppUps = (u8)Pokemon_GetValue(mon, MON_DATA_MOVE1_PP_UPS + moveIDX, NULL);

    if (ppCurr < MoveTable_CalcMaxPP(move, ppUps)) {
        return 1;
    }

    return 0;
}

static u8 UpdatePokemonMovePP(Pokemon *mon, u32 moveIDX, u32 pp)
{
    u16 move;
    u8 ppCurr;
    u8 ppMax;

    move = (u16)Pokemon_GetValue(mon, MON_DATA_MOVE1 + moveIDX, NULL);

    if (move == 0) {
        return 0;
    }

    ppCurr = (u8)Pokemon_GetValue(mon, MON_DATA_MOVE1_CUR_PP + moveIDX, NULL);
    ppMax = (u8)MoveTable_CalcMaxPP(move, Pokemon_GetValue(mon, MON_DATA_MOVE1_PP_UPS + moveIDX, NULL));

    if (ppCurr < ppMax) {
        if (pp == 127) { // case from healing function
            ppCurr = ppMax; // ppCurr = max pp
        } else {
            ppCurr += pp;

            if (ppCurr > ppMax) {
                ppCurr = ppMax;
            }
        }

        Pokemon_SetValue(mon, MON_DATA_MOVE1_CUR_PP + moveIDX, &ppCurr); // set the pp of the move
        return 1;
    }

    return 0;
}

static u8 IncreaseMovePPUps(Pokemon *param0, u32 param1, u32 param2)
{
    u16 v0;
    u8 v1;
    u8 v2;
    u8 v3;

    v2 = Pokemon_GetValue(param0, MON_DATA_MOVE1_PP_UPS + param1, NULL);

    if (v2 == 3) {
        return 0;
    }

    v0 = (u16)Pokemon_GetValue(param0, MON_DATA_MOVE1 + param1, NULL);

    if (MoveTable_CalcMaxPP(v0, 0) < 5) {
        return 0;
    }

    v1 = (u8)Pokemon_GetValue(param0, MON_DATA_MOVE1_CUR_PP + param1, NULL);
    v3 = (u8)MoveTable_CalcMaxPP(v0, v2);

    if (v2 + param2 > 3) {
        v2 = 3;
    } else {
        v2 = v2 + param2;
    }

    v1 = v1 + MoveTable_CalcMaxPP(v0, v2) - v3;

    Pokemon_SetValue(param0, MON_DATA_MOVE1_PP_UPS + param1, &v2);
    Pokemon_SetValue(param0, MON_DATA_MOVE1_CUR_PP + param1, &v1);

    return 1;
}

static void RestorePokemonHP(Pokemon *mon, u32 param1, u32 param2, u32 param3)
{
    if (param2 == 1) {
        param3 = 1;
    } else if (param3 == 255) {
        param3 = param2;
    } else if (param3 == 254) {
        param3 = param2 / 2;
    } else if (param3 == 253) {
        param3 = param2 / 4;
    }

    if (param1 + param3 > param2) {
        param1 = param2;
    } else {
        param1 += param3;
    }

    Pokemon_SetValue(mon, MON_DATA_CURRENT_HP, &param1);
}

static s32 CalculateEVUpdate(s32 param0, s32 param1, s32 param2)
{
    if ((param0 == 0) && (param2 < 0)) {
        return -1;
    }

    if ((param0 >= 100) && (param2 > 0)) {
        return -1;
    }

    if (((param0 + param1) >= 510) && (param2 > 0)) {
        return -1;
    }

    param0 += param2;

    if (param0 > 100) {
        param0 = 100;
    } else if (param0 < 0) {
        param0 = 0;
    }

    if ((param0 + param1) > 510) {
        param0 = 510 - param1;
    }

    return param0;
}

static u8 CheckFriendshipItemEffect(Pokemon *param0, ItemData *param1)
{
    s32 v0;
    s32 v1;

    v0 = Pokemon_GetValue(param0, MON_DATA_FRIENDSHIP, NULL);

    if (v0 >= 255) {
        return 0;
    }

    if (v0 < 100) {
        if (Item_Get(param1, 45) != 0) {
            if (Item_Get(param1, 56) > 0) {
                return 1;
            }
        }

        return 0;
    } else if ((v0 >= 100) && (v0 < 200)) {
        if (Item_Get(param1, 46) != 0) {
            if (Item_Get(param1, 57) > 0) {
                return 1;
            }
        }

        return 0;
    } else if ((v0 >= 200) && (v0 < 255)) {
        if (Item_Get(param1, 47) != 0) {
            if (Item_Get(param1, 58) > 0) {
                return 1;
            }
        }

        return 0;
    }

    return 0;
}

static u8 UpdatePokemonFriendship(Pokemon *param0, s32 param1, s32 param2, u16 param3, u32 param4)
{
    if ((param1 == 255) && (param2 > 0)) {
        return 0;
    }

    if ((param1 == 0) && (param2 < 0)) {
        return 0;
    }

    if (param2 > 0) {
        if (Item_LoadParam(Pokemon_GetValue(param0, MON_DATA_HELD_ITEM, NULL), 1, param4) == 53) {
            param2 = param2 * 150 / 100;
        }

        if (Pokemon_GetValue(param0, MON_DATA_POKEBALL, NULL) == 11) {
            param2++;
        }

        if (Pokemon_GetValue(param0, MON_DATA_MET_LOCATION, NULL) == param3) {
            param2++;
        }
    }

    param2 += param1;

    if (param2 > 255) {
        param2 = 255;
    }

    if (param2 < 0) {
        param2 = 0;
    }

    Pokemon_SetValue(param0, MON_DATA_FRIENDSHIP, &param2);
    return 1;
}

void HealAllPokemonInParty(Party *party)
{
    int i, j, monCount;
    u32 tmp;
    Pokemon *mon;

    monCount = Party_GetCurrentCount(party);

    // loop through party
    for (i = 0; i < monCount; i++) {
        // set mon pointer to current pokemon
        mon = Party_GetPokemonBySlotIndex(party, i);

        // data sanity?
        if (Pokemon_GetValue(mon, MON_DATA_SPECIES_EXISTS, NULL) == 0) {
            continue;
        }

        // set tmp variable to max hp value
        tmp = Pokemon_GetValue(mon, MON_DATA_MAX_HP, NULL);
        // set mon's current hp to max hp
        Pokemon_SetValue(mon, MON_DATA_CURRENT_HP, &tmp);

        // set tmp variable to 0
        tmp = 0;
        // clear mon's status condition
        Pokemon_SetValue(mon, MON_DATA_STATUS_CONDITION, &tmp);

        // loop through mon's moves
        for (j = 0; j < 4; j++) {
            // check if move is at max pp
            if (CheckMovePPAvailability(mon, j) == 1) {
                UpdatePokemonMovePP(mon, j, 127); // set
            }
        }
    }
}
