#include "item_use_pokemon.h"

#include <nitro.h>
#include <string.h>

#include "constants/battle/condition.h"
#include "constants/items.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "generated/item_hold_effects.h"
#include "generated/moves.h"
#include "generated/species.h"

#include "heap.h"
#include "item.h"
#include "move_table.h"
#include "party.h"
#include "pokemon.h"

#define PP_UP_REQUIREMENT 5 // Moves with fewer max PP can't benefit from PP Ups (e.g. Sketch)

#define MAX_EV_VITAMIN 100
#define EV_UNCHANGED   -1

#define HEAL_FULL_HP    255
#define HEAL_HALF_HP    254
#define HEAL_QUARTER_HP 253

#define HEAL_FULL_PP 127

// Convenience macros to clarify what each element of the vars array is used for
#define vCheckStatus      vars[0]
#define vCheckCurrentHP   vars[0]
#define vCheckMoveIndex   vars[0]
#define vCheckEVHP        vars[0]
#define vCheckEVAttack    vars[1]
#define vCheckEVDefense   vars[2]
#define vCheckEVSpeed     vars[3]
#define vCheckEVSpAttack  vars[4]
#define vCheckEVSpDefense vars[5]
#define vCheckEVChange    vars[6]

#define CHECK_EFFECTS_EV_SUM (vCheckEVHP + vCheckEVAttack + vCheckEVDefense + vCheckEVSpeed + vCheckEVSpAttack + vCheckEVSpDefense)

#define CHECK_STATUS(__itemParam, __condition)        \
    do {                                              \
        if (Item_Get(item, __itemParam)               \
            && (vCheckStatus & (__condition)) != 0) { \
            Heap_Free(item);                          \
            return TRUE;                              \
        }                                             \
    } while (0)

#define CHECK_EV_ITEM_EFFECT(__itemParamGivesEVs, __itemParamEVsGiven, __currentEV)             \
    do {                                                                                        \
        if (Item_Get(item, __itemParamGivesEVs)) {                                              \
            vCheckEVChange = Item_Get(item, __itemParamEVsGiven);                               \
            if (vCheckEVChange > 0) {                                                           \
                if (__currentEV < MAX_EV_VITAMIN && CHECK_EFFECTS_EV_SUM < MAX_EVS_ALL_STATS) { \
                    Heap_Free(item);                                                            \
                    return TRUE;                                                                \
                }                                                                               \
            } else if (vCheckEVChange < 0) {                                                    \
                if (__currentEV > 0) {                                                          \
                    Heap_Free(item);                                                            \
                    return TRUE;                                                                \
                }                                                                               \
                if (CheckFriendshipItemEffect(mon, item) == TRUE) {                             \
                    Heap_Free(item);                                                            \
                    return TRUE;                                                                \
                }                                                                               \
            }                                                                                   \
        }                                                                                       \
    } while (0)

// Convenience macros to clarify what each element of the vars array is used for
#define vApplyStatus       vars[0]
#define vApplyStatusTmp    vars[1]
#define vApplyCurrentHP    vars[0]
#define vApplyMaxHP        vars[1]
#define vApplyLevel        vars[2]
#define vApplyLevelUpMaxHP vars[3]
#define vApplyMoveIndex    vars[0]
#define vApplyEVHP         vars[0]
#define vApplyEVAttack     vars[1]
#define vApplyEVDefense    vars[2]
#define vApplyEVSpeed      vars[3]
#define vApplyEVSpAttack   vars[4]
#define vApplyEVSpDefense  vars[5]
#define vApplyUpdatedEV    vars[6]
#define vApplyEVChange     vars[7]
#define vApplyFriendship   vars[0]

