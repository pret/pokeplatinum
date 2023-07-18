#include "mb_private.h"

SDK_COMPILER_ASSERT(
    32 + sizeof(MBiParam) + 32 + sizeof(MB_CommPWork) + 32 + WM_SYSTEM_BUF_SIZE <=
    MB_SYSTEM_BUF_SIZE
);
SDK_COMPILER_ASSERT(
    32 + sizeof(MBiParam) + 32 + sizeof(MB_CommCWork) + 32 + WM_SYSTEM_BUF_SIZE <=
    MB_CHILD_SYSTEM_BUF_SIZE
);

#define WL_HEADER_LENGTH_P 48
#define WM_HEADER_LENGTH 2
#define WL_HEADER_LENGTH_T 8
#define WL_HEADER_LENGTH_C 8

#define WM_CalcChildSendBufSize(_pInfo_) (u16)(WM_SIZE_MP_CHILD_SEND_BUFFER(((WMGameInfo *)(&(((WMBssDesc *)(_pInfo_))->gameInfo)))->childMaxSize, FALSE))
#define WM_CalcChildRecvBufSize(_pInfo_) (u16)(WM_SIZE_MP_CHILD_RECEIVE_BUFFER(((WMGameInfo *)(&(((WMBssDesc *)(_pInfo_))->gameInfo)))->parentMaxSize, FALSE))

#define WM_CalcParentSendBufSize(_libParam_) (u16)(WM_SIZE_MP_PARENT_SEND_BUFFER(((MBiParam *)(_libParam_))->parentParam.parentMaxSize, FALSE))
#define WM_CalcParentRecvBufSize(_libParam_) (u16)(WM_SIZE_MP_PARENT_RECEIVE_BUFFER(((MBiParam *)(_libParam_))->parentParam.childMaxSize, WM_NUM_MAX_CHILD, FALSE))

#define MB_BEACON_PERIOD_DEFAULT (200)

#define NO_LIFETIME 0
#if (NO_LIFETIME == 1)
#define FRAME_LIFE_TIME 0xFFFF
#define CAM_LIFE_TIME 0xFFFF
#define MP_LIFE_TIME 0xFFFF
#else

#define FRAME_LIFE_TIME 5
#define CAM_LIFE_TIME 40
#define MP_LIFE_TIME 40
#endif

#define TABLE_NO 0xFFFF

static u16 mbi_life_table_no = TABLE_NO;
static u16 mbi_life_frame = FRAME_LIFE_TIME;
static u16 mbi_life_cam = CAM_LIFE_TIME;
static u16 mbi_life_mp = MP_LIFE_TIME;
static BOOL mbi_power_save_mode = TRUE;

static void MBi_ScanLock(u8 * macAddr);
static void MBi_ScanUnlock(void);

static void MBi_CheckWmErrcode(u16 apiid, int errcode);
static void MBi_ParentCallback(void * arg);

static MBiParam * p_mbi_param;
static u16 WM_DMA_NO;

static u8 * wmBuf;

MB_CommCommonWork * mbc = NULL;

static WMscanParam scanParam ATTRIBUTE_ALIGN(32);

static BOOL changeScanChannel (WMscanParam * p) {
    u16 channel_bmp, channel, i;

    channel_bmp = WM_GetAllowedChannel();

    if (channel_bmp == 0) {
        OS_TWarning("No Available Scan channel\n");
        return FALSE;
    }

    for (i = 0, channel = p->channel;
         i < 16; i++, channel = (u16)((channel == 16) ? 1 : channel + 1)) {
        if ((channel_bmp & (1 << (channel - 1))) == 0) {
            continue;
        }

        if (p->channel != channel) {
            p->channel = channel;
            break;
        }
    }

    return TRUE;
}

void MB_SetLifeTime (u16 tableNumber, u16 camLifeTime, u16 frameLifeTime, u16 mpLifeTime) {
    mbi_life_table_no = tableNumber;
    mbi_life_cam = camLifeTime;
    mbi_life_frame = frameLifeTime;
    mbi_life_mp = mpLifeTime;
}

void MB_SetPowerSaveMode (BOOL enable) {
    mbi_power_save_mode = enable;
}

static inline int conv_errcode (int errcode) {
    return (errcode == WM_ERRCODE_OPERATING) ? WM_ERRCODE_SUCCESS : errcode;
}

static BOOL MBi_IsSendEnabled (void) {
    return (p_mbi_param->mpStarted == 1) &&
           (p_mbi_param->mpBusy == 0) &&
           (p_mbi_param->endReq == 0) && (p_mbi_param->child_bitmap != 0);
}

static void MBi_OnInitializeDone (void) {
    int errcode;

    errcode = WM_SetIndCallback(MBi_ParentCallback);
    MBi_CheckWmErrcode(WM_APIID_INDICATION, errcode);
    errcode = WM_SetLifeTime(
        MBi_ParentCallback, mbi_life_table_no,
        mbi_life_cam, mbi_life_frame, mbi_life_mp
    );
    MBi_CheckWmErrcode(WM_APIID_SET_LIFETIME, errcode);
}

static inline void MbWaitForWvr (u32 cycles) {
    u32 child_cnt = 0;
    u32 i;

    for (i = 0; i < MB_MAX_CHILD; i++) {
        if (pPwork->p_comm_state[i] != MB_COMM_PSTATE_NONE) {
            if (++child_cnt >= 2) {
                break;
            }
        }
    }

    if (child_cnt == 1) {
        OS_SpinWait(cycles);
    }
}

static void MBi_EndCommon (void * arg) {
    p_mbi_param->mbIsStarted = 0;
    mbc->isMbInitialized = 0;
    if (p_mbi_param->callback) {
        p_mbi_param->callback(MB_CALLBACK_END_COMPLETE, arg);
    }
}

