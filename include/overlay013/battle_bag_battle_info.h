#ifndef POKEPLATINUM_BATTLE_BAG_BATTLE_INFO
#define POKEPLATINUM_BATTLE_BAG_BATTLE_INFO

#include "struct_decls/battle_system.h"

#include "bag.h"
#include "trainer_info.h"

typedef struct BattleBagBattleInfo {
    BattleSystem *battleSystem;
    TrainerInfo *trainerInfo;
    Bag *bag;
    u32 heapID;
    s32 battler;
    BOOL isInCatchTutorial;
    u32 embargoRemainingTurns;
    u16 selectedBattleBagItem;
    u8 selectedBattleBagPocket;
    u8 lastUsedItemPocket;
    u16 lastUsedItem;
    u8 hasTwoOpponents;
    u8 opponentHidden; // Has used fly, bounce, dig, etc
    u8 opponentSubstituted;
    u8 isCursorEnabled;
    u8 battleBagExited;
    u8 pocketCurrentPagePositions[BATTLE_POCKET_MAX];
    u8 pocketCurrentPages[BATTLE_POCKET_MAX];
} BattleBagBattleInfo;

#endif // POKEPLATINUM_BATTLE_BAG_BATTLE_INFO
