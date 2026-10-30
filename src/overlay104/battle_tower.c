#include "overlay104/battle_tower.h"

#include <nitro.h>

#include "generated/battle_tower_modes.h"

#include "struct_defs/battle_tower.h"

#include "overlay104/battle_tower_helpers.h"
#include "overlay104/frontier_opponents.h"

#include "savedata.h"
#include "unk_0206B9D8.h"

u16 BattleTower_GetObjectIDFromOpponentIDInFrontierScript(BattleTower *battleTower, u16 opponentID);
void BattleTower_SetBeatPalmer(BattleTower *battleTower, u16 value);
u16 BattleTower_GetCurrentStreak(BattleTower *battleTower);

void BattleTower_CreateOpponentParties(BattleTower *battleTower, SaveData *saveData)
{
    switch (battleTower->challengeMode) {
    case BATTLE_TOWER_MODE_WIFI:
    case BATTLE_TOWER_MODE_5:
        BattleTower_CreateWiFiTrainerParty(saveData, battleTower->opponents, battleTower->nextOpponentNum - 1);
        break;
    case BATTLE_TOWER_MODE_MULTI:
    case BATTLE_TOWER_MODE_LINK_MULTI:
    case BATTLE_TOWER_MODE_6:
        BattleTower_CreateTrainerParty(battleTower, &battleTower->opponents[0], battleTower->trainerIDs[(battleTower->nextOpponentNum - 1) * 2 + 0], battleTower->partySize, NULL, NULL, NULL, battleTower->heapID);

        u16 species[2];
        u16 items[2];

        for (int v0 = 0; v0 < battleTower->partySize; v0++) {
            species[v0] = battleTower->opponents[0].pokemon[v0].species;
            items[v0] = battleTower->opponents[0].pokemon[v0].item;
        }

        BattleTower_CreateTrainerParty(battleTower, &battleTower->opponents[1], battleTower->trainerIDs[(battleTower->nextOpponentNum - 1) * 2 + 1], battleTower->partySize, species, items, NULL, battleTower->heapID);
        break;
    case BATTLE_TOWER_MODE_DOUBLE:
    case BATTLE_TOWER_MODE_SINGLE:
    default:
        BattleTower_CreateTrainerParty(battleTower, &battleTower->opponents[0], battleTower->trainerIDs[battleTower->nextOpponentNum - 1], battleTower->partySize, NULL, NULL, NULL, battleTower->heapID);
        break;
    }
}

u16 BattleTower_GetObjectIDFromOpponentIDInFrontierScript(BattleTower *battleTower, u16 opponentID)
{
    return BattleFrontier_GetObjectIDFromTrainerClass(battleTower->opponents[opponentID].trainer.trainerType);
}

void BattleTower_SetBeatPalmer(BattleTower *battleTower, u16 value)
{
    battleTower->beatPalmer = value;
}

u16 BattleTower_IncrementCurrentBattle(BattleTower *battleTower)
{
    ++battleTower->currentBattle;

    if (battleTower->challengeMode != BATTLE_TOWER_MODE_6) {
        battleTower->rng = BattleTower_RngNext(battleTower->rng);
    }

    return ++battleTower->nextOpponentNum;
}

u16 BattleTower_GetCurrentStreak(BattleTower *battleTower)
{
    if ((u32)battleTower->startingStreak + battleTower->currentBattle > 0xFFFF) {
        return 0xFFFF;
    } else {
        return battleTower->startingStreak + battleTower->currentBattle;
    }
}
