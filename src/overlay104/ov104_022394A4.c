#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_0204AFC4.h"

#include "overlay104/ov104_0222DCE0.h"
#include "overlay104/ov104_0223A0C4.h"

#include "savedata.h"
#include "unk_0206B9D8.h"

u16 ov104_02239588(BattleTower *battleTower, u16 param1);
void ov104_022395A0(BattleTower *battleTower, u16 param1);
u16 ov104_022395B4(BattleTower *battleTower);
u16 ov104_022395D8(BattleTower *battleTower);

void ov104_022394A4(BattleTower *battleTower, SaveData *saveData)
{
    switch (battleTower->challengeMode) {
    case 4:
    case 5:
        ov104_0223A30C(saveData, battleTower->unk_78, battleTower->unk_0C - 1);
        break;
    case 2:
    case 3:
    case 6:
        ov104_0223A0C4(battleTower, &(battleTower->unk_78[0]), battleTower->unk_3E[(battleTower->unk_0C - 1) * 2 + 0], battleTower->partySize, NULL, NULL, NULL, battleTower->heapID);

        u16 v1[2];
        u16 v2[2];

        for (int v0 = 0; v0 < battleTower->partySize; v0++) {
            v1[v0] = battleTower->unk_78[0].unk_30[v0].species;
            v2[v0] = battleTower->unk_78[0].unk_30[v0].item;
        }

        ov104_0223A0C4(battleTower, &(battleTower->unk_78[1]), battleTower->unk_3E[(battleTower->unk_0C - 1) * 2 + 1], battleTower->partySize, v1, v2, NULL, battleTower->heapID);
        break;
    case 1:
    case 0:
    default:
        ov104_0223A0C4(battleTower, &(battleTower->unk_78[0]), battleTower->unk_3E[battleTower->unk_0C - 1], battleTower->partySize, NULL, NULL, NULL, battleTower->heapID);
        break;
    }
}

u16 ov104_02239588(BattleTower *battleTower, u16 param1)
{
    return ov104_0222E10C(battleTower->unk_78[param1].unk_00.trainerType);
}

void ov104_022395A0(BattleTower *battleTower, u16 param1)
{
    battleTower->unk_10_1 = param1;
}

u16 ov104_022395B4(BattleTower *battleTower)
{
    ++battleTower->unk_0D;

    if (battleTower->challengeMode != 6) {
        battleTower->unk_08 = sub_0206BFF0(battleTower->unk_08);
    }

    return ++battleTower->unk_0C;
}

u16 ov104_022395D8(BattleTower *battleTower)
{
    if ((u32)battleTower->unk_1A + battleTower->unk_0D > 0xFFFF) {
        return 0xFFFF;
    } else {
        return battleTower->unk_1A + battleTower->unk_0D;
    }
}
