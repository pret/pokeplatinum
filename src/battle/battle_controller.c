#include "constants/battle/battle_controller.h"

#include <nitro.h>
#include <string.h>

#include "constants/pokemon.h"
#include "constants/species.h"
#include "generated/genders.h"

#include "struct_decls/battle_system.h"
#include "struct_defs/battle_system.h"

#include "battle/battle_context.h"
#include "battle/battle_controller.h"
#include "battle/battle_lib.h"
#include "battle/battle_message.h"
#include "battle/battle_system.h"
#include "battle/common.h"
#include "battle/message_defs.h"
#include "battle/struct_ov16_0224DDA8.h"
#include "battle/struct_ov16_0225BFFC_t.h"
#include "battle/struct_ov16_02265BBC.h"

#include "communication_system.h"
#include "flags.h"
#include "move_table.h"
#include "party.h"
#include "pokemon.h"
#include "unk_0202F1D4.h"
#include "unk_0207A6DC.h"

static void BattleController_SendLocalMessage(BattleSystem *battleSys, int recipient, int battler, void *message, u8 size);
static void SendMessage(BattleSystem *battleSys, int recipient, int battlerId, void *message, u8 size);
static void PartyGaugeData_New(BattleSystem *battleSys, BattleContext *battleCtx, PartyGaugeData *partyGauge, int command, int battler);

/**
 * @brief Sends a message in a single player battle
 *
 * @param battleSys
 * @param recipient
 * @param battler
 * @param message
 * @param size
 */
static void BattleController_SendLocalMessage(BattleSystem *battleSys, int recipient, int battler, void *message, u8 size)
{
    int i;
    BattleMessageInfo info;
    u8 *src;
    u8 *dest;
    u16 *writeIndex;
    u16 *endIndex;

    if (recipient == COMM_RECIPIENT_CLIENT) {
        dest = BattleSystem_GetClientMessage(battleSys);
        writeIndex = BattleSystem_GetClientWriteIndex(battleSys);
        endIndex = BattleSystem_GetClientEndIndex(battleSys);
    } else {
        dest = BattleSystem_GetServerMessage(battleSys);
        writeIndex = BattleSystem_GetServerWriteIndex(battleSys);
        endIndex = BattleSystem_GetServerEndIndex(battleSys);
    }

    if (writeIndex[0] + sizeof(BattleMessageInfo) + size + 1 > 0x1000) {
        endIndex[0] = writeIndex[0];
        writeIndex[0] = 0;
    }

    info.recipient = recipient;
    info.battler = battler;
    info.size = size;

    src = (u8 *)&info;

    for (i = 0; i < sizeof(BattleMessageInfo); i++) {
        dest[writeIndex[0]] = src[i];
        writeIndex[0]++;
    }

    src = (u8 *)message;

    for (i = 0; i < size; i++) {
        dest[writeIndex[0]] = src[i];
        writeIndex[0]++;
    }
}

/**
 * @brief Recieves a message in a single player battle
 *
 * @param battleSys
 * @param data
 *
 * @return Whether or not the message was successfully recieved
 */
static BOOL BattleController_RecvLocalMessage(BattleSystem *battleSys, void *message)
{
    u8 *src = (u8 *)message;
    u8 recipient;
    u8 battler;
    int size;
    int i;
    BOOL success = FALSE;

    recipient = src[0];
    battler = src[1];
    size = src[2] | (src[3] << 8);

    src += sizeof(BattleMessageInfo);

    if (recipient == COMM_RECIPIENT_SERVER) {
        if (battleSys->battleCtx->ioBuffer[battler][0] == 0) {
            for (i = 0; i < size; i++) {
                battleSys->battleCtx->ioBuffer[battler][i] = src[i];
            }

            success = TRUE;
        }
    } else if (recipient == COMM_RECIPIENT_CLIENT) {
        if (battleSys->battlers[battler]->data[0] == 0) {
            for (i = 0; i < size; i++) {
                battleSys->battlers[battler]->data[i] = src[i];
            }

            success = TRUE;
        }
    } else if (recipient == COMM_RECIPIENT_QUEUE) {
        int val = src[0];
        int id = src[1];

        if (ov16_0223ED60(battleSys)) {
            BattleIO_DequeueVal(battleSys->battleCtx, id, battler, val);
        }

        success = TRUE;
    }

    return success;
}

/**
 * @brief Tries to recieve a message in a single player battle, exits with no response if the read index is caught up to the write index
 *
 * @param battleSys
 * @param recipient
 */
void BattleController_TryRecvLocalMessage(BattleSystem *battleSys, int recipient)
{
    u8 *src;
    u16 *readIndex;
    u16 *writeIndex;
    u16 *endIndex;
    int size;

    if (recipient == COMM_RECIPIENT_CLIENT) {
        src = BattleSystem_GetClientMessage(battleSys);
        readIndex = BattleSystem_GetClientReadIndex(battleSys);
        writeIndex = BattleSystem_GetClientWriteIndex(battleSys);
        endIndex = BattleSystem_GetClientEndIndex(battleSys);
    } else {
        src = BattleSystem_GetServerMessage(battleSys);
        readIndex = BattleSystem_GetServerReadIndex(battleSys);
        writeIndex = BattleSystem_GetServerWriteIndex(battleSys);
        endIndex = BattleSystem_GetServerEndIndex(battleSys);
    }

    if (readIndex[0] == writeIndex[0]) {
        return;
    }

    if (readIndex[0] == endIndex[0]) {
        readIndex[0] = 0;
        endIndex[0] = 0;
    }

    if (BattleController_RecvLocalMessage(battleSys, (void *)&src[readIndex[0]]) == 1) {
        size = sizeof(BattleMessageInfo) + (src[readIndex[0] + 2] | (src[readIndex[0] + 3] << 8));
        readIndex[0] += size;
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

    if (battleSys->battleType & BATTLE_TYPE_LINK && (battleSys->battleStatusMask & BATTLE_TYPE_TAG) == FALSE) {
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

        BattleController_SendLocalMessage(battleSys, recipient, battlerId, message, size);
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
    message.unk_04 = BattleSystem_GetSeedDTO(battleSys);

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
    message.cryModulation = Battler_CryModulation(battleSys->battleCtx, battlerId, BattleSystem_GetBattlerType(battleSys, battlerId), 1);
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
    message.cryModulation = Battler_CryModulation(battleSys->battleCtx, battlerId, BattleSystem_GetBattlerType(battleSys, battlerId), 1);
    message.selectedPartySlot = battleSys->battleCtx->selectedPartySlot[battlerId];
    message.formNum = battleSys->battleCtx->battleMons[battlerId].formNum;
    message.capturedBall = battleSys->battleCtx->battleMons[battlerId].capturedBall;
    message.partnerPartySlot = battleSys->battleCtx->selectedPartySlot[BattleSystem_GetPartner(battleSys, battlerId)];

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
    message.cryModulation = Battler_CryModulation(battleSys->battleCtx, battlerId, BattleSystem_GetBattlerType(battleSys, battlerId), 0);
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
    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battlerId, &command, sizeof(int));
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
    message.selectedPartySlot = battleSys->battleCtx->selectedPartySlot[BattleSystem_GetPartner(battleSys, battlerId)];

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

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battlerId, &command, sizeof(int));
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
 * @brief Emits a message to slide the healthbar in for a given battler
 *
 * @param battleSys
 * @param battleCtx
 * @param battler
 * @param delay     Optional frame-delay to wait until execution.
 */
void BattleController_EmitSlideHealthbarIn(BattleSystem *battleSys, BattleContext *battleCtx, int battler, int delay)
{
    HealthbarData healthbar;

    Pokemon *mon = BattleSystem_GetPartyPokemon(battleSys, battler, battleCtx->selectedPartySlot[battler]);
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
    healthbar.speciesCaught = BattleSystem_HasCaughtSpecies(battleSys, battleCtx->battleMons[battler].species);
    healthbar.numSafariBalls = BattleSystem_GetNumSafariBalls(battleSys);
    healthbar.delay = delay;

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battler, &healthbar, sizeof(HealthbarData));
}

