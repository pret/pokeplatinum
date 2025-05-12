#include "unk_02096420.h"

#include <nitro.h>
#include <string.h>

#include "constants/battle/condition.h"
#include "constants/items.h"
#include "constants/moves.h"
#include "generated/item_hold_effects.h"
#include "generated/moves.h"
#include "generated/species.h"

#include "heap.h"
#include "item.h"
#include "move_table.h"
#include "party.h"
#include "pokemon.h"

#define MAX_EV_VITAMIN       100
#define MAX_PP_UP            3
#define PP_UP_MININUM_MAX_PP 5

#define HEAL_FULL_HP    255
#define HEAL_HALF_HP    254
#define HEAL_QUARTER_HP 253

#define EV_UNCHANGED -1

#define HEAL_FULL_PP 127

enum CheckEffectsVarsIndex {
    CHECK_EFFECTS_STATUS = 0,

    CHECK_EFFECTS_CURRENT_HP = 0,

    CHECK_EFFECTS_MOVE_INDEX = 0,

    CHECK_EFFECTS_HP_EV = 0,
    CHECK_EFFECTS_ATK_EV,
    CHECK_EFFECTS_DEF_EV,
    CHECK_EFFECTS_SPEED_EV,
    CHECK_EFFECTS_SPATK_EV,
    CHECK_EFFECTS_SPDEF_EV,
    CHECK_EFFECTS_EV_CHANGE,
};

enum ApplyEffectsVarsIndex {
    APPLY_EFFECTS_STATUS = 0,
    APPLY_EFFECTS_STATUS_TMP,

    APPLY_EFFECTS_CURRENT_HP = 0,
    APPLY_EFFECTS_MAX_HP,
    APPLY_EFFECTS_LEVEL,
    APPLY_EFFECTS_MAX_HP_LVL_UP,

    APPLY_EFFECTS_MOVE_INDEX = 0,

    APPLY_EFFECTS_HP_EV = 0,
    APPLY_EFFECTS_ATK_EV,
    APPLY_EFFECTS_DEF_EV,
    APPLY_EFFECTS_SPEED_EV,
    APPLY_EFFECTS_SPATK_EV,
    APPLY_EFFECTS_SPDEF_EV,
    APPLY_EFFECTS_NEW_EV,
    APPLY_EFFECTS_EV_CHANGE,

    APPLY_EFFECTS_FRIENDSHIP = 0,
};

static u8 IsMoveMissingPP(Pokemon *mon, u32 moveSlot);
static u8 RestorePokemonMovePP(Pokemon *mon, u32 moveSlot, u32 amount);
static u8 IncreaseMovePPUps(Pokemon *mon, u32 moveSlot, u32 amount);
static void RestorePokemonHP(Pokemon *mon, u32 currentHp, u32 maxHp, u32 amount);
static s32 CalculateEVUpdate(s32 current, s32 sumOthers, s32 change);
static u8 CheckFriendshipItemEffect(Pokemon *mon, ItemData *item);
static u8 UpdatePokemonFriendship(Pokemon *mon, s32 current, s32 change, u16 location, enum HeapId heapID);

