#ifndef POKEPLATINUM_NPC_TRADE_TASK_H
#define POKEPLATINUM_NPC_TRADE_TASK_H

#include "overlay006/npc_trade.h"

#include "field_task.h"

void FieldTask_StartNPCTrade(FieldTask *task, NPCTradeData *data, int partySlot, enum HeapID heapID);

#endif // POKEPLATINUM_NPC_TRADE_TASK_H
