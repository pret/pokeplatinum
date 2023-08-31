#ifndef POKEPLATINUM_ITEM_DATA_H
#define POKEPLATINUM_ITEM_DATA_H

#include "strbuf.h"

typedef struct ItemPartyParam {
    u8 healSleep : 1;
    u8 healPoison : 1;
    u8 healBurn : 1;
    u8 healFreeze : 1;
    u8 healParalysis : 1;
    u8 healConfusion : 1;
    u8 healAttract : 1;
    u8 guardSpec : 1;
    u8 revive : 1;
    u8 reviveAll : 1;
    u8 levelUp : 1;
    u8 evolve : 1;
    u8 atkStages : 4;
    u8 defStages : 4;
    u8 spatkStages : 4;
    u8 spdefStages : 4;
    u8 speedStages : 4;
    u8 accStages : 4;
    u8 critStages : 2;
    u8 ppUp : 1;
    u8 ppMax : 1;
    u8 ppRestore : 1;
    u8 ppRestoreAll : 1;
    u8 hpRestore : 1;
    u8 giveHPEVs : 1;
    u8 giveAtkEVs : 1;
    u8 giveDefEVs : 1;
    u8 giveSpeedEVs : 1;
    u8 giveSpAtkEVs : 1;
    u8 giveSpDefEVs : 1;
    u8 giveFriendshipLow : 1;
    u8 giveFriendshipMed : 1;
    u8 giveFriendshipHigh : 1;
    s8 hpEVs;
    s8 atkEVs;
    s8 defEVs;
    s8 speedEVs;
    s8 spatkEVs;
    s8 spdefEVs;
    u8 hpRestored;
    u8 ppRestored;
    s8 friendshipLow;
    s8 friendshipMed;
    s8 friendshipHigh;
    u8 padding[2];
} ItemPartyParam;

typedef struct ItemData {
    u16 price;
    u8 holdEffect;
    u8 holdEffectParam;
    u8 pluckEffect;
    u8 flingEffect;
    u8 flingPower;
    u8 naturalGiftPower;
    u16 naturalGiftType : 5;
    u16 preventToss : 1;
    u16 isSelectable : 1;
    u16 fieldPocket : 4;
    u16 battlePocket : 5;
    u8 fieldUseFunc;
    u8 battleUseFunc;
    u8 partyUse;
    u8 padding_0D;
    union {
        u8 dummy;
        ItemPartyParam partyUseParam;
    };
    u8 padding[2];
} ItemData;

void sub_0207CDEC(void * param0, u16 param1, u16 param2);
u16 sub_0207CE78(u16 param0, u16 param1);
u16 sub_0207CF10(u16 param0);
u16 Item_GetIndexOfIconNCER(void);
u16 Item_GetIndexOfIconNANR(void);
void * Item_LoadDataOrGFX(u16 param0, u16 param1, u32 param2);
void Item_GetNameIntoString(Strbuf *dst, u16 param1, u32 param2);
void Item_GetDescriptionIntoString(Strbuf *dst, u16 param1, u16 param2);
s32 Item_GetAttribute(u16 param0, u16 param1, u32 param2);
s32 Item_GetAttributeFromStruct(ItemData * param0, u16 param1);
const u16 GetMoveFromTMOrHMItemID(u16 param0);
u8 Item_IsMoveHM(u16 param0);
u8 Item_GetTMOrHMNumberFromID(u16 param0);
u8 Item_IsMail(u16 param0);
u8 sub_0207D2F0(u16 param0);
u16 sub_0207D310(u8 param0);
u8 Item_IsBerry(u16 param0);
u8 sub_0207D344(u16 param0);
u16 sub_0207D354(u8 param0);
u8 Item_IsHerbalMedicine(u16 param0);
void * sub_0207D388(int param0);
ItemData * sub_0207D3B0(ItemData * param0, u16 param1);

#endif // POKEPLATINUM_ITEM_DATA_H