u8 PartyUseItem_CheckItemEffectsOnPokemon(Pokemon *mon, u16 itemId, u16 moveSlot, enum HeapId heapID)
{
    // For some reason, the original developer decided to use an array to store what should have been individual variables
    s32 vars[8];

    ItemData *item = Item_Load(itemId, ITEM_FILE_TYPE_DATA, heapID);

    if (Item_Get(item, ITEM_PARAM_PARTY_USE) != TRUE) {
        Heap_FreeToHeap(item);
        return FALSE;
    }

    vars[CHECK_EFFECTS_STATUS] = Pokemon_GetValue(mon, MON_DATA_STATUS_CONDITION, NULL);

    if (Item_Get(item, ITEM_PARAM_HEAL_SLEEP) != FALSE) {
        if ((vars[CHECK_EFFECTS_STATUS] & MON_CONDITION_SLEEP) != 0) {
            Heap_FreeToHeap(item);
            return TRUE;
        }
    }

    if (Item_Get(item, ITEM_PARAM_HEAL_POISON) != FALSE) {
        if ((vars[CHECK_EFFECTS_STATUS] & (MON_CONDITION_POISON | MON_CONDITION_TOXIC)) != 0) {
            Heap_FreeToHeap(item);
            return TRUE;
        }
    }

    if (Item_Get(item, ITEM_PARAM_HEAL_BURN) != FALSE) {
        if ((vars[CHECK_EFFECTS_STATUS] & MON_CONDITION_BURN) != 0) {
            Heap_FreeToHeap(item);
            return TRUE;
        }
    }

    if (Item_Get(item, ITEM_PARAM_HEAL_FREEZE) != FALSE) {
        if ((vars[CHECK_EFFECTS_STATUS] & MON_CONDITION_FREEZE) != 0) {
            Heap_FreeToHeap(item);
            return TRUE;
        }
    }

    if (Item_Get(item, ITEM_PARAM_HEAL_PARALYSIS) != FALSE) {
        if ((vars[CHECK_EFFECTS_STATUS] & MON_CONDITION_PARALYSIS) != 0) {
            Heap_FreeToHeap(item);
            return TRUE;
        }
    }

    vars[CHECK_EFFECTS_CURRENT_HP] = Pokemon_GetValue(mon, MON_DATA_CURRENT_HP, NULL);

    if (((Item_Get(item, ITEM_PARAM_REVIVE) != FALSE) || (Item_Get(item, ITEM_PARAM_REVIVE_ALL) != FALSE)) && (Item_Get(item, ITEM_PARAM_LEVEL_UP) == FALSE)) {
        if (vars[CHECK_EFFECTS_CURRENT_HP] == 0) {
            Heap_FreeToHeap(item);
            return TRUE;
        }
    } else if (Item_Get(item, ITEM_PARAM_HP_RESTORE) != FALSE) {
        if ((vars[CHECK_EFFECTS_CURRENT_HP] != 0) && (vars[CHECK_EFFECTS_CURRENT_HP] < Pokemon_GetValue(mon, MON_DATA_MAX_HP, NULL))) {
            Heap_FreeToHeap(item);
            return TRUE;
        }
    }

    if (Item_Get(item, ITEM_PARAM_LEVEL_UP) != FALSE) {
        if (Pokemon_GetValue(mon, MON_DATA_LEVEL, NULL) < MAX_POKEMON_LEVEL) {
            Heap_FreeToHeap(item);
            return TRUE;
        }
    }

    if (Item_Get(item, ITEM_PARAM_EVOLVE) != FALSE) {
        if (Pokemon_GetEvolutionTargetSpecies(NULL, mon, EVO_CLASS_BY_ITEM, itemId, NULL) != SPECIES_NONE) {
            Heap_FreeToHeap(item);
            return TRUE;
        }
    }

    if ((Item_Get(item, ITEM_PARAM_PP_UP) != FALSE) || (Item_Get(item, ITEM_PARAM_PP_MAX) != FALSE)) {
        if ((Pokemon_GetValue(mon, MON_DATA_MOVE1_PP_UPS + moveSlot, NULL) < MAX_PP_UP) && (MoveTable_CalcMaxPP(Pokemon_GetValue(mon, MON_DATA_MOVE1 + moveSlot, NULL), 0) >= PP_UP_MININUM_MAX_PP)) {
            Heap_FreeToHeap(item);
            return TRUE;
        }
    }

    if (Item_Get(item, ITEM_PARAM_PP_RESTORE) != FALSE) {
        if (IsMoveMissingPP(mon, moveSlot) == TRUE) {
            Heap_FreeToHeap(item);
            return TRUE;
        }
    }

    if (Item_Get(item, ITEM_PARAM_PP_RESTORE_ALL) != FALSE) {
        for (vars[CHECK_EFFECTS_MOVE_INDEX] = 0; vars[CHECK_EFFECTS_MOVE_INDEX] < LEARNED_MOVES_MAX; vars[CHECK_EFFECTS_MOVE_INDEX]++) {
            if (IsMoveMissingPP(mon, vars[CHECK_EFFECTS_MOVE_INDEX]) == TRUE) {
                Heap_FreeToHeap(item);
                return TRUE;
            }
        }
    }

    vars[CHECK_EFFECTS_HP_EV] = Pokemon_GetValue(mon, MON_DATA_HP_EV, NULL);
    vars[CHECK_EFFECTS_ATK_EV] = Pokemon_GetValue(mon, MON_DATA_ATK_EV, NULL);
    vars[CHECK_EFFECTS_DEF_EV] = Pokemon_GetValue(mon, MON_DATA_DEF_EV, NULL);
    vars[CHECK_EFFECTS_SPEED_EV] = Pokemon_GetValue(mon, MON_DATA_SPEED_EV, NULL);
    vars[CHECK_EFFECTS_SPATK_EV] = Pokemon_GetValue(mon, MON_DATA_SPATK_EV, NULL);
    vars[CHECK_EFFECTS_SPDEF_EV] = Pokemon_GetValue(mon, MON_DATA_SPDEF_EV, NULL);

    if (Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL) != SPECIES_SHEDINJA) {
        if (Item_Get(item, ITEM_PARAM_GIVE_HP_EVS) != FALSE) {
            vars[CHECK_EFFECTS_EV_CHANGE] = Item_Get(item, ITEM_PARAM_HP_EVS);

            if (vars[CHECK_EFFECTS_EV_CHANGE] > 0) {
                if ((vars[CHECK_EFFECTS_HP_EV] < MAX_EV_VITAMIN) && ((vars[CHECK_EFFECTS_HP_EV] + vars[CHECK_EFFECTS_ATK_EV] + vars[CHECK_EFFECTS_DEF_EV] + vars[CHECK_EFFECTS_SPEED_EV] + vars[CHECK_EFFECTS_SPATK_EV] + vars[CHECK_EFFECTS_SPDEF_EV]) < MAX_EVS_ALL_STATS)) {
                    Heap_FreeToHeap(item);
                    return TRUE;
                }
            } else if (vars[CHECK_EFFECTS_EV_CHANGE] < 0) {
                if (vars[CHECK_EFFECTS_HP_EV] > 0) {
                    Heap_FreeToHeap(item);
                    return TRUE;
                }

                if (CheckFriendshipItemEffect(mon, item) == TRUE) {
                    Heap_FreeToHeap(item);
                    return TRUE;
                }
            }
        }
    }

    if (Item_Get(item, ITEM_PARAM_GIVE_ATK_EVS) != FALSE) {
        vars[CHECK_EFFECTS_EV_CHANGE] = Item_Get(item, ITEM_PARAM_ATK_EVS);

        if (vars[CHECK_EFFECTS_EV_CHANGE] > 0) {
            if ((vars[CHECK_EFFECTS_ATK_EV] < MAX_EV_VITAMIN) && ((vars[CHECK_EFFECTS_HP_EV] + vars[CHECK_EFFECTS_ATK_EV] + vars[CHECK_EFFECTS_DEF_EV] + vars[CHECK_EFFECTS_SPEED_EV] + vars[CHECK_EFFECTS_SPATK_EV] + vars[CHECK_EFFECTS_SPDEF_EV]) < MAX_EVS_ALL_STATS)) {
                Heap_FreeToHeap(item);
                return TRUE;
            }
        } else if (vars[CHECK_EFFECTS_EV_CHANGE] < 0) {
            if (vars[CHECK_EFFECTS_ATK_EV] > 0) {
                Heap_FreeToHeap(item);
                return TRUE;
            }

            if (CheckFriendshipItemEffect(mon, item) == TRUE) {
                Heap_FreeToHeap(item);
                return TRUE;
            }
        }
    }

    if (Item_Get(item, ITEM_PARAM_GIVE_DEF_EVS) != FALSE) {
        vars[CHECK_EFFECTS_EV_CHANGE] = Item_Get(item, ITEM_PARAM_DEF_EVS);

        if (vars[CHECK_EFFECTS_EV_CHANGE] > 0) {
            if ((vars[CHECK_EFFECTS_DEF_EV] < MAX_EV_VITAMIN) && ((vars[CHECK_EFFECTS_HP_EV] + vars[CHECK_EFFECTS_ATK_EV] + vars[CHECK_EFFECTS_DEF_EV] + vars[CHECK_EFFECTS_SPEED_EV] + vars[CHECK_EFFECTS_SPATK_EV] + vars[CHECK_EFFECTS_SPDEF_EV]) < MAX_EVS_ALL_STATS)) {
                Heap_FreeToHeap(item);
                return TRUE;
            }
        } else if (vars[CHECK_EFFECTS_EV_CHANGE] < 0) {
            if (vars[CHECK_EFFECTS_DEF_EV] > 0) {
                Heap_FreeToHeap(item);
                return TRUE;
            }

            if (CheckFriendshipItemEffect(mon, item) == TRUE) {
                Heap_FreeToHeap(item);
                return TRUE;
            }
        }
    }

    if (Item_Get(item, ITEM_PARAM_GIVE_SPEED_EVS) != FALSE) {
        vars[CHECK_EFFECTS_EV_CHANGE] = Item_Get(item, ITEM_PARAM_SPEED_EVS);

        if (vars[CHECK_EFFECTS_EV_CHANGE] > 0) {
            if ((vars[CHECK_EFFECTS_SPEED_EV] < MAX_EV_VITAMIN) && ((vars[CHECK_EFFECTS_HP_EV] + vars[CHECK_EFFECTS_ATK_EV] + vars[CHECK_EFFECTS_DEF_EV] + vars[CHECK_EFFECTS_SPEED_EV] + vars[CHECK_EFFECTS_SPATK_EV] + vars[CHECK_EFFECTS_SPDEF_EV]) < MAX_EVS_ALL_STATS)) {
                Heap_FreeToHeap(item);
                return TRUE;
            }
        } else if (vars[CHECK_EFFECTS_EV_CHANGE] < 0) {
            if (vars[CHECK_EFFECTS_SPEED_EV] > 0) {
                Heap_FreeToHeap(item);
                return TRUE;
            }

            if (CheckFriendshipItemEffect(mon, item) == TRUE) {
                Heap_FreeToHeap(item);
                return TRUE;
            }
        }
    }

    if (Item_Get(item, ITEM_PARAM_GIVE_SPATK_EVS) != FALSE) {
        vars[CHECK_EFFECTS_EV_CHANGE] = Item_Get(item, ITEM_PARAM_SPATK_EVS);

        if (vars[CHECK_EFFECTS_EV_CHANGE] > 0) {
            if ((vars[CHECK_EFFECTS_SPATK_EV] < MAX_EV_VITAMIN) && ((vars[CHECK_EFFECTS_HP_EV] + vars[CHECK_EFFECTS_ATK_EV] + vars[CHECK_EFFECTS_DEF_EV] + vars[CHECK_EFFECTS_SPEED_EV] + vars[CHECK_EFFECTS_SPATK_EV] + vars[CHECK_EFFECTS_SPDEF_EV]) < MAX_EVS_ALL_STATS)) {
                Heap_FreeToHeap(item);
                return TRUE;
            }
        } else if (vars[CHECK_EFFECTS_EV_CHANGE] < 0) {
            if (vars[CHECK_EFFECTS_SPATK_EV] > 0) {
                Heap_FreeToHeap(item);
                return TRUE;
            }

            if (CheckFriendshipItemEffect(mon, item) == TRUE) {
                Heap_FreeToHeap(item);
                return TRUE;
            }
        }
    }

    if (Item_Get(item, ITEM_PARAM_GIVE_SPDEF_EVS) != FALSE) {
        vars[CHECK_EFFECTS_EV_CHANGE] = Item_Get(item, ITEM_PARAM_SPDEF_EVS);

        if (vars[CHECK_EFFECTS_EV_CHANGE] > 0) {
            if ((vars[CHECK_EFFECTS_SPDEF_EV] < MAX_EV_VITAMIN) && ((vars[CHECK_EFFECTS_HP_EV] + vars[CHECK_EFFECTS_ATK_EV] + vars[CHECK_EFFECTS_DEF_EV] + vars[CHECK_EFFECTS_SPEED_EV] + vars[CHECK_EFFECTS_SPATK_EV] + vars[CHECK_EFFECTS_SPDEF_EV]) < MAX_EVS_ALL_STATS)) {
                Heap_FreeToHeap(item);
                return TRUE;
            }
        } else if (vars[CHECK_EFFECTS_EV_CHANGE] < 0) {
            if (vars[CHECK_EFFECTS_SPDEF_EV] > 0) {
                Heap_FreeToHeap(item);
                return TRUE;
            }

            if (CheckFriendshipItemEffect(mon, item) == TRUE) {
                Heap_FreeToHeap(item);
                return TRUE;
            }
        }
    }

    Heap_FreeToHeap(item);

    return FALSE;
}

