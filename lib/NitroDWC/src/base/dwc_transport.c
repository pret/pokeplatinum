#include <nitro.h>
#include <base/dwc_base_gamespy.h>

#include <base/dwc_report.h>
#include <base/dwc_account.h>
#include <base/dwc_error.h>
#include <base/dwc_login.h>
#include <base/dwc_friend.h>
#include <base/dwc_match.h>
#include <base/dwc_transport.h>
#include <base/dwc_main.h>


static DWCTransportInfo *sTransInfo = NULL;


static DWCTransportConnection *DWCs_GetTransConnection(u8 aid);
static int DWCs_GetSendState(u8 aid);
static int DWCs_GetRecvState(u8 aid);
static void DWCs_Send(u8 aid, const u8 *buffer, int size, BOOL reliable);
static void DWCs_HandleUnreliableMessage(GT2Connection connection, void *message, int size);
static void DWCs_HandleReliableMessage(GT2Connection connection, u8 *message, int size);
static void DWCs_RecvDataHeader(u8 aid, DWCTransportHeader *message, int size);
static void DWCs_RecvDataBody(u8 aid, void *message, int size);
static void DWCs_RecvSystemDataBody(u8 aid, void *message, int size);
static void DWCs_DelayCheck(DArray delayedMessages, OSTick now, BOOL send);
static void DWCs_AddDelayMessage(DArray array, u16 delayValue, GT2Connection connection, int filterID, const u8 *message, int size, BOOL reliable);
static void DWCs_DelayedMessageFree(void *elem);
static int	DWCs_GetOutgoingBufferFreeSize(u8 aid);
static void DWCs_SendFilterCallbackDrop(GT2Connection connection, int filterID, const u8 *message, int size, BOOL reliable);
static void DWCs_SendFilterCallbackDelay(GT2Connection connection, int filterID, const u8 *message, int size, BOOL reliable);
static void DWCs_RecvFilterCallbackDrop(GT2Connection connection, int filterID, u8 *message, int size, BOOL reliable);
static void DWCs_RecvFilterCallbackDelay(GT2Connection connection, int filterID, u8 *message, int size, BOOL reliable);
static void DWCs_EncodeHeader(DWCTransportHeader *header, u16 type, int size);
static u16	DWCs_DecodeHeader(const DWCTransportHeader *header);
static s32	DWCs_GetRequiredHeaderSize(u16 type);


BOOL DWC_IsSendableReliable(u8 aid) {
    return DWCi_IsSendableReliable(aid, DWC_SEND_TYPE_USERDATA);
}

BOOL DWCi_IsSendableReliable(u8 aid, u16 type) {
    s32 freeSpace;

    if (DWCi_IsError() || ((type == DWC_SEND_TYPE_USERDATA) && !DWC_IsValidAID(aid)) || !DWCi_IsValidAID(aid)) {
        DWC_Printf(DWC_REPORTFLAG_WARNING, "aid %d is unavailable.\n", aid);
        return FALSE;
    }

    if (DWCs_GetSendState(aid) == DWC_TRANSPORT_SEND_BUSY) {
        DWC_Printf(DWC_REPORTFLAG_SEND_INFO, "+++ Cannot send to %d from %d (busy)\n", aid, DWC_GetMyAID());
        return FALSE;
    }

    freeSpace = DWCs_GetOutgoingBufferFreeSize(aid);

    if (freeSpace < DWCs_GetRequiredHeaderSize(type)) {
        DWC_Printf(DWC_REPORTFLAG_SEND_INFO, "+++ Cannot send to %d from %d (outgoing buffer is not enough) %d < %d\n", aid, DWC_GetMyAID(), freeSpace, DWCs_GetRequiredHeaderSize(type));
        return FALSE;
    }

    return TRUE;
}

BOOL DWC_SendReliable(u8 aid, const void *buffer, int size) {
    return DWCi_SendReliable(DWC_SEND_TYPE_USERDATA, aid, buffer, size);
}