/**
 * @brief Emits a message to slide the healthbar out for a given battler
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
    BattleIO_ClearBuffer(BattleSystem_GetBattleContext(battleSys), battler);

    battlersCanPickCommandMask = 0;

    for (i = 0; i < BattleSystem_GetMaxBattlers(battleSys); i++) {
        if (Battler_CanPickCommand(battleCtx, i) == 0) {
            battlersCanPickCommandMask |= FlagIndex(i);
        }
    }

    message.command = BATTLE_COMMAND_SET_COMMAND_SELECTION;
    message.partySlot = partySlot;
    message.unk_29 = battleCtx->battlersSwitchingMask | battlersCanPickCommandMask;

    battleType = BattleSystem_GetBattleType(battleSys);

    if ((battleType & BATTLE_TYPE_DOUBLES) && ((battleType & BATTLE_TYPE_2vs2) == 0)) {
        battlerType = battler & BATTLER_THEM;
    } else {
        battlerType = battler;
    }

    party = BattleSystem_GetParty(battleSys, battlerType);
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
        if (BattleSystem_GetBattlerSide(battleSys, battler)) {
            battlerType = BattleSystem_GetBattlerOfType(battleSys, BATTLER_TYPE_PLAYER_SIDE_SLOT_1);
        } else {
            battlerType = BattleSystem_GetBattlerOfType(battleSys, BATTLER_TYPE_ENEMY_SIDE_SLOT_1);
        }

        party = BattleSystem_GetParty(battleSys, battlerType);
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

        if (BattleSystem_GetBattlerSide(battleSys, battler)) {
            battlerType = BattleSystem_GetBattlerOfType(battleSys, BATTLER_TYPE_PLAYER_SIDE_SLOT_2);
        } else {
            battlerType = BattleSystem_GetBattlerOfType(battleSys, BATTLER_TYPE_ENEMY_SIDE_SLOT_2);
        }

        party = BattleSystem_GetParty(battleSys, battlerType);
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
        battlerType = BattleSystem_GetEnemyInSlot(battleSys, battler, 2);
        party = BattleSystem_GetParty(battleSys, battlerType);
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

void ov16_022656D4(BattleSystem *battleSys, int battlerId, int command)
{
    SendMessage(battleSys, COMM_RECIPIENT_SERVER, battlerId, &command, sizeof(int));
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
    BattleIO_ClearBuffer(BattleSystem_GetBattleContext(battleSys), battler);

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

void ov16_02265790(BattleSystem *battleSys, int battlerId, int command)
{
    SendMessage(battleSys, COMM_RECIPIENT_SERVER, battlerId, &command, sizeof(int));
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

    battleType = BattleSystem_GetBattleType(battleSys);

    message.command = BATTLE_COMMAND_SHOW_TARGET_SELECT_MENU;
    message.range = range;

    if (((battleType & BATTLE_TYPE_DOUBLES) == FALSE) || (battleType & BATTLE_TYPE_2vs2) || ((battleType & BATTLE_TYPE_DOUBLES) && (battler >= 2))) {
        message.unk_01 = 1;
    } else {
        message.unk_01 = 0;
    }

    for (i = 0; i < MAX_BATTLERS; i++) {
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

void ov16_022658CC(BattleSystem *battleSys, int battlerId, int command)
{
    SendMessage(battleSys, COMM_RECIPIENT_SERVER, battlerId, &command, sizeof(int));
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

    for (i = 0; i < MAX_BATTLERS; i++) {
        message.partySlots[i] = battleCtx->selectedPartySlot[i];

        for (j = 0; j < MAX_PARTY_SIZE; j++) {
            message.partyOrder[i][j] = battleCtx->partyOrder[i][j];
        }

        message.embargoTurns[i] = battleCtx->battleMons[i].moveEffectsData.embargoTurns;
    }

    if (BattleSystem_GetBattleType(battleSys) == BATTLE_TYPE_AI_PARTNER) {
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
    } else if (BattleSystem_GetBattleType(battleSys) == (BATTLE_TYPE_SINGLES | BATTLE_TYPE_WILD_MON)) { // Was (0x0 | 0x0). Is this what they intended?
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

void ov16_02265A70(BattleSystem *battleSys, int battlerId, BattleItemUse message)
{
    SendMessage(battleSys, COMM_RECIPIENT_SERVER, battlerId, &message, sizeof(BattleItemUse));
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

    for (i = 0; i < MAX_BATTLERS; i++) {
        message.selectedPartySlot[i] = battleCtx->selectedPartySlot[i];

        for (j = 0; j < MAX_PARTY_SIZE; j++) {
            message.partyOrder[i][j] = battleCtx->partyOrder[i][j];
        }
    }

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battler, &message, sizeof(PartyMenuMessage));
}

void ov16_02265B10(BattleSystem *battleSys, int battlerId, int command)
{
    SendMessage(battleSys, COMM_RECIPIENT_SERVER, battlerId, &command, sizeof(int));
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

/**
 * @brief Emits a message to print a text message related to the current move
 *
 * @param battleSys
 * @param battleCtx
 */
void BattleController_EmitPrintAttackMessage(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AttackMsgMessage message;

    message.command = BATTLE_COMMAND_PRINT_ATTACK_MESSAGE;
    message.partySlot = battleCtx->selectedPartySlot[battleCtx->attacker];
    message.move = battleCtx->moveCur;

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battleCtx->attacker, &message, sizeof(AttackMsgMessage));
}

/**
 * @brief Emits a BattleMessage to the I/O queue for display on the screen.
 *
 * @param battleSys
 * @param battleCtx
 * @param battleMsg
 */