u8 PartyUseItem_CheckItemEffectsOnPartyMember(Party *party, u16 itemId, u8 partySlot, u8 moveSlot, enum HeapId heapID)
{
    Pokemon *mon = Party_GetPokemonBySlotIndex(party, partySlot);
    return PartyUseItem_CheckItemEffectsOnPokemon(mon, itemId, moveSlot, heapID);
}

u8 PartyUseItem_ApplyItemEffectsToPokemon(Pokemon *mon, u16 itemId, u16 moveSlot, u16 location, enum HeapId heapID)
{
    // For some reason, the original developer decided to use an array to store what should have been individual variables
    s32 vars[8];

    ItemData *item = Item_Load(itemId, ITEM_FILE_TYPE_DATA, heapID);

    if (Item_Get(item, ITEM_PARAM_PARTY_USE) != TRUE) {
        Heap_FreeToHeap(item);
        return FALSE;
    }

    u8 effectApplied = FALSE;
    u8 effectFound = FALSE;

    vars[APPLY_EFFECTS_STATUS] = Pokemon_GetValue(mon, MON_DATA_STATUS_CONDITION, NULL);
    vars[APPLY_EFFECTS_STATUS_TMP] = vars[APPLY_EFFECTS_STATUS];

    if (Item_Get(item, ITEM_PARAM_HEAL_SLEEP) != FALSE) {
        vars[APPLY_EFFECTS_STATUS_TMP] &= ~MON_CONDITION_SLEEP;
        effectFound = TRUE;
    }

    if (Item_Get(item, ITEM_PARAM_HEAL_POISON) != FALSE) {
        vars[APPLY_EFFECTS_STATUS_TMP] &= ~MON_CONDITION_ANY_POISON;
        effectFound = TRUE;
    }

    if (Item_Get(item, ITEM_PARAM_HEAL_BURN) != FALSE) {
        vars[APPLY_EFFECTS_STATUS_TMP] &= ~MON_CONDITION_BURN;
        effectFound = TRUE;
    }

    if (Item_Get(item, ITEM_PARAM_HEAL_FREEZE) != FALSE) {
        vars[APPLY_EFFECTS_STATUS_TMP] &= ~MON_CONDITION_FREEZE;
        effectFound = TRUE;
    }

    if (Item_Get(item, ITEM_PARAM_HEAL_PARALYSIS) != FALSE) {
        vars[APPLY_EFFECTS_STATUS_TMP] &= ~MON_CONDITION_PARALYSIS;
        effectFound = TRUE;
    }

    if (vars[APPLY_EFFECTS_STATUS] != vars[APPLY_EFFECTS_STATUS_TMP]) {
        Pokemon_SetValue(mon, MON_DATA_STATUS_CONDITION, &vars[APPLY_EFFECTS_STATUS_TMP]);
        effectApplied = TRUE;
    }

    vars[APPLY_EFFECTS_CURRENT_HP] = Pokemon_GetValue(mon, MON_DATA_CURRENT_HP, NULL);
    vars[APPLY_EFFECTS_MAX_HP] = Pokemon_GetValue(mon, MON_DATA_MAX_HP, NULL);

    if (((Item_Get(item, ITEM_PARAM_REVIVE) != FALSE) || (Item_Get(item, ITEM_PARAM_REVIVE_ALL) != FALSE)) && (Item_Get(item, ITEM_PARAM_LEVEL_UP) != FALSE)) {
        if (vars[APPLY_EFFECTS_CURRENT_HP] == 0) {
            RestorePokemonHP(mon, vars[APPLY_EFFECTS_CURRENT_HP], vars[APPLY_EFFECTS_MAX_HP], Item_Get(item, ITEM_PARAM_HP_RESTORED));
            effectApplied = TRUE;
        }

        effectFound = TRUE;
    } else if (Item_Get(item, ITEM_PARAM_HP_RESTORE) != FALSE) {
        if (vars[APPLY_EFFECTS_CURRENT_HP] < vars[APPLY_EFFECTS_MAX_HP]) {
            RestorePokemonHP(mon, vars[APPLY_EFFECTS_CURRENT_HP], vars[APPLY_EFFECTS_MAX_HP], Item_Get(item, ITEM_PARAM_HP_RESTORED));
            effectApplied = TRUE;
        }

        effectFound = TRUE;
    }

    vars[APPLY_EFFECTS_LEVEL] = Pokemon_GetValue(mon, MON_DATA_LEVEL, NULL);

    if (Item_Get(item, ITEM_PARAM_LEVEL_UP) != FALSE) {
        if (vars[APPLY_EFFECTS_LEVEL] < MAX_POKEMON_LEVEL) {
            Pokemon_IncreaseValue(mon, MON_DATA_EXP, Pokemon_GetExpToNextLevel(mon));
            Pokemon_CalcLevelAndStats(mon);

            if (vars[APPLY_EFFECTS_CURRENT_HP] == 0) {
                vars[APPLY_EFFECTS_MAX_HP_LVL_UP] = Pokemon_GetValue(mon, MON_DATA_MAX_HP, NULL);
                RestorePokemonHP(mon, vars[APPLY_EFFECTS_CURRENT_HP], vars[APPLY_EFFECTS_MAX_HP_LVL_UP], vars[APPLY_EFFECTS_MAX_HP_LVL_UP] - vars[APPLY_EFFECTS_MAX_HP]);
            }

            effectApplied = TRUE;
        }

        effectFound = TRUE;
    }

    if (Item_Get(item, ITEM_PARAM_EVOLVE) != FALSE) {
        effectFound = TRUE;
    }

    if (Item_Get(item, ITEM_PARAM_PP_UP) != FALSE) {
        if (IncreaseMovePPUps(mon, moveSlot, 1) == TRUE) {
            effectApplied = TRUE;
        }

        effectFound = TRUE;
    } else if (Item_Get(item, ITEM_PARAM_PP_MAX) != FALSE) {
        if (IncreaseMovePPUps(mon, moveSlot, MAX_PP_UP) == TRUE) {
            effectApplied = TRUE;
        }

        effectFound = TRUE;
    }

    if (Item_Get(item, ITEM_PARAM_PP_RESTORE) != FALSE) {
        if (RestorePokemonMovePP(mon, moveSlot, Item_Get(item, ITEM_PARAM_PP_RESTORED)) == TRUE) {
            effectApplied = TRUE;
        }

        effectFound = TRUE;
    } else if (Item_Get(item, ITEM_PARAM_PP_RESTORE_ALL) != FALSE) {
        for (vars[APPLY_EFFECTS_MOVE_INDEX] = 0; vars[APPLY_EFFECTS_MOVE_INDEX] < LEARNED_MOVES_MAX; vars[APPLY_EFFECTS_MOVE_INDEX]++) {
            if (RestorePokemonMovePP(mon, vars[APPLY_EFFECTS_MOVE_INDEX], Item_Get(item, ITEM_PARAM_PP_RESTORED)) == TRUE) {
                effectApplied = TRUE;
            }
        }

        effectFound = TRUE;
    }

    vars[APPLY_EFFECTS_HP_EV] = Pokemon_GetValue(mon, MON_DATA_HP_EV, NULL);
    vars[APPLY_EFFECTS_ATK_EV] = Pokemon_GetValue(mon, MON_DATA_ATK_EV, NULL);
    vars[APPLY_EFFECTS_DEF_EV] = Pokemon_GetValue(mon, MON_DATA_DEF_EV, NULL);
    vars[APPLY_EFFECTS_SPEED_EV] = Pokemon_GetValue(mon, MON_DATA_SPEED_EV, NULL);
    vars[APPLY_EFFECTS_SPATK_EV] = Pokemon_GetValue(mon, MON_DATA_SPATK_EV, NULL);
    vars[APPLY_EFFECTS_SPDEF_EV] = Pokemon_GetValue(mon, MON_DATA_SPDEF_EV, NULL);

    if (Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL) != SPECIES_SHEDINJA) {
        if (Item_Get(item, ITEM_PARAM_GIVE_HP_EVS) != FALSE) {
            vars[APPLY_EFFECTS_EV_CHANGE] = Item_Get(item, ITEM_PARAM_HP_EVS);
            vars[APPLY_EFFECTS_NEW_EV] = CalculateEVUpdate(vars[APPLY_EFFECTS_HP_EV], (vars[APPLY_EFFECTS_ATK_EV] + vars[APPLY_EFFECTS_DEF_EV] + vars[APPLY_EFFECTS_SPEED_EV] + vars[APPLY_EFFECTS_SPATK_EV] + vars[APPLY_EFFECTS_SPDEF_EV]), vars[APPLY_EFFECTS_EV_CHANGE]);

            if (vars[APPLY_EFFECTS_NEW_EV] != EV_UNCHANGED) {
                vars[APPLY_EFFECTS_HP_EV] = vars[APPLY_EFFECTS_NEW_EV];
                Pokemon_SetValue(mon, MON_DATA_HP_EV, &vars[APPLY_EFFECTS_HP_EV]);
                Pokemon_CalcLevelAndStats(mon);
                effectApplied = TRUE;
            }

            if (vars[APPLY_EFFECTS_EV_CHANGE] > 0) {
                effectFound = TRUE;
            }
        }
    }

    if (Item_Get(item, ITEM_PARAM_GIVE_ATK_EVS) != FALSE) {
        vars[APPLY_EFFECTS_EV_CHANGE] = Item_Get(item, ITEM_PARAM_ATK_EVS);
        vars[APPLY_EFFECTS_NEW_EV] = CalculateEVUpdate(vars[APPLY_EFFECTS_ATK_EV], (vars[APPLY_EFFECTS_HP_EV] + vars[APPLY_EFFECTS_DEF_EV] + vars[APPLY_EFFECTS_SPEED_EV] + vars[APPLY_EFFECTS_SPATK_EV] + vars[APPLY_EFFECTS_SPDEF_EV]), vars[APPLY_EFFECTS_EV_CHANGE]);

        if (vars[APPLY_EFFECTS_NEW_EV] != EV_UNCHANGED) {
            vars[APPLY_EFFECTS_ATK_EV] = vars[APPLY_EFFECTS_NEW_EV];
            Pokemon_SetValue(mon, MON_DATA_ATK_EV, &vars[APPLY_EFFECTS_ATK_EV]);
            Pokemon_CalcLevelAndStats(mon);
            effectApplied = TRUE;
        }

        if (vars[APPLY_EFFECTS_EV_CHANGE] > 0) {
            effectFound = TRUE;
        }
    }

    if (Item_Get(item, ITEM_PARAM_GIVE_DEF_EVS) != FALSE) {
        vars[APPLY_EFFECTS_EV_CHANGE] = Item_Get(item, ITEM_PARAM_DEF_EVS);
        vars[APPLY_EFFECTS_NEW_EV] = CalculateEVUpdate(vars[APPLY_EFFECTS_DEF_EV], (vars[APPLY_EFFECTS_HP_EV] + vars[APPLY_EFFECTS_ATK_EV] + vars[APPLY_EFFECTS_SPEED_EV] + vars[APPLY_EFFECTS_SPATK_EV] + vars[APPLY_EFFECTS_SPDEF_EV]), vars[APPLY_EFFECTS_EV_CHANGE]);

        if (vars[APPLY_EFFECTS_NEW_EV] != EV_UNCHANGED) {
            vars[APPLY_EFFECTS_DEF_EV] = vars[APPLY_EFFECTS_NEW_EV];
            Pokemon_SetValue(mon, MON_DATA_DEF_EV, &vars[APPLY_EFFECTS_DEF_EV]);
            Pokemon_CalcLevelAndStats(mon);
            effectApplied = TRUE;
        }

        if (vars[APPLY_EFFECTS_EV_CHANGE] > 0) {
            effectFound = TRUE;
        }
    }

    if (Item_Get(item, ITEM_PARAM_GIVE_SPEED_EVS) != FALSE) {
        vars[APPLY_EFFECTS_EV_CHANGE] = Item_Get(item, ITEM_PARAM_SPEED_EVS);
        vars[APPLY_EFFECTS_NEW_EV] = CalculateEVUpdate(vars[APPLY_EFFECTS_SPEED_EV], (vars[APPLY_EFFECTS_HP_EV] + vars[APPLY_EFFECTS_ATK_EV] + vars[APPLY_EFFECTS_DEF_EV] + vars[APPLY_EFFECTS_SPATK_EV] + vars[APPLY_EFFECTS_SPDEF_EV]), vars[APPLY_EFFECTS_EV_CHANGE]);

        if (vars[APPLY_EFFECTS_NEW_EV] != EV_UNCHANGED) {
            vars[APPLY_EFFECTS_SPEED_EV] = vars[APPLY_EFFECTS_NEW_EV];
            Pokemon_SetValue(mon, MON_DATA_SPEED_EV, &vars[APPLY_EFFECTS_SPEED_EV]);
            Pokemon_CalcLevelAndStats(mon);
            effectApplied = TRUE;
        }

        if (vars[APPLY_EFFECTS_EV_CHANGE] > 0) {
            effectFound = TRUE;
        }
    }

    if (Item_Get(item, ITEM_PARAM_GIVE_SPATK_EVS) != FALSE) {
        vars[APPLY_EFFECTS_EV_CHANGE] = Item_Get(item, ITEM_PARAM_SPATK_EVS);
        vars[APPLY_EFFECTS_NEW_EV] = CalculateEVUpdate(vars[APPLY_EFFECTS_SPATK_EV], (vars[APPLY_EFFECTS_HP_EV] + vars[APPLY_EFFECTS_ATK_EV] + vars[APPLY_EFFECTS_DEF_EV] + vars[APPLY_EFFECTS_SPEED_EV] + vars[APPLY_EFFECTS_SPDEF_EV]), vars[APPLY_EFFECTS_EV_CHANGE]);

        if (vars[APPLY_EFFECTS_NEW_EV] != EV_UNCHANGED) {
            vars[APPLY_EFFECTS_SPATK_EV] = vars[APPLY_EFFECTS_NEW_EV];
            Pokemon_SetValue(mon, MON_DATA_SPATK_EV, &vars[APPLY_EFFECTS_SPATK_EV]);
            Pokemon_CalcLevelAndStats(mon);
            effectApplied = TRUE;
        }

        if (vars[APPLY_EFFECTS_EV_CHANGE] > 0) {
            effectFound = TRUE;
        }
    }

    if (Item_Get(item, ITEM_PARAM_GIVE_SPDEF_EVS) != FALSE) {
        vars[APPLY_EFFECTS_EV_CHANGE] = Item_Get(item, ITEM_PARAM_SPDEF_EVS);
        vars[APPLY_EFFECTS_NEW_EV] = CalculateEVUpdate(vars[APPLY_EFFECTS_SPDEF_EV], (vars[APPLY_EFFECTS_HP_EV] + vars[APPLY_EFFECTS_ATK_EV] + vars[APPLY_EFFECTS_DEF_EV] + vars[APPLY_EFFECTS_SPEED_EV] + vars[APPLY_EFFECTS_SPATK_EV]), vars[APPLY_EFFECTS_EV_CHANGE]);

        if (vars[APPLY_EFFECTS_NEW_EV] != EV_UNCHANGED) {
            vars[APPLY_EFFECTS_SPDEF_EV] = vars[APPLY_EFFECTS_NEW_EV];
            Pokemon_SetValue(mon, MON_DATA_SPDEF_EV, &vars[APPLY_EFFECTS_SPDEF_EV]);
            Pokemon_CalcLevelAndStats(mon);
            effectApplied = TRUE;
        }

        if (vars[APPLY_EFFECTS_EV_CHANGE] > 0) {
            effectFound = TRUE;
        }
    }

    if ((effectApplied == FALSE) && (effectFound == TRUE)) {
        Heap_FreeToHeap(item);
        return 0;
    }

    vars[APPLY_EFFECTS_FRIENDSHIP] = Pokemon_GetValue(mon, MON_DATA_FRIENDSHIP, NULL);

    if (vars[APPLY_EFFECTS_FRIENDSHIP] < FRIENDSHIP_LOW_LIMIT) {
        if (Item_Get(item, ITEM_PARAM_GIVE_FRIENDSHIP_LOW) != FALSE) {
            if (UpdatePokemonFriendship(mon, vars[APPLY_EFFECTS_FRIENDSHIP], Item_Get(item, ITEM_PARAM_FRIENDSHIP_LOW), location, heapID) == 0) {
                Heap_FreeToHeap(item);
                return effectApplied;
            }
        }
    } else if ((vars[APPLY_EFFECTS_FRIENDSHIP] >= FRIENDSHIP_LOW_LIMIT) && (vars[APPLY_EFFECTS_FRIENDSHIP] < FRIENDSHIP_MEDIUM_LIMIT)) {
        if (Item_Get(item, ITEM_PARAM_GIVE_FRIENDSHIP_MED) != FALSE) {
            if (UpdatePokemonFriendship(mon, vars[APPLY_EFFECTS_FRIENDSHIP], Item_Get(item, ITEM_PARAM_FRIENDSHIP_MED), location, heapID) == 0) {
                Heap_FreeToHeap(item);
                return effectApplied;
            }
        }
    } else if ((vars[APPLY_EFFECTS_FRIENDSHIP] >= FRIENDSHIP_MEDIUM_LIMIT) && (vars[APPLY_EFFECTS_FRIENDSHIP] <= FRIENDSHIP_HIGH_LIMIT)) {
        if (Item_Get(item, ITEM_PARAM_GIVE_FRIENDSHIP_HIGH) != FALSE) {
            if (UpdatePokemonFriendship(mon, vars[APPLY_EFFECTS_FRIENDSHIP], Item_Get(item, ITEM_PARAM_FRIENDSHIP_HIGH), location, heapID) == 0) {
                Heap_FreeToHeap(item);
                return effectApplied;
            }
        }
    }

    Heap_FreeToHeap(item);
    return effectApplied;
}

