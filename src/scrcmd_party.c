#include "scrcmd_party.h"

#include <nitro.h>
#include <string.h>

#include "constants/heap.h"
#include "generated/natures.h"
#include "generated/species.h"

#include "struct_decls/pc_boxes_decl.h"

#include "field/field_system.h"
#include "overlay005/daycare.h"
#include "savedata/save_table.h"

#include "field_script_context.h"
#include "field_system.h"
#include "heap.h"
#include "inlines.h"
#include "item.h"
#include "map_header.h"
#include "party.h"
#include "pc_boxes.h"
#include "pokemon.h"
#include "ribbon.h"
#include "save_player.h"
#include "tv_episode_segment.h"
#include "unk_02017038.h"
#include "unk_02054884.h"
#include "unk_0205DFC4.h"

BOOL ScrCmd_GivePokemon(ScriptContext *ctx)
{
    int metLocation = MapHeader_GetMapLabelTextID(ctx->fieldSystem->location->mapId);
    int metTerrain = TERRAIN_MAX;
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 species = ScriptContext_GetVar(ctx);
    u16 level = ScriptContext_GetVar(ctx);
    u16 heldItem = ScriptContext_GetVar(ctx);
    u16 *success = ScriptContext_GetVarPointer(ctx);

    Party *unused = SaveData_GetParty(fieldSystem->saveData);
    *success = Pokemon_GiveMonFromScript(HEAP_ID_FIELD2, fieldSystem->saveData, species, level, heldItem, metLocation, metTerrain);

    return FALSE;
}

BOOL ScrCmd_GetPartyMonSpecies(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *partySlot = ScriptContext_GetVarPointer(ctx);
    u16 *destVar = ScriptContext_GetVarPointer(ctx);

    Pokemon *mon = Party_GetPokemonBySlotIndex(SaveData_GetParty(fieldSystem->saveData), *partySlot);

    if (!Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL)) {
        *destVar = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);
    } else {
        *destVar = SPECIES_NONE;
    }

    return FALSE;
}

BOOL ScrCmd_CheckIsPartyMonOutsider(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    TrainerInfo *info = SaveData_GetTrainerInfo(FieldSystem_GetSaveData(ctx->fieldSystem));
    u16 *slot = ScriptContext_GetVarPointer(ctx);
    u16 *destVar = ScriptContext_GetVarPointer(ctx);

    Pokemon *mon = Party_GetPokemonBySlotIndex(SaveData_GetParty(fieldSystem->saveData), *slot);
    u16 monOTID = Pokemon_GetValue(mon, MON_DATA_OT_ID, NULL);
    u16 trainerID = TrainerInfo_ID(info);

    if (monOTID == trainerID) {
        *destVar = FALSE;
    } else {
        *destVar = TRUE;
    }

    return FALSE;
}

BOOL ScrCmd_GiveEgg(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    TrainerInfo *trainer = SaveData_GetTrainerInfo(fieldSystem->saveData);
    u16 species = ScriptContext_GetVar(ctx);
    u16 eggGiver = ScriptContext_GetVar(ctx);

    Party *party = SaveData_GetParty(fieldSystem->saveData);
    u8 partyCount = Party_GetCurrentCount(party);

    if (partyCount < MAX_PARTY_SIZE) {
        Pokemon *egg = Pokemon_New(HEAP_ID_FIELD2);
        Pokemon_Init(egg);

        int specialMetLoc = SpecialMetLoc_GetId(1, eggGiver);
        Egg_CreateEgg(egg, species, 1, trainer, 3, specialMetLoc);

        Party_AddPokemon(party, egg);
        Heap_Free(egg);
    }

    return FALSE;
}

BOOL ScrCmd_ResetPartyMonMoveSlot_Unused(ScriptContext *ctx)
{
    u16 partySlot = ScriptContext_GetVar(ctx);
    u16 moveSlot = ScriptContext_GetVar(ctx);
    u16 moveID = ScriptContext_GetVar(ctx);

    Party_ResetMonMoveSlot(SaveData_GetParty(ctx->fieldSystem->saveData), partySlot, moveSlot, moveID);
    return FALSE;
}

