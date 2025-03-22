#include "unk_0204CFFC.h"

#include <nitro.h>
#include <string.h>

#include "constants/heap.h"

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
#include "trainer_info.h"
#include "unk_02017038.h"
#include "unk_02054884.h"
#include "unk_0205DFC4.h"
#include "unk_0206CCB0.h"

BOOL ScrCmd_GivePokemon(ScriptContext *ctx)
{
    int metLocation = MapHeader_GetMapLabelTextID(ctx->fieldSystem->location->mapId);
    int metTerrain = TERRAIN_MAX;
    Party *playerParty;
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 species = ScriptContext_GetVar(ctx);
    u16 level = ScriptContext_GetVar(ctx);
    u16 heldItem = ScriptContext_GetVar(ctx);
    u16 *partyHasRoom = ScriptContext_GetVarPointer(ctx);

    playerParty = Party_GetFromSavedata(fieldSystem->saveData);
    *partyHasRoom = Pokemon_GiveMonFromScript(HEAP_ID_FIELDMAP, fieldSystem->saveData, species, level, heldItem, metLocation, metTerrain);

    return FALSE;
}

BOOL ScrCmd_198(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    Pokemon *v1;
    u16 *v2 = ScriptContext_GetVarPointer(param0);
    u16 *v3 = ScriptContext_GetVarPointer(param0);

    v1 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(fieldSystem->saveData), *v2);

    if (Pokemon_GetValue(v1, MON_DATA_IS_EGG, NULL) == 0) {
        *v3 = Pokemon_GetValue(v1, MON_DATA_SPECIES, NULL);
    } else {
        *v3 = 0;
    }

    return 0;
}

BOOL ScrCmd_199(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    Pokemon *v1;
    TrainerInfo *v2 = SaveData_GetTrainerInfo(FieldSystem_GetSaveData(param0->fieldSystem));
    u16 *v3 = ScriptContext_GetVarPointer(param0);
    u16 *v4 = ScriptContext_GetVarPointer(param0);
    u16 v5, v6;

    v1 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(fieldSystem->saveData), *v3);
    v5 = Pokemon_GetValue(v1, MON_DATA_OT_ID, NULL);
    v6 = TrainerInfo_ID(v2);

    if (v5 == v6) {
        *v4 = 0;
    } else {
        *v4 = 1;
    }

    return 0;
}

BOOL ScrCmd_GiveEgg(ScriptContext *ctx)
{
    int specialMetLoc;
    u8 partyCount;
    BOOL partyHasRoom;
    Party *playerParty;
    Pokemon *egg;
    FieldSystem *fieldSystem = ctx->fieldSystem;
    TrainerInfo *trainer = SaveData_GetTrainerInfo(fieldSystem->saveData);
    u16 species = ScriptContext_GetVar(ctx);
    u16 eggGiver = ScriptContext_GetVar(ctx);

    playerParty = Party_GetFromSavedata(fieldSystem->saveData);
    partyCount = Party_GetCurrentCount(playerParty);

    if (partyCount < 6) {
        egg = Pokemon_New(HEAP_ID_FIELDMAP);
        Pokemon_Init(egg);

        specialMetLoc = SpecialMetLoc_GetId(1, eggGiver);
        Egg_CreateEgg(egg, species, 1, trainer, 3, specialMetLoc);

        partyHasRoom = Party_AddPokemon(playerParty, egg);
        Heap_FreeToHeap(egg);
    }

    return FALSE;
}

BOOL ScrCmd_098(ScriptContext *param0)
{
    u16 v0 = ScriptContext_GetVar(param0);
    u16 v1 = ScriptContext_GetVar(param0);
    u16 v2 = ScriptContext_GetVar(param0);

    sub_02054988(Party_GetFromSavedata(param0->fieldSystem->saveData), v0, v1, v2);
    return 0;
}

BOOL ScrCmd_CheckPartyMonHasMove(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    Pokemon *mon;
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    u16 move = ScriptContext_GetVar(ctx);
    u16 partySlot = ScriptContext_GetVar(ctx);
    u16 v5;

    mon = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(fieldSystem->saveData), partySlot);
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

