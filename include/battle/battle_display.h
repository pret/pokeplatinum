#ifndef POKEPLATINUM_OV16_0225CBB8_H
#define POKEPLATINUM_OV16_0225CBB8_H

#include "struct_decls/battle_system.h"
#include "struct_decls/sprite_decl.h"
#include "struct_defs/battle_io.h"

#include "battle/battle_message.h"
#include "battle/struct_ov16_0225BFFC_decl.h"
#include "battle/struct_ov16_0225C168.h"
#include "battle/struct_ov16_0225C17C.h"
#include "battle/struct_ov16_0225C260.h"
#include "battle/struct_ov16_0225C29C.h"
#include "battle/struct_ov16_0225C2B0.h"
#include "battle/struct_ov16_0225C2C4.h"
#include "battle/struct_ov16_0225C2D8.h"
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
#include "battle/struct_ov16_0225C9F0.h"
#include "battle/struct_ov16_0225CA4C.h"
#include "battle/struct_ov16_0225CA60.h"
#include "battle/struct_ov16_02264EF8.h"
#include "battle/struct_ov16_02265050.h"
#include "battle/struct_ov16_02265124.h"
#include "battle/struct_ov16_02265154.h"
#include "battle/struct_ov16_022651A8.h"
#include "battle/struct_ov16_022656F0.h"
#include "battle/struct_ov16_02265BBC.h"
#include "battle/struct_ov16_022664F8.h"
#include "battle/struct_ov16_022674C4.h"
#include "battle/struct_ov16_0226C378.h"

void ov16_0225CBB8(BattleSystem *param0, BattlerData *param1);
void ov16_0225CBDC(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_0225C168 *param2);
void ov16_0225CE1C(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_0225C17C *param2);
void ov16_0225CF70(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_0225C17C *param2);
void ov16_0225D118(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_02264EF8 *param2);
void ov16_0225D1C4(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_02265050 *param2);
void ov16_0225D228(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_02265124 *param2);
void ov16_0225D360(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_02265154 *param2);
void ov16_0225D3CC(BattleSystem *param0, BattlerData *param1);
void ov16_0225D414(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_022651A8 *param2);

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
void ov16_0225D5B8(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_0225C260 *param2);
void ov16_0225D698(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_022656F0 *param2);
void ov16_0225D708(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_0225C29C *param2);
void ov16_0225D794(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_0225C2B0 *param2);
void ov16_0225D840(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_0225C2C4 *param2);
void ov16_0225D8AC(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_0225C2D8 *param2);
void ov16_0225D8F0(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_0225C2EC *param2);

/**
 * @brief Print a message to the screen.
 *
 * @param battleSys
 * @param battlerData
 * @param battleMsg
 */
void BattleDisplay_PrintMessage(BattleSystem *battleSys, BattlerData *battlerData, BattleMessage *battleMsg);
void ov16_0225D9A8(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_02265BBC *param2);
void ov16_0225DA44(BattleSystem *param0, BattlerData *param1);
void ov16_0225DA74(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_0225C35C *param2);
void ov16_0225DB00(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_0225C370 *param2);
void ov16_0225DB74(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_0225C384 *param2);
void ov16_0225DC4C(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_0225C398 *param2);
void ov16_0225DC7C(BattleSystem *param0, BattlerData *param1);
void ov16_0225DCB0(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_0225C3BC *param2);
void ov16_0225DD44(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_0225C3D0 *param2);
void ov16_0225DD7C(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_0225C3E4 *param2);
void ov16_0225DDD8(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_0225C3F8 *param2);
void ov16_0225DE30(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_0225C40C *param2);
void ov16_0225DE88(BattleSystem *param0, BattlerData *param1);
void ov16_0225DEDC(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_0225C430 *param2);
void ov16_0225DF34(BattleSystem *param0, BattlerData *param1);
void ov16_0225DF6C(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_0225C454 *param2);
void ov16_0225E008(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_0225C468 *param2);
void ov16_0225E0BC(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_0225C65C *param2);
void ov16_0225E0F4(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_022664F8 *param2);

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
void ov16_0225E23C(BattleSystem *param0, BattlerData *param1);
void ov16_0225E294(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_02265BBC *param2);
void ov16_0225E2C8(BattleSystem *param0, BattlerData *param1);
void ov16_0225E300(BattleSystem *param0, BattlerData *param1);
void ov16_0225E338(BattleSystem *param0, BattlerData *param1);
void ov16_0225E38C(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_0225C9F0 *param2);
void ov16_0225E3E0(BattleSystem *param0, BattlerData *param1);
void ov16_0225E434(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_02265BBC *param2);
void ov16_0225E468(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_0225CA4C *param2);
void ov16_0225E4C8(BattleSystem *param0, BattlerData *param1, UnkStruct_ov16_0225CA60 *param2);
void ov16_02263730(BattleSystem *param0, BattlerData *param1);
u8 Battler_Type(BattlerData *param0);
u8 Battler_BootState(BattlerData *param0);
PokemonSprite *ov16_02263AFC(BattlerData *param0);
Healthbar *ov16_02263B08(BattlerData *param0);
UnkStruct_ov16_0226C378 *ov16_02263B0C(BattlerData *param0);
void ov16_02263B10(BattlerData *param0);
void ov16_02263B20(BattlerData *param0, int param1);

#endif // POKEPLATINUM_OV16_0225CBB8_H
