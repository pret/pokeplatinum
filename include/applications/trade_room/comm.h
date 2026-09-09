#ifndef POKEPLATINUM_TRADE_ROOM_COMM_H
#define POKEPLATINUM_TRADE_ROOM_COMM_H

#include "applications/trade_room/defs.h"
#include "field/field_system_decl.h"

void TradeRoom_RegisterCommHandlers(void *fieldSystem);
void TradeRoom_ReceivePartyChunk(int senderNetId, int unused, void *data, void *fieldSystem);
void TradeRoom_ReceiveCursorSync(int senderNetId, int unused, void *data, void *fieldSystem);
void TradeRoom_ReceiveStatusSync(int senderNetId, int unused, void *data, void *fieldSystem);
void TradeRoom_ReceiveUnusedCmd25(int senderNetId, int unused, void *data, void *fieldSystem);
void TradeRoom_ReceiveUnusedCmd26(int senderNetId, int unused, void *data, void *fieldSystem);
void TradeRoom_ReceivePartyAck(int senderNetId, int unused, void *data, void *fieldSystem);
void TradeRoom_ReceiveUnusedCmd30(int senderNetId, int unused, void *data, void *fieldSystem);
void TradeRoom_ReceivePalPad(int senderNetId, int unused, void *data, void *fieldSystem);
void TradeRoom_AttachToFieldSystem(FieldSystem *fieldSystem, TradeRoom *tradeRoom);

#endif // POKEPLATINUM_TRADE_ROOM_COMM_H