BOOL ScrCmd_09A(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    Pokemon *v1;
    u16 *v2 = ScriptContext_GetVarPointer(param0);
    u16 v3 = ScriptContext_GetVar(param0);
    u16 v4;
    u8 v5, v6;

    v6 = Party_GetCurrentCount(Party_GetFromSavedata(fieldSystem->saveData));

    for (v5 = 0, *v2 = 6; v5 < v6; v5++) {
        v1 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(fieldSystem->saveData), v5);

        if (Pokemon_GetValue(v1, MON_DATA_IS_EGG, NULL) != 0) {
            continue;
        }

        if ((Pokemon_GetValue(v1, MON_DATA_MOVE1, NULL) == v3) || (Pokemon_GetValue(v1, MON_DATA_MOVE2, NULL) == v3) || (Pokemon_GetValue(v1, MON_DATA_MOVE3, NULL) == v3) || (Pokemon_GetValue(v1, MON_DATA_MOVE4, NULL) == v3)) {
            *v2 = v5;
            break;
        }
    }

    return 0;
}

BOOL ScrCmd_SurvivePoison(ScriptContext *ctx)
{
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    u16 partySlot = ScriptContext_GetVar(ctx);
    Pokemon *mon = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(ctx->fieldSystem->saveData), partySlot);
    *destVar = Pokemon_TrySurvivePoison(mon);

    return FALSE;
}

BOOL ScrCmd_1F6(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    Pokemon *v1;
    u16 *v2 = ScriptContext_GetVarPointer(param0);
    u16 v3 = ScriptContext_GetVar(param0);
    u8 v4, v5, v6;

    v5 = Party_GetCurrentCount(Party_GetFromSavedata(fieldSystem->saveData));
    *v2 = 0;

    for (v4 = 0, v6 = 0; v4 < v5; v4++) {
        v1 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(fieldSystem->saveData), v4);

        if (Pokemon_GetValue(v1, MON_DATA_IS_EGG, NULL) == 0) {
            if (Pokemon_GetValue(v1, MON_DATA_LEVEL, NULL) <= v3) {
                v6++;
            }
        }
    }

    *v2 = v6;

    return 0;
}

BOOL ScrCmd_278(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    Pokemon *v1;
    u16 *v2 = ScriptContext_GetVarPointer(param0);
    u16 v3 = ScriptContext_GetVar(param0);

    v1 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(fieldSystem->saveData), v3);
    *v2 = 0;

    if (Pokemon_GetValue(v1, MON_DATA_IS_EGG, NULL) == 0) {
        *v2 = Pokemon_GetValue(v1, MON_DATA_LEVEL, NULL);
    }

    return 0;
}

BOOL ScrCmd_212(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    Pokemon *v1;
    u16 *v2 = ScriptContext_GetVarPointer(param0);
    u16 v3 = ScriptContext_GetVar(param0);
    u8 v4 = Party_GetCurrentCount(Party_GetFromSavedata(fieldSystem->saveData));

    if (v3 >= v4) {
        *v2 = 0;
        return 0;
    }

    v1 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(fieldSystem->saveData), v3);

    if (Pokemon_GetValue(v1, MON_DATA_IS_EGG, NULL) != 0) {
        *v2 = 0;
        return 0;
    }

    *v2 = Pokemon_GetNature(v1);

    return 0;
}

BOOL ScrCmd_213(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    Pokemon *v1;
    u16 *v2 = ScriptContext_GetVarPointer(param0);
    u16 v3 = ScriptContext_GetVar(param0);
    u8 v4, v5;

    v4 = Party_GetCurrentCount(Party_GetFromSavedata(fieldSystem->saveData));
    *v2 = 0xff;

    for (v5 = 0; v5 < v4; v5++) {
        v1 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(fieldSystem->saveData), v5);

        if (Pokemon_GetValue(v1, MON_DATA_IS_EGG, NULL) == 0) {
            if (Pokemon_GetNature(v1) == v3) {
                *v2 = v5;
                break;
            }
        }
    }

    return 0;
}

BOOL ScrCmd_GetFriendshipByPartySlot(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    Pokemon *mon;
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    u16 slot = ScriptContext_GetVar(ctx);

    mon = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(fieldSystem->saveData), slot);
    *destVar = Pokemon_GetValue(mon, MON_DATA_FRIENDSHIP, NULL);

    return FALSE;
}