BOOL DWCi_SendReliable(u16 type, u8 aid, const void *buffer, int size) {
    DWCTransportConnection *transConnection = DWCs_GetTransConnection(aid);
    DWCTransportHeader header;
    int sendSize;
    int freeSpace;

    SDK_ASSERT(buffer);
    SDK_ASSERT(size > 0);

    if (!DWCi_IsSendableReliable(aid, type)) {
        return FALSE;
    }

    transConnection->sendState = DWC_TRANSPORT_SEND_BUSY;
    transConnection->sendBuffer = buffer;
    transConnection->sendingSize = 0;
    transConnection->requestSendSize = size;

    DWCs_EncodeHeader(&header, type, size);
    DWCs_Send(aid, (const u8 *)&header, sizeof(DWCTransportHeader), TRUE);

    if (size > sTransInfo->sendSplitMax) {
        sendSize = sTransInfo->sendSplitMax;
    }
    else {
        sendSize = size;
    }

    freeSpace = DWCs_GetOutgoingBufferFreeSize(aid);
#if 1
    DWC_Printf(
        DWC_REPORTFLAG_SEND_INFO, "DWCi_SendReliable:aid = %d,%d,%d,%d,%d,vcount = %d\n", aid, sendSize, freeSpace, size, sTransInfo->sendSplitMax, OS_GetVBlankCount());
#endif

    if (sendSize > freeSpace) {
        DWC_Printf(
            DWC_REPORTFLAG_SEND_INFO, "DWCi_SendReliable:sendSize > freeSpace:aid = %d,%d,%d,vcount = %d\n", aid, sendSize, freeSpace, OS_GetVBlankCount());

        return TRUE;
    }

    DWCs_Send(aid, buffer, sendSize, TRUE);

    transConnection->sendingSize += sendSize;

    DWC_Printf(
        DWC_REPORTFLAG_SEND_INFO, "[R] aid = %d, size = %d/%d, outgoing buffer = %d, vcount = %d\n", aid, transConnection->sendingSize, transConnection->requestSendSize, freeSpace - sendSize, OS_GetVBlankCount());

    if (transConnection->sendingSize == transConnection->requestSendSize) {
        int reqSendSize = transConnection->requestSendSize;

        transConnection->sendState = DWC_TRANSPORT_SEND_READY;
        transConnection->sendBuffer = NULL;
        transConnection->sendingSize = 0;
        transConnection->requestSendSize = 0;

        if (sTransInfo->sendCallback && (type == DWC_SEND_TYPE_USERDATA)) {
            sTransInfo->sendCallback(reqSendSize, aid);
        }
    }

    return TRUE;
}

u32 DWC_SendReliableBitmap(u32 bitmap, const void *buffer, int size) {
    u8 aid;
    u32 aidbit;

    for (aid = 0; aid < DWC_MAX_CONNECTIONS; ++aid) {
        aidbit = aid ? (1 << aid) : 1U;

        if ((bitmap & aidbit) && (aid != DWC_GetMyAID())) {
            if (!DWC_SendReliable(aid, buffer, size)) {
                bitmap &= ~aidbit;
            }
        }
    }

    return bitmap;
}

BOOL DWC_SendUnreliable(u8 aid, const void *buffer, int size) {
    SDK_ASSERT(buffer);
    SDK_ASSERT(size > 0);

    if (DWCi_IsError()) {
        return FALSE;
    }

    if (!DWC_IsValidAID(aid)) {
        DWC_Printf(DWC_REPORTFLAG_WARNING, "aid %d is now unavailable.\n", aid);
        return FALSE;
    }

    if (size > sTransInfo->sendSplitMax) {
        DWC_Printf(DWC_REPORTFLAG_SEND_INFO, "+++ SendUnreliable size is too large ( %d > %d )\n", size, sTransInfo->sendSplitMax);
        return FALSE;
    }

    DWCs_Send(aid, buffer, size, FALSE);
    DWC_Printf(DWC_REPORTFLAG_SEND_INFO, "[U] aid = %d, size = %d, vcount = %d\n", aid, size, OS_GetVBlankCount());

    if (sTransInfo->sendCallback) {
        sTransInfo->sendCallback(size, aid);
    }

    return TRUE;
}

u32 DWC_SendUnreliableBitmap(u32 bitmap, const void *buffer, int size) {
    u8 aid;
    u32 aidbit;

    for (aid = 0; aid < DWC_MAX_CONNECTIONS; ++aid) {
        aidbit = aid ? (1 << aid) : 1U;

        if (bitmap & aidbit && (aid != DWC_GetMyAID())) {
            if (!DWC_SendUnreliable(aid, buffer, size)) {
                bitmap &= ~aidbit;
            }
        }
    }

    return bitmap;
}

BOOL DWC_SetRecvBuffer(u8 aid, void *recvBuffer, int size) {
    DWCTransportConnection *connection = DWCs_GetTransConnection(aid);

    SDK_ASSERT(recvBuffer);
    SDK_ASSERT(size > 0);

    if (DWCs_GetRecvState(aid) == DWC_TRANSPORT_RECV_BODY) {
        DWC_Printf(DWC_REPORTFLAG_RECV_INFO, "+++ Cannot set recv buffer\n");

        return FALSE;
    }

    connection->recvBuffer = recvBuffer;
    connection->recvBufferSize = size;
    connection->recvState = DWC_TRANSPORT_RECV_HEADER;
    connection->recvingSize = 0;
    connection->requestRecvSize = 0;

    return TRUE;
}

