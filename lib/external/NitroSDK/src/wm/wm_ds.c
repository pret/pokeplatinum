#include <nitro/wm.h>

#include "include/wm_arm9_private.h"

static void WmDataSharingSetDataCallback(void * callback);
static void WmDataSharingReceiveCallback_Parent(void * callback);
static void WmDataSharingReceiveCallback_Child(void * callback);
static void WmDataSharingReceiveData(WMDataSharingInfo * dsInfo, u16 aid, u16 * data);
static void WmDataSharingSendDataSet(WMDataSharingInfo * dsInfo, BOOL delayed);
static u16 * WmGetSharedDataAddress(WMDataSharingInfo * dsInfo, u32 aidBitmap, u16 * receiveBuf, u32 aid);

static inline u16 WmDataSharingGetNextIndex (u32 index) {
    return (u16)((index + 1) % WM_DS_DATASET_NUM);
}

static inline u16 WmDataSharingGetPrevIndex (u32 index) {
    return (u16)((index + WM_DS_DATASET_NUM - 1) % WM_DS_DATASET_NUM);
}

WMErrCode WM_StartDataSharing (WMDataSharingInfo * dsInfo, u16 port, u16 aidBitmap, u16 dataLength, BOOL doubleMode) {
    WMErrCode result;
    int aid;
    u16 connectedAIDs = 0x0001;

    result = WMi_CheckStateEx(2, WM_STATE_MP_PARENT, WM_STATE_MP_CHILD);
    WM_CHECK_RESULT(result);

    if (dsInfo == NULL) {
        WM_WARNING("Parameter \"dsInfo\" must not be NULL.\n");
        return WM_ERRCODE_INVALID_PARAM;
    }
    if (port >= WM_NUM_OF_PORT) {
        WM_WARNING("Parameter \"port\" must be less than %d.\n", WM_NUM_OF_PORT);
        return WM_ERRCODE_INVALID_PARAM;
    }
    if ((u32)dsInfo & 0x01f) {
        WM_WARNING("Parameter \"dsInfo\" is not 32-byte aligned.\n");
    }
    if (aidBitmap == 0) {
        WM_WARNING("Parameter \"aidBitmap\" must not be 0.\n");
        return WM_ERRCODE_INVALID_PARAM;
    }

    aid = WM_GetAID();
    if (aid == 0) {
        connectedAIDs = WM_GetConnectedAIDs();
    }

    MI_CpuClearFast(dsInfo, sizeof(WMDataSharingInfo));
    dsInfo->writeIndex = 0;
    dsInfo->sendIndex = 0;
    dsInfo->readIndex = 0;
    dsInfo->dataLength = dataLength;
    dsInfo->port = port;
    dsInfo->aidBitmap = 0;
    dsInfo->doubleMode = (u16)((doubleMode) ? TRUE : FALSE);

    aidBitmap |= (1 << aid);
    dsInfo->aidBitmap = aidBitmap;

    {
        u16 count = MATH_CountPopulation(aidBitmap);
        dsInfo->stationNumber = count;
        dsInfo->dataSetLength = (u16)(dataLength * count);

        if (dsInfo->dataSetLength > WM_DS_DATA_SIZE) {
            dsInfo->aidBitmap = 0;
            WM_WARNING(
                "Total size of sharing data must be less than or equal to %d bytes.\n",
                WM_DS_DATA_SIZE
            );
            return WM_ERRCODE_INVALID_PARAM;
        }
        dsInfo->dataSetLength += 4;
    }

    dsInfo->state = WM_DS_STATE_START;

    if (aid == 0) {
        int i;

        for (i = 0; i < WM_DS_DATASET_NUM; i++) {
            dsInfo->ds[i].aidBitmap = (u16)(dsInfo->aidBitmap & (connectedAIDs | 0x0001));
        }

        (void)WM_SetPortCallback(port, WmDataSharingReceiveCallback_Parent, (void *)dsInfo);

        for (i = 0; i < ((dsInfo->doubleMode == TRUE) ? 2 : 1); i++) {
            int res;

            dsInfo->writeIndex = WmDataSharingGetNextIndex(dsInfo->writeIndex);
            res =
                WM_SetMPDataToPortEx(
                    WmDataSharingSetDataCallback, dsInfo, (u16 *)&dsInfo->ds[i],
                    dsInfo->dataSetLength,
                    (u16)(dsInfo->aidBitmap & connectedAIDs), dsInfo->port,
                    WM_PRIORITY_HIGH
                );
            if (res == WM_ERRCODE_NO_CHILD) {
                dsInfo->seqNum[i] = 0xffff;
                dsInfo->sendIndex = WmDataSharingGetNextIndex(dsInfo->sendIndex);
            } else {
                if (res != WM_ERRCODE_SUCCESS && res != WM_ERRCODE_OPERATING) {
                    WM_WARNING("WM_SetMPDataToPort failed during data-sharing. errcode=%x\n", res);
                    dsInfo->state = WM_DS_STATE_ERROR;
                    return WM_ERRCODE_FAILED;
                }
            }
        }
    } else {
        dsInfo->sendIndex = (u16)(WM_DS_DATASET_NUM - 1);
        (void)WM_SetPortCallback(port, WmDataSharingReceiveCallback_Child, (void *)dsInfo);
    }

    return WM_ERRCODE_SUCCESS;
}