#define APPLY_EFFECTS_EV_SUM_EXCLUDE_HP        (vApplyEVAttack + vApplyEVDefense + vApplyEVSpeed + vApplyEVSpAttack + vApplyEVSpDefense)
#define APPLY_EFFECTS_EV_SUM_EXCLUDE_ATTACK    (vApplyEVHP + vApplyEVDefense + vApplyEVSpeed + vApplyEVSpAttack + vApplyEVSpDefense)
#define APPLY_EFFECTS_EV_SUM_EXCLUDE_DEFENSE   (vApplyEVHP + vApplyEVAttack + vApplyEVSpeed + vApplyEVSpAttack + vApplyEVSpDefense)
#define APPLY_EFFECTS_EV_SUM_EXCLUDE_SPEED     (vApplyEVHP + vApplyEVAttack + vApplyEVDefense + vApplyEVSpAttack + vApplyEVSpDefense)
#define APPLY_EFFECTS_EV_SUM_EXCLUDE_SPATTACK  (vApplyEVHP + vApplyEVAttack + vApplyEVDefense + vApplyEVSpeed + vApplyEVSpDefense)
#define APPLY_EFFECTS_EV_SUM_EXCLUDE_SPDEFENSE (vApplyEVHP + vApplyEVAttack + vApplyEVDefense + vApplyEVSpeed + vApplyEVSpAttack)

#define APPLY_HEAL_STATUS(__itemParam, __condition) \
    do {                                            \
        if (Item_Get(item, __itemParam)) {          \
            vApplyStatusTmp &= ~__condition;        \
            effectFound = TRUE;                     \
        }                                           \
    } while (0)

#define APPLY_EV_EFFECT(__itemParamGivesEVs, __itemParamEVsGiven, __monDataParam, __currentEV, __otherEVsSum) \
    do {                                                                                                      \
        if (Item_Get(item, __itemParamGivesEVs)) {                                                            \
            vApplyEVChange = Item_Get(item, __itemParamEVsGiven);                                             \
            vApplyUpdatedEV = CalculateEVUpdate(__currentEV, __otherEVsSum, vApplyEVChange);                  \
            if (vApplyUpdatedEV != EV_UNCHANGED) {                                                            \
                __currentEV = vApplyUpdatedEV;                                                                \
                Pokemon_SetValue(mon, __monDataParam, &__currentEV);                                          \
                Pokemon_CalcLevelAndStats(mon);                                                               \
                effectApplied = TRUE;                                                                         \
            }                                                                                                 \
            if (vApplyEVChange > 0) {                                                                         \
                effectFound = TRUE;                                                                           \
            }                                                                                                 \
        }                                                                                                     \
    } while (0)

static u8 IsMoveMissingPP(Pokemon *mon, u32 moveSlot);
static u8 RestorePokemonMovePP(Pokemon *mon, u32 moveSlot, u32 amount);
static u8 IncreaseMovePPUps(Pokemon *mon, u32 moveSlot, u32 amount);
static void RestorePokemonHP(Pokemon *mon, u32 currentHp, u32 maxHp, u32 amount);
static s32 CalculateEVUpdate(s32 current, s32 sumOthers, s32 change);
static u8 CheckFriendshipItemEffect(Pokemon *mon, ItemData *item);
static u8 UpdatePokemonFriendship(Pokemon *mon, s32 current, s32 change, u16 location, enum HeapID heapID);