u8 PartyUseItem_ApplyItemEffectsToPartyMon(Party *party, u16 itemId, u8 partySlot, u8 moveSlot, u16 location, enum HeapId heapID)
{
    Pokemon *mon = Party_GetPokemonBySlotIndex(party, partySlot);

    return PartyUseItem_ApplyItemEffectsToPokemon(mon, itemId, moveSlot, location, heapID);
}

static u8 IsMoveMissingPP(Pokemon *mon, u32 moveSlot)
{
    u16 move = Pokemon_GetValue(mon, MON_DATA_MOVE1 + moveSlot, NULL);

    if (move == MOVE_NONE) {
        return FALSE;
    }

    u8 ppCurr = Pokemon_GetValue(mon, MON_DATA_MOVE1_CUR_PP + moveSlot, NULL);
    u8 ppUps = Pokemon_GetValue(mon, MON_DATA_MOVE1_PP_UPS + moveSlot, NULL);

    if (ppCurr < MoveTable_CalcMaxPP(move, ppUps)) {
        return TRUE;
    }

    return FALSE;
}

static u8 RestorePokemonMovePP(Pokemon *mon, u32 moveSlot, u32 amount)
{
    u16 move = Pokemon_GetValue(mon, MON_DATA_MOVE1 + moveSlot, NULL);

    if (move == MOVE_NONE) {
        return FALSE;
    }

    u8 ppCurr = Pokemon_GetValue(mon, MON_DATA_MOVE1_CUR_PP + moveSlot, NULL);
    u8 ppMax = MoveTable_CalcMaxPP(move, Pokemon_GetValue(mon, MON_DATA_MOVE1_PP_UPS + moveSlot, NULL));

    if (ppCurr < ppMax) {
        if (amount == HEAL_FULL_PP) {
            ppCurr = ppMax;
        } else {
            ppCurr += amount;

            if (ppCurr > ppMax) {
                ppCurr = ppMax;
            }
        }

        Pokemon_SetValue(mon, MON_DATA_MOVE1_CUR_PP + moveSlot, &ppCurr);
        return TRUE;
    }

    return FALSE;
}