BOOL DWC_Ping(u8 aid) {
    GT2Connection connection;

    if (DWCi_IsError()) {
        return FALSE;
    }

    connection = DWCi_GetGT2Connection(aid);

    if ((aid == DWC_GetMyAID()) || (!connection) || (gt2GetConnectionState(connection) != GT2Connected)) {
        DWC_Printf(DWC_REPORTFLAG_SEND_INFO, "DWC_Ping:not connected yet:%d\n", aid);

        return FALSE;
    }

    gt2Ping(connection);

    return TRUE;
}

BOOL DWC_SetUserSendCallback(DWCUserSendCallback callback) {
    if (sTransInfo == NULL) {
        return FALSE;
    }

    sTransInfo->sendCallback = callback;

    return TRUE;
}

BOOL DWC_SetUserRecvCallback(DWCUserRecvCallback callback) {
    if (sTransInfo == NULL) {
        return FALSE;
    }

    sTransInfo->recvCallback = callback;

    return TRUE;
}

BOOL DWC_SetUserRecvTimeoutCallback(DWCUserRecvTimeoutCallback callback) {
    if (sTransInfo == NULL) {
        return FALSE;
    }

    sTransInfo->recvTimeoutCallback = callback;

    return TRUE;
}

BOOL DWC_SetUserPingCallback(DWCUserPingCallback callback) {
    if (sTransInfo == NULL) {
        return FALSE;
    }

    sTransInfo->pingCallback = callback;

    return TRUE;
}

BOOL DWC_SetSendSplitMax(u16 sendSplitMax) {
    if (sTransInfo == NULL) {
        return FALSE;
    }

#if 1
    SDK_ASSERT(sendSplitMax <= DWC_TRANSPORT_SEND_MAX);
#else
    if (sendSplitMax > DWC_TRANSPORT_SEND_MAX) {
        DWC_Printf(DWC_REPORTFLAG_SEND_INFO, "DWC_SetSendSplitMax:sendSplitMax > DWC_TRANSPORT_SEND_MAX:%d,%d\n", sendSplitMax, DWC_TRANSPORT_SEND_MAX);
        sendSplitMax = DWC_TRANSPORT_SEND_MAX;
    }
#endif
    sTransInfo->sendSplitMax = sendSplitMax;

    return TRUE;
}

static void DWCs_EncodeHeader(DWCTransportHeader *header, u16 type, int size) {
    strncpy(header->magicStrings, DWC_MAGIC_STRINGS, DWC_MAGIC_STRINGS_LEN);

    header->type = type;
    header->size = size;
}

static u16 DWCs_DecodeHeader(const DWCTransportHeader *message) {
    DWCTransportHeader header;

    MI_CpuCopy8(message, (u8 *)&header, sizeof(DWCTransportHeader));

    if ((memcmp(header.magicStrings, DWC_MAGIC_STRINGS, DWC_MAGIC_STRINGS_LEN) == 0)) {
        return header.type;
    }

    return DWC_SEND_TYPE_INVALID;
}

static s32 DWCs_GetRequiredHeaderSize(u16 type) {
    s32 size;

    switch (type) {
    case DWC_SEND_TYPE_MATCH_SYN:
    case DWC_SEND_TYPE_MATCH_SYN_ACK:
    case DWC_SEND_TYPE_MATCH_ACK:
        size = sizeof(DWCTransportHeader) + DWC_MATCH_SYN_DATA_BODY_SIZE;
        break;
    default:
        size = sizeof(DWCTransportHeader);
        break;
    }

    return size;
}

BOOL DWC_SetRecvTimeoutTime(u8 aid, u32 time) {
#if 0
    GT2Connection connection = DWCi_GetGT2Connection(aid);

    if ((aid == DWC_GetMyAID()) || (!connection) || (gt2GetConnectionState(connection) != GT2Connected)) {
        return;
    }
#else
    if (!sTransInfo) {
        return FALSE;
    }
#endif

    sTransInfo->connections[aid].recvTimeoutTime = time;
    sTransInfo->connections[aid].previousRecvTick = OS_GetTick();

    return TRUE;
}

#ifndef SDK_FINALROM


