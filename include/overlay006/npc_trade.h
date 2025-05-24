#ifndef POKEPLATINUM_NPC_TRADE_H
#define POKEPLATINUM_NPC_TRADE_H

#include "field/field_system_decl.h"
#include "overlay006/struct_ov6_02246254.h"

typedef struct NpcTradeMon {
    u32 species;
    u32 hpIV;
    u32 atkIV;
    u32 defIV;
    u32 speedIV;
    u32 spAtkIV;
    u32 spDefIV;
    u32 unused1;
    u32 otID;
    u32 cool;
    u32 beauty;
    u32 cute;
    u32 smart;
    u32 tough;
    u32 personality;
    u32 heldItem;
    u32 otGender;
    u32 unused2;
    u32 language;
    u32 requestedSpecies;
} NpcTradeMon;

typedef struct NpcTradeData {
    NpcTradeMon *npcTradeMon;
    Pokemon *mon;
    TrainerInfo *trainerInfo;
    u32 npcTradeID;
    enum HeapId heapID;
} NpcTradeData;

NpcTradeData *NpcTrade_Init(u32 heapID, u32 entryID);
void NpcTrade_Free(NpcTradeData *data);
u32 NpcTrade_GetSpecies(const NpcTradeData *data);
u32 NpcTrade_GetRequestedSpecies(const NpcTradeData *data);
void NpcTrade_ReceiveMon(FieldSystem *fieldSystem, NpcTradeData *data, int slot);
void ov6_02246254(FieldSystem *fieldSystem, NpcTradeData *data, int slot, UnkStruct_ov6_02246254 *param3, Pokemon *givingMon, Pokemon *receivingMon);

#endif // POKEPLATINUM_NPC_TRADE_H
