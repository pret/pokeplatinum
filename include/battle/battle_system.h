#ifndef POKEPLATINUM_BATTLE_SYSTEM_H
#define POKEPLATINUM_BATTLE_SYSTEM_H

#include "constants/rtc.h"
#include "generated/trainer_message_types.h"

#include "struct_decls/battle_system.h"
#include "struct_decls/pc_boxes_decl.h"
#include "struct_decls/pokedexdata_decl.h"
#include "struct_defs/chatot_cry.h"
#include "struct_defs/trainer.h"

#include "battle/battle_context.h"
#include "battle/battle_message.h"
#include "battle/party_gauge.h"
#include "battle/pokemon_sprite_data.h"
#include "battle/struct_ov16_0225BFFC_decl.h"
#include "battle/struct_ov16_02268520.h"
#include "battle/struct_ov16_02268A14_decl.h"
#include "battle/struct_ov16_0226D160_decl.h"
#include "battle_anim/battle_anim_system.h"

#include "bag.h"
#include "bg_window.h"
#include "field_battle_data_transfer.h"
#include "font_special_chars.h"
#include "game_options.h"
#include "message.h"
#include "palette.h"
#include "party.h"
#include "pokemon.h"
#include "pokemon_anim.h"
#include "pokemon_sprite.h"
#include "render_window.h"
#include "sprite_system.h"
#include "string_gf.h"
#include "string_template.h"
#include "trainer_info.h"
#include "unk_0201567C.h"

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
Window *BattleSystem_GetWindow(BattleSystem *battleSys, int idx);
u32 BattleSystem_GetBattleType(BattleSystem *battleSys);
BattleContext *BattleSystem_GetBattleContext(BattleSystem *battleSys);
BattlerData *BattleSystem_GetBattlerData(BattleSystem *battleSys, int battler);
int BattleSystem_GetMaxBattlers(BattleSystem *battleSys);
Party *BattleSystem_GetParty(BattleSystem *battleSys, int battler);

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
int BattleSystem_GetPartyCount(BattleSystem *battleSys, int battler);

/**
 * @brief Get a Pokemon from the given battler's party, choosing it from the
 * given party slot.
 *
 * @param battleSys
 * @param battler
 * @param slot      Index of the Pokemon in the party to retrieve.
 * @return Pointer to the Pokemon struct in that battler's party slot.
 */
Pokemon *BattleSystem_GetPartyPokemon(BattleSystem *battleSys, int battler, int slot);
PokemonSpriteManager *BattleSystem_GetPokemonSpriteManager(BattleSystem *battleSys);
BattleAnimSystem *BattleSystem_GetBattleAnimSystem(BattleSystem *battleSys);
SpriteSystem *BattleSystem_GetSpriteSystem(BattleSystem *battleSys);
SpriteManager *BattleSystem_GetSpriteManager(BattleSystem *battleSys);
UnkStruct_ov16_02268520 *ov16_0223E020(BattleSystem *battleSys, int param1);
UnkStruct_ov16_02268A14 *ov16_0223E02C(BattleSystem *battleSys);
PartyGauge *BattleSystem_GetPartyGauge(BattleSystem *battleSys, enum PartyGaugeSide partyGaugeSide);
void BattleSystem_SetPartyGauge(BattleSystem *battleSys, enum PartyGaugeSide partyGaugeSide, PartyGauge *partyGauge);
FontSpecialCharsContext *BattleSystem_GetSpecialCharsHP(BattleSystem *battleSys);
FontSpecialCharsContext *BattleSystem_GetSpecialCharsLevel(BattleSystem *battleSys);
MessageLoader *BattleSystem_GetMessageLoader(BattleSystem *battleSys);
MessageLoader *BattleSystem_GetAttackMessageLoader(BattleSystem *battleSys);
PaletteData *BattleSystem_GetPaletteData(BattleSystem *battleSys);
Pokedex *BattleSystem_GetPokedex(BattleSystem *battleSys);
u8 *BattleSystem_GetServerMessage(BattleSystem *battleSys);
u8 *BattleSystem_GetClientMessage(BattleSystem *battleSys);
u16 *BattleSystem_GetServerReadIndex(BattleSystem *battleSys);
u16 *BattleSystem_GetServerWriteIndex(BattleSystem *battleSys);
u16 *BattleSystem_GetServerEndIndex(BattleSystem *battleSys);
u16 *BattleSystem_GetClientReadIndex(BattleSystem *battleSys);
u16 *BattleSystem_GetClientWriteIndex(BattleSystem *battleSys);
u16 *BattleSystem_GetClientEndIndex(BattleSystem *battleSys);
PokemonSpriteData *BattleSystem_GetPokemonSpriteData(BattleSystem *battleSys);
StringTemplate *BattleSystem_GetStringTemplate(BattleSystem *battleSys);
String *BattleSystem_GetMsgBuffer(BattleSystem *battleSys);