WMErrCode WM_EndDataSharing (WMDataSharingInfo * dsInfo) {
    if (dsInfo == NULL) {
        WM_WARNING("Parameter \"dsInfo\" must not be NULL.\n");
        return WM_ERRCODE_INVALID_PARAM;
    }

    if (dsInfo->aidBitmap == 0) {
        WM_WARNING("It is not data-sharing mode now.\n");
        return WM_ERRCODE_ILLEGAL_STATE;
    }

    (void)WM_SetPortCallback(dsInfo->port, NULL, NULL);
    dsInfo->aidBitmap = 0;
    dsInfo->state = WM_DS_STATE_READY;

    return WM_ERRCODE_SUCCESS;
}

WMErrCode WM_StepDataSharing (WMDataSharingInfo * dsInfo, const u16 * sendData, WMDataSet * receiveData) {
    WMErrCode result;
    u16 aid;
    u16 connectedAIDs;
    u16 state;

    result = WMi_CheckStateEx(2, WM_STATE_MP_PARENT, WM_STATE_MP_CHILD);
    WM_CHECK_RESULT(result);

    if (dsInfo == NULL) {
        WM_WARNING("Parameter \"dsInfo\" must not be NULL.\n");
        return WM_ERRCODE_INVALID_PARAM;
    }
    if (sendData == NULL) {
        WM_WARNING("Parameter \"sendData\" must not be NULL.\n");
        return WM_ERRCODE_INVALID_PARAM;
    }
    if (receiveData == NULL) {
        WM_WARNING("Parameter \"receiveData\" must not be NULL.\n");
        return WM_ERRCODE_INVALID_PARAM;
    }

    aid = WM_GetAID();
    if (aid == 0) {
        connectedAIDs = WM_GetConnectedAIDs();
    }

    state = dsInfo->state;
    if (state == WM_DS_STATE_ERROR) {
        WM_WARNING("An error occurred during data-sharing.\n");
        return WM_ERRCODE_FAILED;
    }
    if (state != WM_DS_STATE_START && state != WM_DS_STATE_RETRY_SEND) {
        WM_WARNING("It is not data-sharing mode now.\n");
        return WM_ERRCODE_ILLEGAL_STATE;
    }

    result = WM_ERRCODE_NO_DATASET;

    if (aid == 0) {
        BOOL sendFlag = FALSE;
        BOOL delayed = FALSE;

        if (state == WM_DS_STATE_RETRY_SEND) {
            int res;
            int oldWI;
            dsInfo->state = WM_DS_STATE_START;

            WM_DLOG_DATASHARING("send queue was full. do retry.");

            oldWI = WmDataSharingGetPrevIndex(dsInfo->writeIndex);
            res =
                WM_SetMPDataToPortEx(
                    WmDataSharingSetDataCallback, dsInfo,
                    (u16 *)&dsInfo->ds[oldWI], dsInfo->dataSetLength,
                    (u16)(dsInfo->aidBitmap & connectedAIDs), dsInfo->port,
                    WM_PRIORITY_HIGH
                );
            if (res == WM_ERRCODE_NO_CHILD) {
                WM_DLOGF_DATASHARING(
                    "sent ds   : write: %d, read: %d, send: %d\n",
                    dsInfo->writeIndex, dsInfo->readIndex, dsInfo->sendIndex
                );
                dsInfo->seqNum[oldWI] = 0xffff;
                dsInfo->sendIndex = WmDataSharingGetNextIndex(dsInfo->sendIndex);
            } else {
                if (res != WM_ERRCODE_SUCCESS && res != WM_ERRCODE_OPERATING) {
                    WM_WARNING("WM_SetMPDataToPort failed during data-sharing. errcode=%x\n", res);
                    dsInfo->state = WM_DS_STATE_ERROR;
                    return WM_ERRCODE_FAILED;
                }
            }
        }

        if (dsInfo->readIndex != dsInfo->sendIndex) {
            WM_DLOGF_DATASHARING(
                "read ds   : write: %d, read: %d, send: %d, seq#: %d",
                dsInfo->writeIndex, dsInfo->readIndex, dsInfo->sendIndex,
                dsInfo->seqNum[dsInfo->readIndex]
            );

            dsInfo->ds[dsInfo->readIndex].aidBitmap |= 0x0001;
            MI_CpuCopy16(&dsInfo->ds[dsInfo->readIndex], receiveData, sizeof(WMDataSet));
            dsInfo->currentSeqNum = dsInfo->seqNum[dsInfo->readIndex];
            dsInfo->readIndex = WmDataSharingGetNextIndex(dsInfo->readIndex);

            sendFlag = TRUE;
            result = WM_ERRCODE_SUCCESS;
            if (dsInfo->doubleMode == FALSE && connectedAIDs != 0
                && dsInfo->ds[dsInfo->writeIndex].aidBitmap == 0x0001) {
                delayed = TRUE;
            } else {
                delayed = FALSE;
            }
        }

        WmDataSharingSendDataSet(dsInfo, FALSE);

        if (sendFlag) {
            WM_DLOGF_DATASHARING(
                "send data : write: %d, read: %d, send: %d", dsInfo->writeIndex,
                dsInfo->readIndex, dsInfo->sendIndex
            );

            WmDataSharingReceiveData(dsInfo, 0, (u16 *)sendData);

            if (dsInfo->doubleMode == FALSE) {
                WmDataSharingSendDataSet(dsInfo, delayed);
            }
        }
    } else {
        BOOL sendFlag = FALSE;

        if (state == WM_DS_STATE_RETRY_SEND) {
            sendFlag = TRUE;
            dsInfo->state = WM_DS_STATE_START;
            WM_DLOG_DATASHARING("send queue was full. do retry.");
        } else {
            if (dsInfo->readIndex != dsInfo->writeIndex) {
                if (!(dsInfo->ds[dsInfo->readIndex].aidBitmap & 0x0001)) {
                    dsInfo->ds[dsInfo->readIndex].aidBitmap |= 0x0001;
                } else {
                    WM_DLOGF_DATASHARING(
                        "read ds   : write: %d, read: %d, send: %d, seq#: %d",
                        dsInfo->writeIndex, dsInfo->readIndex, dsInfo->sendIndex,
                        dsInfo->seqNum[dsInfo->readIndex]
                    );
                    MI_CpuCopy16(&dsInfo->ds[dsInfo->readIndex], receiveData, sizeof(WMDataSet));
                    dsInfo->currentSeqNum = dsInfo->seqNum[dsInfo->readIndex];
                    dsInfo->readIndex = WmDataSharingGetNextIndex(dsInfo->readIndex);

                    sendFlag = TRUE;
                    result = WM_ERRCODE_SUCCESS;
                }
            }
        }

        if (sendFlag) {
            int res;

            u16 * buf = (u16 *)(((u8 *)&dsInfo->ds[dsInfo->sendIndex]) + 32);

            WM_DLOGF_DATASHARING(
                "send data : write: %d, read: %d, send: %d", dsInfo->writeIndex,
                dsInfo->readIndex, dsInfo->sendIndex
            );

            MI_CpuCopy16(sendData, buf, dsInfo->dataLength);
            res =
                WM_SetMPDataToPortEx(
                    WmDataSharingSetDataCallback, dsInfo, buf, dsInfo->dataLength,
                    dsInfo->aidBitmap, dsInfo->port, WM_PRIORITY_HIGH
                );
            dsInfo->sendIndex = WmDataSharingGetNextIndex(dsInfo->sendIndex);
            if (res != WM_ERRCODE_OPERATING && res != WM_ERRCODE_SUCCESS) {
                WM_WARNING("WM_SetMPDataToPort failed during data-sharing. errcode=%x\n", res);
                dsInfo->state = WM_DS_STATE_ERROR;
                result = WM_ERRCODE_FAILED;
            }
        }
    }

    return result;
}