BOOL ScrCmd_1BA(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    Pokemon *v1;
    u16 v2 = ScriptContext_GetVar(param0);
    u16 v3 = ScriptContext_GetVar(param0);
    u16 v4;
    u32 v5 = MapHeader_GetMapLabelTextID(param0->fieldSystem->location->mapId);

    v1 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(fieldSystem->saveData), v3);
    v4 = Pokemon_GetValue(v1, MON_DATA_FRIENDSHIP, NULL);

    if (v2 > 0) {
        if (Item_LoadParam(Pokemon_GetValue(v1, MON_DATA_HELD_ITEM, NULL), 1, 11) == 53) {
            v2 = v2 * 150 / 100;
        }

        if (Pokemon_GetValue(v1, MON_DATA_POKEBALL, NULL) == 11) {
            v2++;
        }

        if (Pokemon_GetValue(v1, MON_DATA_MET_LOCATION, NULL) == v5) {
            v2++;
        }
    }

    v4 += v2;

    if (v4 > 255) {
        v4 = 255;
    }

    Pokemon_SetValue(v1, MON_DATA_FRIENDSHIP, &v4);
    return 0;
}

BOOL ScrCmd_1BB(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    Pokemon *v1;
    u16 v2 = ScriptContext_GetVar(param0);
    u16 v3 = ScriptContext_GetVar(param0);
    u16 v4;

    v1 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(fieldSystem->saveData), v3);
    v4 = Pokemon_GetValue(v1, MON_DATA_FRIENDSHIP, NULL);

    if (v2 > v4) {
        v4 = 0;
    } else {
        v4 -= v2;
    }

    Pokemon_SetValue(v1, MON_DATA_FRIENDSHIP, &v4);
    return 0;
}

BOOL ScrCmd_281(ScriptContext *param0)
{
    Pokemon *v0;
    u16 v1 = ScriptContext_GetVar(param0);
    u16 v2 = ScriptContext_GetVar(param0);
    u16 *v3 = ScriptContext_GetVarPointer(param0);

    v0 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(param0->fieldSystem->saveData), v1);
    *v3 = Pokemon_GetValue(v0, MON_DATA_COOL + v2, NULL);

    return 0;
}

BOOL ScrCmd_GetFirstNonEggInParty(ScriptContext *ctx)
{
    u16 *destVar = ScriptContext_GetVarPointer(ctx);

    *destVar = SaveData_GetFirstNonEggInParty(ctx->fieldSystem->saveData);
    return FALSE;
}

BOOL ScrCmd_248(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    Pokemon *v1;
    u16 *v2 = ScriptContext_GetVarPointer(param0);
    u16 *v3 = ScriptContext_GetVarPointer(param0);
    u16 v4 = ScriptContext_GetVar(param0);

    v1 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(fieldSystem->saveData), v4);
    *v2 = Pokemon_GetValue(v1, MON_DATA_TYPE_1, NULL);
    *v3 = Pokemon_GetValue(v1, MON_DATA_TYPE_2, NULL);

    return 0;
}

BOOL ScrCmd_GetPartyCount(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *destVar = ScriptContext_GetVarPointer(ctx);

    *destVar = Party_GetCurrentCount(Party_GetFromSavedata(fieldSystem->saveData));
    return FALSE;
}

BOOL ScrCmd_GetPartyCountHatched(ScriptContext *ctx)
{
    int hatchedCount, i;
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    int partyCount = Party_GetCurrentCount(Party_GetFromSavedata(fieldSystem->saveData));

    for (i = 0, hatchedCount = 0; i < partyCount; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(fieldSystem->saveData), i);

        if (!Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL)) {
            hatchedCount++;
        }
    }

    *destVar = hatchedCount;
    return FALSE;
}

BOOL ScrCmd_CountAliveMonsExcept(ScriptContext *ctx)
{
    int partyCount, aliveCount, i;
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    u16 partySlot = ScriptContext_GetVar(ctx);
    partyCount = Party_GetCurrentCount(Party_GetFromSavedata(fieldSystem->saveData));

    for (i = 0, aliveCount = 0; i < partyCount; i++) {
        if (i == partySlot) {
            continue;
        }

        Pokemon *mon = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(fieldSystem->saveData), i);

        if (Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL) == FALSE
            && Pokemon_GetValue(mon, MON_DATA_CURRENT_HP, NULL) != 0) {
            aliveCount++;
        }
    }

    *destVar = aliveCount;
    return FALSE;
}

