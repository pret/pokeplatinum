#include "constants/battle/battle_controller.h"

#include <nitro.h>
#include <string.h>

#include "constants/pokemon.h"
#include "constants/species.h"
#include "generated/genders.h"

#include "struct_decls/battle_system.h"
#include "struct_defs/battle_controller.h"
#include "struct_defs/battle_system.h"
#include "struct_defs/struct_0207A81C.h"

#include "battle/battle_context.h"
#include "battle/battle_controller.h"
#include "battle/battle_lib.h"
#include "battle/battle_message.h"
#include "battle/ov16_0223DF00.h"
#include "battle/struct_ov16_0224DDA8.h"
#include "battle/struct_ov16_0225BFFC_t.h"
#include "battle/struct_ov16_0225C2EC.h"
#include "battle/struct_ov16_0225C35C.h"
#include "battle/struct_ov16_0225C370.h"
#include "battle/struct_ov16_0225C384.h"
#include "battle/struct_ov16_0225C398.h"
#include "battle/struct_ov16_0225C3BC.h"
#include "battle/struct_ov16_0225C3D0.h"
#include "battle/struct_ov16_0225C3E4.h"
#include "battle/struct_ov16_0225C3F8.h"
#include "battle/struct_ov16_0225C40C.h"
#include "battle/struct_ov16_0225C430.h"
#include "battle/struct_ov16_0225C454.h"
#include "battle/struct_ov16_0225C468.h"
#include "battle/struct_ov16_0225C65C.h"
#include "battle/struct_ov16_0225C684.h"
#include "battle/struct_ov16_0225C988.h"
#include "battle/struct_ov16_0225C9F0.h"
#include "battle/struct_ov16_0225CA14.h"
#include "battle/struct_ov16_0225CA4C.h"
#include "battle/struct_ov16_0225CA60.h"
#include "battle/struct_ov16_02265BBC.h"
#include "battle/struct_ov16_022662FC.h"
#include "battle/struct_ov16_02266498.h"
#include "battle/struct_ov16_022664F8.h"
#include "battle/struct_ov16_022666BC.h"
#include "battle/struct_ov16_02266A38.h"
#include "battle/struct_ov16_02266ABC.h"

#include "communication_system.h"
#include "flags.h"
#include "move_table.h"
#include "party.h"
#include "pokemon.h"
#include "unk_0202F1D4.h"
#include "unk_0207A6DC.h"

static void ov16_0226485C(BattleSystem *battleSys, int param1, int param2, void *param3, u8 param4);
static void SendMessage(BattleSystem *battleSys, int recipient, int battlerId, void *message, u8 size);
static void PartyGaugeData_New(BattleSystem *battleSys, BattleContext *battleCtx, PartyGaugeData *partyGauge, int command, int battler);

static void ov16_0226485C(BattleSystem *battleSys, int param1, int param2, void *param3, u8 param4)
{
    int v0;
    UnkStruct_0207A81C v1;
    u8 *v2;
    u8 *v3;
    u16 *v4;
    u16 *v5;

    if (param1 == 1) {
        v3 = ov16_0223E074(battleSys);
        v4 = ov16_0223E0B0(battleSys);
        v5 = ov16_0223E0BC(battleSys);
    } else {
        v3 = ov16_0223E06C(battleSys);
        v4 = ov16_0223E08C(battleSys);
        v5 = ov16_0223E098(battleSys);
    }

    if (v4[0] + sizeof(UnkStruct_0207A81C) + param4 + 1 > 0x1000) {
        v5[0] = v4[0];
        v4[0] = 0;
    }

    v1.unk_00 = param1;
    v1.unk_01 = param2;
    v1.unk_02 = param4;

    v2 = (u8 *)&v1;

    for (v0 = 0; v0 < sizeof(UnkStruct_0207A81C); v0++) {
        v3[v4[0]] = v2[v0];
        v4[0]++;
    }

    v2 = (u8 *)param3;

    for (v0 = 0; v0 < param4; v0++) {
        v3[v4[0]] = v2[v0];
        v4[0]++;
    }
}

static BOOL ov16_022648F4(BattleSystem *battleSys, void *param1)
{
    u8 *v0 = (u8 *)param1;
    u8 v1;
    u8 v2;
    int v3;
    int v4;
    BOOL v5 = 0;

    v1 = v0[0];
    v2 = v0[1];
    v3 = v0[2] | (v0[3] << 8);

    v0 += sizeof(UnkStruct_0207A81C);

    if (v1 == 0) {
        if (battleSys->battleCtx->ioBuffer[v2][0] == 0) {
            for (v4 = 0; v4 < v3; v4++) {
                battleSys->battleCtx->ioBuffer[v2][v4] = v0[v4];
            }

            v5 = 1;
        }
    } else if (v1 == 1) {
        if (battleSys->battlers[v2]->data[0] == 0) {
            for (v4 = 0; v4 < v3; v4++) {
                battleSys->battlers[v2]->data[v4] = v0[v4];
            }

            v5 = 1;
        }
    } else if (v1 == 2) {
        {
            int v6;
            int v7;

            v6 = v0[0];
            v7 = v0[1];

            if (ov16_0223ED60(battleSys)) {
                BattleIO_DequeueVal(battleSys->battleCtx, v7, v2, v6);
            }
        }
        v5 = 1;
    } else {
        (void)0;
    }

    return v5;
}

void ov16_02264988(BattleSystem *battleSys, int param1)
{
    u8 *v0;
    u16 *v1;
    u16 *v2;
    u16 *v3;
    int v4;

    if (param1 == 1) {
        v0 = ov16_0223E074(battleSys);
        v1 = ov16_0223E0A4(battleSys);
        v2 = ov16_0223E0B0(battleSys);
        v3 = ov16_0223E0BC(battleSys);
    } else {
        v0 = ov16_0223E06C(battleSys);
        v1 = ov16_0223E080(battleSys);
        v2 = ov16_0223E08C(battleSys);
        v3 = ov16_0223E098(battleSys);
    }

    if (v1[0] == v2[0]) {
        return;
    }

    if (v1[0] == v3[0]) {
        v1[0] = 0;
        v3[0] = 0;
    }

    if (ov16_022648F4(battleSys, (void *)&v0[v1[0]]) == 1) {
        v4 = sizeof(UnkStruct_0207A81C) + (v0[v1[0] + 2] | (v0[v1[0] + 3] << 8));
        v1[0] += v4;
    }
}

/**
 * @brief Sends a message to a recipient (server or client)
 *
 *  If sending to a server, battlerId will be the responder's id
 *  If sending to a client, battlerId will be the affected battler's id (?)
 *  If sending to a server queue, battlerId will be removed from the server's queue
 *
 * @param battleSys
 * @param recipient
 * @param battlerId
 * @param message
 * @param size
 */
static void SendMessage(BattleSystem *battleSys, int recipient, int battlerId, void *message, u8 size)
{
    u8 *data = message;

    if ((battleSys->battleType & BATTLE_TYPE_LINK) && (battleSys->battleStatusMask & BATTLE_TYPE_TAG) == FALSE) {
        if (recipient == COMM_RECIPIENT_CLIENT) {
            for (int i = 0; i < CommSys_ConnectedCount(); i++) {
                BattleIO_EnqueueVal(battleSys->battleCtx, i, battlerId, *data);
            }
        }

        sub_0207A81C(battleSys, recipient, battlerId, message, size);
    } else {
        if (recipient == COMM_RECIPIENT_CLIENT) {
            BattleIO_EnqueueVal(battleSys->battleCtx, 0, battlerId, *data);
        }

        ov16_0226485C(battleSys, recipient, battlerId, message, size);
    }
}

/**
 * @brief Emits a message to set up the battle UI
 *
 * @param battleSys
 * @param battlerId
 */
void BattleController_EmitSetupBattleUI(BattleSystem *battleSys, int battlerId)
{
    UISetupMessage message;

    message.command = BATTLE_COMMAND_SETUP_UI;
    message.unk_04 = ov16_0223F4E8(battleSys);

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battlerId, &message, sizeof(UISetupMessage));
}

/**
 * @brief Emits a message to set a wild encounter
 *
 * @param battleSys
 * @param battlerId
 */
void BattleController_EmitSetEncounter(BattleSystem *battleSys, int battlerId)
{
    MonEncounterMessage message;
    int i;

    message.command = BATTLE_COMMAND_SET_ENCOUNTER;
    message.gender = battleSys->battleCtx->battleMons[battlerId].gender;
    message.isShiny = battleSys->battleCtx->battleMons[battlerId].isShiny;
    message.species = battleSys->battleCtx->battleMons[battlerId].species;
    message.personality = battleSys->battleCtx->battleMons[battlerId].personality;
    message.cryModulation = Battler_CryModulation(battleSys->battleCtx, battlerId, BattleSystem_BattlerSlot(battleSys, battlerId), 1);
    message.formNum = battleSys->battleCtx->battleMons[battlerId].formNum;

    for (i = 0; i < LEARNED_MOVES_MAX; i++) {
        message.moves[i] = BattleMon_Get(battleSys->battleCtx, battlerId, BATTLEMON_MOVE_1 + i, NULL);
        message.curPP[i] = BattleMon_Get(battleSys->battleCtx, battlerId, BATTLEMON_CUR_PP_1 + i, NULL);
        message.maxPP[i] = BattleMon_Get(battleSys->battleCtx, battlerId, BATTLEMON_MAX_PP_1 + i, NULL);
    }

    BattleMon_Get(battleSys->battleCtx, battlerId, BATTLEMON_NICKNAME, &message.nickname);
    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battlerId, &message, sizeof(MonEncounterMessage));
}

/**
 * @brief Emits a message to show a wild encounter
 *
 * @param battleSys
 * @param battlerId
 */
