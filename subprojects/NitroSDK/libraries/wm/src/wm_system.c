#include <nitro/wm.h>

#include "wm_arm9_private.h"

#define WM_BUF_MSG_NUM 10

static u16 wmInitialized = 0;
static WMArm9Buf *wm9buf;
static u32 fifoBuf[WM_BUF_MSG_NUM][WM_FIFO_BUF_SIZE / sizeof(u32)] ATTRIBUTE_ALIGN(32);
static OSMessageQueue bufMsgQ;
static OSMessage bufMsg[WM_BUF_MSG_NUM];

static void WmReceiveFifo(PXIFifoTag tag, u32 fifo_buf_adr, BOOL err);
static void WmClearFifoRecvFlag(void);
static WMErrCode WmInitCore(void *wmSysBuf, u16 dmaNo, u32 bufSize);
static u32 *WmGetCommandBuffer4Arm7(void);

WMErrCode WM_Init (void *wmSysBuf, u16 dmaNo)
{
    WMErrCode result;
    result = WmInitCore(wmSysBuf, dmaNo, WM_SYSTEM_BUF_SIZE);
    if (result != WM_ERRCODE_SUCCESS)
    {
        return result;
    }
    wm9buf->scanOnlyFlag = FALSE;
    return result;
}

WMErrCode WMi_InitForScan(void *wmSysBuf, u16 dmaNo);

WMErrCode WMi_InitForScan (void *wmSysBuf, u16 dmaNo)
{
#define WM_STATUS_BUF_SIZE_FOR_SCAN      768
#define WM_ARM9WM_BUF_SIZE_FOR_SCAN      320
#define WM_SYSTEM_BUF_SIZE_FOR_SCAN      (WM_ARM9WM_BUF_SIZE_FOR_SCAN + WM_ARM7WM_BUF_SIZE + WM_STATUS_BUF_SIZE_FOR_SCAN + WM_FIFO_BUF_SIZE + WM_FIFO_BUF_SIZE)

    WMErrCode result;
    result = WmInitCore(wmSysBuf, dmaNo, WM_SYSTEM_BUF_SIZE_FOR_SCAN);
    if (result != WM_ERRCODE_SUCCESS)
    {
        return result;
    }
    wm9buf = (WMArm9Buf *)wmSysBuf;
    wm9buf->WM7 = (WMArm7Buf *)((u32)wm9buf + WM_ARM9WM_BUF_SIZE_FOR_SCAN);
    wm9buf->status = (WMStatus *)((u32)(wm9buf->WM7) + WM_ARM7WM_BUF_SIZE);
    wm9buf->fifo9to7 = (u32 *)((u32)(wm9buf->status) + WM_STATUS_BUF_SIZE_FOR_SCAN);
    wm9buf->fifo7to9 = (u32 *)((u32)(wm9buf->fifo9to7) + WM_FIFO_BUF_SIZE);
    wm9buf->dmaNo = dmaNo;
    wm9buf->scanOnlyFlag = TRUE;

    return result;
}