BOOL ScrCmd_19C(ScriptContext *param0)
{
    int currentPartyCount, count, i;
    Pokemon *partyMon;
    FieldSystem *fieldSystem = param0->fieldSystem;
    u16 *v5 = ScriptContext_GetVarPointer(param0);
    PCBoxes *pcBoxes = SaveData_PCBoxes(fieldSystem->saveData);

    currentPartyCount = Party_GetCurrentCount(Party_GetFromSavedata(fieldSystem->saveData));

    for (i = 0, count = 0; i < currentPartyCount; i++) {
        partyMon = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(fieldSystem->saveData), i);

        if (Pokemon_GetValue(partyMon, MON_DATA_IS_EGG, NULL) == FALSE) {
            if (Pokemon_GetValue(partyMon, MON_DATA_CURRENT_HP, NULL)) {
                count++;
            }
        }
    }

    count += PCBoxes_CountAllNonEggBoxMons(pcBoxes);
    *v5 = count;

    return 0;
}

BOOL ScrCmd_19D(ScriptContext *param0)
{
    int v0, v1, v2;
    Pokemon *v3;
    FieldSystem *fieldSystem = param0->fieldSystem;
    u16 *v5 = ScriptContext_GetVarPointer(param0);

    v0 = Party_GetCurrentCount(Party_GetFromSavedata(fieldSystem->saveData));

    for (v2 = 0, v1 = 0; v2 < v0; v2++) {
        v3 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(fieldSystem->saveData), v2);

        if (Pokemon_GetValue(v3, MON_DATA_IS_EGG, NULL)) {
            v1++;
        }
    }

    *v5 = v1;

    return 0;
}

BOOL ScrCmd_CheckPartyPokerus(ScriptContext *ctx)
{
    u16 i, partyCount;
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    partyCount = Party_GetCurrentCount(Party_GetFromSavedata(fieldSystem->saveData));
    *destVar = FALSE;

    for (i = 0; i < partyCount; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(fieldSystem->saveData), i);

        if (Pokemon_GetValue(mon, MON_DATA_POKERUS, NULL) != FALSE) {
            *destVar = TRUE;
            break;
        }
    }

    return FALSE;
}

BOOL ScrCmd_11A(ScriptContext *param0)
{
    Pokemon *v0;
    u16 v1 = ScriptContext_GetVar(param0);
    u16 *v2 = ScriptContext_GetVarPointer(param0);

    v0 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(param0->fieldSystem->saveData), v1);
    *v2 = Pokemon_GetValue(v0, MON_DATA_GENDER, NULL);

    return 0;
}

BOOL ScrCmd_1C8(ScriptContext *param0)
{
    FieldSystem *v0 = param0->fieldSystem;
    Pokemon *v1;
    u16 *v2 = ScriptContext_GetVarPointer(param0);
    u16 v3 = ScriptContext_GetVar(param0);
    u8 v4;

    v1 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(v0->saveData), v3);

    if (Pokemon_GetValue(v1, MON_DATA_IS_EGG, NULL) != 0) {
        *v2 = 0;
        return 0;
    }

    v4 = 0;

    if (Pokemon_GetValue(v1, MON_DATA_MOVE1, NULL) != 0) {
        v4++;
    }

    if (Pokemon_GetValue(v1, MON_DATA_MOVE2, NULL) != 0) {
        v4++;
    }

    if (Pokemon_GetValue(v1, MON_DATA_MOVE3, NULL) != 0) {
        v4++;
    }

    if (Pokemon_GetValue(v1, MON_DATA_MOVE4, NULL) != 0) {
        v4++;
    }

    *v2 = v4;
    return 0;
}

BOOL ScrCmd_1C9(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    Pokemon *v1;
    u32 v2;
    u8 v3;
    u16 v4 = ScriptContext_GetVar(param0);
    u16 v5 = ScriptContext_GetVar(param0);

    v1 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(fieldSystem->saveData), v4);
    Pokemon_ClearMoveSlot(v1, v5);

    return 0;
}

BOOL ScrCmd_1CA(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    Pokemon *v1;
    u16 *v2 = ScriptContext_GetVarPointer(param0);
    u16 v3 = ScriptContext_GetVar(param0);
    u16 v4 = ScriptContext_GetVar(param0);

    v1 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(fieldSystem->saveData), v3);
    *v2 = Pokemon_GetValue(v1, MON_DATA_MOVE1 + v4, NULL);

    return 0;
}