static void MBi_ParentCallback (void * arg) {
    int errcode;
    WMCallback * buf = (WMCallback *)arg;

    switch (buf->apiid) {
    case WM_APIID_INITIALIZE:
    {
        if (buf->errcode != WM_ERRCODE_SUCCESS) {
            p_mbi_param->callback(MB_CALLBACK_ERROR, arg);
            return;
        }
        MBi_OnInitializeDone();
    }
    break;

    case WM_APIID_SET_LIFETIME:
    {
        if (buf->errcode != WM_ERRCODE_SUCCESS) {
            p_mbi_param->callback(MB_CALLBACK_ERROR, arg);
            return;
        }

        errcode = WM_SetParentParameter(MBi_ParentCallback, &p_mbi_param->parentParam);
        MBi_CheckWmErrcode(WM_APIID_SET_P_PARAM, errcode);
    }
    break;

    case WM_APIID_SET_P_PARAM:
    {
        p_mbi_param->callback(MB_CALLBACK_INIT_COMPLETE, arg);

        errcode = WM_SetBeaconIndication(MBi_ParentCallback, 1);
        MBi_CheckWmErrcode(WM_APIID_SET_BEACON_IND, errcode);
    }
    break;

    case WM_APIID_SET_BEACON_IND:
        if (!p_mbi_param->endReq) {
            if (buf->errcode != WM_ERRCODE_SUCCESS) {
                p_mbi_param->callback(MB_CALLBACK_ERROR, arg);
                return;
            }

            errcode = WMi_StartParentEx(MBi_ParentCallback, mbi_power_save_mode);
            MBi_CheckWmErrcode(WM_APIID_START_PARENT, errcode);
        } else {
            if (buf->errcode != WM_ERRCODE_SUCCESS) {
                p_mbi_param->endReq = 0;
                p_mbi_param->callback(MB_CALLBACK_ERROR, arg);
            } else {
                MBi_EndCommon(arg);
            }
        }
        break;

    case WM_APIID_START_PARENT:
    {
        WMstartParentCallback * callback = (WMstartParentCallback *)arg;

        if (callback->errcode != WM_ERRCODE_SUCCESS) {
            p_mbi_param->callback(MB_CALLBACK_ERROR, arg);
            return;
        }

        switch (callback->state) {
        case WM_STATECODE_PARENT_START:
            p_mbi_param->child_bitmap = 0;
            p_mbi_param->mpStarted = 0;
            break;
        case WM_STATECODE_CHILD_CONNECTED:

            if (p_mbi_param->endReq == 1) {
                break;
            }

            p_mbi_param->child_bitmap |= (0x1 << callback->aid);
            p_mbi_param->callback(MB_CALLBACK_CHILD_CONNECTED, arg);

            if ((p_mbi_param->mpStarted == 0) && (!mbc->start_mp_busy)) {
                mbc->start_mp_busy = TRUE;
                errcode = WM_StartMPEx(
                    MBi_ParentCallback, (u16 *)p_mbi_param->recvBuf, p_mbi_param->recvBufSize, (u16 *)p_mbi_param->sendBuf, p_mbi_param->sendBufSize, (u16)(p_mbi_param->contSend ? 0 : 1), 0,
                    FALSE, FALSE, 1,
                    TRUE
                );
                MBi_CheckWmErrcode(WM_APIID_START_MP, errcode);
            } else {
                if (MBi_IsSendEnabled()) {
                    p_mbi_param->callback(MB_CALLBACK_MP_SEND_ENABLE, NULL);
                }
            }
            break;

        case WM_STATECODE_DISCONNECTED:
            p_mbi_param->child_bitmap &= ~(0x1 << callback->aid);
            p_mbi_param->callback(MB_CALLBACK_CHILD_DISCONNECTED, arg);
            break;

        case WM_STATECODE_DISCONNECTED_FROM_MYSELF:

            break;

        case WM_STATECODE_BEACON_SENT:

            if (p_mbi_param->endReq == 1) {
                break;
            }

            p_mbi_param->callback(MB_CALLBACK_BEACON_SENT, arg);
            break;

        default:
            p_mbi_param->callback(MB_CALLBACK_ERROR, arg);
            break;
        }
    }
    break;

    case WM_APIID_START_MP:
    {
        WMstartMPCallback * callback = (WMstartMPCallback *)arg;
        mbc->start_mp_busy = FALSE;
        switch (callback->state) {
        case WM_STATECODE_MP_START:

            p_mbi_param->mpStarted = 1;
            {
                if (p_mbi_param->endReq == 0) {
                    p_mbi_param->callback(MB_CALLBACK_MP_SEND_ENABLE, NULL);
                }
            }
            break;

        case WM_STATECODE_MPEND_IND:

            p_mbi_param->callback(MB_CALLBACK_MP_PARENT_RECV, (void *)(callback->recvBuf));
            break;

        default:
            p_mbi_param->callback(MB_CALLBACK_ERROR, arg);
            break;
        }
        break;
    }
    break;

    case WM_APIID_SET_MP_DATA:
    {
        if (pPwork->useWvrFlag) {
            MbWaitForWvr(13000);
        }
        p_mbi_param->mpBusy = 0;
        if (buf->errcode == WM_ERRCODE_SUCCESS) {
            p_mbi_param->callback(MB_CALLBACK_MP_PARENT_SENT, arg);
            if (p_mbi_param->endReq == 0) {
                p_mbi_param->callback(MB_CALLBACK_MP_SEND_ENABLE, NULL);
            }
        } else if (buf->errcode == WM_ERRCODE_SEND_QUEUE_FULL) {
            p_mbi_param->callback(MB_CALLBACK_SEND_QUEUE_FULL_ERR, arg);
        } else {
            p_mbi_param->callback(MB_CALLBACK_MP_PARENT_SENT_ERR, arg);
            if (p_mbi_param->endReq == 0) {
                p_mbi_param->callback(MB_CALLBACK_MP_SEND_ENABLE, NULL);
            }
        }
    }
    break;

    case WM_APIID_RESET:
        if (!mbc->is_started_ex) {
            if (buf->errcode != WM_ERRCODE_SUCCESS) {
                p_mbi_param->endReq = 0;
                p_mbi_param->callback(MB_CALLBACK_ERROR, arg);
            } else {
                p_mbi_param->child_bitmap = 0;
                p_mbi_param->mpStarted = 0;
                errcode = WM_End(MBi_ParentCallback);
                MBi_CheckWmErrcode(WM_APIID_END, errcode);
            }
        } else {
            (void)WM_SetPortCallback(WM_PORT_BT, NULL, NULL);
            (void)WM_SetIndCallback(NULL);
            if (buf->errcode != WM_ERRCODE_SUCCESS) {
                p_mbi_param->endReq = 0;
                p_mbi_param->callback(MB_CALLBACK_ERROR, arg);
            } else {
                errcode = WM_SetBeaconIndication(MBi_ParentCallback, 0);
                MBi_CheckWmErrcode(WM_APIID_SET_BEACON_IND, errcode);
            }
        }
        break;
    case WM_APIID_END:
    {
        if (buf->errcode != WM_ERRCODE_SUCCESS) {
            p_mbi_param->endReq = 0;
            p_mbi_param->callback(MB_CALLBACK_ERROR, arg);
        } else {
            MBi_EndCommon(arg);
        }
    }
    break;

    case WM_APIID_DISCONNECT:
    {
        WMDisconnectCallback * callback = (WMDisconnectCallback *)arg;

        if (buf->errcode != WM_ERRCODE_SUCCESS) {
            return;
        }

        p_mbi_param->child_bitmap &= ~(callback->disconnectedBitmap);
    }
    break;

    case WM_APIID_INDICATION:
    {
        WMindCallback * cb = (WMindCallback *)arg;
        switch (cb->state) {
        case WM_STATECODE_BEACON_RECV:
            p_mbi_param->callback(MB_CALLBACK_BEACON_RECV, arg);
            break;
        case WM_STATECODE_DISASSOCIATE:
            p_mbi_param->callback(MB_CALLBACK_DISASSOCIATE, arg);
            break;
        case WM_STATECODE_REASSOCIATE:
            p_mbi_param->callback(MB_CALLBACK_REASSOCIATE, arg);
            break;
        case WM_STATECODE_AUTHENTICATE:
            p_mbi_param->callback(MB_CALLBACK_AUTHENTICATE, arg);
            break;

        case WM_STATECODE_FIFO_ERROR:
            OS_TPanic("FIFO Error\n");
            break;
        case WM_STATECODE_INFORMATION:

            break;
        }
    }
    break;

    default:
        p_mbi_param->callback(MB_CALLBACK_ERROR, arg);
        break;
    }
}