void BattleController_EmitPrintMessage(BattleSystem *battleSys, BattleContext *battleCtx, BattleMessage *battleMsg)
{
    battleMsg->commandCode = BATTLE_COMMAND_PRINT_MESSAGE;
    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battleCtx->attacker, battleMsg, sizeof(BattleMessage));
}

/**
 * @brief Emits a message to play a move animation for the current move
 *
 * @param battleSys
 * @param battleCtx
 * @param param2
 */
void BattleController_EmitPlayMoveAnimation(BattleSystem *battleSys, BattleContext *battleCtx, u16 param2)
{
    MoveAnimation animation;

    BattleController_SetMoveAnimation(battleSys, battleCtx, &animation, 0, NULL, battleCtx->attacker, battleCtx->defender, param2);
    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battleCtx->attacker, &animation, sizeof(MoveAnimation));
}

/**
 * @brief Emits a message to play a move animation for the current move, using the given attacker and defender
 *
 * @param battleSys
 * @param battleCtx
 * @param param2
 * @param attacker
 * @param defender
 */
void BattleController_EmitPlayMoveAnimationA2D(BattleSystem *battleSys, BattleContext *battleCtx, u16 param2, int attacker, int defender)
{
    MoveAnimation animation;

    BattleController_SetMoveAnimation(battleSys, battleCtx, &animation, 0, NULL, attacker, defender, param2);
    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, attacker, &animation, sizeof(MoveAnimation));
}

/**
 * @brief Emits a message to flicker the specified battler's sprite
 *
 * @param battleSys
 * @param battlerId
 * @param unused
 */
void BattleController_EmitFlickerBattlerSprite(BattleSystem *battleSys, int battlerId, u32 unused)
{
    int command = BATTLE_COMMAND_FLICKER_BATTLER;
    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battlerId, &command, sizeof(int));
}

/**
 * @brief Emits a message to update the HP Gauge
 *
 * @param battleSys
 * @param battleCtx
 * @param battler
 */
void BattleController_EmitUpdateHPGauge(BattleSystem *battleSys, BattleContext *battleCtx, int battler)
{
    HPGaugeUpdateMessage message;
    Pokemon *pokemon = BattleSystem_GetPartyPokemon(battleSys, battler, battleCtx->selectedPartySlot[battler]);
    int species = Pokemon_GetValue(pokemon, MON_DATA_SPECIES, NULL);
    int level = Pokemon_GetValue(pokemon, MON_DATA_LEVEL, NULL);

    message.command = BATTLE_COMMAND_UPDATE_HP_GAUGE;
    message.level = battleCtx->battleMons[battler].level;
    message.curHP = battleCtx->battleMons[battler].curHP;
    message.maxHP = battleCtx->battleMons[battler].maxHP;
    message.hpCalcTemp = battleCtx->hpCalcTemp;

    if (((battleCtx->battleMons[battler].species == SPECIES_NIDORAN_F) || (battleCtx->battleMons[battler].species == SPECIES_NIDORAN_M)) && (battleCtx->battleMons[battler].hasNickname == 0)) {
        message.gender = GENDER_NONE;
    } else {
        message.gender = battleCtx->battleMons[battler].gender;
    }

    message.exp = battleCtx->battleMons[battler].exp - Pokemon_GetSpeciesBaseExpAt(species, level);
    message.expToNextLevel = Pokemon_GetSpeciesBaseExpAt(species, level + 1) - Pokemon_GetSpeciesBaseExpAt(species, level);

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battler, &message, sizeof(HPGaugeUpdateMessage));
}

/**
 * @brief Emits a message to update the EXP Gauge
 *
 * @param battleSys
 * @param battleCtx
 * @param battler
 * @param curExp
 */
void BattleController_EmitUpdateExpGauge(BattleSystem *battleSys, BattleContext *battleCtx, int battler, int curExp)
{
    ExpGaugeUpdateMessage message;
    Pokemon *pokemon = BattleSystem_GetPartyPokemon(battleSys, battler, battleCtx->selectedPartySlot[battler]);
    int species = Pokemon_GetValue(pokemon, MON_DATA_SPECIES, NULL);
    int level = Pokemon_GetValue(pokemon, MON_DATA_LEVEL, NULL);

    message.command = BATTLE_COMMAND_UPDATE_EXP_GAUGE;
    message.curExp = curExp;
    message.gainedExp = battleCtx->battleMons[battler].exp - Pokemon_GetSpeciesBaseExpAt(species, level);
    message.expToNextLevel = Pokemon_GetSpeciesBaseExpAt(species, level + 1) - Pokemon_GetSpeciesBaseExpAt(species, level);

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battler, &message, sizeof(ExpGaugeUpdateMessage));
}

/**
 * @brief Emits a message to play the Pokemon fainting animation
 *
 * @param battleSys
 * @param battleCtx
 * @param battler
 */
void BattleController_EmitPlayFaintingSequence(BattleSystem *battleSys, BattleContext *battleCtx, int battler)
{
    FaintingSequenceMessage message;
    int i;

    message.command = BATTLE_COMMAND_PLAY_FAINTING_SEQUENCE;
    message.species = battleCtx->battleMons[battler].species;
    message.form = battleCtx->battleMons[battler].formNum;
    message.notSubstitute = ((battleCtx->battleMons[battler].statusVolatile & VOLATILE_CONDITION_SUBSTITUTE) != 0);
    message.notTransformed = ((battleCtx->battleMons[battler].statusVolatile & VOLATILE_CONDITION_TRANSFORM) != 0);

    if (battleCtx->battleMons[battler].statusVolatile & VOLATILE_CONDITION_TRANSFORM) {
        message.gender = battleCtx->battleMons[battler].moveEffectsData.transformedGender;
        message.personality = battleCtx->battleMons[battler].moveEffectsData.transformedPID;
    } else {
        message.gender = battleCtx->battleMons[battler].gender;
        message.personality = battleCtx->battleMons[battler].personality;
    }

    for (i = 0; i < MAX_BATTLERS; i++) {
        message.monSpecies[i] = battleCtx->battleMons[i].species;
        message.monShiny[i] = battleCtx->battleMons[i].isShiny;
        message.monFormNums[i] = battleCtx->battleMons[i].formNum;

        if (battleCtx->battleMons[i].statusVolatile & VOLATILE_CONDITION_TRANSFORM) {
            message.monGenders[i] = battleCtx->battleMons[i].moveEffectsData.transformedGender;
            message.monPersonalities[i] = battleCtx->battleMons[i].moveEffectsData.transformedPID;
        } else {
            message.monGenders[i] = battleCtx->battleMons[i].gender;
            message.monPersonalities[i] = battleCtx->battleMons[i].personality;
        }
    }

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battler, &message, sizeof(FaintingSequenceMessage));
}

