#include "applications/trade_room/comm.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/comm_cmd_table.h"

#include "applications/trade_room/application.h"
#include "applications/trade_room/defs.h"
#include "field/field_system.h"

#include "communication_system.h"
#include "pal_pad.h"
#include "party.h"
#include "unk_0202D778.h"
#include "unk_02032798.h"

void TradeRoom_ReceivePalPad(int senderNetId, int unused, void *data, void *fieldSystem);
void TradeRoom_ReceiveChatotCry(int senderNetId, int unused, void *data, void *fieldSystem);
void TradeRoom_ReceiveStaggerDelay(int senderNetId, int unused, void *data, void *fieldSystem);
void TradeRoom_ReceiveRibbonData(int senderNetId, int unused, void *data, void *fieldSystem);
static int TradeRoom_MirrorPartnerSlot(u8 slot);
static int TradeRoom_PartyPacketSize(void);
static int TradeRoom_PalPadPacketSize(void);
static u8 *TradeRoom_GetHugeTransferBuffer(int side, void *fieldSystem, int requestedSize);
static int TradeRoom_ChatotCryPacketSize(void);
static int TradeRoom_RibbonPacketSize(void);

// clang-format off
static const CommCmdTable sTradeRoomCommHandlers[] = {
    [TRADE_CMD_SEND_PARTY - TRADE_CMD_SEND_PARTY]         = { TradeRoom_ReceivePartyChunk, TradeRoom_PartyPacketSize, TradeRoom_GetHugeTransferBuffer },
    [TRADE_CMD_SYNC_CURSOR - TRADE_CMD_SEND_PARTY]        = { TradeRoom_ReceiveCursorSync, CommPacketSizeOf_NetId },
    [TRADE_CMD_SYNC_STATUS - TRADE_CMD_SEND_PARTY]        = { TradeRoom_ReceiveStatusSync, CommPacketSizeOf_NetId },
    [25 - TRADE_CMD_SEND_PARTY]                           = { TradeRoom_ReceiveUnusedCmd25, CommPacketSizeOf_NetId },
    [26 - TRADE_CMD_SEND_PARTY]                           = { TradeRoom_ReceiveUnusedCmd26, CommPacketSizeOf_NetId },
    [TRADE_CMD_PARTY_RECEIVED_ACK - TRADE_CMD_SEND_PARTY] = { TradeRoom_ReceivePartyAck, CommPacketSizeOf_NetId },
    [TRADE_CMD_SEND_PALPAD - TRADE_CMD_SEND_PARTY]        = { TradeRoom_ReceivePalPad, TradeRoom_PalPadPacketSize, TradeRoom_GetHugeTransferBuffer },
    [TRADE_CMD_SEND_CHATOT_CRY - TRADE_CMD_SEND_PARTY]    = { TradeRoom_ReceiveChatotCry, TradeRoom_ChatotCryPacketSize, TradeRoom_GetHugeTransferBuffer },
    [30 - TRADE_CMD_SEND_PARTY]                           = { TradeRoom_ReceiveUnusedCmd30, CommPacketSizeOf_Nothing },
    [TRADE_CMD_STAGGER_DELAY - TRADE_CMD_SEND_PARTY]      = { TradeRoom_ReceiveStaggerDelay, CommPacketSizeOf_NetId },
    [TRADE_CMD_SEND_RIBBONS - TRADE_CMD_SEND_PARTY]       = { TradeRoom_ReceiveRibbonData, TradeRoom_RibbonPacketSize },
};
// clang-format on

void TradeRoom_RegisterCommHandlers(void *fieldSystem)
{
    int handlerCount = sizeof(sTradeRoomCommHandlers) / sizeof(CommCmdTable);
    CommCmd_Init(sTradeRoomCommHandlers, handlerCount, fieldSystem);
}

static int TradeRoom_MirrorPartnerSlot(u8 slot)
{
    if (slot == MAX_PARTY_SIZE * 2) {
        return MAX_PARTY_SIZE * 2;
    }

    if (slot < MAX_PARTY_SIZE) {
        return slot + MAX_PARTY_SIZE;
    }

    return slot - MAX_PARTY_SIZE;
}

void TradeRoom_ReceivePartyChunk(int senderNetId, int unused, void *data, void *fieldSystemPtr)
{
    FieldSystem *fieldSystem = (FieldSystem *)fieldSystemPtr;
    TradeRoom *tradeRoom = fieldSystem->tradeRoom;

    if (senderNetId != CommSys_CurNetId()) {
        memcpy((void *)tradeRoom->partnerParty, data, sizeof(Party));
        tradeRoom->partyReceiveCount++;

        if ((tradeRoom->partyReceiveCount) * (236 * 6 + 4 * 2) >= Party_SaveSize()) {
            if (CommSys_CurNetId() == 1) {
                TradeRoom_SyncValueToPartner(tradeRoom, TRADE_CMD_PARTY_RECEIVED_ACK, 0);
            } else {
                TradeRoom_SendParty(CommSys_CurNetId(), tradeRoom->playerParty, tradeRoom->partySendCount);
            }
        } else {
            TradeRoom_SendParty(CommSys_CurNetId(), tradeRoom->playerParty, tradeRoom->partySendCount);
        }

        tradeRoom->partySendCount++;
    }
}