void BattleController_EmitShowEncounter(BattleSystem *battleSys, int battlerId)
{
    MonShowMessage message;
    int i;

    message.command = BATTLE_COMMAND_SHOW_ENCOUNTER;
    message.gender = battleSys->battleCtx->battleMons[battlerId].gender;
    message.isShiny = battleSys->battleCtx->battleMons[battlerId].isShiny;
    message.species = battleSys->battleCtx->battleMons[battlerId].species;
    message.personality = battleSys->battleCtx->battleMons[battlerId].personality;
    message.cryModulation = Battler_CryModulation(battleSys->battleCtx, battlerId, BattleSystem_BattlerSlot(battleSys, battlerId), 1);
    message.selectedPartySlot = battleSys->battleCtx->selectedPartySlot[battlerId];
    message.formNum = battleSys->battleCtx->battleMons[battlerId].formNum;
    message.capturedBall = battleSys->battleCtx->battleMons[battlerId].capturedBall;
    message.partnerPartySlot = battleSys->battleCtx->selectedPartySlot[BattleSystem_Partner(battleSys, battlerId)];

    ov16_0223EF2C(battleSys, battlerId, message.selectedPartySlot);

    for (i = 0; i < LEARNED_MOVES_MAX; i++) {
        message.moves[i] = BattleMon_Get(battleSys->battleCtx, battlerId, BATTLEMON_MOVE_1 + i, NULL);
        message.curPP[i] = BattleMon_Get(battleSys->battleCtx, battlerId, BATTLEMON_CUR_PP_1 + i, NULL);
        message.maxPP[i] = BattleMon_Get(battleSys->battleCtx, battlerId, BATTLEMON_MAX_PP_1 + i, NULL);
    }

    BattleMon_Get(battleSys->battleCtx, battlerId, BATTLEMON_NICKNAME, &message.nickname);
    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battlerId, &message, sizeof(MonShowMessage));
}

/**
 * @brief Emits a message to show a Pokemon
 *
 * @param battleSys
 * @param battlerId
 * @param capturedBall
 * @param param3
 */
void BattleController_EmitShowPokemon(BattleSystem *battleSys, int battlerId, int capturedBall, int param3)
{
    MonShowMessage message;
    int i;

    message.command = BATTLE_COMMAND_SHOW_POKEMON;

    if (battleSys->battleCtx->battleMons[battlerId].statusVolatile & VOLATILE_CONDITION_TRANSFORM) {
        message.gender = battleSys->battleCtx->battleMons[battlerId].moveEffectsData.transformedGender;
        message.personality = battleSys->battleCtx->battleMons[battlerId].moveEffectsData.transformedPID;
    } else {
        message.gender = battleSys->battleCtx->battleMons[battlerId].gender;
        message.personality = battleSys->battleCtx->battleMons[battlerId].personality;
    }

    message.isShiny = battleSys->battleCtx->battleMons[battlerId].isShiny;
    message.species = battleSys->battleCtx->battleMons[battlerId].species;
    message.cryModulation = Battler_CryModulation(battleSys->battleCtx, battlerId, BattleSystem_BattlerSlot(battleSys, battlerId), 0);
    message.selectedPartySlot = battleSys->battleCtx->selectedPartySlot[battlerId];
    message.formNum = battleSys->battleCtx->battleMons[battlerId].formNum;

    if (capturedBall) {
        message.capturedBall = capturedBall;
    } else {
        message.capturedBall = battleSys->battleCtx->battleMons[battlerId].capturedBall;
    }

    message.unk_14 = param3;
    message.notSubstitute = ((battleSys->battleCtx->battleMons[battlerId].statusVolatile & VOLATILE_CONDITION_SUBSTITUTE) != 0);

    ov16_0223EF2C(battleSys, battlerId, message.selectedPartySlot);

    for (i = 0; i < LEARNED_MOVES_MAX; i++) {
        message.moves[i] = BattleMon_Get(battleSys->battleCtx, battlerId, BATTLEMON_MOVE_1 + i, NULL);
        message.curPP[i] = BattleMon_Get(battleSys->battleCtx, battlerId, BATTLEMON_CUR_PP_1 + i, NULL);
        message.maxPP[i] = BattleMon_Get(battleSys->battleCtx, battlerId, BATTLEMON_MAX_PP_1 + i, NULL);
    }

    BattleMon_Get(battleSys->battleCtx, battlerId, BATTLEMON_NICKNAME, &message.nickname);

    for (i = 0; i < LEARNED_MOVES_MAX; i++) {
        message.battleMonSpecies[i] = battleSys->battleCtx->battleMons[i].species;
        message.battleMonIsShiny[i] = battleSys->battleCtx->battleMons[i].isShiny;
        message.battleMonFormNums[i] = battleSys->battleCtx->battleMons[i].formNum;

        if (battleSys->battleCtx->battleMons[i].statusVolatile & VOLATILE_CONDITION_TRANSFORM) {
            message.battleMonGenders[i] = battleSys->battleCtx->battleMons[i].moveEffectsData.transformedGender;
            message.battleMonPersonalities[i] = battleSys->battleCtx->battleMons[i].moveEffectsData.transformedPID;
        } else {
            message.battleMonGenders[i] = battleSys->battleCtx->battleMons[i].gender;
            message.battleMonPersonalities[i] = battleSys->battleCtx->battleMons[i].personality;
        }
    }

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battlerId, &message, sizeof(MonShowMessage));
}

/**
 * @brief Emits a message to return a Pokemon to its Poke Ball
 *
 * @param battleSys
 * @param battleCtx
 * @param battlerId
 */
void BattleController_EmitReturnPokemon(BattleSystem *battleSys, BattleContext *battleCtx, int battlerId)
{
    MonReturnMessage message;
    int face;
    int formNum;
    int i;

    if (battleSys->battlers[battlerId]->battlerType & BATTLER_TYPE_SOLO_ENEMY) {
        face = FACE_FRONT;
    } else {
        face = FACE_BACK;
    }

    formNum = battleSys->battleCtx->battleMons[battlerId].formNum;
    message.command = BATTLE_COMMAND_RETURN_POKEMON;

    if (battleSys->battleCtx->battleMons[battlerId].statusVolatile & VOLATILE_CONDITION_TRANSFORM) {
        message.yOffset = LoadPokemonSpriteYOffset(battleSys->battleCtx->battleMons[battlerId].species, battleSys->battleCtx->battleMons[battlerId].moveEffectsData.transformedGender, face, formNum, battleSys->battleCtx->battleMons[battlerId].moveEffectsData.transformedPID);
    } else {
        message.yOffset = LoadPokemonSpriteYOffset(battleSys->battleCtx->battleMons[battlerId].species, battleSys->battleCtx->battleMons[battlerId].gender, face, formNum, battleSys->battleCtx->battleMons[battlerId].personality);
    }

    message.capturedBall = battleSys->battleCtx->battleMons[battlerId].capturedBall;
    message.notSubstitute = ((battleSys->battleCtx->battleMons[battlerId].statusVolatile & VOLATILE_CONDITION_SUBSTITUTE) != 0);

    for (i = 0; i < LEARNED_MOVES_MAX; i++) {
        message.battleMonSpecies[i] = battleCtx->battleMons[i].species;
        message.battleMonIsShiny[i] = battleCtx->battleMons[i].isShiny;
        message.battleMonFormNums[i] = battleCtx->battleMons[i].formNum;

        if (battleCtx->battleMons[i].statusVolatile & VOLATILE_CONDITION_TRANSFORM) {
            message.battleMonGenders[i] = battleCtx->battleMons[i].moveEffectsData.transformedGender;
            message.battleMonPersonalities[i] = battleCtx->battleMons[i].moveEffectsData.transformedPID;
        } else {
            message.battleMonGenders[i] = battleCtx->battleMons[i].gender;
            message.battleMonPersonalities[i] = battleCtx->battleMons[i].personality;
        }
    }

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battlerId, &message, sizeof(MonReturnMessage));
}

/**
 * @brief Emits a message to set up the animation to try and catch a Pokemon with a given Poke Ball
 *
 * @param battleSystem
 * @param battlerId
 * @param ball
 */
void BattleController_EmitOpenCaptureBall(BattleSystem *battleSys, int battlerId, int ball)
{
    CaptureOpenBallMessage message;
    int face;
    int formNum;

    if (battleSys->battlers[battlerId]->battlerType & BATTLER_TYPE_SOLO_ENEMY) {
        face = FACE_FRONT;
    } else {
        face = FACE_BACK;
    }

    formNum = battleSys->battleCtx->battleMons[battlerId].formNum;
    message.command = BATTLE_COMMAND_OPEN_CAPTURE_BALL;

    if (battleSys->battleCtx->battleMons[battlerId].statusVolatile & VOLATILE_CONDITION_TRANSFORM) {
        message.yOffset = LoadPokemonSpriteYOffset(battleSys->battleCtx->battleMons[battlerId].species, battleSys->battleCtx->battleMons[battlerId].moveEffectsData.transformedGender, face, formNum, battleSys->battleCtx->battleMons[battlerId].moveEffectsData.transformedPID);
    } else {
        message.yOffset = LoadPokemonSpriteYOffset(battleSys->battleCtx->battleMons[battlerId].species, battleSys->battleCtx->battleMons[battlerId].gender, face, formNum, battleSys->battleCtx->battleMons[battlerId].personality);
    }

    message.ball = ball;
    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battlerId, &message, sizeof(CaptureOpenBallMessage));
}

/**
 * @brief Emits a message to delete a Pokemon's sprite
 *
 * @param battleSys
 * @param battlerId
 */
void BattleController_EmitDeletePokemon(BattleSystem *battleSys, int battlerId)
{
    int command = BATTLE_COMMAND_DELETE_POKEMON;
    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battlerId, &command, 4);
}

/**
 * @brief Emits a message to set a trainer encounter
 *
 * @param battleSystem
 * @param battlerId
 */
void BattleController_EmitSetTrainerEncounter(BattleSystem *battleSys, int battlerId)
{
    TrainerEncounterMessage message;

    message.command = BATTLE_COMMAND_SET_TRAINER_ENCOUNTER;
    message.trainerType = battleSys->trainers[battlerId].header.trainerType;
    message.unk_01 = battleSys->unk_A8[battlerId];

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battlerId, &message, sizeof(TrainerEncounterMessage));
}