BOOL ScrCmd_CheckPartyMonHasMove(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    u16 move = ScriptContext_GetVar(ctx);
    u16 partySlot = ScriptContext_GetVar(ctx);

    Pokemon *mon = Party_GetPokemonBySlotIndex(SaveData_GetParty(fieldSystem->saveData), partySlot);
    *destVar = FALSE;

    if (Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL) != FALSE) {
        return FALSE;
    }

    if ((Pokemon_GetValue(mon, MON_DATA_MOVE1, NULL) == move)
        || (Pokemon_GetValue(mon, MON_DATA_MOVE2, NULL) == move)
        || (Pokemon_GetValue(mon, MON_DATA_MOVE3, NULL) == move)
        || (Pokemon_GetValue(mon, MON_DATA_MOVE4, NULL) == move)) {
        *destVar = TRUE;
    }

    return FALSE;
}

BOOL ScrCmd_FindPartySlotWithMove(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    u16 move = ScriptContext_GetVar(ctx);

    u8 partyCount = Party_GetCurrentCount(SaveData_GetParty(fieldSystem->saveData));

    u8 slot;
    for (slot = 0, *destVar = MAX_PARTY_SIZE; slot < partyCount; slot++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(SaveData_GetParty(fieldSystem->saveData), slot);

        if (Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL) != FALSE) {
            continue;
        }

        if ((Pokemon_GetValue(mon, MON_DATA_MOVE1, NULL) == move)
            || (Pokemon_GetValue(mon, MON_DATA_MOVE2, NULL) == move)
            || (Pokemon_GetValue(mon, MON_DATA_MOVE3, NULL) == move)
            || (Pokemon_GetValue(mon, MON_DATA_MOVE4, NULL) == move)) {
            *destVar = slot;
            break;
        }
    }

    return FALSE;
}

BOOL ScrCmd_SurvivePoison(ScriptContext *ctx)
{
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    u16 partySlot = ScriptContext_GetVar(ctx);
    Pokemon *mon = Party_GetPokemonBySlotIndex(SaveData_GetParty(ctx->fieldSystem->saveData), partySlot);
    *destVar = Pokemon_TrySurvivePoison(mon);

    return FALSE;
}

BOOL ScrCmd_CountPartyMonsBelowLevelThreshold(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    u16 threshold = ScriptContext_GetVar(ctx);
    u8 slot, count;

    u8 partyCount = Party_GetCurrentCount(SaveData_GetParty(fieldSystem->saveData));
    *destVar = 0;

    for (slot = 0, count = 0; slot < partyCount; slot++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(SaveData_GetParty(fieldSystem->saveData), slot);

        if (!Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL)) {
            if (Pokemon_GetValue(mon, MON_DATA_LEVEL, NULL) <= threshold) {
                count++;
            }
        }
    }

    *destVar = count;

    return FALSE;
}

BOOL ScrCmd_GetPartyMonLevel(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    u16 slot = ScriptContext_GetVar(ctx);

    Pokemon *mon = Party_GetPokemonBySlotIndex(SaveData_GetParty(fieldSystem->saveData), slot);
    *destVar = 0;

    if (!Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL)) {
        *destVar = Pokemon_GetValue(mon, MON_DATA_LEVEL, NULL);
    }

    return FALSE;
}

BOOL ScrCmd_GetPartyMonNature(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    u16 slot = ScriptContext_GetVar(ctx);
    u8 partyCount = Party_GetCurrentCount(SaveData_GetParty(fieldSystem->saveData));

    if (slot >= partyCount) {
        *destVar = NATURE_HARDY;
        return FALSE;
    }

    Pokemon *mon = Party_GetPokemonBySlotIndex(SaveData_GetParty(fieldSystem->saveData), slot);

    if (Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL) != FALSE) {
        *destVar = NATURE_HARDY;
        return FALSE;
    }

    *destVar = Pokemon_GetNature(mon);

    return FALSE;
}

BOOL ScrCmd_FindPartySlotWithNature(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    u16 nature = ScriptContext_GetVar(ctx);

    u8 partyCount = Party_GetCurrentCount(SaveData_GetParty(fieldSystem->saveData));
    *destVar = 0xFF;

    for (u8 slot = 0; slot < partyCount; slot++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(SaveData_GetParty(fieldSystem->saveData), slot);

        if (!Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL)) {
            if (Pokemon_GetNature(mon) == nature) {
                *destVar = slot;
                break;
            }
        }
    }

    return FALSE;
}

BOOL ScrCmd_GetFriendshipByPartySlot(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    u16 slot = ScriptContext_GetVar(ctx);

    Pokemon *mon = Party_GetPokemonBySlotIndex(SaveData_GetParty(fieldSystem->saveData), slot);
    *destVar = Pokemon_GetValue(mon, MON_DATA_FRIENDSHIP, NULL);

    return FALSE;
}