BOOL ScrCmd_1EE(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    Pokemon *v1;
    u16 *v2 = ScriptContext_GetVarPointer(param0);
    u16 v3 = ScriptContext_GetVar(param0);

    v1 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(fieldSystem->saveData), v3);
    *v2 = Pokemon_GetValue(v1, MON_DATA_HELD_ITEM, NULL);

    return 0;
}

BOOL ScrCmd_1F0(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    Pokemon *v1;
    u16 v2 = ScriptContext_GetVar(param0);
    u16 v3;

    v1 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(fieldSystem->saveData), v2);
    v3 = 0;

    Pokemon_SetValue(v1, MON_DATA_HELD_ITEM, &v3);

    return 0;
}

BOOL PartyHasSpecies(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    Pokemon *mon;
    Party *party;
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    u16 species = ScriptContext_GetVar(ctx);
    u8 i, partyCount;
    u16 partySpecies;

    party = Party_GetFromSavedata(fieldSystem->saveData);
    partyCount = Party_GetCurrentCount(party);
    *destVar = FALSE;

    for (i = 0; i < partyCount; i++) {
        mon = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(fieldSystem->saveData), i);

        if (Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL) == FALSE) {
            partySpecies = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);

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
BOOL ScrCmd_GetPartyRepeatedSpeciesCount(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    Pokemon *mon;
    Party *party;
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    u16 species = ScriptContext_GetVar(ctx);
    u8 i, j, partyCount;
    u16 partySpecies;
    u16 partySpeciesArray[MAX_PARTY_SIZE];

    for (i = 0; i < MAX_PARTY_SIZE; i++) {
        partySpeciesArray[i] = SPECIES_NONE;
    }

    party = Party_GetFromSavedata(fieldSystem->saveData);
    partyCount = Party_GetCurrentCount(party);
    *destVar = 0;

    for (i = 0; i < partyCount; i++) {
        mon = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(fieldSystem->saveData), i);

        if (Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL) == FALSE) {
            partySpecies = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);

            if (species == SPECIES_NONE) {
                partySpeciesArray[i] = partySpecies;

                for (j = 0; j < i; j++) {
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

BOOL ScrCmd_GetPartyIDWithSpecies(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    Pokemon *mon;
    Party *party;
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    u16 species = ScriptContext_GetVar(ctx);
    u8 i, partyCount;
    u16 partySpecies;

    party = Party_GetFromSavedata(fieldSystem->saveData);
    partyCount = Party_GetCurrentCount(party);
    *destVar = 0xff;

    for (i = 0; i < partyCount; i++) {
        mon = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(fieldSystem->saveData), i);

        if (Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL) == FALSE) {
            partySpecies = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);

            if (species == partySpecies) {
                *destVar = i;
                break;
            }
        }
    }

    return FALSE;
}

BOOL ScrCmd_22E(ScriptContext *param0)
{
    Pokemon *v0;
    u16 *v1 = ScriptContext_GetVarPointer(param0);
    u16 v2 = ScriptContext_GetVar(param0);
    u16 v3, v4;

    v0 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(param0->fieldSystem->saveData), v2);

    for (v3 = 0, v4 = 0; v3 < 80; v3++) {
        if (Pokemon_GetValue(v0, Ribbon_GetData(v3, RIBBON_DATA_MON_DATA_PARAM), NULL) != 0) {
            v4++;
        }
    }

    *v1 = v4;

    return 0;
}

BOOL ScrCmd_22F(ScriptContext *param0)
{
    Pokemon *v0;
    Party *v1;
    u16 *v2 = ScriptContext_GetVarPointer(param0);
    u16 v3, v4, v5, v6;

    v6 = Party_GetCurrentCount(Party_GetFromSavedata(param0->fieldSystem->saveData));
    v1 = Party_GetFromSavedata(param0->fieldSystem->saveData);

    for (v3 = 0, v5 = 0; v3 < 80; v3++) {
        for (v4 = 0; v4 < v6; v4++) {
            v0 = Party_GetPokemonBySlotIndex(v1, v4);

            if (Pokemon_GetValue(v0, MON_DATA_IS_EGG, NULL) == 0) {
                if (Pokemon_GetValue(v0, Ribbon_GetData(v3, RIBBON_DATA_MON_DATA_PARAM), NULL) != 0) {
                    v5++;
                    break;
                }
            }
        }
    }

    *v2 = v5;

    return 0;
}