/**
 * @brief Emits a message to play a sound with the given ID
 *
 * @param battleSys
 * @param battleCtx
 * @param sdatID
 * @param battler
 */
void BattleController_EmitPlaySound(BattleSystem *battleSys, BattleContext *battleCtx, int sdatID, int battler)
{
    PlaySoundMessage message;

    message.command = BATTLE_COMMAND_PLAY_SOUND;
    message.sdatID = sdatID;

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battler, &message, sizeof(PlaySoundMessage));
}

/**
 * @brief Emits a message to fade out the screen
 *
 * @param battleSys
 * @param battleCtx
 */
void BattleController_EmitFadeOut(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int command = BATTLE_COMMAND_FADE_OUT;

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, 0, &command, sizeof(int));
}

/**
 * @brief Emits a message to fade out the screen
 *
 * @param battleSys
 * @param battlerId
 * @param toggle
 */
void BattleController_EmitToggleVanish(BattleSystem *battleSys, int battlerId, int toggle)
{
    ToggleVanishMessage message;
    int i;

    message.command = BATTLE_COMMAND_TOGGLE_VANISH;
    message.toggle = toggle;
    message.notSubstitute = ((battleSys->battleCtx->battleMons[battlerId].statusVolatile & VOLATILE_CONDITION_SUBSTITUTE) != 0);

    for (i = 0; i < MAX_BATTLERS; i++) {
        message.species[i] = battleSys->battleCtx->battleMons[i].species;
        message.isShiny[i] = battleSys->battleCtx->battleMons[i].isShiny;
        message.formNum[i] = battleSys->battleCtx->battleMons[i].formNum;

        if (battleSys->battleCtx->battleMons[i].statusVolatile & VOLATILE_CONDITION_TRANSFORM) {
            message.gender[i] = battleSys->battleCtx->battleMons[i].moveEffectsData.transformedGender;
            message.personality[i] = battleSys->battleCtx->battleMons[i].moveEffectsData.transformedPID;
        } else {
            message.gender[i] = battleSys->battleCtx->battleMons[i].gender;
            message.personality[i] = battleSys->battleCtx->battleMons[i].personality;
        }
    }

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battlerId, &message, sizeof(ToggleVanishMessage));
}

/**
 * @brief Emits a message to set the status icon on the battler's Healthbar
 *
 * @param battleSys
 * @param battlerId
 * @param status
 */
void BattleController_EmitSetStatusIcon(BattleSystem *battleSys, int battlerId, int status)
{
    SetStatusIconMessage message;

    message.command = BATTLE_COMMAND_SET_STATUS_ICON;
    message.status = status;

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battlerId, &message, sizeof(SetStatusIconMessage));
}

/**
 * @brief Emits a message to print a trainer's (text) message
 *
 * @param battleSys
 * @param battlerId
 * @param msg
 */
void BattleController_EmitTrainerMessage(BattleSystem *battleSys, int battlerId, int msg)
{
    TrainerMsgMessage message;

    message.command = BATTLE_COMMAND_TRAINER_MESSAGE;
    message.msg = msg;

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battlerId, &message, sizeof(TrainerMsgMessage));
}

/**
 * @brief Emits a message to play a status effect's animation
 *
 * @param battleSys
 * @param battleCtx
 * @param battler
 * @param param3
 */
void BattleController_EmitPlayStatusEffect(BattleSystem *battleSys, BattleContext *battleCtx, int battler, int param3)
{
    MoveAnimation animation;

    BattleController_SetMoveAnimation(battleSys, battleCtx, &animation, 1, param3, battler, battler, NULL);
    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battler, &animation, sizeof(MoveAnimation));
}

/**
 * @brief Emits a message to play a status effect's animation, with a specified attacker and defender
 *
 * @param battleSys
 * @param battleCtx
 * @param attacker
 * @param defender
 * @param param4
 */
void BattleController_EmitPlayStatusEffectAToD(BattleSystem *battleSys, BattleContext *battleCtx, int attacker, int defender, int param4)
{
    MoveAnimation animation;

    BattleController_SetMoveAnimation(battleSys, battleCtx, &animation, 1, param4, attacker, defender, NULL);
    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, attacker, &animation, sizeof(MoveAnimation));
}

/**
 * @brief Emits a message to print a recall (text) message
 *
 * @param battleSys
 * @param battleCtx
 * @param battler
 * @param partySlot
 */
void BattleController_EmitRecallMessage(BattleSystem *battleSys, BattleContext *battleCtx, int battler, int partySlot)
{
    RecallMsgMessage message;

    message.command = BATTLE_COMMAND_PRINT_RECALL_MESSAGE;
    message.partySlot = partySlot;
    message.hpPercent = (battleCtx->hpTemp - battleCtx->battleMons[1].curHP) * 100 / battleCtx->hpTemp;

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battler, &message, sizeof(RecallMsgMessage));
}

/**
 * @brief Emits a message to print a send out (text) message
 *
 * @param battleSys
 * @param battleCtx
 * @param battler
 * @param partySlot
 */
void BattleController_EmitSendOutMessage(BattleSystem *battleSys, BattleContext *battleCtx, int battler, int partySlot)
{
    SendOutMsgMessage message;

    message.command = BATTLE_COMMAND_PRINT_SEND_OUT_MESSAGE;
    message.partySlot = partySlot;

    if (battleCtx->battleMons[1].curHP == 0) {
        message.hpPercent = 1000;
    } else {
        message.hpPercent = battleCtx->battleMons[1].curHP * 1000 / battleCtx->battleMons[1].maxHP;
    }

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battler, &message, sizeof(SendOutMsgMessage));
}

/**
 * @brief Emits a message to print a battle start (text) message
 *
 * @param battleSys
 * @param battleCtx
 * @param battler
 */
void BattleController_EmitBattleStartMessage(BattleSystem *battleSys, BattleContext *battleCtx, int battler)
{
    int command = BATTLE_COMMAND_PRINT_BATTLE_START_MESSAGE;

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battler, &command, sizeof(int));
}

/**
 * @brief Emits a message ot print a lead mon (text) message
 *
 * @param battleSys
 * @param battleCtx
 * @param battler
 */
void BattleController_EmitLeadMonMessage(BattleSystem *battleSys, BattleContext *battleCtx, int battler)
{
    LeadMonMsgMessage message;
    int i;

    message.command = BATTLE_COMMAND_PRINT_LEAD_MON_MESSAGE;

    for (i = 0; i < BattleSystem_GetMaxBattlers(battleSys); i++) {
        message.partySlot[i] = battleCtx->selectedPartySlot[i];
    }

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battler, &message, sizeof(LeadMonMsgMessage));
}

/**
 * @brief Emits a message to play the level up animation
 *
 * @param battleSys
 * @param battler
 */
void BattleController_EmitPlayLevelUpAnimation(BattleSystem *battleSys, int battlerId)
{
    int command = BATTLE_COMMAND_PLAY_LEVEL_UP_ANIMATION;

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battlerId, &command, sizeof(int));
}