BOOL DWC_SetSendDelay(u16 delay, u8 aid) {
    GT2Connection connection;

    if (sTransInfo == NULL) {
        return FALSE;
    }

    connection = DWCi_GetGT2Connection(aid);

    if ((aid == DWC_GetMyAID()) || (!connection) || (gt2GetConnectionState(connection) != GT2Connected)) {
        return FALSE;
    }

    if (delay) {
        if (!sTransInfo->connections[aid].sendDelay) {
            if (!gt2AddSendFilter(connection, DWCs_SendFilterCallbackDelay)) {
                DWCi_SetError(DWC_ERROR_FATAL, DWC_ECODE_SEQ_ETC + DWC_ECODE_GS_GT2 + DWC_ECODE_TYPE_ALLOC);

                return FALSE;
            }
        }
    }
    else {
        gt2RemoveSendFilter(connection, DWCs_SendFilterCallbackDelay);
    }

    sTransInfo->connections[aid].sendDelay = delay;

    return TRUE;
}

BOOL DWC_SetRecvDelay(u16 delay, u8 aid) {
    GT2Connection connection;

    if (sTransInfo == NULL) {
        return FALSE;
    }

    connection = DWCi_GetGT2Connection(aid);

    if ((aid == DWC_GetMyAID()) || (!connection) || (gt2GetConnectionState(connection) != GT2Connected)) {
        return FALSE;
    }

    if (delay) {
        if (!sTransInfo->connections[aid].recvDelay) {
            if (!gt2AddReceiveFilter(connection, DWCs_RecvFilterCallbackDelay)) {
                DWCi_SetError(DWC_ERROR_FATAL, DWC_ECODE_SEQ_ETC + DWC_ECODE_GS_GT2 + DWC_ECODE_TYPE_ALLOC);

                return FALSE;
            }
        }
    }
    else {
        gt2RemoveReceiveFilter(connection, DWCs_RecvFilterCallbackDelay);
    }

    sTransInfo->connections[aid].recvDelay = delay;

    return TRUE;
}

BOOL DWC_SetSendDrop(u8 drop, u8 aid) {
    GT2Connection connection;

    if (sTransInfo == NULL) {
        return FALSE;
    }

    connection = DWCi_GetGT2Connection(aid);

    if ((aid == DWC_GetMyAID()) || (!connection) || (gt2GetConnectionState(connection) != GT2Connected)) {
        return FALSE;
    }

    sTransInfo->sendDrop = drop;

    if (drop) {
        if (!gt2AddSendFilter(connection, DWCs_SendFilterCallbackDrop)) {
            DWCi_SetError(DWC_ERROR_FATAL, DWC_ECODE_SEQ_ETC + DWC_ECODE_GS_GT2 + DWC_ECODE_TYPE_ALLOC);

            return FALSE;
        }
    }
    else {
        gt2RemoveSendFilter(connection, DWCs_SendFilterCallbackDrop);
    }

    return TRUE;
}

BOOL DWC_SetRecvDrop(u8 drop, u8 aid) {
    GT2Connection connection;

    if (sTransInfo == NULL) {
        return FALSE;
    }

    connection = DWCi_GetGT2Connection(aid);

    if ((aid == DWC_GetMyAID()) || (!connection) || (gt2GetConnectionState(connection) != GT2Connected)) {
        return FALSE;
    }

    sTransInfo->recvDrop = drop;

    if (drop) {
        if (!gt2AddReceiveFilter(connection, DWCs_RecvFilterCallbackDrop)) {
            DWCi_SetError(DWC_ERROR_FATAL, DWC_ECODE_SEQ_ETC + DWC_ECODE_GS_GT2 + DWC_ECODE_TYPE_ALLOC);

            return FALSE;
        }
    }
    else {
        gt2RemoveReceiveFilter(connection, DWCs_RecvFilterCallbackDrop);
    }

    return TRUE;
}
#endif


void DWCi_InitTransport(DWCTransportInfo *info) {
    SDK_ASSERT(info);

    sTransInfo = info;

    MI_CpuClear8(sTransInfo, sizeof(DWCTransportInfo));
    sTransInfo->sendSplitMax = DWC_TRANSPORT_SEND_MAX;

#ifndef SDK_FINALROM
    MATH_InitRand16(&sTransInfo->context, sTransInfo->seed);

    sTransInfo->delayedSend = ArrayNew(sizeof(DWCDelayedMessage), 10, DWCs_DelayedMessageFree);
    sTransInfo->delayedRecv = ArrayNew(sizeof(DWCDelayedMessage), 10, DWCs_DelayedMessageFree);
#endif
}