u8 Pokemon_CheckItemEffects(Pokemon *mon, u16 itemId, u16 moveSlot, enum HeapID heapID)
{
    // For some reason, the original developer decided to use an array to store what should have been individual variables
    // For more clarity on what each slot is used for, and to make them look more like individual variables,
    // convenience macros vCheck... are defined defined at the top of this file.
    s32 vars[8];

    ItemData *item = Item_Load(itemId, ITEM_FILE_TYPE_DATA, heapID);

    if (Item_Get(item, ITEM_PARAM_PARTY_USE) != TRUE) {
        Heap_Free(item);
        return FALSE;
    }

    vCheckStatus = Pokemon_GetValue(mon, MON_DATA_STATUS, NULL);

    CHECK_STATUS(ITEM_PARAM_HEAL_SLEEP, MON_CONDITION_SLEEP);
    CHECK_STATUS(ITEM_PARAM_HEAL_POISON, (MON_CONDITION_POISON | MON_CONDITION_TOXIC));
    CHECK_STATUS(ITEM_PARAM_HEAL_BURN, MON_CONDITION_BURN);
    CHECK_STATUS(ITEM_PARAM_HEAL_FREEZE, MON_CONDITION_FREEZE);
    CHECK_STATUS(ITEM_PARAM_HEAL_PARALYSIS, MON_CONDITION_PARALYSIS);

    vCheckCurrentHP = Pokemon_GetValue(mon, MON_DATA_HP, NULL);

    if ((Item_Get(item, ITEM_PARAM_REVIVE) || Item_Get(item, ITEM_PARAM_REVIVE_ALL))
        && Item_Get(item, ITEM_PARAM_LEVEL_UP) == FALSE) {
        if (vCheckCurrentHP == 0) {
            Heap_Free(item);
            return TRUE;
        }
    } else if (Item_Get(item, ITEM_PARAM_HP_RESTORE)) {
        if (vCheckCurrentHP != 0 && vCheckCurrentHP < Pokemon_GetValue(mon, MON_DATA_MAX_HP, NULL)) {
            Heap_Free(item);
            return TRUE;
        }
    }

    if (Item_Get(item, ITEM_PARAM_LEVEL_UP)) {
        if (Pokemon_GetValue(mon, MON_DATA_LEVEL, NULL) < MAX_POKEMON_LEVEL) {
            Heap_Free(item);
            return TRUE;
        }
    }

    if (Item_Get(item, ITEM_PARAM_EVOLVE)) {
        if (Pokemon_GetEvolutionTargetSpecies(NULL, mon, EVO_CLASS_BY_ITEM, itemId, NULL) != SPECIES_NONE) {
            Heap_Free(item);
            return TRUE;
        }
    }

    if (Item_Get(item, ITEM_PARAM_PP_UP) || Item_Get(item, ITEM_PARAM_PP_MAX)) {
        if (Pokemon_GetValue(mon, MON_DATA_MOVE1_PP_UPS + moveSlot, NULL) < MAX_PP_UP_BONUSES
            && MoveTable_CalcMaxPP(Pokemon_GetValue(mon, MON_DATA_MOVE1 + moveSlot, NULL), 0) >= PP_UP_REQUIREMENT) {
            Heap_Free(item);
            return TRUE;
        }
    }

    if (Item_Get(item, ITEM_PARAM_PP_RESTORE)) {
        if (IsMoveMissingPP(mon, moveSlot) == TRUE) {
            Heap_Free(item);
            return TRUE;
        }
    }

    if (Item_Get(item, ITEM_PARAM_PP_RESTORE_ALL)) {
        for (vCheckMoveIndex = 0; vCheckMoveIndex < LEARNED_MOVES_MAX; vCheckMoveIndex++) {
            if (IsMoveMissingPP(mon, vCheckMoveIndex) == TRUE) {
                Heap_Free(item);
                return TRUE;
            }
        }
    }

    vCheckEVHP = Pokemon_GetValue(mon, MON_DATA_HP_EV, NULL);
    vCheckEVAttack = Pokemon_GetValue(mon, MON_DATA_ATK_EV, NULL);
    vCheckEVDefense = Pokemon_GetValue(mon, MON_DATA_DEF_EV, NULL);
    vCheckEVSpeed = Pokemon_GetValue(mon, MON_DATA_SPEED_EV, NULL);
    vCheckEVSpAttack = Pokemon_GetValue(mon, MON_DATA_SPATK_EV, NULL);
    vCheckEVSpDefense = Pokemon_GetValue(mon, MON_DATA_SPDEF_EV, NULL);

    if (Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL) != SPECIES_SHEDINJA) {
        CHECK_EV_ITEM_EFFECT(ITEM_PARAM_GIVE_HP_EVS, ITEM_PARAM_HP_EVS, vCheckEVHP);
    }

    CHECK_EV_ITEM_EFFECT(ITEM_PARAM_GIVE_ATK_EVS, ITEM_PARAM_ATK_EVS, vCheckEVAttack);
    CHECK_EV_ITEM_EFFECT(ITEM_PARAM_GIVE_DEF_EVS, ITEM_PARAM_DEF_EVS, vCheckEVDefense);
    CHECK_EV_ITEM_EFFECT(ITEM_PARAM_GIVE_SPEED_EVS, ITEM_PARAM_SPEED_EVS, vCheckEVSpeed);
    CHECK_EV_ITEM_EFFECT(ITEM_PARAM_GIVE_SPATK_EVS, ITEM_PARAM_SPATK_EVS, vCheckEVSpAttack);
    CHECK_EV_ITEM_EFFECT(ITEM_PARAM_GIVE_SPDEF_EVS, ITEM_PARAM_SPDEF_EVS, vCheckEVSpDefense);

    Heap_Free(item);

    return FALSE;
}