static WMErrCode WmInitCore (void *wmSysBuf, u16 dmaNo, u32 bufSize)
{
    OSIntrMode e;

    SDK_COMPILER_ASSERT(sizeof(WMArm9Buf) <= WM_ARM9WM_BUF_SIZE);
    SDK_COMPILER_ASSERT(sizeof(WMArm7Buf) <= WM_ARM7WM_BUF_SIZE);
    SDK_COMPILER_ASSERT(sizeof(WMStatus) <= WM_STATUS_BUF_SIZE);

    e = OS_DisableInterrupts();

    if (wmInitialized)
    {
        (void)OS_RestoreInterrupts(e);
        return WM_ERRCODE_ILLEGAL_STATE;
    }

    if (wmSysBuf == NULL)
    {
        WM_WARNING("Parameter \"wmSysBuf\" must not be NULL.\n");
        (void)OS_RestoreInterrupts(e);
        return WM_ERRCODE_INVALID_PARAM;
    }

    if (dmaNo > MI_DMA_MAX_NUM)
    {
        WM_WARNING("Parameter \"dmaNo\" is over %d.\n", MI_DMA_MAX_NUM);
        (void)OS_RestoreInterrupts(e);
        return WM_ERRCODE_INVALID_PARAM;
    }

    if ((u32)wmSysBuf & 0x01f)
    {
        WM_WARNING("Parameter \"wmSysBuf\" must be 32-byte aligned.\n");
        (void)OS_RestoreInterrupts(e);
        return WM_ERRCODE_INVALID_PARAM;
    }

    PXI_Init();
    if (!PXI_IsCallbackReady(PXI_FIFO_TAG_WM, PXI_PROC_ARM7))
    {
        WM_WARNING("WM library on ARM7 side is not ready yet.\n");
        (void)OS_RestoreInterrupts(e);
        return WM_ERRCODE_WM_DISABLE;
    }

    DC_InvalidateRange(wmSysBuf, bufSize);

    MI_DmaClear32(dmaNo, wmSysBuf, bufSize);
    wm9buf = (WMArm9Buf *)wmSysBuf;
    wm9buf->WM7 = (WMArm7Buf *)((u32)wm9buf + WM_ARM9WM_BUF_SIZE);
    wm9buf->status = (WMStatus *)((u32)(wm9buf->WM7) + WM_ARM7WM_BUF_SIZE);
    wm9buf->fifo9to7 = (u32 *)((u32)(wm9buf->status) + WM_STATUS_BUF_SIZE);
    wm9buf->fifo7to9 = (u32 *)((u32)(wm9buf->fifo9to7) + WM_FIFO_BUF_SIZE);

    WmClearFifoRecvFlag();

    wm9buf->dmaNo = dmaNo;
    wm9buf->connectedAidBitmap = 0x0000;
    wm9buf->myAid = 0;

    {
        s32 i;

        for (i = 0; i < WM_NUM_OF_PORT; i++)
        {
            wm9buf->portCallbackTable[i] = NULL;
            wm9buf->portCallbackArgument[i] = NULL;
        }
    }

    {
        s32 i;

        OS_InitMessageQueue(&bufMsgQ, bufMsg, WM_BUF_MSG_NUM);
        for (i = 0; i < WM_BUF_MSG_NUM; i++)
        {
            *((u16 *)(fifoBuf[i])) = WM_API_REQUEST_ACCEPTED;
            DC_StoreRange(fifoBuf[i], 2);
            (void)OS_SendMessage(&bufMsgQ, fifoBuf[i], OS_MESSAGE_BLOCK);
        }
    }

    PXI_SetFifoRecvCallback(PXI_FIFO_TAG_WM, WmReceiveFifo);

    wmInitialized = 1;
    (void)OS_RestoreInterrupts(e);
    return WM_ERRCODE_SUCCESS;
}

WMErrCode WM_Finish (void)
{
    OSIntrMode e;
    WMErrCode result;

    e = OS_DisableInterrupts();

    result = WMi_CheckInitialized();
    if (result != WM_ERRCODE_SUCCESS)
    {
        (void)OS_RestoreInterrupts(e);
        return WM_ERRCODE_ILLEGAL_STATE;
    }

    result = WMi_CheckState(WM_STATE_READY);
    WM_CHECK_RESULT(result);

    WmClearFifoRecvFlag();
    PXI_SetFifoRecvCallback(PXI_FIFO_TAG_WM, NULL);
    wm9buf = 0;

    wmInitialized = 0;
    (void)OS_RestoreInterrupts(e);
    return WM_ERRCODE_SUCCESS;
}

void WMi_SetCallbackTable (WMApiid id, WMCallbackFunc callback)
{
    SDK_NULL_ASSERT(wm9buf);
    wm9buf->CallbackTable[id] = callback;
}

u32 * WmGetCommandBuffer4Arm7 (void)
{
    u32 * tmpAddr;

    if (FALSE == OS_ReceiveMessage(&bufMsgQ, (OSMessage *)&tmpAddr, OS_MESSAGE_NOBLOCK))
    {
        return NULL;
    }

    DC_InvalidateRange(tmpAddr, 2);
    if ((*((u16 *)tmpAddr) & WM_API_REQUEST_ACCEPTED) == 0)
    {
        (void)OS_JamMessage(&bufMsgQ, tmpAddr, OS_MESSAGE_BLOCK);
        return NULL;
    }

    return tmpAddr;
}