void DWCi_RecvCallback(GT2Connection connection, GT2Byte *message, int size, GT2Bool reliable) {
    if (!sTransInfo) {
        return;
    }

    DWC_Printf(DWC_REPORTFLAG_RECV_INFO, "%s aid = %d, size = %d, vcount = %d\n", reliable ? "[R]" : "[U]", DWCi_GetConnectionAID(connection), size, OS_GetVBlankCount());

    if ((message == NULL) || (size == 0)) {
        DWC_Printf(DWC_REPORTFLAG_WARNING, "Recv NULL message %x, size = %d\n", message, size);
        return;
    }

    if (reliable) {
        DWCs_HandleReliableMessage(connection, message, size);
    }
    else {
        DWCs_HandleUnreliableMessage(connection, message, size);
    }
}

void DWCi_PingCallback(GT2Connection connection, int latency) {
    if (sTransInfo->pingCallback) {
        u8 aid = DWCi_GetConnectionAID(connection);
        sTransInfo->pingCallback(latency, aid);
    }
}

void DWCi_TransportProcess(void) {
    u8 *aidList;
    s32 hostCount;
    s32 i;

    if (!sTransInfo) {
        return;
    }

    hostCount = DWC_GetAIDList(&aidList);

    for (i = 0; i < hostCount ; i++) {
        u8 aid;

        aid = aidList[i];

        if (DWC_IsValidAID(aid)) {
            DWCTransportConnection *transConnection;

            transConnection = DWCs_GetTransConnection(aid);

            if (sTransInfo->recvTimeoutCallback && (transConnection->recvTimeoutTime > 0)) {
                u32 time;
                OSTick currentTick;

                currentTick = OS_GetTick();
                time = (u32)OS_TicksToMilliSeconds(currentTick - transConnection->previousRecvTick);

                if (time > transConnection->recvTimeoutTime) {
                    DWC_Printf(DWC_REPORTFLAG_RECV_INFO, "DWCi_TransportProcess:timeout aid=%d,time=%d[ms],timeout time=%d[ms]\n", aid, time, transConnection->recvTimeoutTime);
                    
                    sTransInfo->recvTimeoutCallback(aid);
                    transConnection->previousRecvTick = currentTick;
                }
            }
        }

        if ((aid != DWC_GetMyAID()) && (DWCs_GetSendState(aid) == DWC_TRANSPORT_SEND_BUSY)) {
            s32 restSize;
            s32 sendSize;
            s32 freeSpace;
            DWCTransportConnection *transConnection;

            transConnection = DWCs_GetTransConnection(aid);
            restSize = transConnection->requestSendSize - transConnection->sendingSize;

            if (restSize > sTransInfo->sendSplitMax) {
                sendSize = sTransInfo->sendSplitMax;
            }
            else {
                sendSize = restSize;
            }

            freeSpace = DWCs_GetOutgoingBufferFreeSize(aid);

            if (freeSpace < sendSize) {
                DWC_Printf(DWC_REPORTFLAG_SEND_INFO, "DWCi_TransportProcess:freeSpace < sendSize:aid:%d, %d < %d\n", aid, freeSpace, sendSize);
                continue;
            }

            DWCs_Send(aid, (u8 *)transConnection->sendBuffer + transConnection->sendingSize, sendSize, TRUE);

            transConnection->sendingSize += sendSize;

            DWC_Printf(
                DWC_REPORTFLAG_SEND_INFO, "DWCi_TransportProcess:aid = %d, size = %d/%d, outgoing buffer = %d, vcont = %d\n", aid, transConnection->sendingSize, transConnection->requestSendSize, freeSpace - sendSize, OS_GetVBlankCount());

            if (transConnection->sendingSize == transConnection->requestSendSize) {
                int reqSendSize = transConnection->requestSendSize;

                transConnection->sendState = DWC_TRANSPORT_SEND_READY;
                transConnection->sendBuffer = NULL;
                transConnection->sendingSize = 0;
                transConnection->requestSendSize = 0;

                if (sTransInfo->sendCallback) {
                    sTransInfo->sendCallback(reqSendSize, aid);
                }
            }
        }

#ifndef SDK_FINALROM
#if 0
        {
            OSTick now = OS_GetTick();

            if (sTransInfo->connections[aid].sendDelay) {
                DWCs_DelayCheck(sTransInfo->delayedSend, now, TRUE);
            }

            if (sTransInfo->connections[aid].recvDelay) {
                DWCs_DelayCheck(sTransInfo->delayedRecv, now, FALSE);
            }
        }
#endif
#endif
    }

#ifndef SDK_FINALROM
    {
        OSTick now = OS_GetTick();
        DWCs_DelayCheck(sTransInfo->delayedSend, now, TRUE);
        DWCs_DelayCheck(sTransInfo->delayedRecv, now, FALSE);
    }
#endif
}

