#ifndef POKEPLATINUM_OV16_0223DF00_H
#define POKEPLATINUM_OV16_0223DF00_H

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_02007768_decl.h"
#include "struct_decls/struct_02007C7C_decl.h"
#include "message.h"
#include "struct_decls/struct_0200B358_decl.h"
#include "struct_decls/struct_0200C440_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/struct_02015F84_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "strbuf.h"
#include "trainer_info.h"
#include "struct_decls/struct_02026324_decl.h"
#include "struct_defs/struct_020279FC.h"
#include "struct_decls/struct_0202CC84_decl.h"
#include "struct_defs/struct_0205AA50.h"
#include "pokemon.h"
#include "struct_decls/struct_020797DC_decl.h"
#include "struct_decls/struct_party_decl.h"
#include "struct_defs/trainer_data.h"
#include "struct_decls/battle_system.h"
#include "struct_decls/struct_0207D3C0_decl.h"
#include "struct_decls/struct_0207D99C_decl.h"
#include "overlay006/battle_params.h"
#include "overlay012/struct_ov12_0221FCDC_decl.h"
#include "overlay016/struct_ov16_0223E0C8.h"
#include "battle/battle_context.h"
#include "overlay016/struct_ov16_0225BFFC_decl.h"
#include "battle/battle_message.h"
#include "overlay016/struct_ov16_02268520.h"
#include "overlay016/struct_ov16_02268A14_decl.h"
#include "overlay016/struct_ov16_0226D160_decl.h"

#include "enums.h"

#define ENEMY_IN_SLOT_RIGHT 0
#define ENEMY_IN_SLOT_LEFT  2

BGL * BattleSystem_BGL(BattleSystem * param0);
Window * BattleSystem_Window(BattleSystem * param0, int param1);
u32 BattleSystem_BattleType(BattleSystem * param0);
BattleContext * BattleSystem_Context(BattleSystem * param0);
BattlerData * BattleSystem_BattlerData(BattleSystem * param0, int param1);
int BattleSystem_MaxBattlers(BattleSystem * param0);
Party * BattleSystem_Party(BattleSystem * param0, int param1);

/**
 * @brief Get the party count for a particular battler.
 * 
 * - If the battle taking place is a 2vs2 battle (player-with-partner vs. two
 * opponent trainers), then the battler input is not modified.
 * - If the battle taking place is against two opponents (but the player does
 * not have a partner) and the requested count is for an enemy party, then the
 * battler input is not modified.
 * - If the battle taking place is otherwise a double-battle, then the battler
 * input will be normalized to 0 or 1.
 * - Otherwise, the battler input is used to retrieve the particular party.
 * 
 * @param battleSys 
 * @param battler   The battler party to count.
 * @return Number of Pokemon in the requested battler's party.
 */
int BattleSystem_PartyCount(BattleSystem *battleSys, int battler);

/**
 * @brief Get a Pokemon from the given battler's party, choosing it from the
 * given party slot.
 * 
 * @param battleSys 
 * @param battler 
 * @param slot      Index of the Pokemon in the party to retrieve.
 * @return Pointer to the Pokemon struct in that battler's party slot.
 */
Pokemon* BattleSystem_PartyPokemon(BattleSystem *battleSys, int battler, int slot);
UnkStruct_02007768 * ov16_0223E000(BattleSystem * param0);
UnkStruct_ov12_0221FCDC * ov16_0223E008(BattleSystem * param0);
UnkStruct_0200C6E4 * ov16_0223E010(BattleSystem * param0);
UnkStruct_0200C704 * ov16_0223E018(BattleSystem * param0);
UnkStruct_ov16_02268520 * ov16_0223E020(BattleSystem * param0, int param1);
UnkStruct_ov16_02268A14 * ov16_0223E02C(BattleSystem * param0);
UnkStruct_ov16_0226D160 * ov16_0223E034(BattleSystem * param0, UnkEnum_ov16_0226D194 param1);
void ov16_0223E040(BattleSystem * param0, UnkEnum_ov16_0226D194 param1, UnkStruct_ov16_0226D160 * param2);
UnkStruct_0200C440 * ov16_0223E04C(BattleSystem * param0);
UnkStruct_0200C440 * ov16_0223E054(BattleSystem * param0);
MessageLoader * BattleSystem_MessageLoader(BattleSystem * param0);
MessageLoader * ov16_0223E060(BattleSystem * param0);
PaletteSys * BattleSystem_PaletteSys(BattleSystem * param0);
UnkStruct_02026324 * ov16_0223E068(BattleSystem * param0);
u8 * ov16_0223E06C(BattleSystem * param0);
u8 * ov16_0223E074(BattleSystem * param0);
u16 * ov16_0223E080(BattleSystem * param0);
u16 * ov16_0223E08C(BattleSystem * param0);
u16 * ov16_0223E098(BattleSystem * param0);
u16 * ov16_0223E0A4(BattleSystem * param0);
u16 * ov16_0223E0B0(BattleSystem * param0);
u16 * ov16_0223E0BC(BattleSystem * param0);
UnkStruct_ov16_0223E0C8 * ov16_0223E0C8(BattleSystem * param0);
UnkStruct_0200B358 * ov16_0223E0D0(BattleSystem * param0);
Strbuf* ov16_0223E0D4(BattleSystem * param0);
u16 ov16_0223E0D8(BattleSystem * param0, int param1);
TrainerData * BattleSystem_TrainerData(BattleSystem * param0, int param1);
TrainerInfo * BattleSystem_TrainerInfo(BattleSystem * param0, int param1);
UnkStruct_0207D3C0 * BattleSystem_Bag(BattleSystem * param0);
UnkStruct_0207D99C * BattleSystem_BagCursor(BattleSystem * param0);
u32 ov16_0223E1B4(BattleSystem * param0, int param1);