/**
 * @brief Get the trainer ID for a particular battler.
 *
 * @param battleSys
 * @param battler
 * @return The battler's trainer ID
 */
u16 Battler_GetTrainerID(BattleSystem *battleSys, int battler);
Trainer *BattleSystem_GetTrainer(BattleSystem *battleSys, int battler);

/**
 * @brief Get the trainer info for a particular battler.
 *
 * @param battleSys
 * @param battler
 * @return The trainer info for the requested battler.
 */
TrainerInfo *BattleSystem_GetTrainerInfo(BattleSystem *battleSys, int battler);
Bag *BattleSystem_GetBag(BattleSystem *battleSys);
BagCursor *BattleSystem_GetBagCursor(BattleSystem *battleSys);
u32 BattleSystem_GetTrainerGender(BattleSystem *battleSys, int battler);

/**
 * @brief Get a battler of a particular type.
 *
 * @param battleSys
 * @param type      The type of battler.
 * @return ID of the battler of the given type.
 */
int BattleSystem_GetBattlerOfType(BattleSystem *battleSys, int type);
u8 BattleSystem_GetBattlerType(BattleSystem *battleSys, int battler);
u8 BattleSystem_GetBattlerSide(BattleSystem *battleSys, int battler);
UnkStruct_020157E4 *ov16_0223E220(BattleSystem *battleSys);
PCBoxes *BattleSystem_GetPCBoxes(BattleSystem *battleSys);

/**
 * @brief Get the terrain type for the battle.
 *
 * @param battleSys
 * @return The battle's terrain.
 */
enum BattleTerrain BattleSystem_GetTerrain(BattleSystem *battleSys);
enum BattleBackground BattleSystem_GetBackground(BattleSystem *battleSys);
int BattleSystem_GetMapHeader(BattleSystem *battleSys);
int BattleSystem_GetPartner(BattleSystem *battleSys, int battler);

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
int BattleSystem_GetEnemyInSlot(BattleSystem *battleSys, int attacker, int slot);

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
u32 BattleSystem_GetBattleStatusMask(BattleSystem *battleSys);

/**
 * @brief Get the time of day.
 *
 * @param battleSys
 * @return The time of day (e.g., morning, day, night)
 */
enum TimeOfDay BattleSystem_GetTime(BattleSystem *battleSys);
int BattleSystem_GetBackgroundTimeOffset(BattleSystem *battleSys);
u8 ov16_0223EC58(BattleSystem *battleSys, int battler, u8 param2);
u16 Battle_FindEvolvingPartyMember(FieldBattleDTO *dto, int *outPartySlot, int *outEvoType);
u8 ov16_0223ED60(BattleSystem *battleSys);
u8 BattleSystem_GetSafariEscapeCount(BattleSystem *battleSys);
int BattleSystem_GetNumSafariBalls(BattleSystem *battleSys);
void BattleSystem_SetNumSafariBalls(BattleSystem *battleSys, int value);
Options *BattleSystem_GetOptions(BattleSystem *battleSys);

/**
 * @brief Check if battle animations are turned on.
 *
 * @param battleSys
 * @return TRUE if battle animations are enabled, FALSE if not.
 */