void DWCi_ClearTransConnection(u8 aid) {
    if (!sTransInfo) {
        return;
    }

#if 1
    sTransInfo->connections[aid].sendingSize = 0;
    sTransInfo->connections[aid].recvingSize = 0;
    sTransInfo->connections[aid].requestSendSize = 0;
    sTransInfo->connections[aid].requestRecvSize = 0;
    sTransInfo->connections[aid].sendState = 0;

    if (sTransInfo->connections[aid].recvState != DWC_TRANSPORT_RECV_NOBUF) {
        sTransInfo->connections[aid].recvState = DWC_TRANSPORT_RECV_HEADER;
    }

    sTransInfo->connections[aid].lastRecvType = 0;
#else
    MI_CpuClear8(&sTransInfo->connections[aid], sizeof(DWCTransportConnection));
#endif
}

void DWCi_ShutdownTransport(void) {
#ifndef SDK_FINALROM
    ArrayFree(sTransInfo->delayedSend);
    ArrayFree(sTransInfo->delayedRecv);
#endif

    sTransInfo = NULL;
}

static DWCTransportConnection*DWCs_GetTransConnection(u8 aid) {
    SDK_ASSERT((aid >= 0) && (aid < DWC_MAX_CONNECTIONS));
    return &sTransInfo->connections[aid];
}

static int DWCs_GetSendState(u8 aid) {
    return sTransInfo->connections[aid].sendState;
}

static int DWCs_GetRecvState(u8 aid) {
    return sTransInfo->connections[aid].recvState;
}

void DWCs_Send(u8 aid, const u8 *buffer, int size, BOOL reliable) {
    GT2Connection connection = DWCi_GetGT2Connection(aid);
    gt2Send(connection, buffer, size, reliable);
}

static void DWCs_HandleReliableMessage(GT2Connection connection, u8 *message, int size) {
    u8 aid = DWCi_GetConnectionAID(connection);
    u16 type;

    switch (DWCs_GetRecvState(aid)) {
    case DWC_TRANSPORT_RECV_NOBUF:
        type = DWCs_DecodeHeader((DWCTransportHeader *)message);

        if ((type >= DWC_SEND_TYPE_MATCH_SYN) && (type <= DWC_SEND_TYPE_MATCH_ACK)) {
            DWCs_RecvDataHeader(aid, (DWCTransportHeader *)message, size);
        }
        else {
            DWC_Printf(DWC_REPORTFLAG_RECV_INFO, "+++ Recv buffer is not set\n");
        }
        break;
    case DWC_TRANSPORT_RECV_HEADER:
        DWCs_RecvDataHeader(aid, (DWCTransportHeader *)message, size);
        break;
    case DWC_TRANSPORT_RECV_BODY:
        DWCs_RecvDataBody(aid, message, size);
        break;
    case DWC_TRANSPORT_RECV_SYSTEM_DATA:
        DWCs_RecvSystemDataBody(aid, message, size);
        break;
    case DWC_TRANSPORT_RECV_ERROR:
        DWC_Printf(DWC_REPORTFLAG_RECV_INFO, "+++ Recv size is too large ( buffer size = %d < %d )\n", sTransInfo->connections[aid].recvBufferSize, size);
        sTransInfo->connections[aid].recvState = DWC_TRANSPORT_RECV_HEADER;
        sTransInfo->connections[aid].recvingSize = 0;
        sTransInfo->connections[aid].requestRecvSize = 0;
        break;
    default:
        DWC_Printf(DWC_REPORTFLAG_ERROR, "Recv error (state is %d).\n", DWCs_GetRecvState(aid));
        DWCi_SetError(DWC_ERROR_NETWORK, DWC_ECODE_SEQ_ETC + DWC_ECODE_GS_GT2 + DWC_ECODE_TYPE_TRANS_HEADER);
        break;
    }
}

static void DWCs_HandleUnreliableMessage(GT2Connection connection, void *message, int size) {
    u8 aid = DWCi_GetConnectionAID(connection);
    DWCTransportConnection *transConnection = &sTransInfo->connections[aid];

    if (transConnection->recvBuffer && (transConnection->recvBufferSize >= size)) {
        if (sTransInfo->recvCallback) {
            sTransInfo->recvCallback(aid, message, size);
        }

        if (sTransInfo->recvTimeoutCallback && (transConnection->recvTimeoutTime > 0)) {
            transConnection->previousRecvTick = OS_GetTick();
        }
    }
    else {
        DWC_Printf(DWC_REPORTFLAG_RECV_INFO, "Recv data size is too large (%d > %d)\n", size, transConnection->recvBufferSize);
        return;
    }
}