/**
 * @brief Get a battler of a particular type.
 * 
 * @param battleSys 
 * @param type      The type of battler. 
 * @return ID of the battler of the given type.
 */
int BattleSystem_BattlerOfType(BattleSystem *battleSys, int type);
u8 BattleSystem_BattlerSlot(BattleSystem * param0, int param1);
u8 Battler_Side(BattleSystem * param0, int param1);
void * ov16_0223E220(BattleSystem * param0);
PCBoxes * ov16_0223E228(BattleSystem * param0);
int ov16_0223E22C(BattleSystem * param0);
int ov16_0223E240(BattleSystem * param0);
int BattleSystem_MapHeader(BattleSystem * param0);
int BattleSystem_Partner(BattleSystem * param0, int param1);

/**
 * @brief Get the battler who is an enemy of the input attacker and occupies
 * a particular slot on the opposing team.
 * 
 * If the battle is a double-battle, then this will only ever return the
 * singular opponent.
 * 
 * @param battleSys 
 * @param attacker 
 * @param slot 
 * @return Battler who is an enemy and in the given slot on the enemy team.
 */
int BattleSystem_EnemyInSlot(BattleSystem *battleSys, int attacker, int slot);
BOOL ov16_0223E30C(BattleSystem * param0, int param1, int param2, int param3, int param4);
u32 BattleSystem_BattleStatus(BattleSystem * param0);
int ov16_0223EBF8(BattleSystem * param0);
int ov16_0223EC04(BattleSystem * param0);
u8 ov16_0223EC58(BattleSystem * param0, int param1, u8 param2);
u16 ov16_0223ECC4(BattleParams * param0, int * param1, int * param2);
u8 ov16_0223ED60(BattleSystem * param0);
u8 ov16_0223ED6C(BattleSystem * param0);
int BattleSystem_NumSafariBalls(BattleSystem * param0);
void BattleSystem_SetSafariBalls(BattleSystem * param0, int param1);
UnkStruct_020279FC * ov16_0223EDA4(BattleSystem * param0);

/**
 * @brief Check if battle animations are turned on.
 * 
 * @param battleSys 
 * @return TRUE if battle animations are enabled, FALSE if not.
 */