BOOL ScrCmd_IncreasePartyMonFriendship(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 value = ScriptContext_GetVar(ctx);
    u16 slot = ScriptContext_GetVar(ctx);
    u32 location = MapHeader_GetMapLabelTextID(ctx->fieldSystem->location->mapId);

    Pokemon *mon = Party_GetPokemonBySlotIndex(SaveData_GetParty(fieldSystem->saveData), slot);
    u16 friendship = Pokemon_GetValue(mon, MON_DATA_FRIENDSHIP, NULL);

    if (value > 0) {
        if (Item_LoadParam(Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL), ITEM_PARAM_HOLD_EFFECT, HEAP_ID_FIELD2) == HOLD_EFFECT_FRIENDSHIP_UP) {
            value = value * 150 / 100;
        }

        if (Pokemon_GetValue(mon, MON_DATA_POKEBALL, NULL) == ITEM_LUXURY_BALL) {
            value++;
        }

        if (Pokemon_GetValue(mon, MON_DATA_EGG_LOCATION, NULL) == location) {
            value++;
        }
    }

    friendship += value;

    if (friendship > MAX_FRIENDSHIP_VALUE) {
        friendship = MAX_FRIENDSHIP_VALUE;
    }

    Pokemon_SetValue(mon, MON_DATA_FRIENDSHIP, &friendship);
    return FALSE;
}

BOOL ScrCmd_DecreasePartyMonFriendship_Unused(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 value = ScriptContext_GetVar(ctx);
    u16 slot = ScriptContext_GetVar(ctx);

    Pokemon *mon = Party_GetPokemonBySlotIndex(SaveData_GetParty(fieldSystem->saveData), slot);
    u16 friendship = Pokemon_GetValue(mon, MON_DATA_FRIENDSHIP, NULL);

    if (value > friendship) {
        friendship = 0;
    } else {
        friendship -= value;
    }

    Pokemon_SetValue(mon, MON_DATA_FRIENDSHIP, &friendship);
    return FALSE;
}

BOOL ScrCmd_GetPartyMonContestStat(ScriptContext *ctx)
{
    u16 slot = ScriptContext_GetVar(ctx);
    u16 contestType = ScriptContext_GetVar(ctx);
    u16 *destVar = ScriptContext_GetVarPointer(ctx);

    Pokemon *mon = Party_GetPokemonBySlotIndex(SaveData_GetParty(ctx->fieldSystem->saveData), slot);
    *destVar = Pokemon_GetValue(mon, MON_DATA_COOL + contestType, NULL);

    return FALSE;
}

BOOL ScrCmd_GetFirstNonEggInParty(ScriptContext *ctx)
{
    u16 *destVar = ScriptContext_GetVarPointer(ctx);

    *destVar = SaveData_GetFirstNonEggInParty(ctx->fieldSystem->saveData);
    return FALSE;
}

BOOL ScrCmd_GetPartyMonType(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *type1DestVar = ScriptContext_GetVarPointer(ctx);
    u16 *type2DestVar = ScriptContext_GetVarPointer(ctx);
    u16 slot = ScriptContext_GetVar(ctx);

    Pokemon *mon = Party_GetPokemonBySlotIndex(SaveData_GetParty(fieldSystem->saveData), slot);
    *type1DestVar = Pokemon_GetValue(mon, MON_DATA_TYPE_1, NULL);
    *type2DestVar = Pokemon_GetValue(mon, MON_DATA_TYPE_2, NULL);

    return FALSE;
}

BOOL ScrCmd_GetPartyCount(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *destVar = ScriptContext_GetVarPointer(ctx);

    *destVar = Party_GetCurrentCount(SaveData_GetParty(fieldSystem->saveData));
    return FALSE;
}

BOOL ScrCmd_CountPartyNonEggs(ScriptContext *ctx)
{
    int count, i;
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    int partyCount = Party_GetCurrentCount(SaveData_GetParty(fieldSystem->saveData));

    for (i = 0, count = 0; i < partyCount; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(SaveData_GetParty(fieldSystem->saveData), i);

        if (!Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL)) {
            count++;
        }
    }

    *destVar = count;
    return FALSE;
}