static void WmDataSharingSetDataCallback (void * callback) {
    WMArm9Buf * p = WMi_GetSystemWork();
    WMPortSendCallback * cb_Port = (WMPortSendCallback *)callback;
    WMDataSharingInfo * dsInfo;
    u16 aid;

    dsInfo = (WMDataSharingInfo *)(p->portCallbackArgument[cb_Port->port]);
    if ((p->portCallbackTable[cb_Port->port] != WmDataSharingReceiveCallback_Parent
         && p->portCallbackTable[cb_Port->port] != WmDataSharingReceiveCallback_Child)
        || dsInfo == NULL || dsInfo != (WMDataSharingInfo *)(cb_Port->arg)) {
        WM_WARNING("data-sharing has already terminated.");
        return;
    }

    aid = WM_GetAID();

    if (cb_Port->errcode == WM_ERRCODE_SUCCESS) {
        if (aid == 0) {
            WM_DLOGF_DATASHARING(
                "sent ds   : write: %d, read: %d, send: %d", dsInfo->writeIndex,
                dsInfo->readIndex, dsInfo->sendIndex
            );

            dsInfo->seqNum[dsInfo->sendIndex] = (u16)(cb_Port->seqNo >> 1);
            dsInfo->sendIndex = WmDataSharingGetNextIndex(dsInfo->sendIndex);
        } else {
            WM_DLOGF_DATASHARING(
                "sent data : write: %d, read: %d, send: %d", dsInfo->writeIndex,
                dsInfo->readIndex, dsInfo->sendIndex
            );
        }
    } else {
        if (cb_Port->errcode == WM_ERRCODE_SEND_QUEUE_FULL) {
            if (aid != 0) {
                dsInfo->sendIndex = WmDataSharingGetPrevIndex(dsInfo->sendIndex);
            }
            dsInfo->state = WM_DS_STATE_RETRY_SEND;
            WM_DLOG_DATASHARING("send queue is full. will retry.");
        } else {
            WM_WARNING(
                "WM_SetMPDataToPort failed during data-sharing. errcode=%x\n",
                cb_Port->errcode
            );
            dsInfo->state = WM_DS_STATE_ERROR;
        }
    }
}