static void MBi_ChildPortCallback (void * arg) {
    WMPortRecvCallback * cb = (WMPortRecvCallback *)arg;

    if (cb->errcode != WM_ERRCODE_SUCCESS) {
        return;
    }

    switch (cb->state) {
    case WM_STATECODE_PORT_RECV:

        p_mbi_param->callback(MB_CALLBACK_MP_CHILD_RECV, (void *)(arg));
        break;
    case WM_STATECODE_CONNECTED:

        break;
    case WM_STATECODE_PORT_INIT:
    case WM_STATECODE_DISCONNECTED:
    case WM_STATECODE_DISCONNECTED_FROM_MYSELF:
        break;
    }
}

static void MBi_ChildCallback (void * arg) {
    WMCallback * buf = (WMCallback *)arg;
    MBiParam * const p_param = p_mbi_param;
    int errcode;

    switch (buf->apiid) {
    case WM_APIID_INITIALIZE:
    {
        if (buf->errcode != WM_ERRCODE_SUCCESS) {
            p_param->callback(MB_CALLBACK_ERROR, arg);
            return;
        }

        p_param->callback(MB_CALLBACK_INIT_COMPLETE, arg);

        errcode =
            WM_SetLifeTime(
                MBi_ChildCallback, mbi_life_table_no, mbi_life_cam, mbi_life_frame,
                mbi_life_mp
            );
        MBi_CheckWmErrcode(WM_APIID_SET_LIFETIME, errcode);
    }
    break;

    case WM_APIID_SET_LIFETIME:
    {
        if (buf->errcode != WM_ERRCODE_SUCCESS) {
            p_param->callback(MB_CALLBACK_ERROR, arg);
            return;
        }

        scanParam.scanBuf = &p_param->parentInfoBuf;
        if (scanParam.channel == 0) {
            scanParam.channel = 1;
        }
        if (scanParam.maxChannelTime == 0) {
            scanParam.maxChannelTime = 200;
        }
        scanParam.bssid[0] = 0xff;
        scanParam.bssid[1] = 0xff;
        scanParam.bssid[2] = 0xff;
        scanParam.bssid[3] = 0xff;
        scanParam.bssid[4] = 0xff;
        scanParam.bssid[5] = 0xff;
        p_param->scanning_flag = TRUE;
        p_param->scan_channel_flag = TRUE;
        errcode = WM_StartScan(MBi_ChildCallback, &scanParam);
        MBi_CheckWmErrcode(WM_APIID_START_SCAN, errcode);
    }
    break;

    case WM_APIID_START_SCAN:
    {
        WMstartScanCallback * callback = (WMstartScanCallback *)arg;

        if (callback->errcode != WM_ERRCODE_SUCCESS) {
            p_param->callback(MB_CALLBACK_ERROR, arg);
            return;
        }

        switch (callback->state) {
        case WM_STATECODE_SCAN_START:
            break;

        case WM_STATECODE_PARENT_FOUND:

        {
            WMstartScanCallback * buf = (WMstartScanCallback *)arg;
            ParentInfo * p = &p_param->parent_info[0];

            int i;
            for (i = 0; i < p_param->found_parent_count; ++i) {
                if (WM_IsBssidEqual(buf->macAddress, p[i].scan_data.macAddress)) {
                    p[i].scan_data.gameInfoLength = buf->gameInfoLength;
                    p[i].scan_data.gameInfo = buf->gameInfo;
                    DC_InvalidateRange(
                        p_param->parent_info[i].parentInfo,
                        WM_BSS_DESC_SIZE
                    );
                    MI_DmaCopy16(
                        WM_DMA_NO, &p_param->parentInfoBuf,
                        p_param->parent_info[i].parentInfo, WM_BSS_DESC_SIZE
                    );
                    p_param->last_found_parent_no = i;
                    goto scan_end;
                }
            }

            if (i < MB_NUM_PARENT_INFORMATIONS) {
                p_param->found_parent_count = (u16)(i + 1);

                MI_CpuCopy16(buf, &p[i].scan_data, sizeof(p[i].scan_data));
                DC_InvalidateRange(p_param->parent_info[i].parentInfo, WM_BSS_DESC_SIZE);
                MI_DmaCopy16(
                    WM_DMA_NO, &p_param->parentInfoBuf,
                    p_param->parent_info[i].parentInfo, WM_BSS_DESC_SIZE
                );
                p_param->last_found_parent_no = i;
            }
        }
 scan_end:
            p_param->callback(MB_CALLBACK_PARENT_FOUND, arg);
            if (!p_param->scanning_flag) {
                return;
            }

            if (p_param->scan_channel_flag) {
                if (FALSE == changeScanChannel(&scanParam)) {
                    (void)MBi_CommEnd();
                }
            }
            errcode = WM_StartScan(MBi_ChildCallback, &scanParam);
            MBi_CheckWmErrcode(WM_APIID_START_SCAN, errcode);
            break;

        case WM_STATECODE_PARENT_NOT_FOUND:
            p_param->callback(MB_CALLBACK_PARENT_NOT_FOUND, arg);
            if (!p_param->scanning_flag) {
                return;
            }

            if (p_param->scan_channel_flag) {
                if (FALSE == changeScanChannel(&scanParam)) {
                    (void)MBi_CommEnd();
                }
            }
            errcode = WM_StartScan(MBi_ChildCallback, &scanParam);
            MBi_CheckWmErrcode(WM_APIID_START_SCAN, errcode);
            break;

        default:
            p_param->callback(MB_CALLBACK_ERROR, arg);
            break;
        }
    }
    break;

    case WM_APIID_END_SCAN:
    {
        if (buf->errcode != WM_ERRCODE_SUCCESS) {
            p_param->callback(MB_CALLBACK_ERROR, arg);
            return;
        }

        errcode = WM_StartConnect(MBi_ChildCallback, p_param->pInfo, NULL);
        MBi_CheckWmErrcode(WM_APIID_START_CONNECT, errcode);
    }
    break;

    case WM_APIID_START_CONNECT:
    {
        WMstartConnectCallback * callback = (WMstartConnectCallback *)arg;

        if (callback->errcode != WM_ERRCODE_SUCCESS) {
            p_param->found_parent_count = 0;

            p_param->callback(MB_CALLBACK_CONNECT_FAILED, arg);
            return;
        }

        switch (callback->state) {
        case WM_STATECODE_CONNECT_START:
            p_param->child_bitmap = 0;
            p_param->mpStarted = 1;
            break;

        case WM_STATECODE_CONNECTED:
            p_param->my_aid = (u16)callback->aid;
            p_param->callback(MB_CALLBACK_CONNECTED_TO_PARENT, arg);
            p_param->child_bitmap = 1;

            errcode = WM_SetPortCallback(WM_PORT_BT, MBi_ChildPortCallback, NULL);

            if (errcode != WM_ERRCODE_SUCCESS) {
                break;
            }

            errcode = WM_StartMPEx(
                MBi_ChildCallback, (u16 *)p_param->recvBuf, p_param->recvBufSize, (u16 *)p_param->sendBuf, p_param->sendBufSize, (u16)(p_param->contSend ? 0 : 1), 0,
                FALSE, FALSE, 1,
                TRUE
            );
            MBi_CheckWmErrcode(WM_APIID_START_MP, errcode);
            break;

        case WM_STATECODE_DISCONNECTED:
            p_param->callback(MB_CALLBACK_DISCONNECTED_FROM_PARENT, arg);
            p_param->child_bitmap = 0;
            p_param->mpStarted = 0;
            break;

        case WM_STATECODE_DISCONNECTED_FROM_MYSELF:

            break;

        default:
            p_param->callback(MB_CALLBACK_ERROR, arg);
            break;
        }
    }
    break;

    case WM_APIID_START_MP:
    {
        WMstartMPCallback * callback = (WMstartMPCallback *)arg;

        switch (callback->state) {
        case WM_STATECODE_MP_START:
            p_param->mpStarted = 1;
            {
                if (MBi_IsSendEnabled()) {
                    p_param->callback(MB_CALLBACK_MP_SEND_ENABLE, NULL);
                }
            }
            break;

        case WM_STATECODE_MP_IND:
            if (callback->errcode == WM_ERRCODE_INVALID_POLLBITMAP) {
            } else {
            }
            break;

        case WM_STATECODE_MPACK_IND:
        {
        }
        break;

        default:
            p_param->callback(MB_CALLBACK_ERROR, arg);
            break;
        }
    }
    break;

    case WM_APIID_SET_MP_DATA:
    {
        p_param->mpBusy = 0;
        if (buf->errcode == WM_ERRCODE_SUCCESS) {
            p_param->callback(MB_CALLBACK_MP_CHILD_SENT, arg);
        } else if (buf->errcode == WM_ERRCODE_TIMEOUT) {
            p_param->callback(MB_CALLBACK_MP_CHILD_SENT_TIMEOUT, arg);
        } else {
            p_param->callback(MB_CALLBACK_MP_CHILD_SENT_ERR, arg);
        }

        if (p_mbi_param->endReq == 0) {
            p_param->callback(MB_CALLBACK_MP_SEND_ENABLE, NULL);
        }
    }
    break;

    case WM_APIID_RESET:
    {
        if (buf->errcode != WM_ERRCODE_SUCCESS) {
            p_param->endReq = 0;
            p_param->callback(MB_CALLBACK_ERROR, arg);
            return;
        }
        p_mbi_param->child_bitmap = 0;
        p_mbi_param->mpStarted = 0;

        errcode = WM_End(MBi_ChildCallback);
        MBi_CheckWmErrcode(WM_APIID_END, errcode);
    }
    break;

    case WM_APIID_END:
    {
        if (buf->errcode != WM_ERRCODE_SUCCESS) {
            p_param->endReq = 0;
            p_param->callback(MB_CALLBACK_ERROR, arg);
            return;
        }
        MBi_EndCommon(arg);
    }
    break;

    case WM_APIID_START_KS:
    {
        if (MBi_IsSendEnabled()) {
            p_param->callback(MB_CALLBACK_MP_SEND_ENABLE, NULL);
        }
    }
    break;

    case WM_APIID_INDICATION:
    {
        WMindCallback * cb = (WMindCallback *)arg;
        switch (cb->state) {
        case WM_STATECODE_FIFO_ERROR:
            OS_TPanic("FIFO Error\n");
            break;
        case WM_STATECODE_INFORMATION:

            break;
        }
    }
    break;
    default:
        p_param->callback(MB_CALLBACK_ERROR, arg);
        break;
    }
}

