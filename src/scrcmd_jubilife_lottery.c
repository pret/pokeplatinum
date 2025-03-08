#include "scrcmd_jubilife_lottery.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/pc_boxes_decl.h"

#include "field/field_system.h"
#include "savedata/save_table.h"

#include "field_script_context.h"
#include "inlines.h"
#include "party.h"
#include "pc_boxes.h"
#include "pokemon.h"
#include "system_vars.h"
#include "vars_flags.h"

static u8 CheckTrainerIdForMatch(u16 winningLotteryId, u16 pokemonOtId);

static const u16 TRAINER_ID_MAX_LENGTH = 5;

BOOL ScrCmd_GetJubilifeLotteryTrainerID(ScriptContext *ctx)
{
    VarsFlags *varsFlags = SaveData_GetVarsFlags(ctx->fieldSystem->saveData);
    u16 *destVar = ScriptContext_GetVarPointer(ctx);
    u32 trainerID = SystemVars_GetJubilifeLotteryTrainerID(varsFlags);
    *destVar = LO_HALF(trainerID);
    return FALSE;
}

BOOL ScrCmd_CheckForJubilifeLotteryWinner(ScriptContext *context)
{
    FieldSystem *fieldSystem = context->fieldSystem;
    PCBoxes *pcBoxes = SaveData_PCBoxes(fieldSystem->saveData);
    u16 *winningPokemonIndex = ScriptContext_GetVarPointer(context);
    u16 *highestMatchedDigits = ScriptContext_GetVarPointer(context);
    u16 *isResultInBox = ScriptContext_GetVarPointer(context);
    u16 winningLotteryId = ScriptContext_GetVar(context);

    u32 pokemonOtId;
    u8 matchedTrainerIdDigits;

    Pokemon *partyPokemon;
    u16 highestPartyMatchedDigits, winningPartyIndex;
    u16 currentPartyCount = Party_GetCurrentCount(Party_GetFromSavedata(fieldSystem->saveData));
    highestPartyMatchedDigits = 0, winningPartyIndex = 0;
    for (u16 i = 0; i < currentPartyCount; i++) {
        partyPokemon = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(fieldSystem->saveData), i);

        if (Pokemon_GetValue(partyPokemon, MON_DATA_IS_EGG, NULL) == 0) {
            pokemonOtId = Pokemon_GetValue(partyPokemon, MON_DATA_OT_ID, NULL) & 0xffff;
            matchedTrainerIdDigits = CheckTrainerIdForMatch(winningLotteryId, pokemonOtId);

            if (matchedTrainerIdDigits > 0 && highestPartyMatchedDigits < matchedTrainerIdDigits) {
                highestPartyMatchedDigits = matchedTrainerIdDigits;
                winningPartyIndex = i;
            }
        }
    }

    u16 highestBoxMatchedDigits = 0, winningBoxPokemonIndex = 0;
    u32 monPosInBox, boxIndex, boxPokemonSpeciesId;
    BoxPokemon *boxPokemon;
    for (boxIndex = 0; boxIndex < MAX_PC_BOXES; boxIndex++) {
        for (monPosInBox = 0; monPosInBox < MAX_MONS_PER_BOX; monPosInBox++) {
            boxPokemon = PCBoxes_GetBoxMonAt(pcBoxes, boxIndex, monPosInBox);
            boxPokemonSpeciesId = BoxPokemon_GetValue(boxPokemon, MON_DATA_SPECIES, NULL);

            if (boxPokemonSpeciesId && BoxPokemon_GetValue(boxPokemon, MON_DATA_IS_EGG, NULL) == 0) {
                pokemonOtId = BoxPokemon_GetValue(boxPokemon, MON_DATA_OT_ID, NULL) & 0xffff;
                matchedTrainerIdDigits = CheckTrainerIdForMatch(winningLotteryId, pokemonOtId);

                if (matchedTrainerIdDigits > 0 && highestBoxMatchedDigits < matchedTrainerIdDigits) {
                    highestBoxMatchedDigits = matchedTrainerIdDigits;
                    winningBoxPokemonIndex = boxIndex * MAX_MONS_PER_BOX + monPosInBox;
                }
            }
        }
    }

    if (highestPartyMatchedDigits == 0 && highestBoxMatchedDigits == 0) {
        *winningPokemonIndex = 0;
        *highestMatchedDigits = 0;
        *isResultInBox = 0;
    } else {
        if (highestPartyMatchedDigits >= highestBoxMatchedDigits) {
            *winningPokemonIndex = winningPartyIndex;
            *highestMatchedDigits = highestPartyMatchedDigits;
            *isResultInBox = 0;
        } else {
            *winningPokemonIndex = winningBoxPokemonIndex;
            *highestMatchedDigits = highestBoxMatchedDigits;
            *isResultInBox = 1;
        }
    }

    return FALSE;
}

BOOL ScrCmd_RandomizeJubilifeLottery(ScriptContext *ctx)
{
    SystemVars_RandomizeJubilifeLotteryTrainerID(SaveData_GetVarsFlags(ctx->fieldSystem->saveData));
    return FALSE;
}

static u16 unused1 = 0, unused2 = 0;

static u8 CheckTrainerIdForMatch(u16 winningLotteryId, u16 pokemonOtId)
{
    u8 matchedDigits = 0;

    for (u8 i = 0; i < TRAINER_ID_MAX_LENGTH; i++) {
        unused1 = winningLotteryId % 10;
        unused2 = pokemonOtId % 10;

        if ((winningLotteryId % 10) != (pokemonOtId % 10)) {
            break;
        }

        winningLotteryId /= 10;
        pokemonOtId /= 10;
        matchedDigits++;
    }

    return matchedDigits;
}