/**
 * @brief Emits a message for a trainer to throw a Pokeball
 *
 * @param battleSys
 * @param battlerId
 * @param ballTypeIn
 */
void BattleController_EmitThrowTrainerBall(BattleSystem *battleSys, int battlerId, int ballTypeIn)
{
    TrainerThrowBallMessage message;

    message.command = BATTLE_COMMAND_THROW_TRAINER_BALL;
    message.ballTypeIn = ballTypeIn;
    message.selectedPartySlot = battleSys->battleCtx->selectedPartySlot[BattleSystem_Partner(battleSys, battlerId)];

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battlerId, &message, sizeof(TrainerThrowBallMessage));
}

/**
 * @brief Emits a message to slide out a trainer sprite
 *
 * @param battleSys
 * @param battlerId
 */
void BattleController_EmitSlideTrainerOut(BattleSystem *battleSys, int battlerId)
{
    int command = BATTLE_COMMAND_SLIDE_TRAINER_OUT;

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battlerId, &command, 4);
}

/**
 * @brief Emits a message to slide in a trainer sprite
 *
 * @param battleSys
 * @param battlerId
 * @param posIn
 */
void BattleController_EmitSlideTrainerIn(BattleSystem *battleSys, int battlerId, int posIn)
{
    TrainerSlideInMessage message;

    message.command = BATTLE_COMMAND_SLIDE_TRAINER_IN;
    message.trainerType = battleSys->trainers[battlerId].header.trainerType;
    message.unk_01 = battleSys->unk_A8[battlerId];
    message.posIn = posIn;

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battlerId, &message, sizeof(TrainerSlideInMessage));
}

/**
 * @brief Emits a message to slide the healthbar in
 * 
 * @param battleSys
 * @param battleCtx
 * @param battler
 * @param delay
 */
void BattleController_EmitSlideHealthbarIn(BattleSystem *battleSys, BattleContext *battleCtx, int battler, int delay)
{
    HealthbarData healthbar;

    Pokemon *mon = BattleSystem_PartyPokemon(battleSys, battler, battleCtx->selectedPartySlot[battler]);
    int species = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);
    int level = Pokemon_GetValue(mon, MON_DATA_LEVEL, NULL);

    healthbar.command = BATTLE_COMMAND_SLIDE_HEALTHBAR_IN;
    healthbar.level = battleCtx->battleMons[battler].level;
    healthbar.curHP = battleCtx->battleMons[battler].curHP;
    healthbar.maxHP = battleCtx->battleMons[battler].maxHP;
    healthbar.selectedPartySlot = battleCtx->selectedPartySlot[battler];
    healthbar.status = Battler_StatusCondition(battleCtx, battler);

    if ((battleCtx->battleMons[battler].species == SPECIES_NIDORAN_F || battleCtx->battleMons[battler].species == SPECIES_NIDORAN_M)
        && battleCtx->battleMons[battler].hasNickname == FALSE) {
        healthbar.gender = GENDER_NONE; // don't show the Gender marker for base-Nidoran forms
    } else {
        healthbar.gender = battleCtx->battleMons[battler].gender;
    }

    healthbar.expFromLastLevel = battleCtx->battleMons[battler].exp - Pokemon_GetSpeciesBaseExpAt(species, level);
    healthbar.expToNextLevel = Pokemon_GetSpeciesBaseExpAt(species, level + 1) - Pokemon_GetSpeciesBaseExpAt(species, level);
    healthbar.speciesCaught = BattleSystem_CaughtSpecies(battleSys, battleCtx->battleMons[battler].species);
    healthbar.numSafariBalls = BattleSystem_NumSafariBalls(battleSys);
    healthbar.delay = delay;

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battler, &healthbar, sizeof(HealthbarData));
}

/**
 * @brief Emits a message to slide the healthbar out
 *
 * @param battleSys
 * @param battler
 */
void BattleController_EmitSlideHealthbarOut(BattleSystem *battleSys, int battler)
{
    int command = BATTLE_COMMAND_SLIDE_HEALTHBAR_OUT;
    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battler, &command, sizeof(int));
}

/**
 * @brief Emits a message to set the lower menu to the command selection screen
 *
 * @param battleSys
 * @param battleCtx
 * @param battler
 * @param partySlot
 */
void BattleController_EmitSetCommandSelection(BattleSystem *battleSys, BattleContext *battleCtx, int battler, int partySlot)
{
    CommandSetMessage message;
    int i;
    int battlerType;
    int monSpeciesOrEgg;
    int cnt;
    Party *party;
    Pokemon *pokemon;
    u32 battleType;
    int battlersCanPickCommandMask;

    MI_CpuClearFast(&message, sizeof(CommandSetMessage));
    BattleIO_ClearBuffer(BattleSystem_Context(battleSys), battler);

    battlersCanPickCommandMask = 0;

    for (i = 0; i < BattleSystem_MaxBattlers(battleSys); i++) {
        if (Battler_CanPickCommand(battleCtx, i) == 0) {
            battlersCanPickCommandMask |= FlagIndex(i);
        }
    }

    message.command = BATTLE_COMMAND_SET_COMMAND_SELECTION;
    message.partySlot = partySlot;
    message.unk_29 = battleCtx->battlersSwitchingMask | battlersCanPickCommandMask;

    battleType = BattleSystem_BattleType(battleSys);

    if ((battleType & BATTLE_TYPE_DOUBLES) && ((battleType & BATTLE_TYPE_2vs2) == 0)) {
        battlerType = battler & 1;
    } else {
        battlerType = battler;
    }

    party = BattleSystem_Party(battleSys, battlerType);
    cnt = 0;

    for (i = 0; i < Party_GetCurrentCount(party); i++) {
        pokemon = Party_GetPokemonBySlotIndex(party, battleCtx->partyOrder[battlerType][i]);
        monSpeciesOrEgg = Pokemon_GetValue(pokemon, MON_DATA_SPECIES_OR_EGG, NULL);

        if ((monSpeciesOrEgg) && (monSpeciesOrEgg != SPECIES_EGG)) {
            if (Pokemon_GetValue(pokemon, MON_DATA_HP, NULL)) {
                if (Pokemon_GetValue(pokemon, MON_DATA_STATUS, NULL)) {
                    message.ballStatus[PARTY_GAUGE_OURS][cnt] = STOCK_STATUS_HAS_STATUS_CONDITION;
                } else {
                    message.ballStatus[PARTY_GAUGE_OURS][cnt] = STOCK_STATUS_MON_ALIVE;
                }
            } else {
                message.ballStatus[PARTY_GAUGE_OURS][cnt] = STOCK_STATUS_MON_FAINTED;
            }

            if (battleType & (BATTLE_TYPE_LINK | BATTLE_TYPE_SAFARI | BATTLE_TYPE_FRONTIER | BATTLE_TYPE_PAL_PARK)) {
                message.expPercents[cnt] = 0;
            } else {
                message.expPercents[cnt] = Pokemon_GetPercentToNextLevel(pokemon);
            }

            cnt++;
        }
    }

    if (((battleType & (BATTLE_TYPE_LINK | BATTLE_TYPE_2vs2)) == (BATTLE_TYPE_LINK | BATTLE_TYPE_2vs2))
        || (battleType & BATTLE_TYPE_TAG)
        || (battleType == (BATTLE_TYPE_TRAINER_DOUBLES | BATTLE_TYPE_2vs2 | BATTLE_TYPE_AI))
        || (battleType == ((BATTLE_TYPE_TRAINER_DOUBLES | BATTLE_TYPE_2vs2 | BATTLE_TYPE_AI) | BATTLE_TYPE_FRONTIER))) {
        if (Battler_Side(battleSys, battler)) {
            battlerType = BattleSystem_BattlerOfType(battleSys, BATTLER_TYPE_PLAYER_SIDE_SLOT_1);
        } else {
            battlerType = BattleSystem_BattlerOfType(battleSys, BATTLER_TYPE_ENEMY_SIDE_SLOT_1);
        }

        party = BattleSystem_Party(battleSys, battlerType);
        cnt = 0;

        for (i = 0; i < Party_GetCurrentCount(party); i++) {
            pokemon = Party_GetPokemonBySlotIndex(party, battleCtx->partyOrder[battlerType][i]);
            monSpeciesOrEgg = Pokemon_GetValue(pokemon, MON_DATA_SPECIES_OR_EGG, NULL);

            if ((monSpeciesOrEgg) && (monSpeciesOrEgg != SPECIES_EGG)) {
                if (Pokemon_GetValue(pokemon, MON_DATA_HP, NULL)) {
                    if (Pokemon_GetValue(pokemon, MON_DATA_STATUS, NULL)) {
                        message.ballStatus[PARTY_GAUGE_THEIRS][cnt] = STOCK_STATUS_HAS_STATUS_CONDITION;
                    } else {
                        message.ballStatus[PARTY_GAUGE_THEIRS][cnt] = STOCK_STATUS_MON_ALIVE;
                    }
                } else {
                    message.ballStatus[PARTY_GAUGE_THEIRS][cnt] = STOCK_STATUS_MON_FAINTED;
                }

                cnt++;
            }
        }

        if (Battler_Side(battleSys, battler)) {
            battlerType = BattleSystem_BattlerOfType(battleSys, BATTLER_TYPE_PLAYER_SIDE_SLOT_2);
        } else {
            battlerType = BattleSystem_BattlerOfType(battleSys, BATTLER_TYPE_ENEMY_SIDE_SLOT_2);
        }

        party = BattleSystem_Party(battleSys, battlerType);
        cnt = 3;

        for (i = 0; i < Party_GetCurrentCount(party); i++) {
            pokemon = Party_GetPokemonBySlotIndex(party, battleCtx->partyOrder[battlerType][i]);
            monSpeciesOrEgg = Pokemon_GetValue(pokemon, MON_DATA_SPECIES_OR_EGG, NULL);

            if ((monSpeciesOrEgg) && (monSpeciesOrEgg != SPECIES_EGG)) {
                if (Pokemon_GetValue(pokemon, MON_DATA_HP, NULL)) {
                    if (Pokemon_GetValue(pokemon, MON_DATA_STATUS, NULL)) {
                        message.ballStatus[PARTY_GAUGE_THEIRS][cnt] = STOCK_STATUS_HAS_STATUS_CONDITION;
                    } else {
                        message.ballStatus[PARTY_GAUGE_THEIRS][cnt] = STOCK_STATUS_MON_ALIVE;
                    }
                } else {
                    message.ballStatus[PARTY_GAUGE_THEIRS][cnt] = STOCK_STATUS_MON_FAINTED;
                }

                cnt++;
            }
        }
    } else {
        battlerType = BattleSystem_EnemyInSlot(battleSys, battler, 2);
        party = BattleSystem_Party(battleSys, battlerType);
        cnt = 0;

        for (i = 0; i < Party_GetCurrentCount(party); i++) {
            pokemon = Party_GetPokemonBySlotIndex(party, battleCtx->partyOrder[battlerType][i]);
            monSpeciesOrEgg = Pokemon_GetValue(pokemon, MON_DATA_SPECIES_OR_EGG, NULL);

            if ((monSpeciesOrEgg) && (monSpeciesOrEgg != SPECIES_EGG)) {
                if (Pokemon_GetValue(pokemon, MON_DATA_HP, NULL)) {
                    if (Pokemon_GetValue(pokemon, MON_DATA_STATUS, NULL)) {
                        message.ballStatus[PARTY_GAUGE_THEIRS][cnt] = STOCK_STATUS_HAS_STATUS_CONDITION;
                    } else {
                        message.ballStatus[PARTY_GAUGE_THEIRS][cnt] = STOCK_STATUS_MON_ALIVE;
                    }
                } else {
                    message.ballStatus[PARTY_GAUGE_THEIRS][cnt] = STOCK_STATUS_MON_FAINTED;
                }

                cnt++;
            }
        }
    }

    for (i = 0; i < LEARNED_MOVES_MAX; i++) {
        message.moves[i] = BattleMon_Get(battleCtx, battler, BATTLEMON_MOVE_1 + i, NULL);
        message.curPP[i] = BattleMon_Get(battleCtx, battler, BATTLEMON_CUR_PP_1 + i, NULL);
        message.maxPP[i] = BattleMon_Get(battleCtx, battler, BATTLEMON_MAX_PP_1 + i, NULL);
    }

    message.curHP = battleCtx->battleMons[battler].curHP;
    message.maxHP = battleCtx->battleMons[battler].maxHP;

    if (message.curHP) {
        if (battleCtx->battleMons[battler].status) {
            message.ballStatusBattler = STOCK_STATUS_HAS_STATUS_CONDITION;
        } else {
            message.ballStatusBattler = STOCK_STATUS_MON_ALIVE;
        }
    } else {
        message.ballStatusBattler = STOCK_STATUS_MON_FAINTED;
    }

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battler, &message, sizeof(CommandSetMessage));
}

