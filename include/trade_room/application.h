#ifndef POKEPLATINUM_TRADE_ROOM_APPLICATION_H
#define POKEPLATINUM_TRADE_ROOM_APPLICATION_H

#include "overlay_manager.h"
#include "party.h"

typedef struct TradeRoom TradeRoom;

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

#endif // POKEPLATINUM_TRADE_ROOM_APPLICATION_H
