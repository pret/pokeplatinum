#ifndef POKEPLATINUM_OV16_0223DF00_H
#define POKEPLATINUM_OV16_0223DF00_H

#include "constants/time.h"

#include "struct_decls/battle_system.h"
#include "struct_decls/pokedexdata_decl.h"
#include "struct_decls/pokemon_animation_sys_decl.h"
#include "struct_decls/sprite_decl.h"
#include "struct_decls/struct_02007768_decl.h"
#include "struct_decls/struct_0200C440_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/struct_020797DC_decl.h"
#include "struct_defs/chatot_cry.h"
#include "struct_defs/trainer.h"

#include "battle/battle_context.h"
#include "battle/battle_message.h"
#include "battle/party_gauge.h"
#include "battle/struct_ov16_0223E0C8.h"
#include "battle/struct_ov16_0225BFFC_decl.h"
#include "battle/struct_ov16_02268520.h"
#include "battle/struct_ov16_02268A14_decl.h"
#include "battle/struct_ov16_0226D160_decl.h"
#include "overlay012/struct_ov12_0221FCDC_decl.h"

#include "bag.h"
#include "bg_window.h"
#include "field_battle_data_transfer.h"
#include "game_options.h"
#include "message.h"
#include "palette.h"
#include "party.h"
#include "pokemon.h"
#include "strbuf.h"
#include "string_template.h"
#include "trainer_info.h"

#define ENEMY_IN_SLOT_RIGHT 0
#define ENEMY_IN_SLOT_LEFT  2

BgConfig *BattleSystem_GetBgConfig(BattleSystem *battleSys);

/**
 * @brief Get one of the allocated windows for the battle display.
 *
 * @param battleSys
 * @param idx
 * @return
 */
Window *BattleSystem_Window(BattleSystem *battleSys, int idx);
u32 BattleSystem_GetBattleType(BattleSystem *battleSys);
BattleContext *BattleSystem_Context(BattleSystem *battleSys);
BattlerData *BattleSystem_BattlerData(BattleSystem *battleSys, int param1);
int BattleSystem_MaxBattlers(BattleSystem *battleSys);
Party *BattleSystem_Party(BattleSystem *battleSys, int param1);

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
Pokemon *BattleSystem_PartyPokemon(BattleSystem *battleSys, int battler, int slot);
UnkStruct_02007768 *ov16_0223E000(BattleSystem *battleSys);
UnkStruct_ov12_0221FCDC *ov16_0223E008(BattleSystem *battleSys);
SpriteRenderer *BattleSystem_GetSpriteRenderer(BattleSystem *battleSys);
SpriteGfxHandler *BattleSystem_GetSpriteGfxHandler(BattleSystem *battleSys);
UnkStruct_ov16_02268520 *ov16_0223E020(BattleSystem *battleSys, int param1);
BattleInput *BattleSystem_GetBattleInput(BattleSystem *battleSys);
PartyGauge *ov16_0223E034(BattleSystem *battleSys, enum PartyGaugeSide param1);
void ov16_0223E040(BattleSystem *battleSys, enum PartyGaugeSide param1, PartyGauge *param2);
UnkStruct_0200C440 *ov16_0223E04C(BattleSystem *battleSys);
UnkStruct_0200C440 *ov16_0223E054(BattleSystem *battleSys);
MessageLoader *BattleSystem_GetMessageLoader(BattleSystem *battleSys);
MessageLoader *ov16_0223E060(BattleSystem *battleSys);
PaletteData *BattleSystem_GetPaletteData(BattleSystem *battleSys);
Pokedex *BattleSystem_GetPokedex(BattleSystem *battleSys);
u8 *ov16_0223E06C(BattleSystem *battleSys);
u8 *ov16_0223E074(BattleSystem *battleSys);
u16 *ov16_0223E080(BattleSystem *battleSys);
u16 *ov16_0223E08C(BattleSystem *battleSys);
u16 *ov16_0223E098(BattleSystem *battleSys);
u16 *ov16_0223E0A4(BattleSystem *battleSys);
u16 *ov16_0223E0B0(BattleSystem *battleSys);
u16 *ov16_0223E0BC(BattleSystem *battleSys);
UnkStruct_ov16_0223E0C8 *ov16_0223E0C8(BattleSystem *battleSys);
StringTemplate *BattleSystem_StringTemplate(BattleSystem *battleSys);
Strbuf *ov16_0223E0D4(BattleSystem *battleSys);

/**
 * @brief Get the trainer ID for a particular battler.
 *
 * @param battleSys
 * @param battler
 * @return The battler's trainer ID
 */
u16 Battler_TrainerID(BattleSystem *battleSys, int battler);
Trainer *BattleSystem_GetTrainer(BattleSystem *battleSys, int param1);

/**
 * @brief Get the trainer info for a particular battler.
 *
 * @param battleSys
 * @param battler
 * @return The trainer info for the requested battler.
 */