static u8 IncreaseMovePPUps(Pokemon *mon, u32 moveSlot, u32 amount)
{
    u8 currPp; // forward declaration required to match

    u8 currPpUps = Pokemon_GetValue(mon, MON_DATA_MOVE1_PP_UPS + moveSlot, NULL);

    if (currPpUps == MAX_PP_UP) {
        return FALSE;
    }

    u16 moveId = (u16)Pokemon_GetValue(mon, MON_DATA_MOVE1 + moveSlot, NULL);

    if (MoveTable_CalcMaxPP(moveId, 0) < PP_UP_MININUM_MAX_PP) {
        return FALSE;
    }

    currPp = (u8)Pokemon_GetValue(mon, MON_DATA_MOVE1_CUR_PP + moveSlot, NULL);
    u8 maxPp = (u8)MoveTable_CalcMaxPP(moveId, currPpUps);

    if (currPpUps + amount > MAX_PP_UP) {
        currPpUps = MAX_PP_UP;
    } else {
        currPpUps = currPpUps + amount;
    }

    currPp = currPp + MoveTable_CalcMaxPP(moveId, currPpUps) - maxPp;

    Pokemon_SetValue(mon, MON_DATA_MOVE1_PP_UPS + moveSlot, &currPpUps);
    Pokemon_SetValue(mon, MON_DATA_MOVE1_CUR_PP + moveSlot, &currPp);

    return TRUE;
}