void ov16_022656D4(BattleSystem *battleSys, int battlerId, int param2)
{
    SendMessage(battleSys, COMM_RECIPIENT_SERVER, battlerId, &param2, 4);
}

/**
 * @brief Emits a message to show the move selection menu
 *
 * @param battleSys
 * @param battleCtx
 * @param battler
 */
void BattleController_EmitShowMoveSelectMenu(BattleSystem *battleSys, BattleContext *battleCtx, int battler)
{
    BattleIO_ClearBuffer(BattleSystem_Context(battleSys), battler);

    MoveSelectMenuMessage message;
    message.command = BATTLE_COMMAND_SHOW_MOVE_SELECT_MENU;
    message.partySlot = battleCtx->selectedPartySlot[battler];

    for (int i = 0; i < LEARNED_MOVES_MAX; i++) {
        message.moves[i] = battleCtx->battleMons[battler].moves[i];
        message.ppCur[i] = battleCtx->battleMons[battler].ppCur[i];
        message.ppMax[i] = MoveTable_CalcMaxPP(battleCtx->battleMons[battler].moves[i], battleCtx->battleMons[battler].ppUps[i]);
    }

    message.invalidMoves = BattleSystem_CheckInvalidMoves(battleSys, battleCtx, battler, 0, CHECK_INVALID_ALL);

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battler, &message, sizeof(MoveSelectMenuMessage));
}

void ov16_02265790(BattleSystem *battleSys, int battlerId, int param2)
{
    SendMessage(battleSys, COMM_RECIPIENT_SERVER, battlerId, &param2, 4);
}

/**
 * @brief Emits a message to show the target selection menu
 * 
 * @param battleSys
 * @param battleCtx
 * @param range
 * @param battler
 */
void BattleCommand_EmitShowTargetSelectMenu(BattleSystem *battleSys, BattleContext *battleCtx, int range, int battler)
{
    TargetSelectMenuMessage message;
    int i;
    u32 battleType;

    BattleIO_ClearBuffer(battleCtx, battler);

    battleType = BattleSystem_BattleType(battleSys);

    message.command = BATTLE_COMMAND_SHOW_TARGET_SELECT_MENU;
    message.range = range;

    if (((battleType & BATTLE_TYPE_DOUBLES) == FALSE) || (battleType & BATTLE_TYPE_2vs2) || ((battleType & BATTLE_TYPE_DOUBLES) && (battler >= 2))) {
        message.unk_01 = 1;
    } else {
        message.unk_01 = 0;
    }

    for (i = 0; i < 4; i++) {
        if (battleCtx->battleMons[i].curHP) {
            message.targetMon[i].curHP = battleCtx->battleMons[i].curHP;
            message.targetMon[i].maxHP = battleCtx->battleMons[i].maxHP;
            message.targetMon[i].unk_01_2 = 1;

            if (((battleCtx->battleMons[i].species == SPECIES_NIDORAN_F) || (battleCtx->battleMons[i].species == SPECIES_NIDORAN_M)) && (battleCtx->battleMons[i].hasNickname == 0)) {
                message.targetMon[i].gender = GENDER_NONE;
            } else {
                message.targetMon[i].gender = battleCtx->battleMons[i].gender;
            }

            message.targetMon[i].partySlot = battleCtx->selectedPartySlot[i];

            if (battleCtx->battleMons[i].status) {
                message.targetMon[i].unk_02 = 3;
            } else {
                message.targetMon[i].unk_02 = 1;
            }
        } else {
            message.targetMon[i].unk_01_2 = 0;
            message.targetMon[i].unk_02 = 2;
        }
    }

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battler, &message, sizeof(TargetSelectMenuMessage));
}

void ov16_022658CC(BattleSystem *battleSys, int battlerId, int param2)
{
    SendMessage(battleSys, COMM_RECIPIENT_SERVER, battlerId, &param2, 4);
}

/**
 * @brief Emits a message to bring up the bag menu
 *
 * @param battleSys
 * @param battleCtx
 * @param battler
 */
void BattleController_EmitShowBagMenu(BattleSystem *battleSys, BattleContext *battleCtx, int battler)
{
    BagMenuMessage message;
    int i, j;

    BattleIO_ClearBuffer(battleCtx, battler);

    message.command = BATTLE_COMMAND_SHOW_BAG_MENU;

    for (i = 0; i < 4; i++) {
        message.partySlots[i] = battleCtx->selectedPartySlot[i];

        for (j = 0; j < 6; j++) {
            message.partyOrder[i][j] = battleCtx->partyOrder[i][j];
        }

        message.embargoTurns[i] = battleCtx->battleMons[i].moveEffectsData.embargoTurns;
    }

    if (BattleSystem_BattleType(battleSys) == BATTLE_TYPE_AI_PARTNER) {
        if (((battleCtx->battlersSwitchingMask & FlagIndex(1)) == 0) && ((battleCtx->battlersSwitchingMask & FlagIndex(3)) == 0)) {
            message.unk_01 = 1;
            message.semiInvulnerable = 0;
            message.substitute = 0;
        } else if ((battleCtx->battlersSwitchingMask & FlagIndex(1)) == 0) {
            message.unk_01 = 0;

            if (battleCtx->battleMons[1].moveEffectsMask & MOVE_EFFECT_SEMI_INVULNERABLE) {
                message.semiInvulnerable = 1;
                message.substitute = 0;
            } else if (battleCtx->battleMons[1].statusVolatile & VOLATILE_CONDITION_SUBSTITUTE) {
                message.semiInvulnerable = 0;
                message.substitute = 1;
            } else {
                message.semiInvulnerable = 0;
                message.substitute = 0;
            }
        } else {
            message.unk_01 = 0;

            if (battleCtx->battleMons[3].moveEffectsMask & MOVE_EFFECT_SEMI_INVULNERABLE) {
                message.semiInvulnerable = 1;
                message.substitute = 0;
            } else if (battleCtx->battleMons[3].statusVolatile & VOLATILE_CONDITION_SUBSTITUTE) {
                message.semiInvulnerable = 0;
                message.substitute = 1;
            } else {
                message.semiInvulnerable = 0;
                message.substitute = 0;
            }
        }
    } else if (BattleSystem_BattleType(battleSys) == (BATTLE_TYPE_SINGLES | BATTLE_TYPE_WILD_MON)) { // Was (0x0 | 0x0). Is this what they intended?
        message.unk_01 = 0;

        if (battleCtx->battleMons[1].moveEffectsMask & MOVE_EFFECT_SEMI_INVULNERABLE) {
            message.semiInvulnerable = 1;
            message.substitute = 0;
        } else if (battleCtx->battleMons[1].statusVolatile & VOLATILE_CONDITION_SUBSTITUTE) {
            message.semiInvulnerable = 0;
            message.substitute = 1;
        } else {
            message.semiInvulnerable = 0;
            message.substitute = 0;
        }
    } else {
        message.unk_01 = 0;
        message.semiInvulnerable = 0;
        message.substitute = 0;
    }

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battler, &message, sizeof(BagMenuMessage));
}