BOOL ScrCmd_CountAliveMonsExcept(ScriptContext *ctx)
{
    int aliveCount, slot;
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    u16 excludedSlot = ScriptContext_GetVar(ctx);
    int partyCount = Party_GetCurrentCount(SaveData_GetParty(fieldSystem->saveData));

    for (slot = 0, aliveCount = 0; slot < partyCount; slot++) {
        if (slot == excludedSlot) {
            continue;
        }

        Pokemon *mon = Party_GetPokemonBySlotIndex(SaveData_GetParty(fieldSystem->saveData), slot);

        if (!Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL)
            && Pokemon_GetValue(mon, MON_DATA_HP, NULL) != 0) {
            aliveCount++;
        }
    }

    *destVar = aliveCount;
    return FALSE;
}

BOOL ScrCmd_CountAliveMonsAndBoxMons(ScriptContext *ctx)
{
    int partyCount, count, slot;
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    PCBoxes *pcBoxes = SaveData_GetPCBoxes(fieldSystem->saveData);

    partyCount = Party_GetCurrentCount(SaveData_GetParty(fieldSystem->saveData));

    for (slot = 0, count = 0; slot < partyCount; slot++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(SaveData_GetParty(fieldSystem->saveData), slot);

        if (!Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL)
            && Pokemon_GetValue(mon, MON_DATA_HP, NULL) != 0) {
            count++;
        }
    }

    count += PCBoxes_CountAllNonEggBoxMons(pcBoxes);
    *destVar = count;

    return FALSE;
}

BOOL ScrCmd_CountPartyEggs(ScriptContext *ctx)
{
    int count, slot;
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *destVar = ScriptContext_GetVarPointer(ctx);

    int partyCount = Party_GetCurrentCount(SaveData_GetParty(fieldSystem->saveData));

    for (slot = 0, count = 0; slot < partyCount; slot++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(SaveData_GetParty(fieldSystem->saveData), slot);

        if (Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL)) {
            count++;
        }
    }

    *destVar = count;

    return FALSE;
}

BOOL ScrCmd_CheckPartyPokerus(ScriptContext *ctx)
{
    u16 slot, partyCount;
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    partyCount = Party_GetCurrentCount(SaveData_GetParty(fieldSystem->saveData));
    *destVar = FALSE;

    for (slot = 0; slot < partyCount; slot++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(SaveData_GetParty(fieldSystem->saveData), slot);

        if (Pokemon_GetValue(mon, MON_DATA_POKERUS, NULL) != FALSE) {
            *destVar = TRUE;
            break;
        }
    }

    return FALSE;
}

BOOL ScrCmd_GetPartyMonGender_Unused(ScriptContext *ctx)
{
    u16 slot = ScriptContext_GetVar(ctx);
    u16 *destVar = ScriptContext_GetVarPointer(ctx);

    Pokemon *mon = Party_GetPokemonBySlotIndex(SaveData_GetParty(ctx->fieldSystem->saveData), slot);
    *destVar = Pokemon_GetValue(mon, MON_DATA_GENDER, NULL);

    return FALSE;
}

BOOL ScrCmd_GetPartyMonMoveCount(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    u16 partySlot = ScriptContext_GetVar(ctx);

    Pokemon *mon = Party_GetPokemonBySlotIndex(SaveData_GetParty(fieldSystem->saveData), partySlot);

    if (Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL) != FALSE) {
        *destVar = 0;
        return FALSE;
    }

    u8 count = 0;

    if (Pokemon_GetValue(mon, MON_DATA_MOVE1, NULL) != MOVE_NONE) {
        count++;
    }

    if (Pokemon_GetValue(mon, MON_DATA_MOVE2, NULL) != MOVE_NONE) {
        count++;
    }

    if (Pokemon_GetValue(mon, MON_DATA_MOVE3, NULL) != MOVE_NONE) {
        count++;
    }

    if (Pokemon_GetValue(mon, MON_DATA_MOVE4, NULL) != MOVE_NONE) {
        count++;
    }

    *destVar = count;
    return FALSE;
}

BOOL ScrCmd_ClearPartyMonMoveSlot(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 partySlot = ScriptContext_GetVar(ctx);
    u16 moveSlot = ScriptContext_GetVar(ctx);

    Pokemon *mon = Party_GetPokemonBySlotIndex(SaveData_GetParty(fieldSystem->saveData), partySlot);
    Pokemon_ClearMoveSlot(mon, moveSlot);

    return FALSE;
}

