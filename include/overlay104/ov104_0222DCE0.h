#ifndef POKEPLATINUM_OV104_0222DCE0_H
#define POKEPLATINUM_OV104_0222DCE0_H

#include "generated/object_events_gfx.h"

#include "struct_defs/battle_frontier_pokemon_data.h"
#include "struct_defs/battle_frontier_trainer_data.h"

#include "overlay104/frontier_data_transfer.h"

#include "field_battle_data_transfer.h"
#include "party.h"
#include "pokemon.h"
#include "savedata.h"
#include "sprite.h"
#include "string_template.h"
#include "trainer_info.h"

BattleFrontierTrainerData *BattleFrontier_GetTrainerDataFromTrainerIDAndNarcID(u16 battleTowerTrainerID, enum HeapID heapID, enum NarcID narcID);
void BattleTower_GetMonDataFromSetIDAndNarcID(BattleFrontierPokemonData *monData, int narcIdx, enum NarcID narcID);
BattleFrontierTrainerData *BattleFrontier_GetTrainerData(FrontierTrainerDataDTO *trDataDTO, int battleTowerTrainerID, enum HeapID heapID, enum NarcID narcID);
void FrontierPokemonDataDTO_InitPokemon(const FrontierPokemonDataDTO *pokemonDTO, Pokemon *mon, u8 param2);
u16 BattleTower_GetObjectIDFromTrainerClass(u8 trainerClass);
void ov104_0222E134(SaveData *saveData, Pokemon *param1);
void ov104_0222E1C0(SaveData *saveData, Party *party, Pokemon *param2);
void BattleCastle_UpdateMonSpriteAnimID(Sprite *sprite, u8 animID);
void BattleCastle_UpdateMonSpritePosition(Sprite *sprite, s16 x, s16 y, u8 isSelected);
u8 BattleCastle_GetPokeIconAnimID(u16 hp, u16 maxHp);
void BattleFrontier_LoadTrainer(FrontierDataDTO *opponent, u16 trainerID, enum HeapID heapID, enum NarcID narcID);
void FieldBattleDTO_InitFrontierTrainer(FieldBattleDTO *battleDTO, FrontierTrainerDataDTO *trDataDTO, int unused, int battlerId, enum HeapID heapID);
u32 BattleFrontier_LoadOpponentMonData(FrontierPokemonDataDTO *frontierMon, u16 narcIdx, int unused, u8 ivs, u32 personality, int heapID, int narcID);
void ov104_0222E330(FrontierPokemonDataDTO *mons, u16 narcIdx[], u8 ivList[], u32 personalities[], u32 resultPersonalities[], int numMons, int heapID, int narcID);
BOOL ov104_0222E3E4(BattleFrontierTrainerData *param0, const u16 param1[], const u16 param2[], int param3, int param4, u16 param5[], int param6);
void ov104_0222E4BC(u8 numMons, u16 trainerID, u16 trainerID2, u16 *monSetIDs, FrontierPokemonDataDTO *param4, u8 *ivs, u32 *personalities, u8 isMultiplayerChallenge);
void BattleFrontier_SetPartnerInStrTemplate(StringTemplate *template, u32 idx);
enum ObjectEventGfx BattleFrontier_GetPlayerObjEventGfx(const TrainerInfo *playerInfo);
void BattleFrontier_FlagGeonetLinkInfo(SaveData *saveData);

#endif // POKEPLATINUM_OV104_0222DCE0_H
