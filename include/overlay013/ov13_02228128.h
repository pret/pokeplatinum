#ifndef POKEPLATINUM_OV13_02228128_H
#define POKEPLATINUM_OV13_02228128_H

#include "overlay013/battle_bag.h"

#define BATTLE_BAG_POCKET_MENU_SCREEN_BUTTON_OFFSET   6
#define BATTLE_BAG_USE_ITEM_MENU_SCREEN_BUTTON_OFFSET 15

void BattleBagButtons_InitializeButtonData(BattleBag *battleBag, u16 *screenData);
void BattleBagButtons_PressButton(BattleBag *battleBag, u8 pressedButton, u8 unused);
void BattleBagButtons_Tick(BattleBag *battleBag);
void BattleBagButtons_InitializeButtons(BattleBag *battleBag, u8 screen);

#endif // POKEPLATINUM_OV13_02228128_H