static u32 MBi_GetBeaconPeriodDispersion (void) {
    u8 mac[6];
    u32 ret;
    s32 i;

    OS_GetMacAddress(mac);
    for (i = 0, ret = 0; i < 6; i++) {
        ret += mac[i];
    }
    ret += OS_GetVBlankCount();
    ret *= 7;
    return (ret % 20);
}

int MB_Init (void * work, const MBUserInfo * user, u32 ggid, u32 tgid, u32 dma) {
    SDK_ASSERT(user != NULL);
    SDK_ASSERT(work != NULL);
    SDK_ASSERT((dma < 4));
    SDK_ASSERT(user->nameLength <= MB_USER_NAME_LENGTH);

    if (mbc && mbc->isMbInitialized) {
        return MB_ERRCODE_INVALID_STATE;
    } else {
        MBiParam * const p_parm = (MBiParam *)((((u32)work) + 0x1F) & ~0x1F);
        MB_CommCommonWork * const p_com =
            (MB_CommCommonWork *)((((u32)p_parm) + sizeof(*p_parm) + 0x1F) & ~0x1F);
        OSIntrMode enabled;

        if (tgid == MB_TGID_AUTO) {
            tgid = WM_GetNextTgid();
        }

        enabled = OS_DisableInterrupts();

        mbi_life_table_no = TABLE_NO;
        mbi_life_frame = FRAME_LIFE_TIME;
        mbi_life_cam = CAM_LIFE_TIME;
        mbi_life_mp = MP_LIFE_TIME;
        mbi_power_save_mode = TRUE;

        WM_DMA_NO = (u16)dma;
        p_mbi_param = p_parm;
        mbc = p_com;
        MI_CpuClear32(p_parm, sizeof(*p_parm));
        MI_CpuClear16(p_com, sizeof(*p_com));

        {
            int i;
            static const u16 * game = L"multiboot";
            u16 * c;
            c = (u16 *)p_parm->uname;
            for (i = 0; i < user->nameLength; ++i) {
                *c++ = user->name[i];
            }
            c = (u16 *)p_parm->gname;
            for (i = 0; i < WM_SIZE_GAMENAME; ++i) {
                if (*game == 0) {
                    break;
                }
                *c++ = *game++;
            }
            MI_CpuCopy8(user, &p_com->user, sizeof(MBUserInfo));
            if (user->nameLength < MB_USER_NAME_LENGTH) {
                p_com->user.name[user->nameLength] = 0;
            }
        }

        {
            p_parm->p_sendlen = MB_COMM_P_SENDLEN_DEFAULT;
            p_parm->p_recvlen = MB_COMM_P_RECVLEN_DEFAULT;

            p_parm->sendBufSize = 0;
            p_parm->recvBufSize = 0;

            p_parm->contSend = 1;

            p_parm->recvBuf = (WMmpRecvBuf *)p_com->recvbuf;

            {
                WMParentParam * const p_parent = &p_parm->parentParam;

                p_parent->entryFlag = 0;
                p_parent->multiBootFlag = 0;
                p_parent->CS_Flag = 1;
                p_parent->KS_Flag = 0;

                p_parent->ggid = ggid;
                p_parent->tgid = (u16)tgid;
                p_parent->beaconPeriod =
                    (u16)(MB_BEACON_PERIOD_DEFAULT + MBi_GetBeaconPeriodDispersion());
                p_parent->maxEntry = 15;
            }
        }

        p_parm->mpBusy = 0;
        p_parm->mbIsStarted = 0;
        p_com->isMbInitialized = 1;

        p_com->start_mp_busy = FALSE;

        (void)OS_RestoreInterrupts(enabled);
    }

    return MB_ERRCODE_SUCCESS;
}

