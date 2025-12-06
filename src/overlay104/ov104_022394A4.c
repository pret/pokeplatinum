#include <nitro.h>
#include <string.h>

#include "generated/battle_tower_modes.h"

#include "struct_defs/battle_tower.h"

#include "overlay104/ov104_0222DCE0.h"
#include "overlay104/ov104_0223A0C4.h"

#include "savedata.h"
#include "unk_0206B9D8.h"

u16 ov104_02239588(BattleTower *battleTower, u16 param1);
void ov104_022395A0(BattleTower *battleTower, u16 param1);
u16 ov104_022395B4(BattleTower *battleTower);
u16 ov104_022395D8(BattleTower *battleTower);

void BattleTower_CreateOpponentParties(BattleTower *battleTower, SaveData *saveData)
{
    switch (battleTower->challengeMode) {
    case BATTLE_TOWER_MODE_WIFI:
    case BATTLE_TOWER_MODE_5:
        ov104_0223A30C(saveData, battleTower->opponentsDataDTO, battleTower->nextOpponentNum - 1);
        break;
    case BATTLE_TOWER_MODE_MULTI:
    case BATTLE_TOWER_MODE_LINK_MULTI:
    case BATTLE_TOWER_MODE_6:
        BattleTower_CreateTrainerParty(battleTower, &(battleTower->opponentsDataDTO[0]), battleTower->trainerIDs[(battleTower->nextOpponentNum - 1) * 2 + 0], battleTower->partySize, NULL, NULL, NULL, battleTower->heapID);

        u16 species[2];
        u16 items[2];

        for (int v0 = 0; v0 < battleTower->partySize; v0++) {
            species[v0] = battleTower->opponentsDataDTO[0].monDataDTO[v0].species;
            items[v0] = battleTower->opponentsDataDTO[0].monDataDTO[v0].item;
        }

        BattleTower_CreateTrainerParty(battleTower, &(battleTower->opponentsDataDTO[1]), battleTower->trainerIDs[(battleTower->nextOpponentNum - 1) * 2 + 1], battleTower->partySize, species, items, NULL, battleTower->heapID);
        break;
    case BATTLE_TOWER_MODE_DOUBLE:
    case BATTLE_TOWER_MODE_SINGLE:
    default:
        BattleTower_CreateTrainerParty(battleTower, &(battleTower->opponentsDataDTO[0]), battleTower->trainerIDs[battleTower->nextOpponentNum - 1], battleTower->partySize, NULL, NULL, NULL, battleTower->heapID);
        break;
    }
}

u16 ov104_02239588(BattleTower *battleTower, u16 param1)
{
    return ov104_0222E10C(battleTower->opponentsDataDTO[param1].trDataDTO.trainerType);
}

void ov104_022395A0(BattleTower *battleTower, u16 param1)
{
    battleTower->unk_10_1 = param1;
}

u16 ov104_022395B4(BattleTower *battleTower)
{
    ++battleTower->unk_0D;

    if (battleTower->challengeMode != BATTLE_TOWER_MODE_6) {
        battleTower->unk_08 = sub_0206BFF0(battleTower->unk_08);
    }

    return ++battleTower->nextOpponentNum;
}

u16 ov104_022395D8(BattleTower *battleTower)
{
    if ((u32)battleTower->unk_1A + battleTower->unk_0D > 0xFFFF) {
        return 0xFFFF;
    } else {
        return battleTower->unk_1A + battleTower->unk_0D;
    }
}