TrainerInfo *BattleSystem_TrainerInfo(BattleSystem *battleSys, int battler);
Bag *BattleSystem_Bag(BattleSystem *battleSys);
BagCursor *BattleSystem_BagCursor(BattleSystem *battleSys);
u32 BattleSystem_GetTrainerGender(BattleSystem *battleSys, int param1);

/**
 * @brief Get a battler of a particular type.
 *
 * @param battleSys
 * @param type      The type of battler.
 * @return ID of the battler of the given type.
 */
int BattleSystem_BattlerOfType(BattleSystem *battleSys, int type);
u8 BattleSystem_BattlerSlot(BattleSystem *battleSys, int param1);
u8 Battler_Side(BattleSystem *battleSys, int param1);
void *ov16_0223E220(BattleSystem *battleSys);
PCBoxes *ov16_0223E228(BattleSystem *battleSys);

/**
 * @brief Get the terrain type for the battle.
 *
 * @param battleSys
 * @return The battle's terrain.
 */
enum BattleTerrain BattleSystem_Terrain(BattleSystem *battleSys);
int BattleSystem_GetBackgroundId(BattleSystem *battleSys);
int BattleSystem_MapHeader(BattleSystem *battleSys);
int BattleSystem_Partner(BattleSystem *battleSys, int param1);

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

/**
 * @brief Use an item from the bag on the given battler.
 *
 * @param battleSys
 * @param battler   The battler who is using the item
 * @param partySlot The party slot the battler is targeting with the item
 * @param moveSlot  Optional parameter for PP-restoring items
 * @param item      The item being used
 * @return TRUE if the item has an effect; FALSE otherwise
 */
BOOL BattleSystem_UseBagItem(BattleSystem *battleSys, int battler, int partySlot, int moveSlot, int item);
u32 BattleSystem_BattleStatus(BattleSystem *battleSys);

/**
 * @brief Get the time of day.
 *
 * @param battleSys
 * @return The time of day (e.g., morning, day, night)
 */
enum Time BattleSystem_Time(BattleSystem *battleSys);
int ov16_0223EC04(BattleSystem *battleSys);
u8 ov16_0223EC58(BattleSystem *battleSys, int param1, u8 param2);
u16 Battle_FindEvolvingPartyMember(FieldBattleDTO *param0, int *param1, int *param2);
u8 ov16_0223ED60(BattleSystem *battleSys);
u8 ov16_0223ED6C(BattleSystem *battleSys);
int BattleSystem_NumSafariBalls(BattleSystem *battleSys);
void BattleSystem_SetSafariBalls(BattleSystem *battleSys, int param1);
Options *ov16_0223EDA4(BattleSystem *battleSys);

/**
 * @brief Check if battle animations are turned on.
 *
 * @param battleSys
 * @return TRUE if battle animations are enabled, FALSE if not.
 */