void ov16_02265A70(BattleSystem *battleSys, int battlerId, BattleItemUse param2)
{
    SendMessage(battleSys, COMM_RECIPIENT_SERVER, battlerId, &param2, sizeof(BattleItemUse));
}

/**
 * @brief Emits a message to show the party menu
 *
 * @param battleSys
 * @param battleCtx
 * @param battler
 * @param listMode
 * @param canSwitch
 * @param doubles
 */
void BattleController_EmitShowPartyMenu(BattleSystem *battleSys, BattleContext *battleCtx, int battler, int listMode, int canSwitch, int doubles)
{
    PartyMenuMessage message;
    int i, j;

    BattleIO_ClearBuffer(battleCtx, battler);

    message.command = BATTLE_COMMAND_SHOW_PARTY_MENU;
    message.battler = battler;
    message.listMode = listMode;
    message.canSwitch = canSwitch;
    message.doubles = doubles;
    message.battlersSwitchingMask = battleCtx->battlersSwitchingMask;

    for (i = 0; i < 4; i++) {
        message.selectedPartySlot[i] = battleCtx->selectedPartySlot[i];

        for (j = 0; j < 6; j++) {
            message.partyOrder[i][j] = battleCtx->partyOrder[i][j];
        }
    }

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battler, &message, sizeof(PartyMenuMessage));
}

void ov16_02265B10(BattleSystem *battleSys, int battlerId, int param2)
{
    SendMessage(battleSys, COMM_RECIPIENT_SERVER, battlerId, &param2, 4);
}

/**
 * @brief Emits a message to show the yes/no menu 
 *
 * @param battleSys
 * @param battleCtx
 * @param battler
 * @param promptMsg
 * @param tesnoType
 * @param move
 * @param nickname
 */
void BattleController_EmitShowYesNoMenu(BattleSystem *battleSys, BattleContext *battleCtx, int battler, int promptMsg, int yesnoType, int move, int nickname)
{
    YesNoMenuMessage message;

    BattleIO_ClearBuffer(battleCtx, battler);

    message.command = BATTLE_COMMAND_SHOW_YES_NO_MENU;
    message.promptMsg = promptMsg;
    message.yesnoType = yesnoType;
    message.move = move;
    message.nickname = nickname;

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battler, &message, sizeof(YesNoMenuMessage));
}

void BattleIO_PrintAttackMessage(BattleSystem *battleSys, BattleContext *battleCtx)
{
    UnkStruct_ov16_0225C2EC v0;

    v0.unk_00 = BATTLE_COMMAND_PRINT_ATTACK_MESSAGE;
    v0.unk_01 = battleCtx->selectedPartySlot[battleCtx->attacker];
    v0.unk_02 = battleCtx->moveCur;

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battleCtx->attacker, &v0, sizeof(UnkStruct_ov16_0225C2EC));
}

void BattleIO_PrintMessage(BattleSystem *battleSys, BattleContext *battleCtx, BattleMessage *battleMsg)
{
    battleMsg->commandCode = BATTLE_COMMAND_PRINT_MESSAGE;
    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battleCtx->attacker, battleMsg, sizeof(BattleMessage));
}

void BattleIO_PlayMoveAnimation(BattleSystem *battleSys, BattleContext *battleCtx, u16 param2)
{
    UnkStruct_ov16_02265BBC v0;

    ov16_02266B78(battleSys, battleCtx, &v0, 0, NULL, battleCtx->attacker, battleCtx->defender, param2);
    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battleCtx->attacker, &v0, sizeof(UnkStruct_ov16_02265BBC));
}

void BattleIO_PlayMoveAnimationA2D(BattleSystem *battleSys, BattleContext *battleCtx, u16 param2, int param3, int param4)
{
    UnkStruct_ov16_02265BBC v0;

    ov16_02266B78(battleSys, battleCtx, &v0, 0, NULL, param3, param4, param2);
    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, param3, &v0, sizeof(UnkStruct_ov16_02265BBC));
}

void BattleIO_FlickerBattler(BattleSystem *battleSys, int battlerId, u32 param2)
{
    int v0 = BATTLE_COMMAND_FLCIKER_BATTLER;
    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battlerId, &v0, 4);
}

void BattleIO_UpdateHPGauge(BattleSystem *battleSys, BattleContext *battleCtx, int param2)
{
    UnkStruct_ov16_0225C35C v0;
    Pokemon *v1;
    int v2;
    int v3;

    v1 = BattleSystem_PartyPokemon(battleSys, param2, battleCtx->selectedPartySlot[param2]);
    v2 = Pokemon_GetValue(v1, MON_DATA_SPECIES, NULL);
    v3 = Pokemon_GetValue(v1, MON_DATA_LEVEL, NULL);

    v0.unk_00 = BATTLE_COMMAND_UPDATE_HP_GAUGE;
    v0.unk_01 = battleCtx->battleMons[param2].level;
    v0.unk_02 = battleCtx->battleMons[param2].curHP;
    v0.unk_04 = battleCtx->battleMons[param2].maxHP;
    v0.unk_08 = battleCtx->hpCalcTemp;

    if (((battleCtx->battleMons[param2].species == 29) || (battleCtx->battleMons[param2].species == 32)) && (battleCtx->battleMons[param2].hasNickname == 0)) {
        v0.unk_07 = 2;
    } else {
        v0.unk_07 = battleCtx->battleMons[param2].gender;
    }

    v0.unk_0C = battleCtx->battleMons[param2].exp - Pokemon_GetSpeciesBaseExpAt(v2, v3);
    v0.unk_10 = Pokemon_GetSpeciesBaseExpAt(v2, v3 + 1) - Pokemon_GetSpeciesBaseExpAt(v2, v3);

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, param2, &v0, sizeof(UnkStruct_ov16_0225C35C));
}

void BattleIO_UpdateExpGauge(BattleSystem *battleSys, BattleContext *battleCtx, int param2, int param3)
{
    UnkStruct_ov16_0225C370 v0;
    Pokemon *v1;
    int v2;
    int v3;

    v1 = BattleSystem_PartyPokemon(battleSys, param2, battleCtx->selectedPartySlot[param2]);
    v2 = Pokemon_GetValue(v1, MON_DATA_SPECIES, NULL);
    v3 = Pokemon_GetValue(v1, MON_DATA_LEVEL, NULL);

    v0.unk_00 = BATTLE_COMMAND_UPDATE_EXP_GAUGE;
    v0.unk_04 = param3;
    v0.unk_08 = battleCtx->battleMons[param2].exp - Pokemon_GetSpeciesBaseExpAt(v2, v3);
    v0.unk_0C = Pokemon_GetSpeciesBaseExpAt(v2, v3 + 1) - Pokemon_GetSpeciesBaseExpAt(v2, v3);

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, param2, &v0, sizeof(UnkStruct_ov16_0225C370));
}

void BattleIO_PlayFaintingSequence(BattleSystem *battleSys, BattleContext *battleCtx, int param2)
{
    UnkStruct_ov16_0225C384 v0;
    int v1;

    v0.unk_00 = BATTLE_COMMAND_PLAY_FAINTING_SEQUENCE;
    v0.unk_02 = battleCtx->battleMons[param2].species;
    v0.unk_08 = battleCtx->battleMons[param2].formNum;
    v0.unk_09 = ((battleCtx->battleMons[param2].statusVolatile & VOLATILE_CONDITION_SUBSTITUTE) != 0);
    v0.unk_0A = ((battleCtx->battleMons[param2].statusVolatile & VOLATILE_CONDITION_TRANSFORM) != 0);

    if (battleCtx->battleMons[param2].statusVolatile & VOLATILE_CONDITION_TRANSFORM) {
        v0.unk_01 = battleCtx->battleMons[param2].moveEffectsData.transformedGender;
        v0.unk_04 = battleCtx->battleMons[param2].moveEffectsData.transformedPID;
    } else {
        v0.unk_01 = battleCtx->battleMons[param2].gender;
        v0.unk_04 = battleCtx->battleMons[param2].personality;
    }

    for (v1 = 0; v1 < 4; v1++) {
        v0.unk_0C[v1] = battleCtx->battleMons[v1].species;
        v0.unk_18[v1] = battleCtx->battleMons[v1].isShiny;
        v0.unk_1C[v1] = battleCtx->battleMons[v1].formNum;

        if (battleCtx->battleMons[v1].statusVolatile & VOLATILE_CONDITION_TRANSFORM) {
            v0.unk_14[v1] = battleCtx->battleMons[v1].moveEffectsData.transformedGender;
            v0.unk_20[v1] = battleCtx->battleMons[v1].moveEffectsData.transformedPID;
        } else {
            v0.unk_14[v1] = battleCtx->battleMons[v1].gender;
            v0.unk_20[v1] = battleCtx->battleMons[v1].personality;
        }
    }

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, param2, &v0, sizeof(UnkStruct_ov16_0225C384));
}

void BattleIO_PlaySound(BattleSystem *battleSys, BattleContext *battleCtx, int param2, int param3)
{
    UnkStruct_ov16_0225C398 v0;

    v0.unk_00 = BATTLE_COMMAND_PLAY_SOUND;
    v0.unk_04 = param2;

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, param3, &v0, sizeof(UnkStruct_ov16_0225C398));
}

void BattleIO_FadeOut(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int v0 = BATTLE_COMMAND_FADE_OUT;

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, 0, &v0, 4);
}