BOOL ScrCmd_GetPartyMonMove(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    u16 partySlot = ScriptContext_GetVar(ctx);
    u16 moveSlot = ScriptContext_GetVar(ctx);

    Pokemon *mon = Party_GetPokemonBySlotIndex(SaveData_GetParty(fieldSystem->saveData), partySlot);
    *destVar = Pokemon_GetValue(mon, MON_DATA_MOVE1 + moveSlot, NULL);

    return FALSE;
}

BOOL ScrCmd_GetPartyMonHeldItem_Unused(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    u16 slot = ScriptContext_GetVar(ctx);

    Pokemon *mon = Party_GetPokemonBySlotIndex(SaveData_GetParty(fieldSystem->saveData), slot);
    *destVar = Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL);

    return FALSE;
}

BOOL ScrCmd_DeletePartyMonHeldItem_Unused(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 slot = ScriptContext_GetVar(ctx);

    Pokemon *mon = Party_GetPokemonBySlotIndex(SaveData_GetParty(fieldSystem->saveData), slot);

    u16 value = ITEM_NONE;
    Pokemon_SetValue(mon, MON_DATA_HELD_ITEM, &value);

    return FALSE;
}

BOOL ScrCmd_CheckPartyHasSpecies(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    u16 species = ScriptContext_GetVar(ctx);

    Party *party = SaveData_GetParty(fieldSystem->saveData);
    u8 partyCount = Party_GetCurrentCount(party);
    *destVar = FALSE;

    for (u8 slot = 0; slot < partyCount; slot++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(SaveData_GetParty(fieldSystem->saveData), slot);

        if (!Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL)) {
            u16 partySpecies = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);

            if (species == partySpecies) {
                *destVar = TRUE;
                break;
            }
        }
    }

    return FALSE;
}

// If you pass SPECIES_NONE, it returns 1 to check if there's repeated species.
// This is not used in vanilla, however.
BOOL ScrCmd_CountRepeatedSpeciesInParty(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    u16 species = ScriptContext_GetVar(ctx);
    u8 i;
    u16 partySpeciesArray[MAX_PARTY_SIZE];

    for (i = 0; i < MAX_PARTY_SIZE; i++) {
        partySpeciesArray[i] = SPECIES_NONE;
    }

    Party *party = SaveData_GetParty(fieldSystem->saveData);
    u8 partyCount = Party_GetCurrentCount(party);
    *destVar = 0;

    for (i = 0; i < partyCount; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(SaveData_GetParty(fieldSystem->saveData), i);

        if (!Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL)) {
            u16 partySpecies = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);

            if (species == SPECIES_NONE) {
                partySpeciesArray[i] = partySpecies;

                for (u8 j = 0; j < i; j++) {
                    if (partySpeciesArray[j] == partySpeciesArray[i]) {
                        *destVar = 1;
                        return FALSE;
                    }
                }
            } else {
                if (species == partySpecies) {
                    *destVar += 1;
                }
            }
        }
    }

    return FALSE;
}

BOOL ScrCmd_FindPartySlotWithSpecies(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    u16 species = ScriptContext_GetVar(ctx);

    Party *party = SaveData_GetParty(fieldSystem->saveData);
    u8 partyCount = Party_GetCurrentCount(party);
    *destVar = 0xFF;

    for (u8 slot = 0; slot < partyCount; slot++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(SaveData_GetParty(fieldSystem->saveData), slot);

        if (!Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL)) {
            u16 partySpecies = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);

            if (species == partySpecies) {
                *destVar = slot;
                break;
            }
        }
    }

    return FALSE;
}

BOOL ScrCmd_CountPartyMonRibbons_Unused(ScriptContext *ctx)
{
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    u16 slot = ScriptContext_GetVar(ctx);
    u16 ribbonID, count;

    Pokemon *mon = Party_GetPokemonBySlotIndex(SaveData_GetParty(ctx->fieldSystem->saveData), slot);

    for (ribbonID = 0, count = 0; ribbonID < RIBBON_MAX; ribbonID++) {
        if (Pokemon_GetValue(mon, Ribbon_GetData(ribbonID, RIBBON_DATA_MON_DATA_PARAM), NULL) != FALSE) {
            count++;
        }
    }

    *destVar = count;

    return FALSE;
}

