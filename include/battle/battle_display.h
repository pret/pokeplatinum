#ifndef POKEPLATINUM_OV16_0225CBB8_H
#define POKEPLATINUM_OV16_0225CBB8_H

#include "struct_decls/battle_system.h"
#include "struct_defs/battler_data.h"

#include "battle/battle_message.h"
#include "battle/message_defs.h"
#include "battle/struct_ov16_02265BBC.h"
#include "battle/struct_ov16_022674C4.h"
#include "battle/struct_ov16_0226C378.h"

#include "pokemon_sprite.h"

void ov16_0225CBB8(BattleSystem *battleSys, BattlerData *battlerData);
void ov16_0225CBDC(BattleSystem *battleSys, BattlerData *battlerData, MonEncounterMessage *message);
void ov16_0225CE1C(BattleSystem *battleSys, BattlerData *battlerData, MonShowMessage *message);
void ov16_0225CF70(BattleSystem *battleSys, BattlerData *battlerData, MonShowMessage *message);
void ov16_0225D118(BattleSystem *battleSys, BattlerData *battlerData, MonReturnMessage *message);
void ov16_0225D1C4(BattleSystem *battleSys, BattlerData *battlerData, CaptureOpenBallMessage *message);
void ov16_0225D228(BattleSystem *battleSys, BattlerData *battlerData, TrainerEncounterMessage *message);
void ov16_0225D360(BattleSystem *battleSys, BattlerData *battlerData, TrainerThrowBallMessage *message);
void ov16_0225D3CC(BattleSystem *battleSys, BattlerData *battlerData);
void ov16_0225D414(BattleSystem *battleSys, BattlerData *battlerData, TrainerSlideInMessage *message);

/**
 * @brief Slide the healthbar into the screen.
 *
 * @param battleSys
 * @param battlerData
 * @param healthbarData
 */
void BattleDisplay_SlideHealthbarIn(BattleSystem *battleSys, BattlerData *battlerData, HealthbarData *healthbarData);

/**
 * @brief Slide the healthbar out of the screen.
 *
 * @param battleSys
 * @param battlerData
 */
void BattleDisplay_SlideHealthbarOut(BattleSystem *battleSys, BattlerData *battlerData);
void ov16_0225D5B8(BattleSystem *battleSys, BattlerData *battlerData, CommandSetMessage *message);
void ov16_0225D698(BattleSystem *battleSys, BattlerData *battlerData, MoveSelectMenuMessage *message);
void ov16_0225D708(BattleSystem *battleSys, BattlerData *battlerData, TargetSelectMenuMessage *message);
void ov16_0225D794(BattleSystem *battleSys, BattlerData *battlerData, BagMenuMessage *message);
void ov16_0225D840(BattleSystem *battleSys, BattlerData *battlerData, PartyMenuMessage *message);
void ov16_0225D8AC(BattleSystem *battleSys, BattlerData *battlerData, YesNoMenuMessage *message);
void ov16_0225D8F0(BattleSystem *battleSys, BattlerData *battlerData, AttackMsgMessage *message);

/**
 * @brief Print a message to the screen.
 *
 * @param battleSys
 * @param battlerData
 * @param battleMsg
 */
