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

void Item_MoveInPocket(void *pocket, u16 srcSlot, u16 dstSlot);
u16 Item_ID(u16 item, u16 type);
u16 Item_FromGBAID(u16 param0);
u16 Item_IconNCERFile(void);
u16 Item_IconNANRFile(void);
void* Item_Load(u16 item, u16 type, u32 heapID);
void Item_LoadName(Strbuf *dst, u16 item, u32 heapID);
void Item_LoadDescription(Strbuf *dst, u16 item, u16 heapID);
s32 Item_LoadParam(u16 item, u16 param, u32 heapID);
s32 Item_Get(ItemData *itemData, u16 param);
const u16 Item_MoveForTMHM(u16 item);
u8 Item_IsHMMove(u16 move);
u8 Item_TMHMNumber(u16 item);
u8 Item_IsMail(u16 item);
u8 Item_MailNumber(u16 item);
u16 Item_ForMailNumber(u8 mail);
u8 Item_IsBerry(u16 item);
u8 Item_BerryNumber(u16 item);
u16 Item_ForBerryNumber(u8 item);
u8 Item_IsHerbalMedicine(u16 item);
void* ItemTable_Load(int heapID);
ItemData* ItemTable_Index(ItemData *itemTable, u16 index);

#endif // POKEPLATINUM_ITEM_DATA_H