BOOL BattleSystem_AreAnimationsOn(BattleSystem *battleSys);
int BattleSystem_GetOptionsFrame(BattleSystem *battleSys);
u8 BattleSystem_GetTextSpeed(BattleSystem *battleSys);
int BattleSystem_GetBattleStyle(BattleSystem *battleSys);
PokemonAnimManager *BattleSystem_GetPokemonAnimManager(BattleSystem *battleSys);
ChatotCry *BattleSystem_GetChatotCry(BattleSystem *battleSys, int battler);
void BattleSystem_SetBurmyForm(BattleSystem *battleSys);
void ov16_0223EF2C(BattleSystem *battleSys, int param1, int param2);
void BattleSystem_EnqueuePokemonHistory(BattleSystem *battleSys, Pokemon *mon);
void BattleSystem_InitCaptureAttempt(BattleSystem *battleSys, Pokemon *mon);
void ov16_0223EF8C(BattleSystem *battleSys);
u8 *ov16_0223F1E8(BattleSystem *battleSys);
u16 *ov16_0223F1F0(BattleSystem *battleSys);
int BattleSystem_GetVisistedContestHall(BattleSystem *battleSys);
u16 *ov16_0223F204(BattleSystem *battleSys);
u16 *ov16_0223F210(BattleSystem *battleSys);
int BattleSystem_GetFieldWeather(BattleSystem *battleSys);
u8 BattleSystem_GetCatchingTutorialLowHP(BattleSystem *battleSys);
void BattleSystem_SetCatchingTutorialLowHP(BattleSystem *battleSys, u8 value);
int BattleSystem_GetMetBebe(BattleSystem *battleSys);
void BattleSystem_TryIncrementRecordValue(BattleSystem *battleSys, int id);
void BattleSystem_TryIncrementTrainerScoreCaughtSpecies(BattleSystem *battleSys);
void BattleSystem_SetCommandSelectionFlags(BattleSystem *battleSys, int flags);
void ov16_0223F290(BattleSystem *battleSys, int param1);
WaitDial *BattleSystem_GetWaitDial(BattleSystem *battleSys);
void BattleSystem_SetWaitDial(BattleSystem *battleSys, WaitDial *waitDial);
PokemonSpriteData *BattleSystem_GetPokemonSpriteDataByIndex(BattleSystem *battleSys, int battler);
u8 *PokemonSpriteData_GetTiles(PokemonSpriteData *pokemonSpriteData, int idx);
void PokemonSpriteData_SetNarcID(PokemonSpriteData *pokemonSpriteData, int idx, int value);
void PokemonSpriteData_SetPalette(PokemonSpriteData *pokemonSpriteData, int idx, int value);
void PokemonSpriteData_SetYOffset(PokemonSpriteData *pokemonSpriteData, int idx, int value);
void ov16_0223F314(BattleSystem *battleSys, int param1);
void ov16_0223F320(BattleSystem *battleSys, u8 *param1);
void ov16_0223F32C(BattleSystem *battleSys, u8 *param1);
void ov16_0223F338(BattleSystem *battleSys, u8 param1);
void ov16_0223F344(BattleSystem *battleSys, u8 param1);
void BattleSystem_SetCommandIsEndWait(BattleSystem *battleSys, u8 value);
void *BattleSystem_GetHealthbar(BattleSystem *battleSys, int battler);
void ov16_0223F36C(BattleSystem *battleSys);
void ov16_0223F3BC(BattleSystem *battleSys);
void ov16_0223F3EC(BattleSystem *battleSys);
void ov16_0223F414(BattleSystem *battleSys);
u8 BattleSystem_GetResultMask(BattleSystem *battleSys);
void BattleSystem_SetResultMask(BattleSystem *battleSys, u8 value);
u8 BattleSystem_GetRedHPSoundFlag(BattleSystem *battleSys);
void BattleSystem_SetRedHPSoundFlag(BattleSystem *battleSys, u8 value);
u8 BattleSystem_GetRedHPSoundEffectDelay(BattleSystem *battleSys);
void BattleSystem_SetRedHPSoundEffectDelay(BattleSystem *battleSys, u8 value);
void BattleSystem_SetCaughtBattlerIndex(BattleSystem *battleSys, int value);
u16 BattleSystem_RandNext(BattleSystem *battleSys);
u32 BattleSystem_GetSeedDTO(BattleSystem *battleSys);
void BattleSystem_SetSeedDTO(BattleSystem *battleSys, u32 value);
void BattleSystem_Record(BattleSystem *battleSys, int param1, u8 param2);
BOOL ov16_0223F530(BattleSystem *battleSys, int param1, u8 *param2);
u8 ov16_0223F58C(BattleSystem *battleSys, u8 *param1);
void ov16_0223F638(BattleSystem *battleSys, u16 param1, u8 *param2);
u16 BattleSystem_GetNetworkID(BattleSystem *battleSys);
int ov16_0223F6F0(BattleSystem *battleSys, u16 battler);
u16 BattleSystem_GetTrainerItem(BattleSystem *battleSys, int battler, int param2);
u32 BattleSystem_GetRecordingStopped(BattleSystem *battleSys);
void BattleSystem_SetStopRecording(BattleSystem *battleSys, int flag);
BOOL ov16_0223F7A4(BattleSystem *battleSys);
void BattleSystem_ShowStopPlaybackButton(BattleSystem *battleSys);
u8 BattleSystem_GetRecordedChatter(BattleSystem *battleSys, int battler);
void ov16_0223F858(BattleSystem *battleSys, u8 *param1);
void ov16_0223F87C(BattleSystem *battleSys, u8 *param1);
void ov16_0223F8AC(BattleSystem *battleSys, PokemonSprite **monSprites);
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
void BattleSystem_DexFlagSeen(BattleSystem *battleSys, int battler);
void BattleSystem_DexFlagCaught(BattleSystem *battleSys, int battler);

/**
 * @brief Checks if the player has previously caught a member of this species.
 *
 * @param battleSys
 * @param species
 * @return TRUE if the player has previously caught a member of the given species,
 * FALSE if not.
 */
BOOL BattleSystem_HasCaughtSpecies(BattleSystem *battleSys, int species);
void Battle_SetDefaultBlend(void);
u8 BattleMessage_PrintTrainerMessage(BattleSystem *battleSys, int trainerID, int battler, enum TrainerMessageType msgType, int renderDelay);

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
u8 BattleMessage_PrintToWindow(BattleSystem *battleSys, Window *window, MessageLoader *msgLoader, BattleMessage *battleMsg, int xOffset, int yOffset, int param6, int param7, int renderDelay);

#endif // POKEPLATINUM_BATTLE_SYSTEM_H