void BattleIO_ToggleVanish(BattleSystem *battleSys, int battlerId, int param2)
{
    UnkStruct_ov16_0225C3BC v0;
    int v1;

    v0.unk_00 = BATTLE_COMMAND_TOGGLE_VANISH;
    v0.unk_01 = param2;
    v0.unk_02 = ((battleSys->battleCtx->battleMons[battlerId].statusVolatile & VOLATILE_CONDITION_SUBSTITUTE) != 0);

    for (v1 = 0; v1 < 4; v1++) {
        v0.unk_04[v1] = battleSys->battleCtx->battleMons[v1].species;
        v0.unk_10[v1] = battleSys->battleCtx->battleMons[v1].isShiny;
        v0.unk_14[v1] = battleSys->battleCtx->battleMons[v1].formNum;

        if (battleSys->battleCtx->battleMons[v1].statusVolatile & VOLATILE_CONDITION_TRANSFORM) {
            v0.unk_0C[v1] = battleSys->battleCtx->battleMons[v1].moveEffectsData.transformedGender;
            v0.unk_18[v1] = battleSys->battleCtx->battleMons[v1].moveEffectsData.transformedPID;
        } else {
            v0.unk_0C[v1] = battleSys->battleCtx->battleMons[v1].gender;
            v0.unk_18[v1] = battleSys->battleCtx->battleMons[v1].personality;
        }
    }

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battlerId, &v0, sizeof(UnkStruct_ov16_0225C3BC));
}

void BattleIO_SetStatusIcon(BattleSystem *battleSys, int battlerId, int param2)
{
    UnkStruct_ov16_0225C3D0 v0;

    v0.unk_00 = BATTLE_COMMAND_SET_STATUS_ICON;
    v0.unk_01 = param2;

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battlerId, &v0, sizeof(UnkStruct_ov16_0225C3D0));
}

void BattleIO_TrainerMessage(BattleSystem *battleSys, int battlerId, int param2)
{
    UnkStruct_ov16_0225C3E4 v0;

    v0.unk_00 = BATTLE_COMMAND_TRAINER_MESSAGE;
    v0.unk_01 = param2;

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battlerId, &v0, sizeof(UnkStruct_ov16_0225C3E4));
}

void BattleIO_PlayStatusEffect(BattleSystem *battleSys, BattleContext *battleCtx, int param2, int param3)
{
    UnkStruct_ov16_02265BBC v0;

    ov16_02266B78(battleSys, battleCtx, &v0, 1, param3, param2, param2, NULL);
    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, param2, &v0, sizeof(UnkStruct_ov16_02265BBC));
}

void BattleIO_PlayStatusEffectAToD(BattleSystem *battleSys, BattleContext *battleCtx, int param2, int param3, int param4)
{
    UnkStruct_ov16_02265BBC v0;

    ov16_02266B78(battleSys, battleCtx, &v0, 1, param4, param2, param3, NULL);
    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, param2, &v0, sizeof(UnkStruct_ov16_02265BBC));
}

void BattleIO_PrintRecallMessage(BattleSystem *battleSys, BattleContext *battleCtx, int param2, int param3)
{
    UnkStruct_ov16_0225C3F8 v0;

    v0.unk_00 = BATTLE_COMMAND_PRINT_RECALL_MESSAGE;
    v0.unk_01 = param3;
    v0.unk_02 = (battleCtx->hpTemp - battleCtx->battleMons[1].curHP) * 100 / battleCtx->hpTemp;

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, param2, &v0, sizeof(UnkStruct_ov16_0225C3F8));
}

void BattleIO_PrintSendOutMessage(BattleSystem *battleSys, BattleContext *battleCtx, int param2, int param3)
{
    UnkStruct_ov16_0225C40C v0;

    v0.unk_00 = BATTLE_COMMAND_PRINT_SEND_OUT_MESSAGE;
    v0.unk_01 = param3;

    if (battleCtx->battleMons[1].curHP == 0) {
        v0.unk_02 = 1000;
    } else {
        v0.unk_02 = battleCtx->battleMons[1].curHP * 1000 / battleCtx->battleMons[1].maxHP;
    }

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, param2, &v0, sizeof(UnkStruct_ov16_0225C40C));
}

void BattleIO_PrintBattleStartMessage(BattleSystem *battleSys, BattleContext *battleCtx, int param2)
{
    int v0 = BATTLE_COMMAND_PRINT_BATTLE_START_MESSAGE;

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, param2, &v0, 4);
}

void BattleIO_PrintLeadMonMessage(BattleSystem *battleSys, BattleContext *battleCtx, int param2)
{
    UnkStruct_ov16_0225C430 v0;
    int v1;

    v0.unk_00 = BATTLE_COMMAND_PRINT_LEAD_MON_MESSAGE;

    for (v1 = 0; v1 < BattleSystem_MaxBattlers(battleSys); v1++) {
        v0.unk_04[v1] = battleCtx->selectedPartySlot[v1];
    }

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, param2, &v0, sizeof(UnkStruct_ov16_0225C430));
}

void BattleIO_PlayLevelUpAnimation(BattleSystem *battleSys, int battlerId)
{
    int v0 = BATTLE_COMMAND_PLAY_LEVEL_UP_ANIMATION;

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battlerId, &v0, 4);
}

void BattleIO_SetAlertMessage(BattleSystem *battleSys, int battler, BattleMessage msg)
{
    BattleIO_ClearBuffer(BattleSystem_Context(battleSys), battler);

    UnkStruct_ov16_0225C454 v0;
    v0.unk_00 = BATTLE_COMMAND_SET_ALERT_MESSAGE;
    v0.unk_04 = msg;

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battler, &v0, sizeof(UnkStruct_ov16_0225C454));
}

void ov16_022661B0(BattleSystem *battleSys, int battlerId)
{
    int v0 = 1;
    SendMessage(battleSys, COMM_RECIPIENT_SERVER, battlerId, &v0, 4);
}

void BattleIO_RefreshHPGauge(BattleSystem *battleSys, BattleContext *battleCtx, int param2)
{
    UnkStruct_ov16_0225C468 v0;
    Pokemon *v1;
    int v2;
    int v3;

    v1 = BattleSystem_PartyPokemon(battleSys, param2, battleCtx->selectedPartySlot[param2]);
    v2 = Pokemon_GetValue(v1, MON_DATA_SPECIES, NULL);
    v3 = Pokemon_GetValue(v1, MON_DATA_LEVEL, NULL);

    v0.unk_00 = BATTLE_COMMAND_REFRESH_HP_GAUGE;
    v0.unk_01 = battleCtx->battleMons[param2].level;
    v0.unk_02 = battleCtx->battleMons[param2].curHP;
    v0.unk_04 = battleCtx->battleMons[param2].maxHP;
    v0.unk_06 = battleCtx->selectedPartySlot[param2];
    v0.unk_07_0 = Battler_StatusCondition(battleCtx, param2);

    if (((battleCtx->battleMons[param2].species == 29) || (battleCtx->battleMons[param2].species == 32)) && (battleCtx->battleMons[param2].hasNickname == 0)) {
        v0.unk_07_5 = 2;
    } else {
        v0.unk_07_5 = battleCtx->battleMons[param2].gender;
    }

    v0.unk_08 = battleCtx->battleMons[param2].exp - Pokemon_GetSpeciesBaseExpAt(v2, v3);
    v0.unk_0C = Pokemon_GetSpeciesBaseExpAt(v2, v3 + 1) - Pokemon_GetSpeciesBaseExpAt(v2, v3);
    v0.unk_07_7 = BattleSystem_CaughtSpecies(battleSys, battleCtx->battleMons[param2].species);
    v0.unk_10 = BattleSystem_NumSafariBalls(battleSys);

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, param2, &v0, sizeof(UnkStruct_ov16_0225C468));
}

void BattleIO_UpdatePartyMon(BattleSystem *battleSys, BattleContext *battleCtx, int param2)
{
    UnkStruct_ov16_022662FC v0;
    int v1;

    v0.unk_00 = BATTLE_COMMAND_UPDATE_PARTY_MON;
    v0.unk_01_0 = battleCtx->selectedPartySlot[param2];
    v0.unk_01_4 = battleCtx->battleMons[param2].moveEffectsData.mimickedMoveSlot;
    v0.unk_02 = battleCtx->battleMons[param2].curHP;
    v0.unk_0C = battleCtx->battleMons[param2].heldItem;
    v0.unk_08 = battleCtx->sideConditions[Battler_Side(battleSys, param2)].knockedOffItemsMask;
    v0.unk_1C = battleCtx->battleMons[param2].formNum;
    v0.unk_20 = battleCtx->battleMons[param2].ability;

    for (v1 = 0; v1 < 4; v1++) {
        v0.unk_0E[v1] = battleCtx->battleMons[param2].moves[v1];
        v0.unk_12[v1] = battleCtx->battleMons[param2].ppCur[v1];
    }

    if (v0.unk_02) {
        v0.unk_04 = (battleCtx->battleMons[param2].status & (0xf00 ^ 0xffffffff));
        v0.unk_18 = battleCtx->battleMons[param2].statusVolatile;
    } else {
        v0.unk_04 = 0;
        v0.unk_18 = battleCtx->battleMons[param2].statusVolatile;
    }

    if (battleCtx->battleStatusMask2 & 0x4000000) {
        v0.unk_26 = 1;
        battleCtx->battleStatusMask2 &= (0x4000000 ^ 0xffffffff);
    } else {
        v0.unk_26 = 0;
    }

    if (battleCtx->battleStatusMask2 & 0x8000000) {
        v0.unk_24 = 1;
        v0.unk_26 = 1;
        battleCtx->battleStatusMask2 &= (0x8000000 ^ 0xffffffff);
    } else {
        v0.unk_24 = 0;
    }

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, param2, &v0, sizeof(UnkStruct_ov16_022662FC));
}

void ov16_02266460(BattleSystem *battleSys, int battlerId)
{
    int v0 = BATTLE_COMMAND_40;
    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battlerId, &v0, 4);
}

void BattleIO_StopGaugeAnimation(BattleSystem *battleSys, int battler)
{
    int v0 = BATTLE_COMMAND_STOP_GAUGE_ANIMATION;
    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battler, &v0, 4);
}