/**
 * @brief Emits a message to print an alert (text) message
 *
 * @param battleSys
 * @param battler
 * @param msg
 */
void BattleController_EmitSetAlertMessage(BattleSystem *battleSys, int battler, BattleMessage msg)
{
    BattleIO_ClearBuffer(BattleSystem_GetBattleContext(battleSys), battler);

    AlertMsgMessage message;
    message.command = BATTLE_COMMAND_SET_ALERT_MESSAGE;
    message.msg = msg;

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battler, &message, sizeof(AlertMsgMessage));
}

void ov16_022661B0(BattleSystem *battleSys, int battlerId)
{
    int command = BATTLE_COMMAND_SETUP_UI;
    SendMessage(battleSys, COMM_RECIPIENT_SERVER, battlerId, &command, sizeof(int));
}

/**
 * @brief Emits a message to refresh the HP Gauge
 *
 * @param battleSys
 * @param battleCtx
 * @param battler
 */
void BattleController_EmitRefreshHPGauge(BattleSystem *battleSys, BattleContext *battleCtx, int battler)
{
    RefreshHPGaugeMessage message;
    Pokemon *pokemon;
    int species;
    int level;

    pokemon = BattleSystem_GetPartyPokemon(battleSys, battler, battleCtx->selectedPartySlot[battler]);
    species = Pokemon_GetValue(pokemon, MON_DATA_SPECIES, NULL);
    level = Pokemon_GetValue(pokemon, MON_DATA_LEVEL, NULL);

    message.command = BATTLE_COMMAND_REFRESH_HP_GAUGE;
    message.level = battleCtx->battleMons[battler].level;
    message.curHP = battleCtx->battleMons[battler].curHP;
    message.maxHP = battleCtx->battleMons[battler].maxHP;
    message.partySlot = battleCtx->selectedPartySlot[battler];
    message.status = Battler_StatusCondition(battleCtx, battler);

    if (((battleCtx->battleMons[battler].species == SPECIES_NIDORAN_F) || (battleCtx->battleMons[battler].species == SPECIES_NIDORAN_M)) && (battleCtx->battleMons[battler].hasNickname == 0)) {
        message.gender = 2;
    } else {
        message.gender = battleCtx->battleMons[battler].gender;
    }

    message.curExp = battleCtx->battleMons[battler].exp - Pokemon_GetSpeciesBaseExpAt(species, level);
    message.maxExp = Pokemon_GetSpeciesBaseExpAt(species, level + 1) - Pokemon_GetSpeciesBaseExpAt(species, level);
    message.caughtSpecies = BattleSystem_HasCaughtSpecies(battleSys, battleCtx->battleMons[battler].species);
    message.numSafariBalls = BattleSystem_GetNumSafariBalls(battleSys);

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battler, &message, sizeof(RefreshHPGaugeMessage));
}

/**
 * @brief Emits a message to update a BattleMon struct, usually after a form change, level up, or item change
 *
 * @param battleSys
 * @param battleCtx
 * @param battler
 */
void BattleController_EmitUpdatePartyMon(BattleSystem *battleSys, BattleContext *battleCtx, int battler)
{
    UpdatePartyMonMessage message;
    int i;

    message.command = BATTLE_COMMAND_UPDATE_PARTY_MON;
    message.partySlot = battleCtx->selectedPartySlot[battler];
    message.mimickedMoveSlot = battleCtx->battleMons[battler].moveEffectsData.mimickedMoveSlot;
    message.curHP = battleCtx->battleMons[battler].curHP;
    message.heldItem = battleCtx->battleMons[battler].heldItem;
    message.knockedOffItemsMask = battleCtx->sideConditions[BattleSystem_GetBattlerSide(battleSys, battler)].knockedOffItemsMask;
    message.formNum = battleCtx->battleMons[battler].formNum;
    message.ability = battleCtx->battleMons[battler].ability;

    for (i = 0; i < LEARNED_MOVES_MAX; i++) {
        message.moves[i] = battleCtx->battleMons[battler].moves[i];
        message.ppCur[i] = battleCtx->battleMons[battler].ppCur[i];
    }

    if (message.curHP) {
        message.status = (battleCtx->battleMons[battler].status & ~MON_CONDITION_TOXIC_COUNTER);
        message.statusVolatile = battleCtx->battleMons[battler].statusVolatile;
    } else {
        message.status = 0;
        message.statusVolatile = battleCtx->battleMons[battler].statusVolatile;
    }

    if (battleCtx->battleStatusMask2 & SYSCTL_FORM_CHANGE) {
        message.updateForm = 1;
        battleCtx->battleStatusMask2 &= ~SYSCTL_FORM_CHANGE;
    } else {
        message.updateForm = 0;
    }

    if (battleCtx->battleStatusMask2 & SYSCTL_RECALC_MON_STATS) {
        message.updateStats = 1;
        message.updateForm = 1;
        battleCtx->battleStatusMask2 &= ~SYSCTL_RECALC_MON_STATS;
    } else {
        message.updateStats = 0;
    }

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battler, &message, sizeof(UpdatePartyMonMessage));
}

void ov16_02266460(BattleSystem *battleSys, int battlerId)
{
    int command = BATTLE_COMMAND_40;
    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battlerId, &command, sizeof(int));
}

/**
 * @brief Emits a message to stop gauge animations
 *
 * @param battleSys
 * @param battler
 */
void BattleController_EmitStopGaugeAnimation(BattleSystem *battleSys, int battler)
{
    int command = BATTLE_COMMAND_STOP_GAUGE_ANIMATION;
    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battler, &command, sizeof(int));
}

/**
 * @brief Emits a message to refresh the whole party's status
 *
 * @param battleSys
 * @param battleCtx
 * @param battler
 * @param move
 */
void BattleController_EmitRefreshPartyStatus(BattleSystem *battleSys, BattleContext *battleCtx, int battler, int move)
{
    RefreshPartyStatusMessage message;

    message.command = BATTLE_COMMAND_REFRESH_PARTY_STATUS;
    message.move = move;
    message.ability = battleCtx->battleMons[battler].ability;

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battler, &message, sizeof(RefreshPartyStatusMessage));
}

/**
 * @brief Emits a message to forget a move to learn a new one
 *
 * @param battleSys
 * @param battler
 * @param move
 * @param slot
 */
void BattleController_EmitForgetMove(BattleSystem *battleSys, int battlerId, int move, int slot)
{
    ForgetMoveMessage message;

    BattleIO_ClearBuffer(BattleSystem_GetBattleContext(battleSys), battlerId);

    message.command = BATTLE_COMMAND_FORGET_MOVE;
    message.move = move;
    message.slot = slot;

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battlerId, &message, sizeof(RefreshPartyStatusMessage));
}