u8 Party_CheckItemEffectsOnMember(Party *party, u16 itemId, u8 partySlot, u8 moveSlot, enum HeapID heapID)
{
    Pokemon *mon = Party_GetPokemonBySlotIndex(party, partySlot);
    return Pokemon_CheckItemEffects(mon, itemId, moveSlot, heapID);
}

u8 Pokemon_ApplyItemEffects(Pokemon *mon, u16 itemId, u16 moveSlot, u16 location, enum HeapID heapID)
{
    // For some reason, the original developer decided to use an array to store what should have been individual variables
    // For more clarity on what each slot is used for, and to make them look more like individual variables,
    // convenience macros vApply... are defined at the top of this file.
    s32 vars[8];

    ItemData *item = Item_Load(itemId, ITEM_FILE_TYPE_DATA, heapID);

    if (Item_Get(item, ITEM_PARAM_PARTY_USE) != TRUE) {
        Heap_Free(item);
        return FALSE;
    }

    u8 effectApplied = FALSE;
    u8 effectFound = FALSE;

    vApplyStatus = Pokemon_GetValue(mon, MON_DATA_STATUS, NULL);
    vApplyStatusTmp = vApplyStatus;

    APPLY_HEAL_STATUS(ITEM_PARAM_HEAL_SLEEP, MON_CONDITION_SLEEP);
    APPLY_HEAL_STATUS(ITEM_PARAM_HEAL_POISON, MON_CONDITION_ANY_POISON);
    APPLY_HEAL_STATUS(ITEM_PARAM_HEAL_BURN, MON_CONDITION_BURN);
    APPLY_HEAL_STATUS(ITEM_PARAM_HEAL_FREEZE, MON_CONDITION_FREEZE);
    APPLY_HEAL_STATUS(ITEM_PARAM_HEAL_PARALYSIS, MON_CONDITION_PARALYSIS);

    if (vApplyStatus != vApplyStatusTmp) {
        Pokemon_SetValue(mon, MON_DATA_STATUS, &vApplyStatusTmp);
        effectApplied = TRUE;
    }

    vApplyCurrentHP = Pokemon_GetValue(mon, MON_DATA_HP, NULL);
    vApplyMaxHP = Pokemon_GetValue(mon, MON_DATA_MAX_HP, NULL);

    if ((Item_Get(item, ITEM_PARAM_REVIVE) || Item_Get(item, ITEM_PARAM_REVIVE_ALL))
        && Item_Get(item, ITEM_PARAM_LEVEL_UP)) {

        if (vApplyCurrentHP == 0) {
            RestorePokemonHP(mon, vApplyCurrentHP, vApplyMaxHP, Item_Get(item, ITEM_PARAM_HP_RESTORED));
            effectApplied = TRUE;
        }

        effectFound = TRUE;
    } else if (Item_Get(item, ITEM_PARAM_HP_RESTORE)) {
        if (vApplyCurrentHP < vApplyMaxHP) {
            RestorePokemonHP(mon, vApplyCurrentHP, vApplyMaxHP, Item_Get(item, ITEM_PARAM_HP_RESTORED));
            effectApplied = TRUE;
        }

        effectFound = TRUE;
    }

    vApplyLevel = Pokemon_GetValue(mon, MON_DATA_LEVEL, NULL);

    if (Item_Get(item, ITEM_PARAM_LEVEL_UP)) {
        if (vApplyLevel < MAX_POKEMON_LEVEL) {
            Pokemon_IncreaseValue(mon, MON_DATA_EXPERIENCE, Pokemon_GetExpToNextLevel(mon));
            Pokemon_CalcLevelAndStats(mon);

            if (vApplyCurrentHP == 0) {
                vApplyLevelUpMaxHP = Pokemon_GetValue(mon, MON_DATA_MAX_HP, NULL);
                RestorePokemonHP(mon, vApplyCurrentHP, vApplyLevelUpMaxHP, vApplyLevelUpMaxHP - vApplyMaxHP);
            }

            effectApplied = TRUE;
        }

        effectFound = TRUE;
    }

    if (Item_Get(item, ITEM_PARAM_EVOLVE)) {
        effectFound = TRUE;
    }

    if (Item_Get(item, ITEM_PARAM_PP_UP)) {
        if (IncreaseMovePPUps(mon, moveSlot, 1) == TRUE) {
            effectApplied = TRUE;
        }

        effectFound = TRUE;
    } else if (Item_Get(item, ITEM_PARAM_PP_MAX)) {
        if (IncreaseMovePPUps(mon, moveSlot, MAX_PP_UP_BONUSES) == TRUE) {
            effectApplied = TRUE;
        }

        effectFound = TRUE;
    }

    if (Item_Get(item, ITEM_PARAM_PP_RESTORE)) {
        if (RestorePokemonMovePP(mon, moveSlot, Item_Get(item, ITEM_PARAM_PP_RESTORED)) == TRUE) {
            effectApplied = TRUE;
        }

        effectFound = TRUE;
    } else if (Item_Get(item, ITEM_PARAM_PP_RESTORE_ALL)) {
        for (vApplyMoveIndex = 0; vApplyMoveIndex < LEARNED_MOVES_MAX; vApplyMoveIndex++) {
            if (RestorePokemonMovePP(mon, vApplyMoveIndex, Item_Get(item, ITEM_PARAM_PP_RESTORED)) == TRUE) {
                effectApplied = TRUE;
            }
        }

        effectFound = TRUE;
    }

    vApplyEVHP = Pokemon_GetValue(mon, MON_DATA_HP_EV, NULL);
    vApplyEVAttack = Pokemon_GetValue(mon, MON_DATA_ATK_EV, NULL);
    vApplyEVDefense = Pokemon_GetValue(mon, MON_DATA_DEF_EV, NULL);
    vApplyEVSpeed = Pokemon_GetValue(mon, MON_DATA_SPEED_EV, NULL);
    vApplyEVSpAttack = Pokemon_GetValue(mon, MON_DATA_SPATK_EV, NULL);
    vApplyEVSpDefense = Pokemon_GetValue(mon, MON_DATA_SPDEF_EV, NULL);

    if (Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL) != SPECIES_SHEDINJA) {
        APPLY_EV_EFFECT(ITEM_PARAM_GIVE_HP_EVS, ITEM_PARAM_HP_EVS, MON_DATA_HP_EV, vApplyEVHP, APPLY_EFFECTS_EV_SUM_EXCLUDE_HP);
    }

    APPLY_EV_EFFECT(ITEM_PARAM_GIVE_ATK_EVS, ITEM_PARAM_ATK_EVS, MON_DATA_ATK_EV, vApplyEVAttack, APPLY_EFFECTS_EV_SUM_EXCLUDE_ATTACK);
    APPLY_EV_EFFECT(ITEM_PARAM_GIVE_DEF_EVS, ITEM_PARAM_DEF_EVS, MON_DATA_DEF_EV, vApplyEVDefense, APPLY_EFFECTS_EV_SUM_EXCLUDE_DEFENSE);
    APPLY_EV_EFFECT(ITEM_PARAM_GIVE_SPEED_EVS, ITEM_PARAM_SPEED_EVS, MON_DATA_SPEED_EV, vApplyEVSpeed, APPLY_EFFECTS_EV_SUM_EXCLUDE_SPEED);
    APPLY_EV_EFFECT(ITEM_PARAM_GIVE_SPATK_EVS, ITEM_PARAM_SPATK_EVS, MON_DATA_SPATK_EV, vApplyEVSpAttack, APPLY_EFFECTS_EV_SUM_EXCLUDE_SPATTACK);
    APPLY_EV_EFFECT(ITEM_PARAM_GIVE_SPDEF_EVS, ITEM_PARAM_SPDEF_EVS, MON_DATA_SPDEF_EV, vApplyEVSpDefense, APPLY_EFFECTS_EV_SUM_EXCLUDE_SPDEFENSE);

    if ((effectApplied == FALSE) && (effectFound == TRUE)) {
        Heap_Free(item);
        return 0;
    }

    vApplyFriendship = Pokemon_GetValue(mon, MON_DATA_FRIENDSHIP, NULL);

    if (vApplyFriendship < LOW_FRIENDSHIP_LIMIT) {
        if (Item_Get(item, ITEM_PARAM_GIVE_FRIENDSHIP_LOW)) {
            if (UpdatePokemonFriendship(mon, vApplyFriendship, Item_Get(item, ITEM_PARAM_FRIENDSHIP_LOW), location, heapID) == 0) {
                Heap_Free(item);
                return effectApplied;
            }
        }
    } else if (vApplyFriendship >= LOW_FRIENDSHIP_LIMIT && vApplyFriendship < MED_FRIENDSHIP_LIMIT) {
        if (Item_Get(item, ITEM_PARAM_GIVE_FRIENDSHIP_MED)) {
            if (UpdatePokemonFriendship(mon, vApplyFriendship, Item_Get(item, ITEM_PARAM_FRIENDSHIP_MED), location, heapID) == 0) {
                Heap_Free(item);
                return effectApplied;
            }
        }
    } else if (vApplyFriendship >= MED_FRIENDSHIP_LIMIT && vApplyFriendship <= HIGH_FRIENDSHIP_LIMIT) {
        if (Item_Get(item, ITEM_PARAM_GIVE_FRIENDSHIP_HIGH)) {
            if (UpdatePokemonFriendship(mon, vApplyFriendship, Item_Get(item, ITEM_PARAM_FRIENDSHIP_HIGH), location, heapID) == 0) {
                Heap_Free(item);
                return effectApplied;
            }
        }
    }

    Heap_Free(item);
    return effectApplied;
}