void BattleIO_RefreshPartyStatus(BattleSystem *battleSys, BattleContext *battleCtx, int param2, int param3)
{
    UnkStruct_ov16_02266498 v0;

    v0.unk_00 = BATTLE_COMMAND_REFRESH_PARTY_STATUS;
    v0.unk_02 = param3;
    v0.unk_01 = battleCtx->battleMons[param2].ability;

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, param2, &v0, sizeof(UnkStruct_ov16_02266498));
}

void BattleIO_ForgetMove(BattleSystem *battleSys, int battlerId, int param2, int param3)
{
    UnkStruct_ov16_0225C65C v0;

    BattleIO_ClearBuffer(BattleSystem_Context(battleSys), battlerId);

    v0.unk_00 = BATTLE_COMMAND_FORGET_MOVE;
    v0.unk_02 = param2;
    v0.unk_01 = param3;

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battlerId, &v0, sizeof(UnkStruct_ov16_02266498));
}

void BattleIO_SetMosaic(BattleSystem *battleSys, int battlerId, int param2, int param3)
{
    UnkStruct_ov16_022664F8 v0;

    v0.unk_00 = BATTLE_COMMAND_SET_MOSAIC;
    v0.unk_01 = param2;
    v0.unk_02 = param3;

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battlerId, &v0, sizeof(UnkStruct_ov16_022664F8));
}

void BattleIO_ChangeWeatherForm(BattleSystem *battleSys, int battlerId)
{
    UnkStruct_ov16_0225C684 v0;

    v0.unk_00 = BATTLE_COMMAND_CHANGE_WEATHER_FORM;
    v0.unk_02 = battleSys->battleCtx->battleMons[battlerId].species;
    v0.unk_05 = battleSys->battleCtx->battleMons[battlerId].isShiny;

    if (battleSys->battleCtx->battleMons[battlerId].statusVolatile & VOLATILE_CONDITION_TRANSFORM) {
        v0.unk_04 = battleSys->battleCtx->battleMons[battlerId].moveEffectsData.transformedGender;
        v0.unk_08 = battleSys->battleCtx->battleMons[battlerId].moveEffectsData.transformedPID;
    } else {
        v0.unk_04 = battleSys->battleCtx->battleMons[battlerId].gender;
        v0.unk_08 = battleSys->battleCtx->battleMons[battlerId].personality;
    }

    v0.unk_01 = battleSys->battleCtx->battleMons[battlerId].formNum;

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battlerId, &v0, sizeof(UnkStruct_ov16_0225C684));
}

void BattleIO_UpdateBG(BattleSystem *battleSys, int battlerId)
{
    int v0 = BATTLE_COMMAND_UPDATE_BG;
    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battlerId, &v0, 4);
}

void BattleIO_ClearTouchScreen(BattleSystem *battleSys, int battler)
{
    int v0 = BATTLE_COMMAND_CLEAR_TOUCH_SCREEN;
    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battler, &v0, 4);
}

void BattleIO_ShowBattleStartPartyGauge(BattleSystem *battleSys, int battler)
{
    PartyGaugeData gauge;
    PartyGaugeData_New(battleSys, battleSys->battleCtx, &gauge, BATTLE_COMMAND_SHOW_BATTLE_START_PARTY_GAUGE, battler);
    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battler, &gauge, sizeof(PartyGaugeData));
}

void BattleIO_HideBattleStartPartyGauge(BattleSystem *battleSys, int battler)
{
    PartyGaugeData gauge;
    PartyGaugeData_New(battleSys, battleSys->battleCtx, &gauge, BATTLE_COMMAND_HIDE_BATTLE_START_PARTY_GAUGE, battler);
    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battler, &gauge, sizeof(PartyGaugeData));
}

void BattleIO_ShowPartyGauge(BattleSystem *battleSys, int battler)
{
    PartyGaugeData gauge;
    PartyGaugeData_New(battleSys, battleSys->battleCtx, &gauge, BATTLE_COMMAND_SHOW_PARTY_GAUGE, battler);
    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battler, &gauge, sizeof(PartyGaugeData));
}

void BattleIO_HidePartyGauge(BattleSystem *battleSys, int battler)
{
    PartyGaugeData gauge;
    PartyGaugeData_New(battleSys, battleSys->battleCtx, &gauge, BATTLE_COMMAND_HIDE_PARTY_GAUGE, battler);
    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battler, &gauge, sizeof(PartyGaugeData));
}

void BattleIO_LoadPartyGaugeGraphics(BattleSystem *battleSys)
{
    int command = BATTLE_COMMAND_LOAD_PARTY_GAUGE_GRAPHICS;
    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, NULL, &command, sizeof(int));
}

void BattleIO_FreePartyGaugeGraphics(BattleSystem *battleSys)
{
    int command = BATTLE_COMMAND_FREE_PARTY_GAUGE_GRAPHICS;
    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, NULL, &command, sizeof(int));
}

void BattleIO_IncrementRecord(BattleSystem *battleSys, int battlerId, int param2, int param3)
{
    UnkStruct_ov16_022666BC v0;

    v0.unk_00 = BATTLE_COMMAND_INCREMENT_RECORD;
    v0.unk_01 = param2;
    v0.unk_02 = param3;

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battlerId, &v0, sizeof(UnkStruct_ov16_022666BC));
}

void BattleIO_LinkWaitMessage(BattleSystem *battleSys, int battler)
{
    UnkStruct_ov16_0225C988 v0;
    u32 battleType = BattleSystem_BattleType(battleSys);

    v0.unk_00 = BATTLE_COMMAND_LINK_WAIT_MESSAGE;
    v0.unk_02 = 0;

    if ((battleType & BATTLE_TYPE_LINK) && (sub_0202F250() == 1) && ((battleSys->battleStatusMask & 0x10) == 0)) {
        v0.unk_02 = ov16_0223F58C(battleSys, &v0.unk_04[0]);
        GF_ASSERT(v0.unk_02 < 28);
        SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battler, &v0, sizeof(UnkStruct_ov16_0225C988));
    }
}

void BattleIO_RestoreSprite(BattleSystem *battleSys, BattleContext *battleCtx, int param2)
{
    int v0;
    UnkStruct_ov16_02265BBC v1;

    v1.unk_00 = BATTLE_COMMAND_RESTORE_SPRITE;

    for (v0 = 0; v0 < 4; v0++) {
        v1.unk_18[v0] = battleCtx->battleMons[v0].species;
        v1.unk_24[v0] = battleCtx->battleMons[v0].isShiny;
        v1.unk_28[v0] = battleCtx->battleMons[v0].formNum;

        if (battleCtx->battleMons[v0].statusVolatile & VOLATILE_CONDITION_TRANSFORM) {
            v1.unk_20[v0] = battleCtx->battleMons[v0].moveEffectsData.transformedGender;
            v1.unk_2C[v0] = battleCtx->battleMons[v0].moveEffectsData.transformedPID;
        } else {
            v1.unk_20[v0] = battleCtx->battleMons[v0].gender;
            v1.unk_2C[v0] = battleCtx->battleMons[v0].personality;
        }
    }

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, param2, &v1, sizeof(UnkStruct_ov16_02265BBC));
}

void BattleIO_SpriteToOAM(BattleSystem *battleSys, int battlerId)
{
    int v0 = BATTLE_COMMAND_SPRITE_TO_OAM;
    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battlerId, &v0, 4);
}

void BattleIO_OAMToSprite(BattleSystem *battleSys, int battlerId)
{
    int v0 = BATTLE_COMMAND_OAM_TO_SPRITE;
    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battlerId, &v0, 4);
}

void BattleIO_ResultMessage(BattleSystem *battleSys)
{
    int v0 = BATTLE_COMMAND_RESULT_MESSAGE;
    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, 0, &v0, 4);
}

void BattleIO_EscapeMessage(BattleSystem *battleSys, BattleContext *battleCtx)
{
    UnkStruct_ov16_0225C9F0 v0;
    int v1;
    u32 battleType = BattleSystem_BattleType(battleSys);

    v0.unk_00 = BATTLE_COMMAND_ESCAPE_MESSAGE;
    v0.unk_01 = 0;
    v0.unk_02 = 0;

    for (v1 = 0; v1 < BattleSystem_MaxBattlers(battleSys); v1++) {
        if (battleCtx->battlerActions[v1][0] == 16) {
            v0.unk_01 |= FlagIndex(v1);
        }
    }

    if ((battleType & BATTLE_TYPE_LINK) && (sub_0202F250() == 1) && ((battleSys->battleStatusMask & 0x10) == 0)) {
        v0.unk_02 = ov16_0223F58C(battleSys, &v0.unk_04[0]);
        GF_ASSERT(v0.unk_02 < 28);
    }

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, 0, &v0, sizeof(UnkStruct_ov16_0225C9F0));
}

void BattleIO_ForfeitMessage(BattleSystem *battleSys)
{
    UnkStruct_ov16_0225CA14 v0;
    u32 battleType = BattleSystem_BattleType(battleSys);

    v0.unk_00 = BATTLE_COMMAND_FORFEIT_MESSAGE;
    v0.unk_02 = 0;

    if ((battleType & BATTLE_TYPE_LINK) && (sub_0202F250() == 1) && ((battleSys->battleStatusMask & 0x10) == 0)) {
        v0.unk_02 = ov16_0223F58C(battleSys, &v0.unk_04[0]);
        GF_ASSERT(v0.unk_02 < 28);
    }

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, 0, &v0, sizeof(UnkStruct_ov16_0225CA14));
}