/**
 * @brief Emits a message to set a Pokemon's sprite to play the mosaic animation
 *
 * @param battleSys
 * @param battler
 * @param param2
 * @param wait
 */
void BattleController_EmitSetMosaic(BattleSystem *battleSys, int battlerId, int param2, int wait)
{
    MosaicSetMessage message;

    message.command = BATTLE_COMMAND_SET_MOSAIC;
    message.unk_01 = param2;
    message.wait = wait;

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battlerId, &message, sizeof(MosaicSetMessage));
}

/**
 * @brief Emits a message to change a Pokemon's form based on the weath
 *
 * @param battleSys
 * @param battler
 */
void BattleController_EmitChangeWeatherForm(BattleSystem *battleSys, int battlerId)
{
    MonChangeFormMessage message;

    message.command = BATTLE_COMMAND_CHANGE_WEATHER_FORM;
    message.species = battleSys->battleCtx->battleMons[battlerId].species;
    message.isShiny = battleSys->battleCtx->battleMons[battlerId].isShiny;

    if (battleSys->battleCtx->battleMons[battlerId].statusVolatile & VOLATILE_CONDITION_TRANSFORM) {
        message.gender = battleSys->battleCtx->battleMons[battlerId].moveEffectsData.transformedGender;
        message.personality = battleSys->battleCtx->battleMons[battlerId].moveEffectsData.transformedPID;
    } else {
        message.gender = battleSys->battleCtx->battleMons[battlerId].gender;
        message.personality = battleSys->battleCtx->battleMons[battlerId].personality;
    }

    message.formNum = battleSys->battleCtx->battleMons[battlerId].formNum;

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battlerId, &message, sizeof(MonChangeFormMessage));
}

/**
 * @brief Emits a message to update the BG layer
 *
 * @param battleSys
 * @param battler
 */
void BattleController_EmitUpdateBG(BattleSystem *battleSys, int battlerId)
{
    int command = BATTLE_COMMAND_UPDATE_BG;
    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battlerId, &command, sizeof(int));
}

/**
 * @brief Emits a message to clear the touchscreen
 *
 * @param battleSys
 * @param battler
 */
void BattleController_EmitClearTouchScreen(BattleSystem *battleSys, int battler)
{
    int command = BATTLE_COMMAND_CLEAR_TOUCH_SCREEN;
    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battler, &command, sizeof(int));
}

/**
 * @brief Emits a message to show the party gauge at the start of the battle
 *
 * @param battleSys
 * @param battler
 */
void BattleController_EmitShowBattleStartPartyGauge(BattleSystem *battleSys, int battler)
{
    PartyGaugeData gauge;
    PartyGaugeData_New(battleSys, battleSys->battleCtx, &gauge, BATTLE_COMMAND_SHOW_BATTLE_START_PARTY_GAUGE, battler);
    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battler, &gauge, sizeof(PartyGaugeData));
}

/**
 * @brief Emits a message to hide the party gauge at the start of the battle
 *
 * @param battleSys
 * @param battler
 */
void BattleController_EmitHideBattleStartPartyGauge(BattleSystem *battleSys, int battler)
{
    PartyGaugeData gauge;
    PartyGaugeData_New(battleSys, battleSys->battleCtx, &gauge, BATTLE_COMMAND_HIDE_BATTLE_START_PARTY_GAUGE, battler);
    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battler, &gauge, sizeof(PartyGaugeData));
}

/**
 * @brief Emits a message to show the party gauge when a Pokemon is sent in
 *
 * @param battleSys
 * @param battler
 */
void BattleController_EmitShowPartyGauge(BattleSystem *battleSys, int battler)
{
    PartyGaugeData gauge;
    PartyGaugeData_New(battleSys, battleSys->battleCtx, &gauge, BATTLE_COMMAND_SHOW_PARTY_GAUGE, battler);
    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battler, &gauge, sizeof(PartyGaugeData));
}

/**
 * @brief Emits a message to hide the party gauge after a Pokemon is sent in
 *
 * @param battleSys
 * @param battler
 */
void BattleController_EmitHidePartyGauge(BattleSystem *battleSys, int battler)
{
    PartyGaugeData gauge;
    PartyGaugeData_New(battleSys, battleSys->battleCtx, &gauge, BATTLE_COMMAND_HIDE_PARTY_GAUGE, battler);
    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battler, &gauge, sizeof(PartyGaugeData));
}

/**
 * @brief Emits a message to load the party gauge graphics
 *
 * @param battleSys
 */
void BattleController_EmitLoadPartyGaugeGraphics(BattleSystem *battleSys)
{
    int command = BATTLE_COMMAND_LOAD_PARTY_GAUGE_GRAPHICS;
    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, NULL, &command, sizeof(int));
}

/**
 * @brief Emits a message to free the party gauge graphics
 *
 * @param battleSys
 */
void BattleController_EmitFreePartyGaugeGraphics(BattleSystem *battleSys)
{
    int command = BATTLE_COMMAND_FREE_PARTY_GAUGE_GRAPHICS;
    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, NULL, &command, sizeof(int));
}

/**
 * @brief Emits a message to increment the given record
 *
 * @param battleSys
 * @param battler
 * @param battlerType
 * @param record
 */
void BattleController_EmitIncrementRecord(BattleSystem *battleSys, int battlerId, int battlerType, int record)
{
    RecordIncrementMessage message;

    message.command = BATTLE_COMMAND_INCREMENT_RECORD;
    message.battlerType = battlerType;
    message.record = record;

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battlerId, &message, sizeof(RecordIncrementMessage));
}

/**
 * @brief Emits a message to print the wait (text) message when in a link battle
 *
 * @param battleSys
 * @param battelr
 */
void BattleController_EmitLinkWaitMessage(BattleSystem *battleSys, int battler)
{
    LinkWaitMsgMessage message;
    u32 battleType = BattleSystem_GetBattleType(battleSys);

    message.command = BATTLE_COMMAND_LINK_WAIT_MESSAGE;
    message.unk_02 = 0;

    if ((battleType & BATTLE_TYPE_LINK) && (sub_0202F250() == 1) && ((battleSys->battleStatusMask & 0x10) == 0)) {
        message.unk_02 = ov16_0223F58C(battleSys, &message.unk_04[0]);
        GF_ASSERT(message.unk_02 < 28);
        SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battler, &message, sizeof(LinkWaitMsgMessage));
    }
}

/**
 * @brief Emits a message to restore a move animation's sprite
 *
 * @param battleSys
 * @param battleCtx
 * @param battler
 */