void BattleDisplay_PrintMessage(BattleSystem *battleSys, BattlerData *battlerData, BattleMessage *battleMsg);
void ov16_0225D9A8(BattleSystem *battleSys, BattlerData *battlerData, MoveAnimation *moveAnimation);
void ov16_0225DA44(BattleSystem *battleSys, BattlerData *battlerData);
void ov16_0225DA74(BattleSystem *battleSys, BattlerData *battlerData, HPGaugeUpdateMessage *message);
void ov16_0225DB00(BattleSystem *battleSys, BattlerData *battlerData, ExpGaugeUpdateMessage *message);
void ov16_0225DB74(BattleSystem *battleSys, BattlerData *battlerData, FaintingSequenceMessage *message);
void ov16_0225DC4C(BattleSystem *battleSys, BattlerData *battlerData, PlaySoundMessage *message);
void ov16_0225DC7C(BattleSystem *battleSys, BattlerData *battlerData);
void ov16_0225DCB0(BattleSystem *battleSys, BattlerData *battlerData, ToggleVanishMessage *message);
void ov16_0225DD44(BattleSystem *battleSys, BattlerData *battlerData, SetStatusIconMessage *message);
void ov16_0225DD7C(BattleSystem *battleSys, BattlerData *battlerData, TrainerMsgMessage *message);
void ov16_0225DDD8(BattleSystem *battleSys, BattlerData *battlerData, RecallMsgMessage *message);
void ov16_0225DE30(BattleSystem *battleSys, BattlerData *battlerData, SendOutMsgMessage *message);
void ov16_0225DE88(BattleSystem *battleSys, BattlerData *battlerData);
void ov16_0225DEDC(BattleSystem *battleSys, BattlerData *battlerData, LeadMonMsgMessage *message);
void ov16_0225DF34(BattleSystem *battleSys, BattlerData *battlerData);
void ov16_0225DF6C(BattleSystem *battleSys, BattlerData *battlerData, AlertMsgMessage *message);
void ov16_0225E008(BattleSystem *battleSys, BattlerData *battlerData, RefreshHPGaugeMessage *message);
void ov16_0225E0BC(BattleSystem *battleSys, BattlerData *battlerData, ForgetMoveMessage *message);
void ov16_0225E0F4(BattleSystem *battleSys, BattlerData *battlerData, MosaicSetMessage *message);

/**
 * @brief Show the start-of-battle party gauge.
 *
 * @param battleSys
 * @param battlerData
 * @param partyGauge
 */
void BattleDisplay_ShowBattleStartPartyGauge(BattleSystem *battleSys, BattlerData *battlerData, PartyGaugeData *partyGauge);

/**
 * @brief Hide the start-of-battle party gauge.
 *
 * @param battleSys
 * @param battlerData
 * @param partyGauge
 */
void BattleDisplay_HideBattleStartPartyGauge(BattleSystem *battleSys, BattlerData *battlerData, PartyGaugeData *partyGauge);

/**
 * @brief Show the mid-battle party gauge.
 *
 * @param battleSys
 * @param battlerData
 * @param partyGauge
 */
void BattleDisplay_ShowPartyGauge(BattleSystem *battleSys, BattlerData *battlerData, PartyGaugeData *partyGauge);

/**
 * @brief Hide the mid-battle party gauge.
 *
 * @param battleSys
 * @param battlerData
 * @param partyGauge
 */
void BattleDisplay_HidePartyGauge(BattleSystem *battleSys, BattlerData *battlerData, PartyGaugeData *partyGauge);
void ov16_0225E23C(BattleSystem *battleSys, BattlerData *battlerData);
void ov16_0225E294(BattleSystem *battleSys, BattlerData *battlerData, MoveAnimation *moveAnimation);
void ov16_0225E2C8(BattleSystem *battleSys, BattlerData *battlerData);
void ov16_0225E300(BattleSystem *battleSys, BattlerData *battlerData);
void ov16_0225E338(BattleSystem *battleSys, BattlerData *battlerData);
void ov16_0225E38C(BattleSystem *battleSys, BattlerData *battlerData, EscapeMsgMessage *message);
void ov16_0225E3E0(BattleSystem *battleSys, BattlerData *battlerData);
void ov16_0225E434(BattleSystem *battleSys, BattlerData *battlerData, MoveAnimation *moveAnimation);
void ov16_0225E468(BattleSystem *battleSys, BattlerData *battlerData, MoveHitSoundMessage *message);
void ov16_0225E4C8(BattleSystem *battleSys, BattlerData *battlerData, MusicPlayMessage *message);
void ov16_02263730(BattleSystem *battleSys, BattlerData *battlerData);
u8 BattlerData_GetBattlerType(BattlerData *battlerData);
u8 BattlerData_GetBootState(BattlerData *battlerData);
PokemonSprite *BattlerData_GetPokemonSprite(BattlerData *battlerData);
Healthbar *BattlerData_GetHealthbar(BattlerData *battlerData);
UnkStruct_ov16_0226C378 *ov16_02263B0C(BattlerData *battlerData);
void ov16_02263B10(BattlerData *battlerData);
void ov16_02263B20(BattlerData *battlerData, int param1);

#endif // POKEPLATINUM_OV16_0225CBB8_H