void BattleIO_RefreshSprite(BattleSystem *battleSys, BattleContext *battleCtx, int param2)
{
    int v0;
    UnkStruct_ov16_02265BBC v1;

    v1.unk_00 = BATTLE_COMMAND_REFRESH_SPRITE;

    for (v0 = 0; v0 < 4; v0++) {
        v1.unk_18[v0] = battleCtx->battleMons[v0].species;
        v1.unk_24[v0] = battleCtx->battleMons[v0].isShiny;
        v1.unk_28[v0] = battleCtx->battleMons[v0].formNum;

        if (battleCtx->battleMons[v0].statusVolatile & VOLATILE_CONDITION_TRANSFORM) {
            v1.unk_20[v0] = battleCtx->battleMons[v0].moveEffectsData.transformedGender;
            v1.unk_2C[v0] = battleCtx->battleMons[v0].moveEffectsData.transformedPID;
        } else {
            v1.unk_20[v0] = battleCtx->battleMons[v0].gender;
            v1.unk_2C[v0] = battleCtx->battleMons[v0].personality;
        }
    }

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, param2, &v1, sizeof(UnkStruct_ov16_02265BBC));
}

void BattleIO_PlayMoveHitSoundEffect(BattleSystem *battleSys, BattleContext *battleCtx, int param2)
{
    UnkStruct_ov16_0225CA4C v0;

    v0.unk_00 = BATTLE_COMMAND_FLY_MOVE_HIT_SOUND_EFFECT;

    if (battleCtx->moveStatusFlags & 0x2) {
        v0.unk_01 = 2;
    } else if (battleCtx->moveStatusFlags & 0x4) {
        v0.unk_01 = 1;
    } else {
        v0.unk_01 = 0;
    }

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, param2, &v0, sizeof(UnkStruct_ov16_0225CA4C));
}

void BattleIO_PlayMusic(BattleSystem *battleSys, int battlerId, int param2)
{
    UnkStruct_ov16_0225CA60 v0;

    v0.unk_00 = BATTLE_COMMAND_PLAY_MUSIC;
    v0.unk_02 = param2;

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battlerId, &v0, sizeof(UnkStruct_ov16_0225CA60));
}

void BattleIO_SubmitResult(BattleSystem *battleSys)
{
    UnkStruct_ov16_02266A38 v0;
    u32 battleType = BattleSystem_BattleType(battleSys);

    v0.unk_00 = BATTLE_COMMAND_SUBMIT_RESULT;
    v0.unk_04 = BattleSystem_ResultMask(battleSys);
    v0.unk_02 = 0;

    if ((battleType & BATTLE_TYPE_LINK) && (sub_0202F250() == 1) && ((battleSys->battleStatusMask & 0x10) == 0)) {
        v0.unk_02 = ov16_0223F58C(battleSys, &v0.unk_08[0]);
        GF_ASSERT(v0.unk_02 <= 28);
    }

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, 0, &v0, sizeof(UnkStruct_ov16_02266A38));
}

void BattleIO_ClearMessageBox(BattleSystem *battleSys)
{
    int v0 = BATTLE_COMMAND_CLEAR_MESSAGE_BOX;
    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, 0, &v0, 4);
}

void ClearCommand(BattleSystem *battleSys, int battlerId, int param2)
{
    UnkStruct_ov16_02266ABC v0;

    v0.unk_00 = param2;
    v0.unk_01 = CommSys_CurNetId();

    SendMessage(battleSys, 2, battlerId, &v0, sizeof(UnkStruct_ov16_02266ABC));
}

BOOL ov16_02266AE4(BattleSystem *battleSys, void *param1)
{
    u8 *v0 = (u8 *)param1;
    u8 v1;
    u8 v2;
    int v3;
    int v4;
    BOOL v5 = 1;

    v1 = v0[0];
    v2 = v0[1];
    v3 = v0[2] | (v0[3] << 8);

    v0 += sizeof(UnkStruct_0207A81C);

    if (v1 == 0) {
        for (v4 = 0; v4 < v3; v4++) {
            battleSys->battleCtx->ioBuffer[v2][v4] = v0[v4];
        }
    } else if (v1 == 1) {
        if (battleSys->battlers[v2]->unk_1A4 == 0) {
            battleSys->battlers[v2]->unk_1A4 = 1;

            for (v4 = 0; v4 < v3; v4++) {
                battleSys->battlers[v2]->data[v4] = v0[v4];
            }
        } else {
            v5 = 0;
        }
    } else if (v1 == 2) {
        {
            int v6;
            int party;

            v6 = v0[0];
            party = v0[1];

            if (ov16_0223ED60(battleSys)) {
                BattleIO_DequeueVal(battleSys->battleCtx, party, v2, v6);
            }
        }
    } else {
        (void)0;
    }

    return v5;
}

void ov16_02266B78(BattleSystem *battleSys, BattleContext *battleCtx, UnkStruct_ov16_02265BBC *param2, int param3, int param4, int param5, int param6, u16 param7)
{
    int v0;

    param2->unk_00 = BATTLE_COMMAND_22;
    param2->unk_02 = param7;
    param2->unk_14 = param5;
    param2->unk_16 = param6;
    param2->unk_4C = param3;
    param2->unk_50 = param4;
    param2->unk_54 = BattleSystem_Terrain(battleSys);

    if (battleCtx != NULL) {
        param2->unk_04 = battleCtx->damage;

        if (battleCtx->movePower) {
            param2->unk_08 = battleCtx->movePower;
        } else {
            param2->unk_08 = battleCtx->aiContext.moveTable[param7].power;
        }

        param2->friendship = battleCtx->battleMons[param5].friendship;

        if ((BattleSystem_CountAbility(battleSys, battleCtx, COUNT_ALIVE_BATTLERS, 0, ABILITY_CLOUD_NINE) == 0) && (BattleSystem_CountAbility(battleSys, battleCtx, COUNT_ALIVE_BATTLERS, 0, ABILITY_AIR_LOCK) == 0)) {
            param2->fieldConditions = battleCtx->fieldConditionsMask;
        } else {
            param2->fieldConditions = 0;
        }

        param2->unk_0A = battleCtx->moveEffectChance;
        param2->unk_0E_0 = ((battleCtx->battleMons[param5].statusVolatile & VOLATILE_CONDITION_SUBSTITUTE) != 0);
        param2->unk_0E_1 = ((battleCtx->battleMons[param5].statusVolatile & VOLATILE_CONDITION_TRANSFORM) != 0);

        for (v0 = 0; v0 < 4; v0++) {
            param2->unk_18[v0] = battleCtx->battleMons[v0].species;
            param2->unk_24[v0] = battleCtx->battleMons[v0].isShiny;
            param2->unk_28[v0] = battleCtx->battleMons[v0].formNum;
            param2->unk_3C[v0] = battleCtx->battleMons[v0].moveEffectsMask;

            if (battleCtx->battleMons[v0].statusVolatile & VOLATILE_CONDITION_TRANSFORM) {
                param2->unk_20[v0] = battleCtx->battleMons[v0].moveEffectsData.transformedGender;
                param2->unk_2C[v0] = battleCtx->battleMons[v0].moveEffectsData.transformedPID;
            } else {
                param2->unk_20[v0] = battleCtx->battleMons[v0].gender;
                param2->unk_2C[v0] = battleCtx->battleMons[v0].personality;
            }
        }
    }
}

static inline void PartyGaugeData_Fill(BattleContext *battleCtx, PartyGaugeData *partyGauge, Party *party, int battler, int slot)
{
    for (int i = 0; i < Party_GetCurrentCount(party); i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(party, battleCtx->partyOrder[battler][i]);
        int species = Pokemon_GetValue(mon, MON_DATA_SPECIES_OR_EGG, NULL);

        if (species && species != SPECIES_EGG) {
            if (Pokemon_GetValue(mon, MON_DATA_HP, NULL)) {
                if (Pokemon_GetValue(mon, MON_DATA_STATUS, NULL)) {
                    partyGauge->status[slot] = STOCK_STATUS_HAS_STATUS_CONDITION;
                } else {
                    partyGauge->status[slot] = STOCK_STATUS_MON_ALIVE;
                }
            } else {
                partyGauge->status[slot] = STOCK_STATUS_MON_FAINTED;
            }

            slot++;
        }
    }
}

static void PartyGaugeData_New(BattleSystem *battleSys, BattleContext *battleCtx, PartyGaugeData *partyGauge, int command, int battler)
{
    MI_CpuClearFast(partyGauge, sizeof(PartyGaugeData));
    u32 battleType = BattleSystem_BattleType(battleSys);
    partyGauge->command = command;

    // must make declarations here to match
    int battler1, battler2;
    Party *party;

    if ((battleType & (BATTLE_TYPE_LINK | BATTLE_TYPE_2vs2)) == (BATTLE_TYPE_LINK | BATTLE_TYPE_2vs2) // 2vs2 link battle
        || ((battleType & BATTLE_TYPE_TAG) && Battler_Side(battleSys, battler)) // either of the two opponents on the enemy side
        || ((battleType == BATTLE_TYPE_TRAINER_WITH_AI_PARTNER) && Battler_Side(battleSys, battler)) // either of the two opponents on the enemy side
        || battleType == BATTLE_TYPE_FRONTIER_WITH_AI_PARTNER) { // frontier, AI partner
        if (BattleSystem_BattlerSlot(battleSys, battler) == BATTLER_PLAYER_2
            || BattleSystem_BattlerSlot(battleSys, battler) == BATTLER_ENEMY_2) {
            battler1 = battler;
            battler2 = BattleSystem_Partner(battleSys, battler);
        } else {
            battler1 = BattleSystem_Partner(battleSys, battler);
            battler2 = battler;
        }

        party = BattleSystem_Party(battleSys, battler1);
        PartyGaugeData_Fill(battleCtx, partyGauge, party, battler1, 0);

        party = BattleSystem_Party(battleSys, battler2);
        PartyGaugeData_Fill(battleCtx, partyGauge, party, battler2, 3);
    } else {
        if ((battleType & BATTLE_TYPE_DOUBLES) && (battleType & BATTLE_TYPE_2vs2) == FALSE) {
            battler = battler & 1;
        } else {
            battler = battler;
        }

        party = BattleSystem_Party(battleSys, battler);
        PartyGaugeData_Fill(battleCtx, partyGauge, party, battler, 0);
    }
}
