#ifndef POKEPLATINUM_BATTLE_PARTY_CONTEXT
#define POKEPLATINUM_BATTLE_PARTY_CONTEXT

#include "struct_decls/battle_system.h"

#include "party.h"

typedef struct BattlePartyContext {
    Party *party;
    void *unk_04;
    BattleSystem *battleSystem;
    u32 heapID;
    u8 unk_10;
    u8 selectedPartyIndex;
    u8 doubleBattleFirstSelectedPartySlot;
    u8 unk_13;
    u8 playerPokemonPartySlot;
    u8 partnerPokemonPartySlot;
    u32 embargoRemainingTurns[2];
    u16 currentDamage;
    u16 selectedBattleBagItem;
    u16 moveToLearn;
    s32 battler;
    u8 pokemonPartySlots[6];
    u8 isCursorEnabled;
    u8 selectedBattleBagPocket;
    u8 selectedMoveSlot;
    u8 battlePartyMode;
    u8 battlePartyExited;
} BattlePartyContext;

#endif // POKEPLATINUM_BATTLE_PARTY_CONTEXT