static void DWCs_RecvDataHeader(u8 aid, DWCTransportHeader *message, int size) {
    u16 type;
    DWCTransportConnection *connection = &sTransInfo->connections[aid];
    DWCTransportHeader header;

    connection->lastRecvState = (u8)DWCs_GetRecvState(aid);

    switch (type = DWCs_DecodeHeader(message)) {
    case DWC_SEND_TYPE_USERDATA:

        if (size != sizeof(DWCTransportHeader)) {
            DWC_Printf(DWC_REPORTFLAG_RECV_INFO, "+++ Invalid header from aid %d\n", aid);

            return;
        }

        MI_CpuCopy8(message, &header, sizeof(DWCTransportHeader));

        connection->requestRecvSize = header.size;
        connection->recvingSize = 0;

        if (connection->recvBuffer && (connection->recvBufferSize >= connection->requestRecvSize)) {
            connection->recvState = DWC_TRANSPORT_RECV_BODY;
        }
        else {
            connection->recvState = DWC_TRANSPORT_RECV_ERROR;
        }

        break;

    case DWC_SEND_TYPE_MATCH_SYN:
    case DWC_SEND_TYPE_MATCH_SYN_ACK:
    case DWC_SEND_TYPE_MATCH_ACK:

        DWC_Printf(DWC_REPORTFLAG_RECV_INFO, "Received system header.\n");
        connection->recvState = DWC_TRANSPORT_RECV_SYSTEM_DATA;
        break;

    default:
        DWC_Printf(DWC_REPORTFLAG_RECV_INFO, "+++ Invalid header from aid %d\n", aid);
        break;
    }

    connection->lastRecvType = type;
}

static void DWCs_RecvDataBody(u8 aid, void *message, int size) {
    DWCTransportConnection *connection;
    int requestSize;

    connection = &sTransInfo->connections[aid];

    if (DWCs_GetRecvState(aid) == DWC_TRANSPORT_RECV_BODY) {
        if (connection->recvingSize + size > connection->recvBufferSize) {
            DWC_Printf(DWC_REPORTFLAG_ERROR, "Recv buffer over flow.\n");
            DWCi_SetError(DWC_ERROR_NETWORK, DWC_ECODE_SEQ_ETC + DWC_ECODE_GS_GT2 + DWC_ECODE_TYPE_TRANS_BODY);

            return;
        }

        MI_CpuCopy8(message, (u8 *)connection->recvBuffer + connection->recvingSize, (u32)size);
    }

    connection->recvingSize += size;

    DWC_Printf(DWC_REPORTFLAG_RECV_INFO, "aid = %d size = %d/%d state = %d incoming buffer = %d\n", aid, connection->recvingSize, connection->requestRecvSize, DWCs_GetRecvState(aid), gt2GetIncomingBufferFreeSpace(DWCi_GetGT2Connection(aid)));

    if (connection->recvingSize == connection->requestRecvSize) {
        requestSize = connection->requestRecvSize;

        connection->recvState = DWC_TRANSPORT_RECV_HEADER;
        connection->recvingSize = 0;
        connection->requestRecvSize = 0;

        if (sTransInfo->recvCallback) {
            sTransInfo->recvCallback(aid, connection->recvBuffer, requestSize);
        }
    }

    if (sTransInfo->recvTimeoutCallback && (connection->recvTimeoutTime > 0)) {
        connection->previousRecvTick = OS_GetTick();
    }
}

static void DWCs_RecvSystemDataBody(u8 aid, void *message, int size) {
#pragma unused( size )
    DWCTransportConnection *transConnection = DWCs_GetTransConnection(aid);

    transConnection->recvState = transConnection->lastRecvState;

    switch (transConnection->lastRecvType) {
    case DWC_SEND_TYPE_MATCH_SYN:
    case DWC_SEND_TYPE_MATCH_SYN_ACK:
    case DWC_SEND_TYPE_MATCH_ACK:
        DWCi_ProcessMatchSynPacket(aid, transConnection->lastRecvType, (u8 *)message);
        break;
    }
}