BOOL ScrCmd_CountPartyRibbons(ScriptContext *ctx)
{
    u16 *destVar = ScriptContext_GetVarPointer(ctx);

    u16 partyCount = Party_GetCurrentCount(SaveData_GetParty(ctx->fieldSystem->saveData));
    Party *party = SaveData_GetParty(ctx->fieldSystem->saveData);

    u16 ribbonID, count;
    for (ribbonID = 0, count = 0; ribbonID < RIBBON_MAX; ribbonID++) {
        for (u16 slot = 0; slot < partyCount; slot++) {
            Pokemon *mon = Party_GetPokemonBySlotIndex(party, slot);

            if (!Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL)
                && Pokemon_GetValue(mon, Ribbon_GetData(ribbonID, RIBBON_DATA_MON_DATA_PARAM), NULL) != FALSE) {
                count++;
                break;
            }
        }
    }

    *destVar = count;

    return FALSE;
}

BOOL ScrCmd_GetPartyMonRibbon(ScriptContext *ctx)
{
    u16 *hasRibbonVar = ScriptContext_GetVarPointer(ctx);
    u16 slot = ScriptContext_GetVar(ctx);
    u16 ribbonID = ScriptContext_GetVar(ctx);
    u8 unused = TRUE;

    Pokemon *mon = Party_GetPokemonBySlotIndex(SaveData_GetParty(ctx->fieldSystem->saveData), slot);
    *hasRibbonVar = Pokemon_GetValue(mon, Ribbon_GetData(ribbonID, RIBBON_DATA_MON_DATA_PARAM), NULL);

    return FALSE;
}

BOOL ScrCmd_SetPartyMonRibbon(ScriptContext *ctx)
{
    u16 slot = ScriptContext_GetVar(ctx);
    u16 ribbonID = ScriptContext_GetVar(ctx);
    u8 value = TRUE;

    Pokemon *mon = Party_GetPokemonBySlotIndex(SaveData_GetParty(ctx->fieldSystem->saveData), slot);

    Pokemon_SetValue(mon, Ribbon_GetData(ribbonID, RIBBON_DATA_MON_DATA_PARAM), &value);
    sub_0206DDB8(ctx->fieldSystem->saveData, mon, Ribbon_GetData(ribbonID, RIBBON_DATA_MON_DATA_PARAM));

    return FALSE;
}

BOOL ScrCmd_CheckPartyHasBadEgg(ScriptContext *ctx)
{
    u16 *destVar = ScriptContext_GetVarPointer(ctx);

    u16 partyCount = Party_GetCurrentCount(SaveData_GetParty(ctx->fieldSystem->saveData));
    Party *party = SaveData_GetParty(ctx->fieldSystem->saveData);

    // bug: left in from copying ribbon code
    for (u16 i = 0; i < RIBBON_MAX; i++) {
        for (u16 slot = 0; slot < partyCount; slot++) {
            Pokemon *mon = Party_GetPokemonBySlotIndex(party, slot);

            if (Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL)) {
                if (Pokemon_GetValue(mon, MON_DATA_CHECKSUM_FAILED, NULL)) {
                    *destVar = TRUE;
                    return FALSE;
                }
            }
        }
    }

    *destVar = FALSE;

    return FALSE;
}

BOOL ScrCmd_Dummy0A0(ScriptContext *ctx)
{
    return FALSE;
}

BOOL ScrCmd_FindPartySlotWithFatefulEncounterSpecies(ScriptContext *ctx)
{
    u8 partyCount;
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    u16 species = ScriptContext_GetVar(ctx);

    Party *party = SaveData_GetParty(fieldSystem->saveData);
    partyCount = Party_GetCurrentCount(party);
    *destVar = 0xFF;

    for (u8 slot = 0; slot < partyCount; slot++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(SaveData_GetParty(fieldSystem->saveData), slot);

        if (!Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL)) {
            u16 partySpecies = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);

            if (species == partySpecies) {
                if (Pokemon_GetValue(mon, MON_DATA_FATEFUL_ENCOUNTER, NULL) == TRUE) {
                    *destVar = slot;
                    break;
                }
            }
        }
    }

    return FALSE;
}

BOOL ScrCmd_CheckPartyHasHeldItem(ScriptContext *ctx)
{
    int slot;
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 item = ScriptContext_GetVar(ctx);
    u16 *destVar = ScriptContext_GetVarPointer(ctx);

    Party *party = SaveData_GetParty(fieldSystem->saveData);
    int partyCount = Party_GetCurrentCount(party);
    *destVar = FALSE;

    for (slot = 0; slot < partyCount; slot++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(SaveData_GetParty(fieldSystem->saveData), slot);

        if (Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL) == item) {
            *destVar = TRUE;
            break;
        }
    }

    return FALSE;
}
