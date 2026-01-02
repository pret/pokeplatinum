#ifndef POKEPLATINUM_OV16_0225CBB8_H
#define POKEPLATINUM_OV16_0225CBB8_H

#include "struct_decls/battle_system.h"
#include "struct_defs/battle_controller.h"

#include "battle/battle_message.h"
#include "battle/struct_ov16_0225BFFC_decl.h"
#include "battle/struct_ov16_0225CA4C.h"
#include "battle/struct_ov16_0225CA60.h"
#include "battle/struct_ov16_02265BBC.h"
#include "battle/struct_ov16_022674C4.h"
#include "battle/struct_ov16_0226C378.h"

#include "pokemon_sprite.h"

void ov16_0225CBB8(BattleSystem *battleSys, BattlerData *param1);
void ov16_0225CBDC(BattleSystem *battleSys, BattlerData *param1, MonEncounterMessage *message);
void ov16_0225CE1C(BattleSystem *battleSys, BattlerData *param1, MonShowMessage *message);
void ov16_0225CF70(BattleSystem *battleSys, BattlerData *param1, MonShowMessage *message);
void ov16_0225D118(BattleSystem *battleSys, BattlerData *param1, MonReturnMessage *message);
void ov16_0225D1C4(BattleSystem *battleSys, BattlerData *param1, CaptureOpenBallMessage *message);
void ov16_0225D228(BattleSystem *battleSys, BattlerData *param1, TrainerEncounterMessage *message);
void ov16_0225D360(BattleSystem *battleSys, BattlerData *param1, TrainerThrowBallMessage *message);
void ov16_0225D3CC(BattleSystem *battleSys, BattlerData *param1);
void ov16_0225D414(BattleSystem *battleSys, BattlerData *param1, TrainerSlideInMessage *message);

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
void ov16_0225D5B8(BattleSystem *battleSys, BattlerData *param1, CommandSetMessage *message);
void ov16_0225D698(BattleSystem *battleSys, BattlerData *param1, MoveSelectMenuMessage *message);
void ov16_0225D708(BattleSystem *battleSys, BattlerData *param1, TargetSelectMenuMessage *message);
void ov16_0225D794(BattleSystem *battleSys, BattlerData *param1, BagMenuMessage *message);
void ov16_0225D840(BattleSystem *battleSys, BattlerData *param1, PartyMenuMessage *message);
void ov16_0225D8AC(BattleSystem *battleSys, BattlerData *param1, YesNoMenuMessage *message);
void ov16_0225D8F0(BattleSystem *battleSys, BattlerData *param1, AttackMsgMessage *message);

/**
 * @brief Print a message to the screen.
 *
 * @param battleSys
 * @param battlerData
 * @param battleMsg
 */
void BattleDisplay_PrintMessage(BattleSystem *battleSys, BattlerData *battlerData, BattleMessage *battleMsg);
void ov16_0225D9A8(BattleSystem *battleSys, BattlerData *param1, MoveAnimation *param2);
void ov16_0225DA44(BattleSystem *battleSys, BattlerData *param1);
void ov16_0225DA74(BattleSystem *battleSys, BattlerData *param1, HPGaugeUpdateMessage *param2);
void ov16_0225DB00(BattleSystem *battleSys, BattlerData *param1, ExpGaugeUpdateMessage *param2);
void ov16_0225DB74(BattleSystem *battleSys, BattlerData *param1, FaintingSequenceMessage *param2);
void ov16_0225DC4C(BattleSystem *battleSys, BattlerData *param1, PlaySoundMessage *param2);
void ov16_0225DC7C(BattleSystem *battleSys, BattlerData *param1);
void ov16_0225DCB0(BattleSystem *battleSys, BattlerData *param1, ToggleVanishMessage *param2);
void ov16_0225DD44(BattleSystem *battleSys, BattlerData *param1, SetStatusIconMessage *param2);
void ov16_0225DD7C(BattleSystem *battleSys, BattlerData *param1, TrainerMsgMessage *param2);
void ov16_0225DDD8(BattleSystem *battleSys, BattlerData *param1, RecallMsgMessage *param2);
void ov16_0225DE30(BattleSystem *battleSys, BattlerData *param1, SendOutMsgMessage *param2);
void ov16_0225DE88(BattleSystem *battleSys, BattlerData *param1);
void ov16_0225DEDC(BattleSystem *battleSys, BattlerData *param1, LeadMonMsgMessage *param2);
void ov16_0225DF34(BattleSystem *battleSys, BattlerData *param1);
void ov16_0225DF6C(BattleSystem *battleSys, BattlerData *param1, AlertMsgMessage *param2);
void ov16_0225E008(BattleSystem *battleSys, BattlerData *param1, RefreshHPGaugeMessage *param2);
void ov16_0225E0BC(BattleSystem *battleSys, BattlerData *param1, ForgetMoveMessage *param2);
void ov16_0225E0F4(BattleSystem *battleSys, BattlerData *param1, MosaicSetMessage *param2);

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
void ov16_0225E23C(BattleSystem *battleSys, BattlerData *param1);
void ov16_0225E294(BattleSystem *battleSys, BattlerData *param1, MoveAnimation *param2);
void ov16_0225E2C8(BattleSystem *battleSys, BattlerData *param1);
void ov16_0225E300(BattleSystem *battleSys, BattlerData *param1);
void ov16_0225E338(BattleSystem *battleSys, BattlerData *param1);
void ov16_0225E38C(BattleSystem *battleSys, BattlerData *param1, EscapeMsgMessage *param2);
void ov16_0225E3E0(BattleSystem *battleSys, BattlerData *param1);
void ov16_0225E434(BattleSystem *battleSys, BattlerData *param1, MoveAnimation *param2);
void ov16_0225E468(BattleSystem *battleSys, BattlerData *param1, UnkStruct_ov16_0225CA4C *param2);
void ov16_0225E4C8(BattleSystem *battleSys, BattlerData *param1, UnkStruct_ov16_0225CA60 *param2);
void ov16_02263730(BattleSystem *battleSys, BattlerData *param1);
u8 Battler_Type(BattlerData *param0);
u8 Battler_BootState(BattlerData *param0);
PokemonSprite *ov16_02263AFC(BattlerData *param0);
Healthbar *ov16_02263B08(BattlerData *param0);
UnkStruct_ov16_0226C378 *ov16_02263B0C(BattlerData *param0);
void ov16_02263B10(BattlerData *param0);
void ov16_02263B20(BattlerData *param0, int param1);

#endif // POKEPLATINUM_OV16_0225CBB8_H