static void DWCs_DelayCheck(DArray delayedMessages, OSTick now, BOOL send) {
    DWCDelayedMessage *msg;
    int i;
    int num;
    int freeSpace;
    u8 aid;

    if (delayedMessages == NULL) {
        return;
    }

    num = ArrayLength(delayedMessages);

    for (i = (num - 1); i >= 0; --i) {
        msg = (DWCDelayedMessage *)ArrayNth(delayedMessages, i);

        if (OS_TicksToMilliSeconds(now - msg->startTime) > msg->delayTime) {
            if (send) {
#if 0
                aid = DWCi_GetConnectionAID(msg->connection);

                if (!DWCi_IsValidAID(aid))
#else
                if (gt2GetConnectionState(msg->connection) != GT2Connected)
#endif
                {
                    ArrayDeleteAt(delayedMessages, i);
                    continue;
                }

#if 1
                aid = DWCi_GetConnectionAID(msg->connection);
#endif
                freeSpace = DWCs_GetOutgoingBufferFreeSize(aid);

                if (freeSpace > msg->size) {
                    gt2FilteredSend(msg->connection, msg->filterID, msg->message, msg->size, msg->reliable);
                }
                else {
                    return;
                }
            }
            else {
                gt2FilteredReceive(msg->connection, msg->filterID, msg->message, msg->size, msg->reliable);
            }

            ArrayDeleteAt(delayedMessages, i);
        }
        else {
            return;
        }
    }
}

static void DWCs_AddDelayMessage(DArray array, u16 delayValue, GT2Connection connection, int filterID, const u8 *message, int size, BOOL reliable) {
    DWCDelayedMessage msg;

    MI_CpuClear8(&msg, sizeof(DWCDelayedMessage));

    msg.connection = connection;
    msg.message = gsimalloc((u32)size);

    if (msg.message == NULL) {
        DWCi_SetError(DWC_ERROR_FATAL, DWC_ECODE_SEQ_ETC + DWC_ECODE_GS_GT2 + DWC_ECODE_TYPE_ALLOC);

        return;
    }

    MI_CpuCopy8(message, msg.message, (u32)size);
    
    msg.filterID = filterID;
    msg.size = size;
    msg.reliable = reliable;
    msg.startTime = OS_GetTick();
    msg.delayTime = delayValue;

    ArrayInsertAt(array, &msg, 0);
}

static void DWCs_DelayedMessageFree(void *elem) {
    DWCDelayedMessage *message = (DWCDelayedMessage *)elem;
    gsifree(message->message);
}

static int DWCs_GetOutgoingBufferFreeSize(u8 aid) {
    static const int gamespyUseSize = 512;
    GT2Connection connection = DWCi_GetGT2Connection(aid);
    int free;

    SDK_ASSERT(connection);

    free = gt2GetOutgoingBufferFreeSpace(connection) - DWC_TRANSPORT_GT2HEADER_SIZE - gamespyUseSize;

    return (free > 0) ? free : 0;
}

#ifndef SDK_FINALROM
static void DWCs_SendFilterCallbackDrop(GT2Connection connection, int filterID, const GT2Byte *message, int size, GT2Bool reliable) {
    if (!reliable && (MATH_Rand16(&sTransInfo->context, 100) < sTransInfo->sendDrop)) {
        DWC_Printf(DWC_REPORTFLAG_SEND_INFO, "Packet loss\n");

        return;
    }

    gt2FilteredSend(connection, filterID, message, size, reliable);
}

static void DWCs_RecvFilterCallbackDrop(GT2Connection connection, int filterID, GT2Byte *message, int size, GT2Bool reliable) {
    if (!reliable && (MATH_Rand16(&sTransInfo->context, 100) < sTransInfo->recvDrop)) {
        DWC_Printf(DWC_REPORTFLAG_RECV_INFO, "Packet loss\n");
        return;
    }

    gt2FilteredReceive(connection, filterID, message, size, reliable);
}

static void DWCs_SendFilterCallbackDelay(GT2Connection connection, int filterID, const u8 *message, int size, BOOL reliable) {
    u8 aid = DWCi_GetConnectionAID(connection);
    DWCs_AddDelayMessage(sTransInfo->delayedSend, sTransInfo->connections[aid].sendDelay, connection, filterID, message, size, reliable);
}

static void DWCs_RecvFilterCallbackDelay(GT2Connection connection, int filterID, u8 *message, int size, BOOL reliable) {
    u8 aid = DWCi_GetConnectionAID(connection);
    DWCs_AddDelayMessage(sTransInfo->delayedRecv, sTransInfo->connections[aid].recvDelay, connection, filterID, message, size, reliable);
}


#endif