static void WmDataSharingReceiveCallback_Parent (void * callback) {
    WMPortRecvCallback * cb_Port = (WMPortRecvCallback *)callback;
    WMDataSharingInfo * dsInfo = (WMDataSharingInfo *)cb_Port->arg;

    if (dsInfo == NULL) {
        WM_WARNING("data-sharing has already terminated.");
        return;
    }

    if (cb_Port->errcode == WM_ERRCODE_SUCCESS) {
        switch (cb_Port->state) {
        case WM_STATECODE_PORT_RECV:

            WmDataSharingReceiveData(dsInfo, cb_Port->aid, cb_Port->data);
            WmDataSharingSendDataSet(dsInfo, FALSE);
            break;

        case WM_STATECODE_CONNECTED:
            WmDataSharingSendDataSet(dsInfo, FALSE);
            break;

        case WM_STATECODE_DISCONNECTED:
        case WM_STATECODE_DISCONNECTED_FROM_MYSELF:
        {
            u32 aidBit;
            u32 writeIndex;
            OSIntrMode enabled;
            aidBit = 1U << cb_Port->aid;
            enabled = OS_DisableInterrupts();
            writeIndex = dsInfo->writeIndex;
            dsInfo->ds[writeIndex].aidBitmap &= ~aidBit;
            if (dsInfo->doubleMode == TRUE) {
                dsInfo->ds[WmDataSharingGetNextIndex(writeIndex)].aidBitmap &= ~aidBit;
            }
            (void)OS_RestoreInterrupts(enabled);
            WmDataSharingSendDataSet(dsInfo, FALSE);
            if (dsInfo->doubleMode == TRUE) {
                WmDataSharingSendDataSet(dsInfo, FALSE);
            }
        }
        break;

        case WM_STATECODE_PORT_INIT:
            break;
        }
    } else {
        WM_WARNING(
            "An unknown receiving error occured during data-sharing. errcode=%x\n",
            cb_Port->errcode
        );
        dsInfo->state = WM_DS_STATE_ERROR;
    }
}