#define MP_USEC_TIME_LIMIT (5600)

static BOOL MBi_IsCommSizeValid (u16 sendSize, u16 recvSize, u16 entry_num) {
    int usec;

    SDK_ASSERT(entry_num > 0 && entry_num <= 15);

    if (sendSize > MB_COMM_P_SENDLEN_MAX || sendSize < MB_COMM_P_SENDLEN_MIN) {
        OS_TWarning(
            "MB Parent send buffer size is out of the range.[%3d - %3d Bytes]\n",
            MB_COMM_P_SENDLEN_MIN, MB_COMM_P_SENDLEN_MAX
        );
        return FALSE;
    }

    if (recvSize > MB_COMM_P_RECVLEN_MAX || recvSize < MB_COMM_P_RECVLEN_MIN) {
        OS_TWarning
        (
            "MB Parent receive buffer size per child is out of the range.[%3d - %3d Bytes]\n",
            MB_COMM_P_RECVLEN_MIN, MB_COMM_P_RECVLEN_MAX
        );
        return FALSE;
    }

    usec = 330 + 4 * (sendSize + 38) + entry_num * (112 + 4 * (recvSize + 32));

    if (usec >= MP_USEC_TIME_LIMIT) {
        OS_TWarning(
            "These send receive sizes require lower than %4dusec\n"
            "it exceeds %4d usec\n", MP_USEC_TIME_LIMIT, usec
        );
        return FALSE;
    }

    return TRUE;
}