BOOL BattleSystem_AnimationsOn(BattleSystem *battleSys);
int ov16_0223EDE0(BattleSystem *battleSys);
u8 BattleSystem_TextSpeed(BattleSystem *battleSys);
int BattleSystem_Ruleset(BattleSystem *battleSys);
PokemonAnimationSys *BattleSystem_GetPokemonAnimationSystem(BattleSystem *battleSys);
ChatotCry *BattleSystem_ChatotVoice(BattleSystem *battleSys, int param1);
void ov16_0223EE70(BattleSystem *battleSys);
void ov16_0223EF2C(BattleSystem *battleSys, int param1, int param2);
void ov16_0223EF48(BattleSystem *battleSys, Pokemon *param1);
void ov16_0223EF68(BattleSystem *battleSys, Pokemon *param1);
void ov16_0223EF8C(BattleSystem *battleSys);
u8 *ov16_0223F1E8(BattleSystem *battleSys);
u16 *ov16_0223F1F0(BattleSystem *battleSys);
int ov16_0223F1F8(BattleSystem *battleSys);
u16 *ov16_0223F204(BattleSystem *battleSys);
u16 *ov16_0223F210(BattleSystem *battleSys);
int BattleSystem_FieldWeather(BattleSystem *battleSys);
u8 BattleSystem_GetCatchingTutorialState(BattleSystem *battleSys);
void CatchingTutorial_SetCatchingTutorialState(BattleSystem *battleSys, u8 param1);
int ov16_0223F240(BattleSystem *battleSys);
void ov16_0223F24C(BattleSystem *battleSys, int param1);
void ov16_0223F268(BattleSystem *battleSys);
void BattleSystem_SetCommandSelectionFlags(BattleSystem *battleSys, int flags);
void ov16_0223F290(BattleSystem *battleSys, int param1);
void *Battle_WaitDial(BattleSystem *battleSys);
void Battle_SetWaitDial(BattleSystem *battleSys, void *param1);
UnkStruct_ov16_0223E0C8 *ov16_0223F2AC(BattleSystem *battleSys, int param1);
u8 *ov16_0223F2B8(UnkStruct_ov16_0223E0C8 *param0, int param1);
void ov16_0223F2CC(UnkStruct_ov16_0223E0C8 *param0, int param1, int param2);
void ov16_0223F2E4(UnkStruct_ov16_0223E0C8 *param0, int param1, int param2);
void ov16_0223F2FC(UnkStruct_ov16_0223E0C8 *param0, int param1, int param2);
void ov16_0223F314(BattleSystem *battleSys, int param1);
void ov16_0223F320(BattleSystem *battleSys, u8 *param1);
void ov16_0223F32C(BattleSystem *battleSys, u8 *param1);
void ov16_0223F338(BattleSystem *battleSys, u8 param1);
void ov16_0223F344(BattleSystem *battleSys, u8 param1);
void ov16_0223F350(BattleSystem *battleSys, u8 param1);
void *ov16_0223F35C(BattleSystem *battleSys, int param1);
void ov16_0223F36C(BattleSystem *battleSys);
void ov16_0223F3BC(BattleSystem *battleSys);
void ov16_0223F3EC(BattleSystem *battleSys);
void ov16_0223F414(BattleSystem *battleSys);
u8 BattleSystem_ResultMask(BattleSystem *battleSys);
void BattleSystem_SetResultFlag(BattleSystem *battleSys, u8 param1);
u8 ov16_0223F450(BattleSystem *battleSys);
void BattleSystem_SetRedHPSoundFlag(BattleSystem *battleSys, u8 param1);
u8 ov16_0223F47C(BattleSystem *battleSys);
void ov16_0223F48C(BattleSystem *battleSys, u8 param1);
void ov16_0223F4B0(BattleSystem *battleSys, int param1);
u16 BattleSystem_RandNext(BattleSystem *battleSys);
u32 ov16_0223F4E8(BattleSystem *battleSys);
void ov16_0223F4F4(BattleSystem *battleSys, u32 param1);
void BattleSystem_Record(BattleSystem *battleSys, int param1, u8 param2);
BOOL ov16_0223F530(BattleSystem *battleSys, int param1, u8 *param2);
u8 ov16_0223F58C(BattleSystem *battleSys, u8 *param1);
void ov16_0223F638(BattleSystem *battleSys, u16 param1, u8 *param2);
u16 ov16_0223F6E4(BattleSystem *battleSys);
int ov16_0223F6F0(BattleSystem *battleSys, u16 param1);
u16 BattleSystem_TrainerItems(BattleSystem *battleSys, int param1, int param2);
u32 BattleSystem_RecordingStopped(BattleSystem *battleSys);
void BattleSystem_SetStopRecording(BattleSystem *battleSys, int flag);
BOOL ov16_0223F7A4(BattleSystem *battleSys);
void BattleSystem_ShowStopPlaybackButton(BattleSystem *battleSys);
u8 BattleSystem_RecordedChatter(BattleSystem *battleSys, int param1);
void ov16_0223F858(BattleSystem *battleSys, u8 *param1);
void ov16_0223F87C(BattleSystem *battleSys, u8 *param1);
void ov16_0223F8AC(BattleSystem *battleSys, Sprite **param1);
void BattleSystem_SetGaugePriority(BattleSystem *battleSys, int param1);

/**
 * @brief Calculate the money penalty for losing a battle.
 *
 * @param party         The player's party; used to scale the penalty with the
 *                      highest-level member
 * @param trainerInfo   The player's state; used to scale the penalty with the
 *                      number of badges obtained
 * @return The total amount of money to be deducted from the player
 */
u32 BattleSystem_CalcMoneyPenalty(Party *party, TrainerInfo *trainerInfo);
void BattleSystem_DexFlagSeen(BattleSystem *battleSys, int param1);
void ov16_0223F9A0(BattleSystem *battleSys, int param1);

/**
 * @brief Checks if the player has previously caught a member of this species.
 *
 * @param battleSys
 * @param species
 * @return TRUE if the player has previously caught a member of the given species,
 * FALSE if not.
 */
BOOL BattleSystem_CaughtSpecies(BattleSystem *battleSys, int species);
void Battle_SetDefaultBlend(void);
u8 ov16_0223F9FC(BattleSystem *battleSys, int param1, int param2, int param3, int param4);

/**
 * @brief Print a BattleMessage to the main text display window.
 *
 * @param battleSys
 * @param msgLoader
 * @param battleMsg
 * @param renderDelay   Delay in flames applied to rendering between each character of the string.
 * @return
 */
u8 BattleMessage_Print(BattleSystem *battleSys, MessageLoader *msgLoader, BattleMessage *battleMsg, int renderDelay);
u8 BattleMessage_PrintToWindow(BattleSystem *battleSys, Window *param1, MessageLoader *param2, BattleMessage *param3, int param4, int param5, int param6, int param7, int param8);

#endif // POKEPLATINUM_OV16_0223DF00_H