static void WmDataSharingReceiveCallback_Child (void * callback) {
    WMPortRecvCallback * cb_Port = (WMPortRecvCallback *)callback;
    WMDataSharingInfo * dsInfo = (WMDataSharingInfo *)cb_Port->arg;

    if (dsInfo == NULL) {
        WM_WARNING("data-sharing has already terminated.");
        return;
    }

    if (cb_Port->errcode == WM_ERRCODE_SUCCESS) {
        switch (cb_Port->state) {
        case WM_STATECODE_PORT_RECV:
        {
            u32 length;
            u32 aid;
            u32 aidBitmap;
            WMDataSet * dataSet;

            WM_DLOGF_DATASHARING(
                "recv ds   : write: %d, read: %d, send: %d",
                dsInfo->writeIndex, dsInfo->readIndex, dsInfo->sendIndex
            );

            dataSet = (WMDataSet *)(cb_Port->data);
            aidBitmap = dataSet->aidBitmap;
            length = cb_Port->length;
            aid = WM_GetAID();

            if (length != dsInfo->dataSetLength) {
                WM_WARNING(
                    "received DataSharing data size(%d) != dsInfo->dataSetLength(%d)\n",
                    length, dsInfo->dataSetLength
                );
                if (length > sizeof(WMDataSet)) {
                    WM_WARNING("received DataSharing data exceeds sizeof(WMDataSet)\n");
                    length = sizeof(WMDataSet);
                }
            }
#ifdef SDK_DEBUG
            if (aidBitmap & ~(dsInfo->aidBitmap)) {
                WM_WARNING("received aidBitmap(%x) has too many members.\n", aidBitmap);
            }
#endif
            if (length >= 4 && (aidBitmap & (1 << aid))) {
                MI_CpuCopy16(dataSet, &dsInfo->ds[dsInfo->writeIndex], length);
                dsInfo->seqNum[dsInfo->writeIndex] = (u16)(cb_Port->seqNo >> 1);
                dsInfo->writeIndex = WmDataSharingGetNextIndex(dsInfo->writeIndex);
            }
        }
        break;
        case WM_STATECODE_PORT_INIT:
        case WM_STATECODE_CONNECTED:
        case WM_STATECODE_DISCONNECTED:
        case WM_STATECODE_DISCONNECTED_FROM_MYSELF:
            break;
        }
    } else {
        WM_WARNING(
            "An unknown receiving error occured during data-sharing. errcode=%x\n",
            cb_Port->errcode
        );
        dsInfo->state = WM_DS_STATE_ERROR;
    }
}

static void WmDataSharingReceiveData (WMDataSharingInfo * dsInfo, u16 aid, u16 * data) {
    u16 aidBit = (u16)(1 << aid);

    WM_DLOGF_DATASHARING(
        "recv data%d: write: %d, read: %d, send: %d", aid, dsInfo->writeIndex,
        dsInfo->readIndex, dsInfo->sendIndex
    );

    if (dsInfo->aidBitmap & aidBit) {
        u16 * buf;
        u16 writeIndex;
        OSIntrMode enabled;

        if (!(dsInfo->ds[dsInfo->writeIndex].aidBitmap & aidBit)) {
            if (dsInfo->doubleMode == TRUE) {
                WM_DLOGF_DATASHARING("[DS] received two DS packets from aid %d", aid);

                writeIndex = WmDataSharingGetNextIndex(dsInfo->writeIndex);
                if (!(dsInfo->ds[writeIndex].aidBitmap & aidBit)) {
                    OS_Warning(
                        "received too many DataSharing packets from aid %d. discarded.\n",
                        aid
                    );
                    return;
                }
            } else {
                OS_Warning("received too many DataSharing packets from aid %d. discarded.\n", aid);
                return;
            }
        } else {
            writeIndex = dsInfo->writeIndex;
        }

        buf = WmGetSharedDataAddress(dsInfo, dsInfo->aidBitmap, dsInfo->ds[writeIndex].data, aid);
        if (data != NULL) {
            MI_CpuCopy16(data, buf, dsInfo->dataLength);
        } else {
            MI_CpuClear16(buf, dsInfo->dataLength);
        }

        enabled = OS_DisableInterrupts();

        dsInfo->ds[writeIndex].aidBitmap &= ~aidBit;

        dsInfo->ds[writeIndex].receivedBitmap |= aidBit;
        (void)OS_RestoreInterrupts(enabled);
    }
}