BOOL MB_SetParentCommParam (u16 sendSize, u16 maxChildren) {
    OSIntrMode enabled = OS_DisableInterrupts();

    if (p_mbi_param->mbIsStarted) {
        OS_TWarning("MB has Already started\n");

        (void)OS_RestoreInterrupts(enabled);
        return FALSE;
    }

    if (FALSE == MBi_IsCommSizeValid(sendSize, MB_COMM_P_RECVLEN_DEFAULT, maxChildren)) {
        OS_TWarning("MP data sizes have not changed\n");

        (void)OS_RestoreInterrupts(enabled);
        return FALSE;
    }

    p_mbi_param->parentParam.maxEntry = maxChildren;

    p_mbi_param->p_sendlen = sendSize;
    p_mbi_param->p_recvlen = MB_COMM_P_RECVLEN_DEFAULT;

    (void)OS_RestoreInterrupts(enabled);

    return TRUE;
}

BOOL MB_SetParentCommSize (u16 sendSize) {
    OSIntrMode enabled = OS_DisableInterrupts();
    BOOL ret;

    ret = MB_SetParentCommParam(sendSize, p_mbi_param->parentParam.maxEntry);

    (void)OS_RestoreInterrupts(enabled);

    return ret;
}

u16 MB_GetTgid (void) {
    return p_mbi_param->parentParam.tgid;
}

static int MBi_StartCommon (void) {
    int errcode;

    p_mbi_param->mpStarted = 0;
    p_mbi_param->child_bitmap = 0;
    p_mbi_param->endReq = 0;
    p_mbi_param->currentTgid = 0;
    MBi_SetMaxScanTime(MB_SCAN_TIME_NORMAL);

    if (!mbc->is_started_ex) {
        do{
            errcode = WM_Initialize(wmBuf, p_mbi_param->callback_ptr, WM_DMA_NO);
        }while (errcode == WM_ERRCODE_WM_DISABLE);
        if (errcode != WM_ERRCODE_OPERATING) {
            OS_TWarning("WM_Initialize failed!\n");
            return MB_ERRCODE_WM_FAILURE;
        } else {
            (void)WM_SetIndCallback(p_mbi_param->callback_ptr);
            p_mbi_param->mbIsStarted = 1;
            return MB_ERRCODE_SUCCESS;
        }
    } else {
        (void)WM_SetIndCallback(p_mbi_param->callback_ptr);
        p_mbi_param->mbIsStarted = 1;
        MBi_OnInitializeDone();
        return MB_ERRCODE_SUCCESS;
    }
}

static int MBi_StartParentCore (int channel) {
    int i, ret;
    MBCommPStateCallback cb_tmp;
    OSIntrMode enabled;

    enabled = OS_DisableInterrupts();

    p_mbi_param->parentParam.channel = (u16)channel;
    wmBuf = (u8 *)((((u32)mbc) + sizeof(MB_CommPWork) + 31) & ~31);

    cb_tmp = pPwork->parent_callback;

    MI_CpuClear16(
        (void *)((u32)pPwork + sizeof(MB_CommCommonWork)),
        sizeof(MB_CommPWork) - sizeof(MB_CommCommonWork)
    );
    MB_CommSetParentStateCallback(cb_tmp);

    mbc->block_size_max = MB_COMM_CALC_BLOCK_SIZE(p_mbi_param->p_sendlen);

    MBi_SetChildMPMaxSize(p_mbi_param->p_recvlen);
    MBi_SetParentPieceBuffer(&pPwork->req_data_buf);

    for (i = 0; i < MB_MAX_CHILD; i++) {
        pPwork->p_comm_state[i] = MB_COMM_PSTATE_NONE;
        pPwork->fileid_of_child[i] = -1;
    }
    pPwork->file_num = 0;

    MI_CpuClear16(&pPwork->fileinfo[0], sizeof(pPwork->fileinfo));
    MI_CpuClear8(&pPwork->req2child[0], sizeof(pPwork->req2child));

    p_mbi_param->mode = MB_MODE_PARENT;
    p_mbi_param->callback = MBi_CommParentCallback;
    p_mbi_param->callback_ptr = MBi_ParentCallback;

    p_mbi_param->parentParam.parentMaxSize = p_mbi_param->p_sendlen;
    p_mbi_param->sendBufSize = WM_CalcParentSendBufSize(p_mbi_param);

    p_mbi_param->parentParam.childMaxSize = p_mbi_param->p_recvlen;
    p_mbi_param->recvBufSize = WM_CalcParentRecvBufSize(p_mbi_param);

    OS_TPrintf("Parent sendSize : %4d\n", p_mbi_param->parentParam.parentMaxSize);
    OS_TPrintf("Parent recvSize : %4d\n", p_mbi_param->parentParam.childMaxSize);
    OS_TPrintf("Parent sendBufSize : %4d\n", p_mbi_param->sendBufSize);
    OS_TPrintf("Parent recvBufSize : %4d\n", p_mbi_param->recvBufSize);

    MB_InitSendGameInfoStatus();

    ret = MBi_StartCommon();

    (void)OS_RestoreInterrupts(enabled);

    pPwork->useWvrFlag = PXI_IsCallbackReady(PXI_FIFO_TAG_WVR, PXI_PROC_ARM7);

    return ret;
}

