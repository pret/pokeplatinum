#ifndef POKEPLATINUM_UNK_02095CD4_H
#define POKEPLATINUM_UNK_02095CD4_H

#include "struct_decls/struct_02095E80_decl.h"

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

#endif // POKEPLATINUM_UNK_02095CD4_H