BOOL BattleSystem_AnimationsOn(BattleSystem *battleSys);
int ov16_0223EDE0(BattleSystem * param0);
u8 BattleSystem_TextSpeed(BattleSystem * param0);
int BattleSystem_Ruleset(BattleSystem * param0);
UnkStruct_02015F84 * ov16_0223EE28(BattleSystem * param0);
UnkStruct_0202CC84 * ov16_0223EE30(BattleSystem * param0, int param1);
void ov16_0223EE70(BattleSystem * param0);
void ov16_0223EF2C(BattleSystem * param0, int param1, int param2);
void ov16_0223EF48(BattleSystem * param0, Pokemon * param1);
void ov16_0223EF68(BattleSystem * param0, Pokemon * param1);
void ov16_0223EF8C(BattleSystem * param0);
u8 * ov16_0223F1E8(BattleSystem * param0);
u16 * ov16_0223F1F0(BattleSystem * param0);
int ov16_0223F1F8(BattleSystem * param0);
u16 * ov16_0223F204(BattleSystem * param0);
u16 * ov16_0223F210(BattleSystem * param0);
int ov16_0223F21C(BattleSystem * param0);
u8 ov16_0223F228(BattleSystem * param0);
void ov16_0223F234(BattleSystem * param0, u8 param1);
int ov16_0223F240(BattleSystem * param0);
void ov16_0223F24C(BattleSystem * param0, int param1);
void ov16_0223F268(BattleSystem * param0);
void BattleSystem_SetCommandSelectionFlags(BattleSystem *battleSys, int flags);
void ov16_0223F290(BattleSystem * param0, int param1);
void * ov16_0223F29C(BattleSystem * param0);
void ov16_0223F2A4(BattleSystem * param0, void * param1);
UnkStruct_ov16_0223E0C8 * ov16_0223F2AC(BattleSystem * param0, int param1);
u8 * ov16_0223F2B8(UnkStruct_ov16_0223E0C8 * param0, int param1);
void ov16_0223F2CC(UnkStruct_ov16_0223E0C8 * param0, int param1, int param2);
void ov16_0223F2E4(UnkStruct_ov16_0223E0C8 * param0, int param1, int param2);
void ov16_0223F2FC(UnkStruct_ov16_0223E0C8 * param0, int param1, int param2);
void ov16_0223F314(BattleSystem * param0, int param1);
void ov16_0223F320(BattleSystem * param0, u8 * param1);
void ov16_0223F32C(BattleSystem * param0, u8 * param1);
void ov16_0223F338(BattleSystem * param0, u8 param1);
void ov16_0223F344(BattleSystem * param0, u8 param1);
void ov16_0223F350(BattleSystem * param0, u8 param1);
void * ov16_0223F35C(BattleSystem * param0, int param1);
void ov16_0223F36C(BattleSystem * param0);
void ov16_0223F3BC(BattleSystem * param0);
void ov16_0223F3EC(BattleSystem * param0);
void ov16_0223F414(BattleSystem * param0);
u8 BattleSystem_ResultMask(BattleSystem * param0);
void BattleSystem_SetResultFlag(BattleSystem * param0, u8 param1);
u8 ov16_0223F450(BattleSystem * param0);
void BattleSystem_SetRedHPSoundFlag(BattleSystem * param0, u8 param1);
u8 ov16_0223F47C(BattleSystem * param0);
void ov16_0223F48C(BattleSystem * param0, u8 param1);
void ov16_0223F4B0(BattleSystem * param0, int param1);
u16 BattleSystem_RandNext(BattleSystem * param0);
u32 ov16_0223F4E8(BattleSystem * param0);
void ov16_0223F4F4(BattleSystem * param0, u32 param1);
void ov16_0223F500(BattleSystem * param0, int param1, u8 param2);
BOOL ov16_0223F530(BattleSystem * param0, int param1, u8 * param2);
u8 ov16_0223F58C(BattleSystem * param0, u8 * param1);
void ov16_0223F638(BattleSystem * param0, u16 param1, u8 * param2);
u16 ov16_0223F6E4(BattleSystem * param0);
int ov16_0223F6F0(BattleSystem * param0, u16 param1);
u16 BattleSystem_TrainerItems(BattleSystem * param0, int param1, int param2);
u32 ov16_0223F710(BattleSystem * param0);
void BattleSystem_SetStopRecording(BattleSystem *battleSys, int flag);
BOOL ov16_0223F7A4(BattleSystem * param0);
void BattleSystem_ShowStopPlaybackButton(BattleSystem *battleSys);
u8 ov16_0223F810(BattleSystem * param0, int param1);
void ov16_0223F858(BattleSystem * param0, u8 * param1);
void ov16_0223F87C(BattleSystem * param0, u8 * param1);
void ov16_0223F8AC(BattleSystem * param0, UnkStruct_02007C7C ** param1);
void BattleSystem_SetGaugePriority(BattleSystem * param0, int param1);
u32 ov16_0223F904(Party * param0, TrainerInfo * param1);
void BattleSystem_DexFlagSeen(BattleSystem * param0, int param1);
void ov16_0223F9A0(BattleSystem * param0, int param1);
BOOL ov16_0223F9E0(BattleSystem * param0, int param1);
void ov16_0223F9F0(void);
u8 ov16_0223F9FC(BattleSystem * param0, int param1, int param2, int param3, int param4);
u8 BattleMessage_Print(BattleSystem * param0, MessageLoader * param1, BattleMessage * param2, int param3);
u8 BattleMessage_PrintToWindow(BattleSystem * param0, Window * param1, MessageLoader * param2, BattleMessage * param3, int param4, int param5, int param6, int param7, int param8);

#endif // POKEPLATINUM_OV16_0223DF00_H