int MB_StartParent (int channel) {
    mbc->is_started_ex = FALSE;
    return MBi_StartParentCore(channel);
}

int MB_StartParentFromIdle (int channel) {
    mbc->is_started_ex = TRUE;
    return MBi_StartParentCore(channel);
}

int MB_StartChild (void) {
    int ret;
    MBCommCStateCallbackFunc cb_tmp;
    OSIntrMode enabled;

    enabled = OS_DisableInterrupts();

    mbc->is_started_ex = FALSE;

    wmBuf = (u8 *)((((u32)mbc) + sizeof(MB_CommCWork) + 31) & ~31);

    cb_tmp = pCwork->child_callback;

    MI_CpuClear16(
        (void *)((u32)pCwork + sizeof(MB_CommCommonWork)),
        sizeof(MB_CommCWork) - sizeof(MB_CommCommonWork)
    );
    MB_CommSetChildStateCallback(cb_tmp);

    pCwork->c_comm_state = MB_COMM_CSTATE_NONE;

    p_mbi_param->mode = MB_MODE_CHILD;
    p_mbi_param->callback = MBi_CommChildCallback;
    p_mbi_param->callback_ptr = MBi_ChildCallback;

    p_mbi_param->scanning_flag = FALSE;
    p_mbi_param->scan_channel_flag = TRUE;
    p_mbi_param->last_found_parent_no = -1;

    MBi_SetBeaconRecvStatusBufferDefault();
    MBi_SetScanLockFunc(MBi_ScanLock, MBi_ScanUnlock);
    MB_InitRecvGameInfoStatus();

    ret = MBi_StartCommon();

    (void)OS_RestoreInterrupts(enabled);

    return ret;
}

static int MBi_CallReset (void) {
    int errcode;
    errcode = WM_Reset(p_mbi_param->callback_ptr);
    MBi_CheckWmErrcode(WM_APIID_RESET, errcode);
    return conv_errcode(errcode);
}

static void MBi_OnReset (MBiTaskInfo * p_task) {
    (void)p_task;
    (void)MBi_CallReset();
}

int MBi_CommEnd (void) {
    int ret = WM_ERRCODE_FAILED;
    OSIntrMode enabled = OS_DisableInterrupts();

    if (!p_mbi_param->mbIsStarted) {
        MBi_EndCommon(NULL);
    } else if (p_mbi_param->endReq == 0) {
        p_mbi_param->scanning_flag = FALSE;
        p_mbi_param->endReq = 1;

        if (MBi_IsTaskAvailable()) {
            MBi_EndTaskThread(MBi_OnReset);
            ret = WM_ERRCODE_SUCCESS;
        } else {
            ret = MBi_CallReset();
        }
    }

    (void)OS_RestoreInterrupts(enabled);

    return ret;
}

void MB_End (void) {
    OSIntrMode enabled = OS_DisableInterrupts();

    if (mbc->is_started_ex) {
        OS_TPanic("MB_End called after MB_StartParentFromIdle! (please call MB_EndToIdle)");
    }

    (void)MBi_CommEnd();

    (void)OS_RestoreInterrupts(enabled);
}

void MB_EndToIdle (void) {
    OSIntrMode enabled = OS_DisableInterrupts();

    if (!mbc->is_started_ex) {
        OS_TPanic("MB_EndToIdle called after MB_StartParent! (please call MB_End)");
    }

    (void)MBi_CommEnd();

    (void)OS_RestoreInterrupts(enabled);
}

void MB_DisconnectChild (u16 aid) {
    SDK_NULL_ASSERT(pPwork);
    SDK_ASSERT(p_mbi_param->endReq != 1);

    if (WM_Disconnect(MBi_ParentCallback, aid) != WM_ERRCODE_OPERATING) {
        OS_TWarning("MB_DisconnectChild failed disconnect child %d\n", aid);
    }

    if (aid == 0 || aid >= 16) {
        OS_TWarning("Disconnected Illegal AID No. ---> %2d\n", aid);
        return;
    }

    pPwork->childversion[aid - 1] = 0;
    MI_CpuClear8(&pPwork->childggid[aid - 1], sizeof(u32));
    MI_CpuClear8(&pPwork->childUser[aid - 1], sizeof(MBUserInfo));

    MBi_ClearParentPieceBuffer(aid);

    pPwork->req2child[aid - 1] = MB_COMM_USER_REQ_NONE;

    if (pPwork->fileid_of_child[aid - 1] != -1) {
        u8 fileID = (u8)pPwork->fileid_of_child[aid - 1];
        u16 nowChildFlag = pPwork->fileinfo[fileID].gameinfo_child_bmp;
        u16 child = aid;

        pPwork->fileinfo[fileID].gameinfo_child_bmp &= ~(MB_GAMEINFO_CHILD_FLAG(child));
        pPwork->fileinfo[fileID].gameinfo_changed_bmp |= MB_GAMEINFO_CHILD_FLAG(child);
        pPwork->fileid_of_child[child - 1] = -1;
        pPwork->fileinfo[fileID].pollbmp &= ~(0x0001 << child);

        MB_DEBUG_OUTPUT("Update Member (AID:%2d)\n", child);
    }

    if (pPwork->child_entry_bmp & (0x0001 << aid)) {
        pPwork->child_num--;
        pPwork->child_entry_bmp &= ~(0x0001 << aid);
    }
    pPwork->p_comm_state[aid - 1] = MB_COMM_PSTATE_NONE;
}

int MBi_GetLastFountParent (void) {
    return p_mbi_param->last_found_parent_no;
}

WMBssDesc * MBi_GetParentBssDesc (int id) {
    return p_mbi_param->parent_info[id].parentInfo;
}