WMErrCode WMi_SendCommand (WMApiid id, u16 paramNum, ...)
{
    va_list vlist;
    s32     i;
    int     result;
    u32    *tmpAddr;

    SDK_NULL_ASSERT(wm9buf);

    tmpAddr = WmGetCommandBuffer4Arm7();
    if (tmpAddr == NULL)
    {
        return WM_ERRCODE_FIFO_ERROR;
    }

    *(u16 *)tmpAddr = (u16)id;

    va_start(vlist, paramNum);
    for (i = 0; i < paramNum; i++)
    {
        tmpAddr[i + 1] = va_arg(vlist, u32);
    }
    va_end(vlist);

    DC_StoreRange(tmpAddr, WM_FIFO_BUF_SIZE);

    result = PXI_SendWordByFifo(PXI_FIFO_TAG_WM, (u32)tmpAddr, FALSE);

    (void)OS_SendMessage(&bufMsgQ, tmpAddr, OS_MESSAGE_BLOCK);

    if (result < 0)
    {
        WM_WARNING("Failed to send command through FIFO.\n");
        return WM_ERRCODE_FIFO_ERROR;
    }

    return WM_ERRCODE_OPERATING;
}

WMErrCode WMi_SendCommandDirect (void *data, u32 length)
{
    int result;
    u32 * tmpAddr;

    SDK_NULL_ASSERT(wm9buf);
    SDK_ASSERT(length <= WM_FIFO_BUF_SIZE);

    tmpAddr = WmGetCommandBuffer4Arm7();
    if (tmpAddr == NULL)
    {
        return WM_ERRCODE_FIFO_ERROR;
    }

    MI_CpuCopy8(data, tmpAddr, length);
    DC_StoreRange(tmpAddr, length);

    result = PXI_SendWordByFifo(PXI_FIFO_TAG_WM, (u32)tmpAddr, FALSE);

    (void)OS_SendMessage(&bufMsgQ, tmpAddr, OS_MESSAGE_BLOCK);

    if (result < 0)
    {
        WM_WARNING("Failed to send command through FIFO.\n");
        return WM_ERRCODE_FIFO_ERROR;
    }

    return WM_ERRCODE_OPERATING;
}

WMArm9Buf * WMi_GetSystemWork (void)
{
    return wm9buf;
}

WMErrCode WMi_CheckInitialized (void)
{
    if (!wmInitialized)
    {
        WM_WARNING("WM library is not initialized yet.\n");
        return WM_ERRCODE_ILLEGAL_STATE;
    }
    return WM_ERRCODE_SUCCESS;
}

WMErrCode WMi_CheckIdle (void)
{
    WMErrCode result;

    result = WMi_CheckInitialized();
    WM_CHECK_RESULT(result);

    DC_InvalidateRange(&(wm9buf->status->state), 2);
    if ((wm9buf->status->state == WM_STATE_READY) || (wm9buf->status->state == WM_STATE_STOP))
    {
        WM_WARNING("WM state is \"%d\" now. So can't execute request.\n", wm9buf->status->state);
        return WM_ERRCODE_ILLEGAL_STATE;
    }

    return WM_ERRCODE_SUCCESS;
}

WMErrCode WMi_CheckStateEx (s32 paramNum, ...)
{
    WMErrCode result;
    u16 now;
    u32 temp;
    va_list vlist;

    result = WMi_CheckInitialized();
    WM_CHECK_RESULT(result);

    DC_InvalidateRange(&(wm9buf->status->state), 2);
    now = wm9buf->status->state;

    result = WM_ERRCODE_ILLEGAL_STATE;
    va_start(vlist, paramNum);
    for (; paramNum; paramNum--)
    {
        temp = va_arg(vlist, u32);
        if (temp == now)
        {
            result = WM_ERRCODE_SUCCESS;
        }
    }
    va_end(vlist);

    if (result == WM_ERRCODE_ILLEGAL_STATE)
    {
        WM_WARNING("WM state is \"%d\" now. So can't execute request.\n", now);
    }

    return result;
}