static void RestorePokemonHP(Pokemon *mon, u32 currentHp, u32 maxHp, u32 amount)
{
    if (maxHp == 1) {
        amount = 1;
    } else if (amount == HEAL_FULL_HP) {
        amount = maxHp;
    } else if (amount == HEAL_HALF_HP) {
        amount = maxHp / 2;
    } else if (amount == HEAL_QUARTER_HP) {
        amount = maxHp / 4;
    }

    if (currentHp + amount > maxHp) {
        currentHp = maxHp;
    } else {
        currentHp += amount;
    }

    Pokemon_SetValue(mon, MON_DATA_CURRENT_HP, &currentHp);
}

static s32 CalculateEVUpdate(s32 current, s32 sumOthers, s32 change)
{
    if ((current == 0) && (change < 0)) {
        return EV_UNCHANGED;
    }

    if ((current >= MAX_EV_VITAMIN) && (change > 0)) {
        return EV_UNCHANGED;
    }

    if (((current + sumOthers) >= MAX_EVS_ALL_STATS) && (change > 0)) {
        return EV_UNCHANGED;
    }

    current += change;

    if (current > MAX_EV_VITAMIN) {
        current = MAX_EV_VITAMIN;
    } else if (current < 0) {
        current = 0;
    }

    if ((current + sumOthers) > MAX_EVS_ALL_STATS) {
        current = MAX_EVS_ALL_STATS - sumOthers;
    }

    return current;
}