void BattleController_EmitRestoreSprite(BattleSystem *battleSys, BattleContext *battleCtx, int battler)
{
    int i;
    MoveAnimation animation;

    animation.command = BATTLE_COMMAND_RESTORE_SPRITE;

    for (i = 0; i < MAX_BATTLERS; i++) {
        animation.species[i] = battleCtx->battleMons[i].species;
        animation.isShiny[i] = battleCtx->battleMons[i].isShiny;
        animation.formNums[i] = battleCtx->battleMons[i].formNum;

        if (battleCtx->battleMons[i].statusVolatile & VOLATILE_CONDITION_TRANSFORM) {
            animation.genders[i] = battleCtx->battleMons[i].moveEffectsData.transformedGender;
            animation.personalities[i] = battleCtx->battleMons[i].moveEffectsData.transformedPID;
        } else {
            animation.genders[i] = battleCtx->battleMons[i].gender;
            animation.personalities[i] = battleCtx->battleMons[i].personality;
        }
    }

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battler, &animation, sizeof(MoveAnimation));
}

/**
 * @brief Emits a message to convert a sprite to an OAM
 *
 * @param battleSys
 * @param battler
 */
void BattleController_EmitSpriteToOAM(BattleSystem *battleSys, int battlerId)
{
    int command = BATTLE_COMMAND_SPRITE_TO_OAM;
    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battlerId, &command, sizeof(int));
}

/**
 * @brief Emits a message to convert an OAM to a sprite
 *
 * @param battleSys
 * @param battler
 */
void BattleController_EmitOAMToSprite(BattleSystem *battleSys, int battlerId)
{
    int command = BATTLE_COMMAND_OAM_TO_SPRITE;
    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battlerId, &command, sizeof(int));
}

/**
 * @brief Emits a message to print the results (text) message
 *
 * @param battleSys
 */
void BattleController_EmitResultMessage(BattleSystem *battleSys)
{
    int command = BATTLE_COMMAND_RESULT_MESSAGE;
    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, 0, &command, sizeof(int));
}

/**
 * @brief Emits a message to print the flee (text) message
 *
 * @param battleSys
 * @param battleCtx
 */
void BattleController_EmitEscapeMessage(BattleSystem *battleSys, BattleContext *battleCtx)
{
    EscapeMsgMessage message;
    int i;
    u32 battleType = BattleSystem_GetBattleType(battleSys);

    message.command = BATTLE_COMMAND_ESCAPE_MESSAGE;
    message.unk_01 = 0;
    message.unk_02 = 0;

    for (i = 0; i < BattleSystem_GetMaxBattlers(battleSys); i++) {
        if (battleCtx->battlerActions[i][0] == 16) {
            message.unk_01 |= FlagIndex(i);
        }
    }

    if ((battleType & BATTLE_TYPE_LINK) && (sub_0202F250() == 1) && ((battleSys->battleStatusMask & 0x10) == 0)) {
        message.unk_02 = ov16_0223F58C(battleSys, &message.unk_04[0]);
        GF_ASSERT(message.unk_02 < 28);
    }

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, 0, &message, sizeof(EscapeMsgMessage));
}

/**
 * @brief Emits a message to print the forfeir (text) message
 *
 * @param battleSys
 */
void BattleController_EmitForfeitMessage(BattleSystem *battleSys)
{
    ForfeitMsgMessage message;
    u32 battleType = BattleSystem_GetBattleType(battleSys);

    message.command = BATTLE_COMMAND_FORFEIT_MESSAGE;
    message.unk_02 = 0;

    if ((battleType & BATTLE_TYPE_LINK) && (sub_0202F250() == 1) && ((battleSys->battleStatusMask & 0x10) == 0)) {
        message.unk_02 = ov16_0223F58C(battleSys, &message.unk_04[0]);
        GF_ASSERT(message.unk_02 < 28);
    }

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, 0, &message, sizeof(ForfeitMsgMessage));
}

/**
 * @brief Emits a message to print the refresh a sprite
 *
 * @param battleSys
 * @param battleCtx
 * @param battler
 */
void BattleController_EmitRefreshSprite(BattleSystem *battleSys, BattleContext *battleCtx, int battler)
{
    int i;
    MoveAnimation animation;

    animation.command = BATTLE_COMMAND_REFRESH_SPRITE;

    for (i = 0; i < MAX_BATTLERS; i++) {
        animation.species[i] = battleCtx->battleMons[i].species;
        animation.isShiny[i] = battleCtx->battleMons[i].isShiny;
        animation.formNums[i] = battleCtx->battleMons[i].formNum;

        if (battleCtx->battleMons[i].statusVolatile & VOLATILE_CONDITION_TRANSFORM) {
            animation.genders[i] = battleCtx->battleMons[i].moveEffectsData.transformedGender;
            animation.personalities[i] = battleCtx->battleMons[i].moveEffectsData.transformedPID;
        } else {
            animation.genders[i] = battleCtx->battleMons[i].gender;
            animation.personalities[i] = battleCtx->battleMons[i].personality;
        }
    }

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battler, &animation, sizeof(MoveAnimation));
}

/**
 * @brief Emits a message to print the play the hit sound effect for a second turn move
 *
 * @param battleSys
 * @param battleCtx
 * @param battler
 */
void BattleController_EmitPlayMoveHitSoundEffect(BattleSystem *battleSys, BattleContext *battleCtx, int battler)
{
    MoveHitSoundMessage message;

    message.command = BATTLE_COMMAND_FLY_MOVE_HIT_SOUND_EFFECT;

    if (battleCtx->moveStatusFlags & MOVE_STATUS_SUPER_EFFECTIVE) {
        message.effectiveness = 2;
    } else if (battleCtx->moveStatusFlags & MOVE_STATUS_NOT_VERY_EFFECTIVE) {
        message.effectiveness = 1;
    } else {
        message.effectiveness = 0;
    }

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battler, &message, sizeof(MoveHitSoundMessage));
}

/**
 * @brief Emits a message to play a given background music
 *
 * @param battleSys
 * @param battler
 * @param bgmID
 */
void BattleController_EmitPlayMusic(BattleSystem *battleSys, int battlerId, int bgmID)
{
    MusicPlayMessage message;

    message.command = BATTLE_COMMAND_PLAY_MUSIC;
    message.bgmID = bgmID;

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, battlerId, &message, sizeof(MusicPlayMessage));
}

/**
 * @brief Emits a message to submit a battle result
 *
 * @param battleSys
 */
void BattleController_EmitSubmitResult(BattleSystem *battleSys)
{
    ResultSubmitMessage message;
    u32 battleType = BattleSystem_GetBattleType(battleSys);

    message.command = BATTLE_COMMAND_SUBMIT_RESULT;
    message.resultMask = BattleSystem_GetResultMask(battleSys);
    message.unk_02 = 0;

    if ((battleType & BATTLE_TYPE_LINK) && (sub_0202F250() == 1) && ((battleSys->battleStatusMask & 0x10) == 0)) {
        message.unk_02 = ov16_0223F58C(battleSys, &message.unk_08[0]);
        GF_ASSERT(message.unk_02 <= 28);
    }

    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, 0, &message, sizeof(ResultSubmitMessage));
}