static void MBi_ScanLock (u8 * macAddr) {
    scanParam.maxChannelTime = MB_SCAN_TIME_LOCKING;
    p_mbi_param->scan_channel_flag = FALSE;
    WM_CopyBssid(macAddr, scanParam.bssid);
}

static void MBi_ScanUnlock (void) {
    static const u8 bss_fill[6] = {0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF};

    scanParam.maxChannelTime = MB_SCAN_TIME_NORMAL;
    p_mbi_param->scan_channel_flag = TRUE;
    WM_CopyBssid(bss_fill, scanParam.bssid);
}

void MBi_SetMaxScanTime (u16 time) {
    scanParam.maxChannelTime = time;
}

static int MBi_SetMPData (WMCallbackFunc callback, const u16 * sendData, u16 sendDataSize, u16 tmptt, u16 pollbmp) {
#pragma unused( tmptt )
    int errcode;
    errcode =
        WM_SetMPDataToPort(callback, sendData, sendDataSize, pollbmp, WM_PORT_BT, WM_PRIORITY_LOW);
    MBi_CheckWmErrcode(WM_APIID_SET_MP_DATA, errcode);
    return errcode;
}

int MBi_SendMP (const void * buf, int len, int pollbmp) {
    int errcode;

    u16 size = (u16)len;
    u16 pollbitmap = (u16)pollbmp;

    if ((p_mbi_param->mpStarted == 0) || (p_mbi_param->endReq == 1)) {
        return WM_ERRCODE_FAILED;
    }

    switch (p_mbi_param->mode) {
    case MB_MODE_PARENT:
        errcode = MBi_SetMPData(
            p_mbi_param->callback_ptr, (u16 *)buf, size,
            (u16)((!p_mbi_param->contSend) ? 1000 : 0), pollbitmap
        );

        if (errcode == WM_ERRCODE_OPERATING) {
            p_mbi_param->mpBusy = 1;
        }

        return conv_errcode(errcode);

    case MB_MODE_CHILD:
        errcode = MBi_SetMPData(MBi_ChildCallback, (u16 *)buf, size, 0, pollbitmap);

        if (errcode == WM_ERRCODE_OPERATING) {
            p_mbi_param->mpBusy = 1;
        }

        return conv_errcode(errcode);

    default:
        return WM_ERRCODE_FAILED;
    }
}

int MBi_GetSendBufSize (void) {
    return (int)p_mbi_param->sendBufSize;
}

int MBi_GetRecvBufSize (void) {
    return (int)p_mbi_param->recvBufSize;
}

int MBi_CommConnectToParent (const WMBssDesc * bssDescp) {
    WMgameInfo * gameInfo;
    int errcode;
    SDK_ASSERT(bssDescp != 0);

    gameInfo = (WMgameInfo *)(&(bssDescp->gameInfo));
    p_mbi_param->p_sendlen = gameInfo->parentMaxSize;
    p_mbi_param->p_recvlen = gameInfo->childMaxSize;

    mbc->block_size_max = MB_COMM_CALC_BLOCK_SIZE(p_mbi_param->p_sendlen);

    MBi_SetChildMPMaxSize(p_mbi_param->p_recvlen);

    OS_TPrintf("\trecv size : %d\n", p_mbi_param->p_sendlen);
    OS_TPrintf("\tsend size : %d\n", p_mbi_param->p_recvlen);
    OS_TPrintf("\tblock size: %d\n", mbc->block_size_max);

    p_mbi_param->recvBufSize = (u16)WM_CalcChildRecvBufSize(bssDescp);
    p_mbi_param->sendBufSize = (u16)WM_CalcChildSendBufSize(bssDescp);
    p_mbi_param->pInfo = bssDescp;
    p_mbi_param->currentTgid = ((WMGameInfo *)&(bssDescp->gameInfo))->tgid;
    p_mbi_param->scanning_flag = FALSE;

    errcode = WM_EndScan(p_mbi_param->callback_ptr);
    MBi_CheckWmErrcode(WM_APIID_END_SCAN, errcode);
    return conv_errcode(errcode);
}

u32 MBi_GetGgid (void) {
    return p_mbi_param->parentParam.ggid;
}

u16 MBi_GetTgid (void) {
    return (p_mbi_param->parentParam.tgid);
}

u8 MBi_GetAttribute (void) {
    return ((u8)(((p_mbi_param->parentParam.entryFlag) ? WM_ATTR_FLAG_ENTRY : 0) |
                 ((p_mbi_param->parentParam.multiBootFlag) ? WM_ATTR_FLAG_MB : 0) |
                 ((p_mbi_param->parentParam.KS_Flag) ? WM_ATTR_FLAG_KS : 0) |
                 ((p_mbi_param->parentParam.CS_Flag) ? WM_ATTR_FLAG_CS : 0)
    ));
}

int MBi_RestartScan (void) {
    int errcode;

    p_mbi_param->scanning_flag = TRUE;

    if (p_mbi_param->scan_channel_flag) {
        if (FALSE == changeScanChannel(&scanParam)) {
            (void)MBi_CommEnd();
        }
    }

    errcode = WM_StartScan(MBi_ChildCallback, &scanParam);
    MBi_CheckWmErrcode(WM_APIID_START_SCAN, errcode);
    return conv_errcode(errcode);
}

int MBi_GetScanChannel (void) {
    return scanParam.channel;
}

u16 MBi_GetAid (void) {
    return p_mbi_param->my_aid;
}

BOOL MBi_IsStarted (void) {
    return (p_mbi_param->mbIsStarted == 1) ? TRUE : FALSE;
}

static void MBi_CheckWmErrcode (u16 apiid, int errcode) {
    u16 arg[2];

    if (errcode != WM_ERRCODE_OPERATING && errcode != WM_ERRCODE_SUCCESS) {
        arg[0] = apiid;
        arg[1] = (u16)errcode;
        p_mbi_param->callback(MB_CALLBACK_API_ERROR, arg);
    }
}
