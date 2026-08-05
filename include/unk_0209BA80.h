#ifndef POKEPLATINUM_UNK_0209BA80_H
#define POKEPLATINUM_UNK_0209BA80_H

#include "struct_defs/battle_tower.h"

#include "overlay104/ov104_02239C58.h"

void sub_0209BA80(void *param0);
BOOL BattleTower_SendTrainerIDListCmd(BattleTower *battleTower);
BOOL WFCFacilitySelector_SendFacilityAndLatestStreak(WFCFacilitySelector *selector);
BOOL WFCFacilitySelector_SendDidDropOutCmd(WFCFacilitySelector *selector, u16 didDropOut);
BOOL WFCFacilitySelector_SendSelectedMons(WFCFacilitySelector *selector, u16 selectedSlot1, u16 selectedSlot2);
BOOL WFCFacilitySelector_SendStreakDeletionChoice(WFCFacilitySelector *selector, u16 streakDeletionChoice);
BOOL WFCFacilitySelector_SendPlayAgainChoice(WFCFacilitySelector *selector, u16 notPlayingAgain);

#endif // POKEPLATINUM_UNK_0209BA80_H