void TradeRoom_ReceiveCursorSync(int senderNetId, int unused, void *data, void *fieldSystem)
{
    TradeRoom *tradeRoom = ((FieldSystem *)fieldSystem)->tradeRoom;
    u8 *receivedSlot = (u8 *)data;

    if (senderNetId != CommSys_CurNetId()) {
        tradeRoom->selectedSlot[1] = TradeRoom_MirrorPartnerSlot(*receivedSlot);
    }
}

void TradeRoom_ReceiveStatusSync(int senderNetId, int unused, void *data, void *fieldSystem)
{
    TradeRoom *tradeRoom = ((FieldSystem *)fieldSystem)->tradeRoom;
    u8 *receivedStatus = (u8 *)data;

    tradeRoom->partnerSyncStatus[senderNetId] = *receivedStatus;
}

void TradeRoom_ReceiveUnusedCmd25(int senderNetId, int unused, void *data, void *fieldSystem)
{
    return;
}

void TradeRoom_ReceiveUnusedCmd26(int senderNetId, int unused, void *data, void *fieldSystem)
{
    return;
}

void TradeRoom_ReceivePartyAck(int senderNetId, int unused, void *data, void *fieldSystem)
{
    TradeRoom *tradeRoom = ((FieldSystem *)fieldSystem)->tradeRoom;
    tradeRoom->commMilestone = TRADE_MILESTONE_PARTY_ACKED;
}

void TradeRoom_ReceiveUnusedCmd30(int senderNetId, int unused, void *data, void *fieldSystem)
{
    return;
}

void TradeRoom_ReceiveStaggerDelay(int senderNetId, int unused, void *data, void *fieldSystemPtr)
{
    TradeRoom *tradeRoom = ((FieldSystem *)fieldSystemPtr)->tradeRoom;
    u8 *receivedDelay = (u8 *)data;

    tradeRoom->staggerCountdown = *receivedDelay;
}

void TradeRoom_ReceiveRibbonData(int senderNetId, int unused, void *data, void *fieldSystemPtr)
{
    FieldSystem *fieldSystem = (FieldSystem *)fieldSystemPtr;
    u8 *localRibbons = SaveData_GetRibbons(fieldSystem->saveData);
    u8 *partnerRibbons = (u8 *)data;

    if (CommSys_CurNetId() == senderNetId) {
        return;
    }

    for (int i = 0; i < 14; i++) {
        if (partnerRibbons[i] != 0) {
            if (localRibbons[i] != partnerRibbons[i]) {
                localRibbons[i] = partnerRibbons[i];
            }
        }
    }
}

void TradeRoom_ReceivePalPad(int senderNetId, int unused, void *data, void *fieldSystemPtr)
{
    TradeRoom *tradeRoom = ((FieldSystem *)fieldSystemPtr)->tradeRoom;

    if (CommSys_CurNetId() != senderNetId) {
        PalPad_PushEntries(tradeRoom->palPad, (PalPad *)data, 1, HEAP_ID_TRADE_ROOM);
        tradeRoom->commMilestone = TRADE_MILESTONE_PALPAD_RECEIVED;
    }
}

void TradeRoom_ReceiveChatotCry(int senderNetId, int unused, void *data, void *fieldSystemPtr)
{
    TradeRoom *tradeRoom = ((FieldSystem *)fieldSystemPtr)->tradeRoom;

    if (CommSys_CurNetId() != senderNetId) {
        MI_CpuCopyFast(data, tradeRoom->chatotCryBuffer[senderNetId], CHATOT_CRY_SIZE);
        tradeRoom->commMilestone = TRADE_MILESTONE_CHATOT_CRY_RECEIVED;
        sub_0203632C(0);
    }
}

void TradeRoom_AttachToFieldSystem(FieldSystem *fieldSystem, TradeRoom *tradeRoom)
{
    fieldSystem->tradeRoom = tradeRoom;
}

static int TradeRoom_ChatotCryPacketSize(void)
{
    return sizeof(ChatotCry);
}

static int TradeRoom_RibbonPacketSize(void)
{
    return 14;
}

static int TradeRoom_PalPadPacketSize(void)
{
    return sizeof(PalPad);
}

static int TradeRoom_PartyPacketSize(void)
{
    return sizeof(Party);
}

static u8 *TradeRoom_GetHugeTransferBuffer(int side, void *fieldSystem, int requestedSize)
{
    TradeRoom *tradeRoom = ((FieldSystem *)fieldSystem)->tradeRoom;
    return (u8 *)tradeRoom->partyTransferBuffer[side];
}