static u8 CheckFriendshipItemEffect(Pokemon *mon, ItemData *item)
{
    s32 friendship = Pokemon_GetValue(mon, MON_DATA_FRIENDSHIP, NULL);

    if (friendship >= MAX_POKEMON_FRIENDSHIP) {
        return FALSE;
    }

    if (friendship < FRIENDSHIP_LOW_LIMIT) {
        if (Item_Get(item, ITEM_PARAM_GIVE_FRIENDSHIP_LOW) != 0) {
            if (Item_Get(item, ITEM_PARAM_FRIENDSHIP_LOW) > 0) {
                return TRUE;
            }
        }

        return FALSE;
    } else if ((friendship >= FRIENDSHIP_LOW_LIMIT) && (friendship < FRIENDSHIP_MEDIUM_LIMIT)) {
        if (Item_Get(item, ITEM_PARAM_GIVE_FRIENDSHIP_MED) != 0) {
            if (Item_Get(item, ITEM_PARAM_FRIENDSHIP_MED) > 0) {
                return TRUE;
            }
        }

        return FALSE;
    } else if ((friendship >= FRIENDSHIP_MEDIUM_LIMIT) && (friendship < FRIENDSHIP_HIGH_LIMIT)) {
        if (Item_Get(item, ITEM_PARAM_GIVE_FRIENDSHIP_HIGH) != 0) {
            if (Item_Get(item, ITEM_PARAM_FRIENDSHIP_HIGH) > 0) {
                return TRUE;
            }
        }

        return FALSE;
    }

    return FALSE;
}