void WmDataSharingSendDataSet (WMDataSharingInfo * dsInfo, BOOL delayed) {
    OSIntrMode enabled;

    enabled = OS_DisableInterrupts();

    if (dsInfo->ds[dsInfo->writeIndex].aidBitmap == 0) {
        u16 newWI, oldWI, resetWI;
        WMErrCode res;
        u16 connectedAIDs;

        WM_DLOGF_DATASHARING(
            "send ds   : write: %d, read: %d, send: %d", dsInfo->writeIndex,
            dsInfo->readIndex, dsInfo->sendIndex
        );

        connectedAIDs = WM_GetConnectedAIDs();
        oldWI = dsInfo->writeIndex;
        newWI = WmDataSharingGetNextIndex(oldWI);
        if (dsInfo->doubleMode == TRUE) {
            resetWI = WmDataSharingGetNextIndex(newWI);
        } else {
            resetWI = newWI;
        }
        SDK_ASSERT(newWI != dsInfo->readIndex && resetWI != dsInfo->readIndex);

        MI_CpuClear16(&dsInfo->ds[resetWI], sizeof(WMDataSet));
        dsInfo->ds[resetWI].aidBitmap = (u16)(dsInfo->aidBitmap & (connectedAIDs | 0x0001));
        dsInfo->writeIndex = newWI;
        dsInfo->ds[oldWI].aidBitmap = dsInfo->aidBitmap;
        if (delayed == TRUE) {
            dsInfo->ds[oldWI].aidBitmap &= ~0x0001;
        }
        (void)OS_RestoreInterrupts(enabled);
        res =
            WM_SetMPDataToPortEx(
                WmDataSharingSetDataCallback, dsInfo, (u16 *)&dsInfo->ds[oldWI],
                dsInfo->dataSetLength, (u16)(dsInfo->aidBitmap & connectedAIDs),
                dsInfo->port, WM_PRIORITY_HIGH
            );
        if (res == WM_ERRCODE_NO_CHILD) {
            WM_DLOGF_DATASHARING(
                "sent ds   : write: %d, read: %d, send: %d", dsInfo->writeIndex,
                dsInfo->readIndex, dsInfo->sendIndex
            );

            dsInfo->seqNum[oldWI] = 0xffff;
            dsInfo->sendIndex = WmDataSharingGetNextIndex(dsInfo->sendIndex);
        } else {
            if (res != WM_ERRCODE_SUCCESS && res != WM_ERRCODE_OPERATING) {
                WM_WARNING("WM_SetMPDataToPort failed during data-sharing. errcode=%x\n", res);
                dsInfo->state = WM_DS_STATE_ERROR;
            }
        }
    } else {
        (void)OS_RestoreInterrupts(enabled);
    }
}

u16 * WM_GetSharedDataAddress (WMDataSharingInfo * dsInfo, WMDataSet * receiveData, u16 aid) {
    u32 aidBitmap = receiveData->aidBitmap;
    u32 receivedBitmap = receiveData->receivedBitmap;
    u32 aidBit = (1U << aid);

    if (dsInfo == NULL) {
        WM_WARNING("Parameter \"dsInfo\" must not be NULL.\n");
        return NULL;
    }

    if (receiveData == NULL) {
        WM_WARNING("Parameter \"receiveData\" must not be NULL.\n");
        return NULL;
    }

    if (!(aidBitmap & aidBit)) {
        return NULL;
    }

    if (!(receivedBitmap & aidBit)) {
        return NULL;
    }

    return WmGetSharedDataAddress(dsInfo, aidBitmap, receiveData->data, aid);
}

u16 * WmGetSharedDataAddress (WMDataSharingInfo * dsInfo, u32 aidBitmap, u16 * receiveBuf, u32 aid) {
    u32 mask;
    u32 count;
    u32 offset;

    mask = (0x0001U << aid) - 1U;
    aidBitmap &= mask;
    count = MATH_CountPopulation(aidBitmap);
    offset = dsInfo->dataLength * count;

    return (u16 *)(((u8 *)receiveBuf) + offset);
}