static void WmReceiveFifo (PXIFifoTag tag, u32 fifo_buf_adr, BOOL err)
{
#pragma unused(tag)

    WMCallback *callback_p = (WMCallback *)fifo_buf_adr;
    WMArm9Buf *w9b = wm9buf;
#ifdef WM_DEBUG_CALLBACK
    int     beginVcount = GX_GetVCount();
#endif

    if (err)
        return;

    DC_InvalidateRange(w9b->fifo7to9, WM_FIFO_BUF_SIZE);
    if (!w9b->scanOnlyFlag)
    {
        DC_InvalidateRange(w9b->status, WM_STATUS_BUF_SIZE);
    }

    if ((u32)callback_p != (u32)(w9b->fifo7to9))
    {
        DC_InvalidateRange(callback_p, WM_FIFO_BUF_SIZE);
    }

    if (callback_p->apiid >= WM_NUM_OF_CALLBACK)
    {
        if (callback_p->apiid == WM_APIID_INDICATION)
        {
#if SDK_VERSION_WL >= 21000
            if (callback_p->errcode == WM_ERRCODE_FLASH_ERROR)
            {
                OS_Terminate();
            }
#endif
            if (w9b->indCallback != NULL)
            {
                w9b->indCallback((void *)callback_p);
            }
        }
        else if (callback_p->apiid == WM_APIID_PORT_RECV)
        {
            WMPortRecvCallback *cb_Port = (WMPortRecvCallback *)callback_p;
            SDK_ASSERT(cb_Port->port < 16);

            if (w9b->portCallbackTable[cb_Port->port] != NULL)
            {
                cb_Port->arg = w9b->portCallbackArgument[cb_Port->port];
                cb_Port->connectedAidBitmap = (u16)w9b->connectedAidBitmap;
                DC_InvalidateRange(cb_Port->recvBuf, w9b->status->mp_recvBufSize);
                (w9b->portCallbackTable[cb_Port->port]) ((void *)cb_Port);
            }
#ifdef WM_DEBUG
            else
            {
                WM_DPRINTF("Warning: no callback function on port %d { %04x %04x ... }\n",
                           cb_Port->port, cb_Port->data[0], cb_Port->data[1]);
            }
#endif
        }
        else if (callback_p->apiid == WM_APIID_PORT_SEND)
        {

            WMPortSendCallback *cb_Port = (WMPortSendCallback *)callback_p;
            callback_p->apiid = WM_APIID_SET_MP_DATA;
            if (cb_Port->callback != NULL)
            {
                (cb_Port->callback) ((void *)cb_Port);
            }
        }
        else
        {
            OS_Printf("ARM9: no callback function\n");
        }
    }
    else
    {
        if (callback_p->apiid == WM_APIID_START_MP)
        {
            WMStartMPCallback *cb_StartMP = (WMStartMPCallback *)callback_p;
            if (cb_StartMP->state == WM_STATECODE_MPEND_IND
                || cb_StartMP->state == WM_STATECODE_MP_IND)
            {
                if (cb_StartMP->errcode == WM_ERRCODE_SUCCESS)
                {
                    DC_InvalidateRange(cb_StartMP->recvBuf, w9b->status->mp_recvBufSize);
                }
            }
        }

        if (callback_p->apiid == WM_APIID_END)
        {
            if (callback_p->errcode == WM_ERRCODE_SUCCESS)
            {
                WMCallbackFunc cb = w9b->CallbackTable[callback_p->apiid];

                (void)WM_Finish();
                if (cb != NULL)
                {
                    cb((void *)callback_p);
                }

                WM_DLOGF_CALLBACK("Cb[%x]", callback_p->apiid);

                return;
            }
        }

        if (NULL != w9b->CallbackTable[callback_p->apiid])
        {
            (w9b->CallbackTable[callback_p->apiid]) ((void *)callback_p);

            if (!wmInitialized)
            {
                return;
            }
        }

        if (callback_p->apiid == WM_APIID_START_PARENT
            || callback_p->apiid == WM_APIID_START_CONNECT)
        {
            u16     state, aid, myAid, reason;
            u8     *macAddress;
            u8     *ssid;
            u16     parentSize, childSize;

            if (callback_p->apiid == WM_APIID_START_PARENT)
            {
                WMStartParentCallback *cb = (WMStartParentCallback *)callback_p;
                state = cb->state;
                aid = cb->aid;
                myAid = 0;
                macAddress = cb->macAddress;
                ssid = cb->ssid;
                reason = cb->reason;
                parentSize = cb->parentSize;
                childSize = cb->childSize;
            }
            else if (callback_p->apiid == WM_APIID_START_CONNECT)
            {
                WMStartConnectCallback *cb = (WMStartConnectCallback *)callback_p;
                state = cb->state;
                aid = 0;
                myAid = cb->aid;
                macAddress = cb->macAddress;
                ssid = NULL;
                reason = cb->reason;
                parentSize = cb->parentSize;
                childSize = cb->childSize;
            }
            if (state == WM_STATECODE_CONNECTED ||
                state == WM_STATECODE_DISCONNECTED
                || state == WM_STATECODE_DISCONNECTED_FROM_MYSELF)
            {

                static WMPortRecvCallback cb_Port;
                u16     iPort;


                if (state == WM_STATECODE_CONNECTED)
                {
#ifdef WM_DEBUG
                    if (w9b->connectedAidBitmap & (1 << aid))
                    {
                        WM_DPRINTF("Warning: someone is connecting to connected aid: %d (%04x)",
                                   aid, w9b->connectedAidBitmap);
                    }
#endif
                    WM_DLOGF_AIDBITMAP("aid(%d) connected: %04x -> %04x", aid,
                                       w9b->connectedAidBitmap,
                                       w9b->connectedAidBitmap | (1 << aid));
                    w9b->connectedAidBitmap |= (1 << aid);
                }
                else
                {
#ifdef WM_DEBUG
                    if (!(w9b->connectedAidBitmap & (1 << aid)))
                    {
                        WM_DPRINTF
                            ("Warning: someone is disconnecting to disconnected aid: %d (%04x)",
                             aid, w9b->connectedAidBitmap);
                    }
#endif
                    WM_DLOGF_AIDBITMAP("aid(%d) disconnected: %04x -> %04x", aid,
                                       w9b->connectedAidBitmap,
                                       w9b->connectedAidBitmap & ~(1 << aid));
                    w9b->connectedAidBitmap &= ~(1 << aid);
                }
                w9b->myAid = myAid;

                MI_CpuClear8(&cb_Port, sizeof(WMPortRecvCallback));
                cb_Port.apiid = WM_APIID_PORT_RECV;
                cb_Port.errcode = WM_ERRCODE_SUCCESS;
                cb_Port.state = state;
                cb_Port.recvBuf = NULL;
                cb_Port.data = NULL;
                cb_Port.length = 0;
                cb_Port.aid = aid;
                cb_Port.myAid = myAid;
                cb_Port.connectedAidBitmap = (u16)w9b->connectedAidBitmap;
                cb_Port.seqNo = 0xffff;
                cb_Port.reason = reason;
                MI_CpuCopy8(macAddress, cb_Port.macAddress, WM_SIZE_MACADDR);
                if (ssid != NULL)
                {
                    MI_CpuCopy16(ssid, cb_Port.ssid, WM_SIZE_CHILD_SSID);
                }
                else
                {
                    MI_CpuClear16(cb_Port.ssid, WM_SIZE_CHILD_SSID);
                }
                cb_Port.maxSendDataSize = (myAid == 0) ? parentSize : childSize;
                cb_Port.maxRecvDataSize = (myAid == 0) ? childSize : parentSize;


                for (iPort = 0; iPort < WM_NUM_OF_PORT; iPort++)
                {
                    cb_Port.port = iPort;
                    if (w9b->portCallbackTable[iPort] != NULL)
                    {
                        cb_Port.arg = w9b->portCallbackArgument[iPort];
                        (w9b->portCallbackTable[iPort]) ((void *)&cb_Port);
                    }
                }
            }
        }
    }

    DC_InvalidateRange(w9b->fifo7to9, WM_FIFO_BUF_SIZE);
    WmClearFifoRecvFlag();

    if ((u32)callback_p != (u32)(w9b->fifo7to9))
    {
        callback_p->apiid |= WM_API_REQUEST_ACCEPTED;
        DC_StoreRange(callback_p, WM_FIFO_BUF_SIZE);
    }

    WM_DLOGF2_CALLBACK(beginVcount, "[CB](%x)", callback_p->apiid);

    return;
}