static u8 UpdatePokemonFriendship(Pokemon *mon, s32 current, s32 change, u16 location, enum HeapId heapID)
{
    if ((current == MAX_POKEMON_FRIENDSHIP) && (change > 0)) {
        return FALSE;
    }

    if ((current == 0) && (change < 0)) {
        return FALSE;
    }

    if (change > 0) {
        if (Item_LoadParam(Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL), ITEM_PARAM_HOLD_EFFECT, heapID) == HOLD_EFFECT_FRIENDSHIP_UP) {
            change = change * HELD_ITEM_FRIENDSHIP_UP_MULTIPLIER;
        }

        if (Pokemon_GetValue(mon, MON_DATA_POKEBALL, NULL) == ITEM_LUXURY_BALL) {
            change++;
        }

        if (Pokemon_GetValue(mon, MON_DATA_MET_LOCATION, NULL) == location) {
            change++;
        }
    }

    change += current;

    if (change > MAX_POKEMON_FRIENDSHIP) {
        change = MAX_POKEMON_FRIENDSHIP;
    }

    if (change < 0) {
        change = 0;
    }

    Pokemon_SetValue(mon, MON_DATA_FRIENDSHIP, &change);
    return TRUE;
}

void Party_HealAllPokemon(Party *party)
{
    int j; // forward declaration required to match

    int monCount = Party_GetCurrentCount(party);

    for (int i = 0; i < monCount; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(party, i);

        if (Pokemon_GetValue(mon, MON_DATA_SPECIES_EXISTS, NULL) == 0) {
            continue;
        }

        u32 tmp = Pokemon_GetValue(mon, MON_DATA_MAX_HP, NULL);
        Pokemon_SetValue(mon, MON_DATA_CURRENT_HP, &tmp);

        tmp = MON_CONDITION_NONE;
        Pokemon_SetValue(mon, MON_DATA_STATUS_CONDITION, &tmp);

        for (j = 0; j < LEARNED_MOVES_MAX; j++) {
            if (IsMoveMissingPP(mon, j) == TRUE) {
                RestorePokemonMovePP(mon, j, HEAL_FULL_PP);
            }
        }
    }
}
