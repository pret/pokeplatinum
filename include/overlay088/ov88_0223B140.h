#ifndef POKEPLATINUM_OV88_0223B140_H
#define POKEPLATINUM_OV88_0223B140_H

#include "struct_decls/struct_02095E80_decl.h"

#include "overlay_manager.h"
#include "party.h"

// shared with unk_02095CD4.c's comm-receive handlers
enum TradeRoomCommCmd {
    TRADE_CMD_SEND_PARTY = 22,
    TRADE_CMD_SYNC_CURSOR = 23,
    TRADE_CMD_SYNC_STATUS = 24,
    TRADE_CMD_PARTY_RECEIVED_ACK = 27,
    TRADE_CMD_SEND_PALPAD = 28,
    TRADE_CMD_SEND_CHATOT_CRY = 29,
    TRADE_CMD_STAGGER_DELAY = 31,
    TRADE_CMD_SEND_RIBBONS = 32,
};

// values tradeRoom->commMilestone is set to as each handshake step's data arrives
enum TradeRoomCommMilestone {
    TRADE_MILESTONE_PARTY_ACKED = 2,
    TRADE_MILESTONE_PALPAD_RECEIVED = 3,
    TRADE_MILESTONE_CHATOT_CRY_RECEIVED = 4,
};

int TradeRoom_Init(ApplicationManager *appMan, int *unused);
int TradeRoom_Main(ApplicationManager *appMan, int *state);
int TradeRoom_Exit(ApplicationManager *appMan, int *unused);
void TradeRoom_SendCommByte(int unused, int cmd, int value);
void TradeRoom_SyncValueToPartner(TradeRoom *tradeRoom, int cmd, int value);
void TradeRoom_SendParty(int netId, Party *party, int index);

#endif // POKEPLATINUM_OV88_0223B140_H