static void WmClearFifoRecvFlag (void)
{
    if (OS_GetSystemWork()->wm_callback_control & WM_EXCEPTION_CB_MASK)
    {
        OS_GetSystemWork()->wm_callback_control &= ~WM_EXCEPTION_CB_MASK;
    }
}

void WMi_DebugPrintSendQueue (WMPortSendQueue *queue)
{
    WMstatus *status = wm9buf->status;
    WMPortSendQueueData *queueData;
    u16 index;

    DC_InvalidateRange(wm9buf->status, WM_STATUS_BUF_SIZE);
    queueData = status->sendQueueData;

    OS_Printf("head = %d, tail = %d, ", queue->head, queue->tail);
    if (queue->tail != WM_SEND_QUEUE_END)
    {
        OS_Printf("%s", (queueData[queue->tail].next == WM_SEND_QUEUE_END) ? "valid" : "invalid");
    }
    OS_Printf("\n");
    for (index = queue->head; index != WM_SEND_QUEUE_END; index = queueData[index].next)
    {
        WMPortSendQueueData *data = &(queueData[index]);

        OS_Printf("queueData[%d] -> %d { port=%d, destBitmap=%x, size=%d } \n", index, data->next,
                  data->port, data->destBitmap, data->size);
    }

}

void WMi_DebugPrintAllSendQueue (void)
{
    WMstatus *status = wm9buf->status;
    DC_InvalidateRange(wm9buf->status, WM_STATUS_BUF_SIZE);
    OS_Printf("== ready queue [2]\n");
    OS_Printf(" head: %d, tail: %d\n", status->readyQueue[2].head, status->readyQueue[2].tail);
}

