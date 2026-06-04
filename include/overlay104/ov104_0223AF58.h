#ifndef POKEPLATINUM_OV104_0223AF58_H
#define POKEPLATINUM_OV104_0223AF58_H

#include "overlay104/struct_battle_hall.h"
#include "overlay104/struct_ov104_02230BE4.h"

#include "field_battle_data_transfer.h"

#define BATTLE_HALL_MON_SUMMARY 0xfe

void BattleHall_PickOpponentTrainerClasses(u8 selectedTypeIdx, u8 numTrainers, u8 typeRank, u8 currentBattle, u16 trainerIDs[]);
void BattleHall_PickOpponentTrainers(u8 challengeType, u8 numTrainers, int currentRound, u8 rank, u8 currentBattle, u16 trainerIDs[]);
void BattleHall_PickNextOpponentPokemon(u8 numOpponentsToPick, u8 selectedType, u8 typeRank, u8 currentBattle, u16 playersSpecies, u16 opponentIndices[], u8 battleType);
FieldBattleDTO *BattleHall_SetupBattle(BattleHall *battleHall, FieldFrontierDTO *fieldData);
u8 BattleHall_GetPlayerPartySize(u8 challengeType);
u8 BattleHall_GetOpponentPartySize(u8 challengeType);
u8 BattleHall_CursorPosToType(u8 cursorPos);
BOOL BattleHall_IsMultiPlayerChallenge(u8 challengeType);
u8 BattleHall_GetHallMatronTypeRank(BattleHall *battleHall);
u16 BattleHall_GetHighestLevelInParty(BattleHall *battleHall);
fx32 BattleHall_GetLevelSquareRoot(u32 level);

#endif // POKEPLATINUM_OV104_0223AF58_H
