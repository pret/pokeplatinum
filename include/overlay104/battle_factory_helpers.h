#ifndef POKEPLATINUM_BATTLE_FACTORY_HELPERS_H
#define POKEPLATINUM_BATTLE_FACTORY_HELPERS_H

#include "overlay104/battle_factory.h"
#include "overlay104/frontier_opponents.h"
#include "overlay104/struct_ov104_02230BE4.h"

#include "field_battle_data_transfer.h"

typedef struct {
    u16 trainerIDMax;
    u16 setIDMin;
    u16 setIDMax;
    u8 ivs;
    u8 canBeUpgraded;
} BattleFactoryPokemonPool;

void BattleFactory_PickOpponentTrainers(u8 challengeType, int currentRound, u16 trainerIDs[], u8 numTrainers);
const BattleFactoryPokemonPool *BattleFactory_GetPokemonPoolForTrainer(int trainerID, BOOL isOpenLevel);
BOOL BattleFactory_SelectPokemonFromPool(const u16 excludedSpecies[], const u16 excludedItems[], int numExcluded, int numMons, u16 monSetIDs[], int unused, const BattleFactoryPokemonPool *pool, u16 tradeCount, u8 ivList[]);
u8 BattleFactory_GetPlayerPartySize(u8 challengeType);
u8 BattleFactory_GetOpponentPartySize(u8 challengeType, BOOL param1);
void BattleFactory_SelectInitialRentalOptions(u16 round, u8 isOpenLevel, u16 *monSetIDs, FrontierPokemon *mons, u8 *ivs, u32 *personalities, u16 tradeCount, u16 *excludedSpecies, u16 *unused);
void BattleFactory_SelectInitialOpponentMons(u8 numMons, u16 trainerID, u8 isOpenLevel, FrontierPokemon *excludedMons, u16 *monSetIDs, FrontierPokemon *mons, u8 *ivList, u32 *personalities, int numExcluded);
FieldBattleDTO *BattleFactory_SetupBattle(BattleFactory *battleFactory, FieldFrontierDTO *fieldData);
u8 BattleFactory_GetPokemonLevel(BattleFactory *battleFactory);
void BattleFactory_CreateInitialRentalParty(BattleFactory *battleFactory);
void BattleFactory_UpdatePartnersParty(BattleFactory *battleFactory);
BOOL BattleFactory_IsMultiplayerChallenge(u8 challengeType);
u16 BattleFactory_GetCurrentRound(BattleFactory *battleFactory);

#endif // POKEPLATINUM_BATTLE_FACTORY_HELPERS_H