BOOL ScrCmd_GetPartyMonRibbon(ScriptContext *ctx)
{
    Pokemon *mon;
    u16 *hasRibbonVar = ScriptContext_GetVarPointer(ctx);
    u16 slot = ScriptContext_GetVar(ctx);
    u16 ribbonID = ScriptContext_GetVar(ctx);
    u8 unused = 1;

    mon = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(ctx->fieldSystem->saveData), slot);
    *hasRibbonVar = Pokemon_GetValue(mon, Ribbon_GetData(ribbonID, RIBBON_DATA_MON_DATA_PARAM), NULL);

    return FALSE;
}

BOOL ScrCmd_SetPartyMonRibbon(ScriptContext *ctx)
{
    Pokemon *mon;
    u16 slot = ScriptContext_GetVar(ctx);
    u16 ribbonID = ScriptContext_GetVar(ctx);
    u8 value = TRUE;

    mon = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(ctx->fieldSystem->saveData), slot);

    Pokemon_SetValue(mon, Ribbon_GetData(ribbonID, RIBBON_DATA_MON_DATA_PARAM), &value);
    sub_0206DDB8(ctx->fieldSystem->saveData, mon, Ribbon_GetData(ribbonID, RIBBON_DATA_MON_DATA_PARAM));

    return FALSE;
}

BOOL ScrCmd_2B7(ScriptContext *param0)
{
    Pokemon *v0;
    Party *v1;
    u16 *v2 = ScriptContext_GetVarPointer(param0);
    u16 v3, v4, v5;

    v5 = Party_GetCurrentCount(Party_GetFromSavedata(param0->fieldSystem->saveData));
    v1 = Party_GetFromSavedata(param0->fieldSystem->saveData);

    for (v3 = 0; v3 < 80; v3++) {
        for (v4 = 0; v4 < v5; v4++) {
            v0 = Party_GetPokemonBySlotIndex(v1, v4);

            if (Pokemon_GetValue(v0, MON_DATA_IS_EGG, NULL) != 0) {
                if (Pokemon_GetValue(v0, MON_DATA_IS_DATA_INVALID, NULL) != 0) {
                    *v2 = 1;
                    return 0;
                }
            }
        }
    }

    *v2 = 0;

    return 0;
}

BOOL ScrCmd_0A0(ScriptContext *param0)
{
    return 0;
}

BOOL ScrCmd_31C(ScriptContext *param0)
{
    u8 v0, v1;
    u16 v2;
    Pokemon *v3;
    Party *v4;
    FieldSystem *fieldSystem = param0->fieldSystem;
    u16 *v6 = ScriptContext_GetVarPointer(param0);
    u16 v7 = ScriptContext_GetVar(param0);

    v4 = Party_GetFromSavedata(fieldSystem->saveData);
    v1 = Party_GetCurrentCount(v4);
    *v6 = 0xff;

    for (v0 = 0; v0 < v1; v0++) {
        v3 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(fieldSystem->saveData), v0);

        if (Pokemon_GetValue(v3, MON_DATA_IS_EGG, NULL) == 0) {
            v2 = Pokemon_GetValue(v3, MON_DATA_SPECIES, NULL);

            if (v7 == v2) {
                if (Pokemon_GetValue(v3, MON_DATA_FATEFUL_ENCOUNTER, NULL) == 1) {
                    *v6 = v0;
                    break;
                }
            }
        }
    }

    return 0;
}

BOOL ScrCmd_32F(ScriptContext *param0)
{
    int v0, v1;
    Party *v2;
    Pokemon *v3;
    FieldSystem *fieldSystem = param0->fieldSystem;
    u16 v5 = ScriptContext_GetVar(param0);
    u16 *v6 = ScriptContext_GetVarPointer(param0);

    v2 = Party_GetFromSavedata(fieldSystem->saveData);
    v1 = Party_GetCurrentCount(v2);
    *v6 = 0;

    for (v0 = 0; v0 < v1; v0++) {
        v3 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(fieldSystem->saveData), v0);

        if (Pokemon_GetValue(v3, MON_DATA_HELD_ITEM, NULL) == v5) {
            *v6 = 1;
            break;
        }
    }

    return 0;
}
