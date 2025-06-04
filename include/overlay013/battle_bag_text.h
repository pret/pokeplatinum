#ifndef POKEPLATINUM_BATTLE_BAG_TEXT_H
#define POKEPLATINUM_BATTLE_BAG_TEXT_H

#include "overlay013/battle_bag.h"

void BattleBagText_InitializeWindows(BattleBag *battleBag);
void BattleBagText_InitializeScreenWindows(BattleBag *battleBag, enum BattleBagScreen screen);
void BattleBagText_ClearScreenWindows(BattleBag *battleBag);
void BattleBagText_ClearWindows(BattleBag *battleBag);
void BattleBagText_ChangeScreen(BattleBag *battleBag, enum BattleBagScreen screen);
void BattleBagText_PrintAllPocketItemInfo(BattleBag *battleBag);
void BattleBagText_PrintPocketPageNums(BattleBag *battleBag);
void BattleBagText_DisplayMessage(BattleBag *battleBag);
void BattleBagText_PrintToMessageBox(BattleBag *battleBag);

#endif // POKEPLATINUM_BATTLE_BAG_TEXT_H