u8 Party_ApplyItemEffectsToMember(Party *party, u16 itemId, u8 partySlot, u8 moveSlot, u16 location, enum HeapID heapID)
{
    Pokemon *mon = Party_GetPokemonBySlotIndex(party, partySlot);
    return Pokemon_ApplyItemEffects(mon, itemId, moveSlot, location, heapID);
}

static u8 IsMoveMissingPP(Pokemon *mon, u32 moveSlot)
{
    u16 move = Pokemon_GetValue(mon, MON_DATA_MOVE1 + moveSlot, NULL);

    if (move == MOVE_NONE) {
        return FALSE;
    }

    u8 currPP = Pokemon_GetValue(mon, MON_DATA_MOVE1_PP + moveSlot, NULL);
    u8 ppUps = Pokemon_GetValue(mon, MON_DATA_MOVE1_PP_UPS + moveSlot, NULL);

    if (currPP < MoveTable_CalcMaxPP(move, ppUps)) {
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

    u8 currPP = Pokemon_GetValue(mon, MON_DATA_MOVE1_PP + moveSlot, NULL);
    u8 maxPP = MoveTable_CalcMaxPP(move, Pokemon_GetValue(mon, MON_DATA_MOVE1_PP_UPS + moveSlot, NULL));

    if (currPP < maxPP) {
        if (amount == HEAL_FULL_PP) {
            currPP = maxPP;
        } else {
            currPP += amount;

            if (currPP > maxPP) {
                currPP = maxPP;
            }
        }

        Pokemon_SetValue(mon, MON_DATA_MOVE1_PP + moveSlot, &currPP);
        return TRUE;
    }

    return FALSE;
}

static u8 IncreaseMovePPUps(Pokemon *mon, u32 moveSlot, u32 amount)
{
    u8 currPP; // forward declaration required to match

    u8 currPPUps = Pokemon_GetValue(mon, MON_DATA_MOVE1_PP_UPS + moveSlot, NULL);

    if (currPPUps == MAX_PP_UP_BONUSES) {
        return FALSE;
    }

    u16 moveId = Pokemon_GetValue(mon, MON_DATA_MOVE1 + moveSlot, NULL);

    if (MoveTable_CalcMaxPP(moveId, 0) < PP_UP_REQUIREMENT) {
        return FALSE;
    }

    currPP = Pokemon_GetValue(mon, MON_DATA_MOVE1_PP + moveSlot, NULL);
    u8 maxPP = MoveTable_CalcMaxPP(moveId, currPPUps);

    if (currPPUps + amount > MAX_PP_UP_BONUSES) {
        currPPUps = MAX_PP_UP_BONUSES;
    } else {
        currPPUps = currPPUps + amount;
    }

    currPP = currPP + MoveTable_CalcMaxPP(moveId, currPPUps) - maxPP;

    Pokemon_SetValue(mon, MON_DATA_MOVE1_PP_UPS + moveSlot, &currPPUps);
    Pokemon_SetValue(mon, MON_DATA_MOVE1_PP + moveSlot, &currPP);

    return TRUE;
}

static void RestorePokemonHP(Pokemon *mon, u32 currentHP, u32 maxHP, u32 amount)
{
    if (maxHP == 1) {
        amount = 1;
    } else if (amount == HEAL_FULL_HP) {
        amount = maxHP;
    } else if (amount == HEAL_HALF_HP) {
        amount = maxHP / 2;
    } else if (amount == HEAL_QUARTER_HP) {
        amount = maxHP / 4;
    }

    if (currentHP + amount > maxHP) {
        currentHP = maxHP;
    } else {
        currentHP += amount;
    }

    Pokemon_SetValue(mon, MON_DATA_HP, &currentHP);
}

static s32 CalculateEVUpdate(s32 current, s32 sumOthers, s32 change)
{
    if (current == 0 && change < 0) {
        return EV_UNCHANGED;
    }

    if (current >= MAX_EV_VITAMIN && change > 0) {
        return EV_UNCHANGED;
    }

    if ((current + sumOthers) >= MAX_EVS_ALL_STATS && change > 0) {
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

    if (friendship >= MAX_FRIENDSHIP_VALUE) {
        return FALSE;
    }

    if (friendship < LOW_FRIENDSHIP_LIMIT) {
        if (Item_Get(item, ITEM_PARAM_GIVE_FRIENDSHIP_LOW) != 0) {
            if (Item_Get(item, ITEM_PARAM_FRIENDSHIP_LOW) > 0) {
                return TRUE;
            }
        }

        return FALSE;
    } else if (friendship >= LOW_FRIENDSHIP_LIMIT && friendship < MED_FRIENDSHIP_LIMIT) {
        if (Item_Get(item, ITEM_PARAM_GIVE_FRIENDSHIP_MED) != 0) {
            if (Item_Get(item, ITEM_PARAM_FRIENDSHIP_MED) > 0) {
                return TRUE;
            }
        }

        return FALSE;
    } else if (friendship >= MED_FRIENDSHIP_LIMIT && friendship < HIGH_FRIENDSHIP_LIMIT) {
        if (Item_Get(item, ITEM_PARAM_GIVE_FRIENDSHIP_HIGH) != 0) {
            if (Item_Get(item, ITEM_PARAM_FRIENDSHIP_HIGH) > 0) {
                return TRUE;
            }
        }

        return FALSE;
    }

    return FALSE;
}

static u8 UpdatePokemonFriendship(Pokemon *mon, s32 current, s32 change, u16 location, enum HeapID heapID)
{
    if (current == MAX_FRIENDSHIP_VALUE && change > 0) {
        return FALSE;
    }

    if (current == 0 && change < 0) {
        return FALSE;
    }

    if (change > 0) {
        if (Item_LoadParam(Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL), ITEM_PARAM_HOLD_EFFECT, heapID) == HOLD_EFFECT_FRIENDSHIP_UP) {
            change = change * HELD_ITEM_FRIENDSHIP_UP_MULTIPLIER;
        }

        if (Pokemon_GetValue(mon, MON_DATA_POKEBALL, NULL) == ITEM_LUXURY_BALL) {
            change++;
        }

        if (Pokemon_GetValue(mon, MON_DATA_EGG_LOCATION, NULL) == location) {
            change++;
        }
    }

    change += current;

    if (change > MAX_FRIENDSHIP_VALUE) {
        change = MAX_FRIENDSHIP_VALUE;
    }

    if (change < 0) {
        change = 0;
    }

    Pokemon_SetValue(mon, MON_DATA_FRIENDSHIP, &change);
    return TRUE;
}

void Party_HealAllMembers(Party *party)
{
    int j; // forward declaration required to match

    int monCount = Party_GetCurrentCount(party);

    for (int i = 0; i < monCount; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(party, i);

        if (Pokemon_GetValue(mon, MON_DATA_SPECIES_EXISTS, NULL) == FALSE) {
            continue;
        }

        u32 tmp = Pokemon_GetValue(mon, MON_DATA_MAX_HP, NULL);
        Pokemon_SetValue(mon, MON_DATA_HP, &tmp);

        tmp = MON_CONDITION_NONE;
        Pokemon_SetValue(mon, MON_DATA_STATUS, &tmp);

        for (j = 0; j < LEARNED_MOVES_MAX; j++) {
            if (IsMoveMissingPP(mon, j) == TRUE) {
                RestorePokemonMovePP(mon, j, HEAL_FULL_PP);
            }
        }
    }
}
