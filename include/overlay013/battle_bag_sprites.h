#ifndef POKEPLATINUM_BATTLE_BAG_SPRITES
#define POKEPLATINUM_BATTLE_BAG_SPRITES

#include "overlay013/battle_bag.h"

void BattleBagSprites_InitializeSprites(BattleBag *battleBag);
void BattleBagSprites_CleanupSprites(BattleBag *battleBag);
void BattleBagSprites_SetupScreen(BattleBag *battleBag, enum BattleBagScreen screen);
void BattleBagSprites_SetupCursor(BattleBag *battleBag, enum BattleBagScreen screen);
void BattleBagSprites_DisableCursor(BattleBag *battleBag);
void BattleBagSprites_SetupCatchTutorialCursor(BattleBag *battleBag, enum BattleBagScreen screen);

#endif // POKEPLATINUM_BATTLE_BAG_SPRITES
