#ifndef POKEPLATINUM_NPC_TRADE_H
#define POKEPLATINUM_NPC_TRADE_H

#include "field/field_system_decl.h"
#include "overlay006/struct_npc_trade_animation_template.h"

#include "pokemon.h"

typedef struct NPCTradeMon {
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
} NPCTradeMon;

typedef struct NPCTradeData {
    NPCTradeMon *npcTradeMon;
    Pokemon *mon;
    TrainerInfo *trainerInfo;
    u32 npcTradeID;
    enum HeapID heapID;
} NPCTradeData;

NPCTradeData *NPCTrade_Init(enum HeapID heapID, u32 entryID);
void NPCTrade_Free(NPCTradeData *data);
u32 NPCTrade_GetSpecies(const NPCTradeData *data);
u32 NPCTrade_GetRequestedSpecies(const NPCTradeData *data);
void NPCTrade_ReceiveMon(FieldSystem *fieldSystem, NPCTradeData *data, int slot);
void NPCTrade_FillAnimationTemplate(FieldSystem *fieldSystem, NPCTradeData *data, int slot, TradeAnimationTemplate *param3, Pokemon *givingMon, Pokemon *receivingMon);

#endif // POKEPLATINUM_NPC_TRADE_H