/**
 * @brief Emits a message to clear the (text) message box
 *
 * @param battleSys
 */
void BattleController_EmitClearMessageBox(BattleSystem *battleSys)
{
    int command = BATTLE_COMMAND_CLEAR_MESSAGE_BOX;
    SendMessage(battleSys, COMM_RECIPIENT_CLIENT, 0, &command, sizeof(int));
}

/**
 * @brief Emits a message to clear the given command in the server queue in a multiplayer game
 *
 * @param battleSys
 * @param battlerId
 * @param command
 */
void BattleController_EmitClearCommand(BattleSystem *battleSys, int battlerId, int command)
{
    CommandClearMsg message;

    message.command = command;
    message.netID = CommSys_CurNetId();

    SendMessage(battleSys, 2, battlerId, &message, sizeof(CommandClearMsg));
}

/**
 * @brief Recieves a message in a link battle
 *
 * @param battleSys
 * @param data
 *
 * @return Whether or not the message was successfully recieved
 */
BOOL BattleController_RecvCommMessage(BattleSystem *battleSys, void *data)
{
    u8 *src = (u8 *)data;
    u8 recipient;
    u8 battler;
    int size;
    int i;
    BOOL success = TRUE;

    recipient = src[0];
    battler = src[1];
    size = src[2] | (src[3] << 8);

    src += sizeof(BattleMessageInfo);

    if (recipient == COMM_RECIPIENT_SERVER) {
        for (i = 0; i < size; i++) {
            battleSys->battleCtx->ioBuffer[battler][i] = src[i];
        }
    } else if (recipient == COMM_RECIPIENT_CLIENT) {
        if (battleSys->battlers[battler]->unk_1A4 == 0) {
            battleSys->battlers[battler]->unk_1A4 = 1;

            for (i = 0; i < size; i++) {
                battleSys->battlers[battler]->data[i] = src[i];
            }
        } else {
            success = FALSE;
        }
    } else if (recipient == COMM_RECIPIENT_QUEUE) {
        int val = src[0];
        int id = src[1];

        if (ov16_0223ED60(battleSys)) {
            BattleIO_DequeueVal(battleSys->battleCtx, id, battler, val);
        }
    }

    return success;
}

/**
 * @brief Initializes MoveAnimation structs, output to the animation parameter
 *
 * @param battleSys
 * @param battleCtx
 * @param animation
 * @param param3
 * @param param4
 * @param attacker
 * @param defender
 * @param move
 */
void BattleController_SetMoveAnimation(BattleSystem *battleSys, BattleContext *battleCtx, MoveAnimation *animation, int param3, int param4, int attacker, int defender, u16 move)
{
    int i;

    animation->command = BATTLE_COMMAND_SET_MOVE_ANIMATION;
    animation->move = move;
    animation->attacker = attacker;
    animation->defender = defender;
    animation->unk_4C = param3;
    animation->unk_50 = param4;
    animation->terrain = BattleSystem_GetTerrain(battleSys);

    if (battleCtx != NULL) {
        animation->damage = battleCtx->damage;

        if (battleCtx->movePower) {
            animation->power = battleCtx->movePower;
        } else {
            animation->power = battleCtx->aiContext.moveTable[move].power;
        }

        animation->friendship = battleCtx->battleMons[attacker].friendship;

        if ((BattleSystem_CountAbility(battleSys, battleCtx, COUNT_ALIVE_BATTLERS, 0, ABILITY_CLOUD_NINE) == 0) && (BattleSystem_CountAbility(battleSys, battleCtx, COUNT_ALIVE_BATTLERS, 0, ABILITY_AIR_LOCK) == 0)) {
            animation->fieldConditions = battleCtx->fieldConditionsMask;
        } else {
            animation->fieldConditions = 0;
        }

        animation->effectChance = battleCtx->moveEffectChance;
        animation->isSubstitute = ((battleCtx->battleMons[attacker].statusVolatile & VOLATILE_CONDITION_SUBSTITUTE) != 0);
        animation->transformed = ((battleCtx->battleMons[attacker].statusVolatile & VOLATILE_CONDITION_TRANSFORM) != 0);

        for (i = 0; i < MAX_BATTLERS; i++) {
            animation->species[i] = battleCtx->battleMons[i].species;
            animation->isShiny[i] = battleCtx->battleMons[i].isShiny;
            animation->formNums[i] = battleCtx->battleMons[i].formNum;
            animation->moveEffectMasks[i] = battleCtx->battleMons[i].moveEffectsMask;

            if (battleCtx->battleMons[i].statusVolatile & VOLATILE_CONDITION_TRANSFORM) {
                animation->genders[i] = battleCtx->battleMons[i].moveEffectsData.transformedGender;
                animation->personalities[i] = battleCtx->battleMons[i].moveEffectsData.transformedPID;
            } else {
                animation->genders[i] = battleCtx->battleMons[i].gender;
                animation->personalities[i] = battleCtx->battleMons[i].personality;
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
    u32 battleType = BattleSystem_GetBattleType(battleSys);
    partyGauge->command = command;

    // must make declarations here to match
    int battler1, battler2;
    Party *party;

    if ((battleType & (BATTLE_TYPE_LINK | BATTLE_TYPE_2vs2)) == (BATTLE_TYPE_LINK | BATTLE_TYPE_2vs2) // 2vs2 link battle
        || ((battleType & BATTLE_TYPE_TAG) && BattleSystem_GetBattlerSide(battleSys, battler)) // either of the two opponents on the enemy side
        || ((battleType == BATTLE_TYPE_TRAINER_WITH_AI_PARTNER) && BattleSystem_GetBattlerSide(battleSys, battler)) // either of the two opponents on the enemy side
        || battleType == BATTLE_TYPE_FRONTIER_WITH_AI_PARTNER) { // frontier, AI partner
        if (BattleSystem_GetBattlerType(battleSys, battler) == BATTLER_PLAYER_2
            || BattleSystem_GetBattlerType(battleSys, battler) == BATTLER_ENEMY_2) {
            battler1 = battler;
            battler2 = BattleSystem_GetPartner(battleSys, battler);
        } else {
            battler1 = BattleSystem_GetPartner(battleSys, battler);
            battler2 = battler;
        }

        party = BattleSystem_GetParty(battleSys, battler1);
        PartyGaugeData_Fill(battleCtx, partyGauge, party, battler1, 0);

        party = BattleSystem_GetParty(battleSys, battler2);
        PartyGaugeData_Fill(battleCtx, partyGauge, party, battler2, 3);
    } else {
        if ((battleType & BATTLE_TYPE_DOUBLES) && (battleType & BATTLE_TYPE_2vs2) == FALSE) {
            battler = battler & 1;
        } else {
            battler = battler;
        }

        party = BattleSystem_GetParty(battleSys, battler);
        PartyGaugeData_Fill(battleCtx, partyGauge, party, battler, 0);
    }
}