const WMStatus * WMi_GetStatusAddress (void)
{
    if (WMi_CheckInitialized() != WM_ERRCODE_SUCCESS)
    {
        return NULL;
    }

    return wm9buf->status;
}

BOOL WMi_CheckMpPacketTimeRequired (u16 parentSize, u16 childSize, u8 childs)
{
    s32     mp_time;
    mp_time = ((
                   96
                   + (24
                      + 4
                      + 2
                      + parentSize + 4
                      + 4
                   ) * 4
               ) + (
                       (10
                        + 96
                        + (24
                           + 2
                           + childSize + 2
                           + 4
                        ) * 4
                        + 6
                       ) * childs) + (
                                         10
                                         + 96
                                         + (24
                                            + 4
                                            + 4
                                         ) * 4
               ));

    if (mp_time > WM_MAX_MP_PACKET_TIME)
    {
        OS_TWarning
            ("It is required %dus to transfer each MP packet.\nThat should not exceed %dus.\n",
             mp_time, WM_MAX_MP_PACKET_TIME);
        return FALSE;
    }
    return TRUE;
}

BOOL WMi_IsMP (void)
{
    WMStatus *status;
    BOOL    isMP;
    OSIntrMode e;

#ifdef SDK_DEBUG
    if (WMi_CheckInitialized() != WM_ERRCODE_SUCCESS)
    {
        return FALSE;
    }
#endif

    e = OS_DisableInterrupts();

    if (wm9buf != NULL)
    {
        status = wm9buf->status;
        DC_InvalidateRange(&(status->mp_flag), 4);
        isMP = status->mp_flag;
    }
    else
    {
        isMP = FALSE;
    }

    (void)OS_RestoreInterrupts(e);
    return isMP;
}

u16 WM_GetAID (void)
{
    u16 myAid;
    OSIntrMode e;

#ifdef SDK_DEBUG
    if (WMi_CheckInitialized() != WM_ERRCODE_SUCCESS)
    {
        return 0;
    }
#endif

    e = OS_DisableInterrupts();

    if (wm9buf != NULL)
    {
        myAid = wm9buf->myAid;
    }
    else
    {
        myAid = 0;
    }

    (void)OS_RestoreInterrupts(e);
    return myAid;
}

u16 WM_GetConnectedAIDs (void)
{
    u32 connectedAidBitmap;
    OSIntrMode e;

#ifdef SDK_DEBUG

    if (WMi_CheckInitialized() != WM_ERRCODE_SUCCESS)
    {
        return 0;
    }
#endif

    e = OS_DisableInterrupts();

    if (wm9buf != NULL)
    {
        connectedAidBitmap = wm9buf->connectedAidBitmap;
    }
    else
    {
        connectedAidBitmap = 0;
    }

    (void)OS_RestoreInterrupts(e);
    return (u16)connectedAidBitmap;
}

u16 WMi_GetMPReadyAIDs (void)
{
    WMStatus *status;
    u16 mpReadyAidBitmap;
    OSIntrMode e;

#ifdef SDK_DEBUG
    if (WMi_CheckInitialized() != WM_ERRCODE_SUCCESS)
    {
        return FALSE;
    }
#endif

    e = OS_DisableInterrupts();

    if (wm9buf != NULL)
    {
        status = wm9buf->status;
        DC_InvalidateRange(&(status->mp_readyBitmap), 2);
        mpReadyAidBitmap = status->mp_readyBitmap;
    }
    else
    {
        mpReadyAidBitmap = FALSE;
    }


    (void)OS_RestoreInterrupts(e);
    return mpReadyAidBitmap;
}
