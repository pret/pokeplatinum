#include "mb_private.h"

#define MB_SEND_THRESHOLD 2

static int any_recv_bitmap = 0;

static void MBi_CommChangeParentState(u16 child, int state, void * arg);
static void MBi_CommChangeParentStateCallbackOnly(u16 child, int state, void * arg);
static void MBi_CommParentRecvDataPerChild(void * arg, u16 child);
static void MBi_CommParentRecvData(void * arg);
static int MBi_CommParentSendMsg(u8 type, u16 pollbmp);
static int MBi_CommParentSendDLFileInfo(void);
static int MBi_CommParentSendBlock(void);
static int MBi_CommParentSendData(void);
static void MBi_calc_sendblock(u8 file_id);
static u16 MBi_calc_nextsendblock(u16 next_block, u16 next_block_req);

static inline u16 max(u16 a, u16 b);
static BOOL IsChildAidValid(u16 child_aid);
static void MBi_CommCallParentError(u16 aid, u16 errcode);

void MB_CommSetParentStateCallback (MBCommPStateCallback callback) {
    OSIntrMode enabled;

    SDK_ASSERT(pPwork != 0);

    enabled = OS_DisableInterrupts();

    pPwork->parent_callback = callback;

    (void)OS_RestoreInterrupts(enabled);
}

int MB_CommGetParentState (u16 child_aid) {
    if (pPwork && IsChildAidValid(child_aid)) {
        return pPwork->p_comm_state[child_aid - 1];
    }
    return 0;
}

const MBUserInfo * MB_CommGetChildUser (u16 child_aid) {
    OSIntrMode enabled = OS_DisableInterrupts();

    if (pPwork && IsChildAidValid(child_aid)) {
        MI_CpuCopy8(&pPwork->childUser[child_aid - 1], &pPwork->childUserBuf, sizeof(MBUserInfo));
        (void)OS_RestoreInterrupts(enabled);
        return &pPwork->childUserBuf;
    }
    (void)OS_RestoreInterrupts(enabled);
    return NULL;
}

u8 MB_CommGetChildrenNumber (void) {
    if (pPwork) {
        return pPwork->child_num;
    }
    return 0;
}

u16 MB_GetGameEntryBitmap (const MBGameRegistry * game_reg) {
    int i;
    for (i = 0; i < MB_MAX_FILE; i++) {
        if ((pPwork->fileinfo[i].active) && ((u32)pPwork->fileinfo[i].game_reg == (u32)game_reg)) {
            return pPwork->fileinfo[i].gameinfo_child_bmp;
        }
    }
    return 0;
}

BOOL MB_CommIsBootable (u16 child_aid) {
    SDK_ASSERT(pPwork != NULL);

    if (pPwork && IsChildAidValid(child_aid)) {
        if (pPwork->p_comm_state[child_aid - 1] == MB_COMM_PSTATE_SEND_COMPLETE) {
            return TRUE;
        }
    }
    return FALSE;
}

BOOL MB_CommResponseRequest (u16 child_aid, MBCommResponseRequestType ack) {
    u16 req;
    int state;
    OSIntrMode enabled;

    SDK_ASSERT(pPwork != NULL);

    enabled = OS_DisableInterrupts();

    switch (ack) {
    case MB_COMM_RESPONSE_REQUEST_KICK:
        state = MB_COMM_PSTATE_REQUESTED;
        req = MB_COMM_USER_REQ_KICK;
        break;
    case MB_COMM_RESPONSE_REQUEST_ACCEPT:
        state = MB_COMM_PSTATE_REQUESTED;
        req = MB_COMM_USER_REQ_ACCEPT;
        break;

    case MB_COMM_RESPONSE_REQUEST_DOWNLOAD:
        state = MB_COMM_PSTATE_WAIT_TO_SEND;
        req = MB_COMM_USER_REQ_SEND_START;
        break;

    case MB_COMM_RESPONSE_REQUEST_BOOT:
        state = MB_COMM_PSTATE_SEND_COMPLETE;
        req = MB_COMM_USER_REQ_BOOT;
        break;
    default:
        (void)OS_RestoreInterrupts(enabled);
        return FALSE;
    }

    if (pPwork && IsChildAidValid(child_aid)) {
        if (pPwork->p_comm_state[child_aid - 1] == state) {
            pPwork->req2child[child_aid - 1] = req;
            (void)OS_RestoreInterrupts(enabled);
            return TRUE;
        }
    }

    (void)OS_RestoreInterrupts(enabled);

    return FALSE;
}

static void MBi_CommChangeParentState (u16 child, int state, void * arg) {
    SDK_ASSERT(pPwork && child >= 0 && child <= WM_NUM_MAX_CHILD);

    if (IsChildAidValid(child)) {
        pPwork->p_comm_state[child - 1] = state;
    }

    MBi_CommChangeParentStateCallbackOnly(child, state, arg);
}

static void MBi_CommChangeParentStateCallbackOnly (u16 child, int state, void * arg) {
    if (pPwork->parent_callback) {
        (*pPwork->parent_callback) (child, (u32)state, arg);
    }
}

void MBi_CommParentCallback (u16 type, void * arg) {
    MB_COMM_WMEVENT_OUTPUT(type, arg);

    switch (type) {
    case MB_CALLBACK_INIT_COMPLETE:

        MBi_CommChangeParentState(0, MB_COMM_PSTATE_INIT_COMPLETE, arg);
        break;

    case MB_CALLBACK_END_COMPLETE:

        break;

    case MB_CALLBACK_CHILD_CONNECTED:
    {
        WMstartParentCallback * sparg = (WMstartParentCallback *)arg;

        if (sparg->aid == 0) {
            break;
        }

        if (sparg->aid >= 16) {
            OS_TWarning("Connected Illegal AID No. ---> %2d\n", sparg->aid);
            break;
        }

        MB_DEBUG_OUTPUT("child %d connected to get bootimage!\n", sparg->aid);

        MBi_CommChangeParentState(sparg->aid, MB_COMM_PSTATE_CONNECTED, arg);
    }
    break;

    case MB_CALLBACK_CHILD_DISCONNECTED:
    {
        WMstartParentCallback * sparg = (WMstartParentCallback *)arg;

        if (sparg->aid == 0) {
            break;
        }

        if (sparg->aid >= 16) {
            OS_TWarning("Disconnected Illegal AID No. ---> %2d\n", sparg->aid);
            break;
        }

        MB_DEBUG_OUTPUT("child %d disconnected \n", sparg->aid);

        pPwork->childversion[sparg->aid - 1] = 0;
        MI_CpuClear8(&pPwork->childggid[sparg->aid - 1], sizeof(u32));
        MI_CpuClear8(&pPwork->childUser[sparg->aid - 1], sizeof(MBUserInfo));

        MBi_ClearParentPieceBuffer(sparg->aid);

        pPwork->req2child[sparg->aid - 1] = MB_COMM_USER_REQ_NONE;

        if (pPwork->fileid_of_child[sparg->aid - 1] != -1) {
            u8 fileID = (u8)pPwork->fileid_of_child[sparg->aid - 1];
            u16 nowChildFlag = pPwork->fileinfo[fileID].gameinfo_child_bmp;
            u16 child = sparg->aid;

            pPwork->fileinfo[fileID].gameinfo_child_bmp &= ~(MB_GAMEINFO_CHILD_FLAG(child));
            pPwork->fileinfo[fileID].gameinfo_changed_bmp |= MB_GAMEINFO_CHILD_FLAG(child);
            pPwork->fileid_of_child[child - 1] = -1;
            pPwork->fileinfo[fileID].pollbmp &= ~(0x0001 << (child));

            MB_DEBUG_OUTPUT("Update Member (AID:%2d)\n", child);
        }

        if (pPwork->child_entry_bmp & (0x0001 << (sparg->aid))) {
            pPwork->child_num--;
            pPwork->child_entry_bmp &= ~(0x0001 << (sparg->aid));
        }

        if (pPwork->p_comm_state[sparg->aid - 1] == MB_COMM_PSTATE_BOOT_REQUEST) {
            MBi_CommChangeParentState(sparg->aid, MB_COMM_PSTATE_BOOT_STARTABLE, NULL);
        }

        MBi_CommChangeParentState(sparg->aid, MB_COMM_PSTATE_DISCONNECTED, arg);
        pPwork->p_comm_state[sparg->aid - 1] = MB_COMM_PSTATE_NONE;
    }
    break;

    case MB_CALLBACK_MP_PARENT_RECV:
        MBi_CommParentRecvData(arg);
        break;

    case MB_CALLBACK_MP_SEND_ENABLE:
        (void)MBi_CommParentSendData();
        break;

    case MB_CALLBACK_BEACON_SENT:
    {
        u8 i;

        for (i = 0; i < MB_MAX_FILE; i++) {
            if (pPwork->fileinfo[i].active && pPwork->fileinfo[i].gameinfo_changed_bmp) {
                MB_UpdateGameInfoMember(
                    &pPwork->fileinfo[i].game_info,
                    &pPwork->childUser[0],
                    pPwork->fileinfo[i].gameinfo_child_bmp,
                    pPwork->fileinfo[i].gameinfo_changed_bmp
                );

                pPwork->fileinfo[i].gameinfo_changed_bmp = 0;
            }
        }
    }

        MB_SendGameInfoBeacon(MBi_GetGgid(), MBi_GetTgid(), MBi_GetAttribute());
        break;

    case MB_CALLBACK_API_ERROR:

    {
        u16 apiid, errcode;

        apiid = ((u16 *)arg)[0];
        errcode = ((u16 *)arg)[1];

        switch (errcode) {
        case WM_ERRCODE_INVALID_PARAM:
        case WM_ERRCODE_FAILED:
        case WM_ERRCODE_WM_DISABLE:
        case WM_ERRCODE_NO_DATASET:
        case WM_ERRCODE_FIFO_ERROR:
        case WM_ERRCODE_TIMEOUT:
            MBi_CommCallParentError(0, MB_ERRCODE_FATAL);
            break;
        case WM_ERRCODE_OPERATING:
        case WM_ERRCODE_ILLEGAL_STATE:
        case WM_ERRCODE_NO_CHILD:
        case WM_ERRCODE_OVER_MAX_ENTRY:
        case WM_ERRCODE_NO_ENTRY:
        case WM_ERRCODE_INVALID_POLLBITMAP:
        case WM_ERRCODE_NO_DATA:
        case WM_ERRCODE_SEND_QUEUE_FULL:
        case WM_ERRCODE_SEND_FAILED:
        default:
            MBi_CommCallParentError(0, MB_ERRCODE_WM_FAILURE);
            break;
        }
    }
    break;
    case MB_CALLBACK_ERROR:
    {
        WMCallback * pWmcb = (WMCallback *)arg;
        switch (pWmcb->apiid) {
        case WM_APIID_INITIALIZE:
        case WM_APIID_SET_LIFETIME:
        case WM_APIID_SET_P_PARAM:
        case WM_APIID_SET_BEACON_IND:
        case WM_APIID_START_PARENT:
        case WM_APIID_START_MP:
        case WM_APIID_SET_MP_DATA:
        case WM_APIID_START_DCF:
        case WM_APIID_SET_DCF_DATA:
        case WM_APIID_DISCONNECT:
        case WM_APIID_START_KS:

            MBi_CommCallParentError(0, MB_ERRCODE_FATAL);
            break;
        case WM_APIID_RESET:
        case WM_APIID_END:
        default:

            MBi_CommCallParentError(0, MB_ERRCODE_WM_FAILURE);
            break;
        }
    }
    break;
    }

#if (CALLBACK_WM_STATE == 1)
    MBi_CommChangeParentState(0, (u32)(MB_COMM_PSTATE_WM_EVENT | type), arg);
#endif

    if (type == MB_CALLBACK_END_COMPLETE) {
        MBCommPStateCallback tmpCb = pPwork->parent_callback;

        MI_CpuClearFast(pPwork, sizeof(MB_CommPWork));
        pPwork = NULL;
        if (tmpCb) {
            (*tmpCb) (0, MB_COMM_PSTATE_END, NULL);
        }
    }
}

static void MBi_CommParentRecvDataPerChild (void * arg, u16 child) {
    MBCommChildBlockHeader hd;
    int state;
    u8 * p_data;

    if (child == 0 || child > WM_NUM_MAX_CHILD) {
        return;
    }

    p_data = MBi_SetRecvBufferFromChild((u8 *)&((WMMpRecvData *)arg)->cdata[0], &hd, child);

    state = pPwork->p_comm_state[child - 1];

    MB_DEBUG_OUTPUT("RECV (CHILD:%2d)", child);
    MB_COMM_TYPE_OUTPUT(hd.type);

    switch (hd.type) {
    case MB_COMM_TYPE_CHILD_FILEREQ:
    {
        if (state == MB_COMM_PSTATE_CONNECTED) {
            MBCommRequestData req_data;

            if (p_data == NULL) {
                break;
            }

            MI_CpuCopy8(p_data, &req_data, MB_COMM_REQ_DATA_SIZE);

            pPwork->childggid[child - 1] = req_data.ggid;
            pPwork->childversion[child - 1] = req_data.version;
            MB_DEBUG_OUTPUT("Child [%2d] MB_IPL_VERSION : %04x\n", child, req_data.version);
            MI_CpuCopy8(&req_data.userinfo, &pPwork->childUser[child - 1], sizeof(MBUserInfo));
            pPwork->childUser[child - 1].playerNo = child;

            MBi_CommChangeParentState(child, MB_COMM_PSTATE_REQUESTED, &req_data.userinfo);
        }

        if (state == MB_COMM_PSTATE_REQUESTED) {
            u8 i, entry_num = 0;
            u8 fileid = ((MBCommRequestData *)p_data)->fileid;

            if (fileid >= MB_MAX_FILE
                || pPwork->fileinfo[fileid].active == 0
                || pPwork->childggid[child - 1] != pPwork->fileinfo[fileid].game_reg->ggid) {
                pPwork->req2child[child - 1] = MB_COMM_USER_REQ_KICK;
            } else {
                for (i = 0; i < WM_NUM_MAX_CHILD + 1; i++) {
                    if (pPwork->fileinfo[fileid].gameinfo_child_bmp & (0x0001 << i)) {
                        entry_num++;
                    }
                }

                if (entry_num >= pPwork->fileinfo[fileid].game_reg->maxPlayerNum) {
                    MB_DEBUG_OUTPUT("Member full (AID:%2d)\n", child);

                    pPwork->req2child[child - 1] = MB_COMM_USER_REQ_NONE;
                    MBi_CommChangeParentState(child, MB_COMM_PSTATE_MEMBER_FULL, NULL);
                    break;
                }
            }

            switch (pPwork->req2child[child - 1]) {
            case MB_COMM_USER_REQ_ACCEPT:
            {
                if (0 == (pPwork->child_entry_bmp & (0x0001 << (child)))) {
                    pPwork->child_num++;
                    pPwork->child_entry_bmp |= (0x0001 << (child));
                    pPwork->fileid_of_child[child - 1] = (s8)fileid;

                    pPwork->fileinfo[fileid].gameinfo_child_bmp |=
                        MB_GAMEINFO_CHILD_FLAG(child);
                    pPwork->fileinfo[fileid].gameinfo_changed_bmp |=
                        MB_GAMEINFO_CHILD_FLAG(child);
                    MB_DEBUG_OUTPUT("Update Member (AID:%2d)\n", child);
                    pPwork->req2child[child - 1] = MB_COMM_USER_REQ_NONE;

                    MBi_CommChangeParentState(child, MB_COMM_PSTATE_REQ_ACCEPTED, NULL);
                }
            }
            break;

            case MB_COMM_USER_REQ_KICK:
                MB_DEBUG_OUTPUT("Kick (AID:%2d)\n", child);
                pPwork->req2child[child - 1] = MB_COMM_USER_REQ_NONE;
                MBi_CommChangeParentState(child, MB_COMM_PSTATE_KICKED, NULL);
                break;
            }
        }
    }
    break;

    case MB_COMM_TYPE_CHILD_ACCEPT_FILEINFO:

        if (state == MB_COMM_PSTATE_REQ_ACCEPTED) {
            MBi_CommChangeParentState(child, MB_COMM_PSTATE_WAIT_TO_SEND, NULL);
        } else if (state == MB_COMM_PSTATE_WAIT_TO_SEND) {
            if (pPwork->req2child[child - 1] == MB_COMM_USER_REQ_SEND_START) {
                u8 fid = (u8)pPwork->fileid_of_child[child - 1];
                pPwork->fileinfo[fid].pollbmp |= (0x0001 << (child));
                pPwork->fileinfo[fid].currentb = 0;

                pPwork->req2child[child - 1] = MB_COMM_USER_REQ_NONE;
                MBi_CommChangeParentState(child, MB_COMM_PSTATE_SEND_PROCEED, NULL);
            }
        }
        break;

    case MB_COMM_TYPE_CHILD_CONTINUE:
        if (state == MB_COMM_PSTATE_SEND_PROCEED) {
            u8 fileid = (u8)pPwork->fileid_of_child[child - 1];

            if (fileid == (u8) - 1) {
                break;
            }

            SDK_ASSERT(fileid < MB_MAX_FILE);
            SDK_ASSERT(pPwork->fileinfo[fileid].pollbmp);

            pPwork->fileinfo[fileid].nextb =
                MBi_calc_nextsendblock(pPwork->fileinfo[fileid].nextb, hd.data.req);
            any_recv_bitmap |= (1 << fileid);
        }
        break;

    case MB_COMM_TYPE_CHILD_STOPREQ:
        if (state == MB_COMM_PSTATE_SEND_PROCEED) {
            u8 fileid = (u8)pPwork->fileid_of_child[child - 1];

            if (fileid == (u8) - 1) {
                break;
            }

            SDK_ASSERT(fileid < MB_MAX_FILE);

            pPwork->fileinfo[fileid].pollbmp &= ~(0x0001 << (child));

            MBi_CommChangeParentState(child, MB_COMM_PSTATE_SEND_COMPLETE, NULL);
        } else if (state == MB_COMM_PSTATE_SEND_COMPLETE) {
            if (pPwork->req2child[child - 1] == MB_COMM_USER_REQ_BOOT) {
                pPwork->req2child[child - 1] = MB_COMM_USER_REQ_NONE;
                MBi_CommChangeParentState(child, MB_COMM_PSTATE_BOOT_REQUEST, NULL);
                break;
            }
        }
        break;

    case MB_COMM_TYPE_CHILD_BOOTREQ_ACCEPTED:
        if (state == MB_COMM_PSTATE_BOOT_REQUEST) {
            break;
        }

        break;

    default:
        break;
    }
}

static void MBi_CommParentRecvData (void * arg) {
    WMmpRecvHeader * mpHeader = (WMmpRecvHeader *)arg;

    u16 i;
    WMmpRecvData * datap;

    for (i = 0; i < MB_MAX_FILE; i++) {
        if (pPwork->fileinfo[i].active) {
            pPwork->fileinfo[i].nextb = 0;
        }
    }
    any_recv_bitmap = 0;

    for (i = 1; i <= WM_NUM_MAX_CHILD; ++i) {
        datap = WM_ReadMPData(mpHeader, (u16)i);

        if (datap != NULL) {
            if (datap->length == 0xffff) {
            } else if (datap->length != 0) {
                MBi_CommParentRecvDataPerChild(datap, i);
            }
        }
    }
}

static int MBi_CommParentSendMsg (u8 type, u16 pollbmp) {
    MBCommParentBlockHeader hd;

    hd.type = type;

    (void)MBi_MakeParentSendBuffer(&hd, (u8 *)pPwork->common.sendbuf);
    return MBi_BlockHeaderEnd(MB_COMM_PARENT_HEADER_SIZE, pollbmp, pPwork->common.sendbuf);
}

static int MBi_CommParentSendDLFileInfo (void) {
    MBCommParentBlockHeader hd;
    u8 * databuf = ((u8 *)pPwork->common.sendbuf) + MB_COMM_PARENT_HEADER_SIZE;
    u16 child;
    u8 i, fid;
    s8 send_candidate_fid = -1;
    static s8 prev_fid = -1;
    u8 file_req_num[MB_MAX_FILE];
    u16 pollbmp = 0;

    MI_CpuClear8(&file_req_num[0], sizeof(u8) * MB_MAX_FILE);

    for (child = 1; child <= WM_NUM_MAX_CHILD; child++) {
        if (pPwork->p_comm_state[child - 1] == MB_COMM_PSTATE_REQ_ACCEPTED) {
            ++(file_req_num[pPwork->fileid_of_child[child - 1]]);
        }
    }

    fid = (u8)prev_fid;

    for (i = 0; i < MB_MAX_FILE; i++) {
#if 1
        fid = (u8)((fid + 1) % MB_MAX_FILE);

        if (pPwork->fileinfo[fid].active && file_req_num[fid] > 0) {
            send_candidate_fid = (s8)fid;
            break;
        }

#else
        if (pPwork->fileinfo[i].active) {
            if (file_req_num[i] > 0) {
                if (send_candidate_fid == -1 || file_req_num[i] > file_req_num[send_candidate_fid]) {
                    send_candidate_fid = i;
                }
            }
        }
#endif
    }

    if (send_candidate_fid == -1) {
        return MB_SENDFUNC_STATE_ERR;
    }

    prev_fid = send_candidate_fid;

    for (child = 1; child <= WM_NUM_MAX_CHILD; child++) {
        if (pPwork->p_comm_state[child - 1] == MB_COMM_PSTATE_REQ_ACCEPTED
            && pPwork->fileid_of_child[child - 1] == send_candidate_fid) {
            pollbmp |= (1 << child);
        }
    }

    MB_DEBUG_OUTPUT("DLinfo No %2d Pollbmp %04x\n", send_candidate_fid, pollbmp);

    hd.type = MB_COMM_TYPE_PARENT_DL_FILEINFO;
    hd.fid = send_candidate_fid;

    databuf = MBi_MakeParentSendBuffer(&hd, (u8 *)pPwork->common.sendbuf);
    if (databuf) {
        MI_CpuCopy8(
            &pPwork->fileinfo[send_candidate_fid].dl_fileinfo,
            databuf, sizeof(MBDownloadFileInfo)
        );
    }

    return MBi_BlockHeaderEnd(
        sizeof(MBDownloadFileInfo) + MB_COMM_PARENT_HEADER_SIZE, pollbmp,
        pPwork->common.sendbuf
    );
}

static void MBi_ReloadCache (MBiTaskInfo * p_task) {
    MBiCacheInfo * const p_info = (MBiCacheInfo *)p_task->param[0];
    MBiCacheList * const p_list = (MBiCacheList *)p_task->param[1];
    FSFile file[1];
    FSArchive * arc;
    arc = FS_FindArchive(p_list->arc_name, (int)p_list->arc_name_len);
    if (!arc) {
        arc = p_list->arc_pointer;
    }

    FS_InitFile(file);

    if (FS_OpenFileDirect(
            file,
            arc,
            p_info->src, p_info->src + p_info->len, (u32) ~0
        )) {
        if (FS_ReadFile(file, p_info->ptr, (int)p_info->len) == p_info->len) {
            p_info->state = MB_CACHE_STATE_READY;
        }
        (void)FS_CloseFile(file);
    }

    if (p_info->state != MB_CACHE_STATE_READY) {
        p_info->src = 0;
        p_info->state = MB_CACHE_STATE_READY;
    }
}

static int MBi_CommParentSendBlock (void) {
    MBCommParentBlockHeader hd;
    u8 * databuf;
    u8 i;
    MB_BlockInfo bi;

    if (pPwork->file_num == 0) {
        return MB_SENDFUNC_STATE_ERR;
    }

    for (i = 0; i < MB_MAX_FILE; i++) {
        pPwork->cur_fileid = (u8)((pPwork->cur_fileid + 1) % MB_MAX_FILE);
        if (pPwork->fileinfo[pPwork->cur_fileid].active
            && pPwork->fileinfo[pPwork->cur_fileid].pollbmp) {
            MB_DEBUG_OUTPUT("Send File ID:%2d\n", pPwork->cur_fileid);
            break;
        }
    }
    if (i == MB_MAX_FILE) {
        return MB_SENDFUNC_STATE_ERR;
    }

    MBi_calc_sendblock(pPwork->cur_fileid);

    if (!MBi_get_blockinfo(
            &bi,
            &pPwork->fileinfo[pPwork->cur_fileid].blockinfo_table,
            pPwork->fileinfo[pPwork->cur_fileid].currentb,
            &pPwork->fileinfo[pPwork->cur_fileid].dl_fileinfo.header
        )) {
        return MB_SENDFUNC_STATE_ERR;
    }

    hd.type = MB_COMM_TYPE_PARENT_DATA;
    hd.fid = pPwork->cur_fileid;
    hd.seqno = pPwork->fileinfo[pPwork->cur_fileid].currentb;
    databuf = MBi_MakeParentSendBuffer(&hd, (u8 *)pPwork->common.sendbuf);

    {
        u32 card_addr = (u32)(bi.offset -
                              pPwork->fileinfo[pPwork->cur_fileid].blockinfo_table.
                              seg_src_offset[bi.segment_no] +
                              pPwork->fileinfo[pPwork->cur_fileid].card_mapping[bi.segment_no]);

        MBiCacheList * const pl = pPwork->fileinfo[pPwork->cur_fileid].cache_list;
        if (!MBi_ReadFromCache(pl, card_addr, databuf, bi.size)) {
            MBiTaskInfo * const p_task = &pPwork->cur_task;
            if (!MBi_IsTaskBusy(p_task)) {
                if (pl->lifetime) {
                    --pl->lifetime;
                } else {
                    MBiCacheInfo * pi = pl->list;
                    MBiCacheInfo * trg = NULL;
                    int i;
                    for (i = 0; i < MB_CACHE_INFO_MAX; ++i) {
                        if (pi[i].state == MB_CACHE_STATE_READY) {
                            if (!trg || (trg->src > pi[i].src)) {
                                trg = &pi[i];
                            }
                        }
                    }
                    if (!trg) {
                        OS_TPanic("cache-list is invalid! (all the pages are locked)");
                    }
                    pl->lifetime = 2;
                    trg->state = MB_CACHE_STATE_BUSY;
                    trg->src = (card_addr & ~31);
                    p_task->param[0] = (u32)trg;
                    p_task->param[1] = (u32)pl;
                    MBi_SetTask(p_task, MBi_ReloadCache, NULL, 4);
                }
            }
            return MB_SENDFUNC_STATE_ERR;
        }
    }

    return MBi_BlockHeaderEnd(
        (int)(bi.size + MB_COMM_PARENT_HEADER_SIZE),
        pPwork->fileinfo[pPwork->cur_fileid].pollbmp, pPwork->common.sendbuf
    );
}

static int MBi_CommParentSendData (void) {
    struct bitmap {
        u16 connected;
        u16 req;
        u16 kick;
        u16 boot;
        u16 mem_full;
    };
    struct bitmap bmp;
    u16 child;
    int errcode;

    MI_CpuClear16(&bmp, sizeof(struct bitmap));

    for (child = 1; child <= WM_NUM_MAX_CHILD; child++) {
        switch (pPwork->p_comm_state[child - 1]) {
        case MB_COMM_PSTATE_CONNECTED:
            bmp.connected |= (1 << child);
            break;

        case MB_COMM_PSTATE_REQ_ACCEPTED:
            bmp.req |= (1 << child);
            break;

        case MB_COMM_PSTATE_KICKED:
            bmp.kick |= (1 << child);
            break;

        case MB_COMM_PSTATE_SEND_PROCEED:
            break;

        case MB_COMM_PSTATE_BOOT_REQUEST:
            bmp.boot |= (1 << child);
            break;

        case MB_COMM_PSTATE_MEMBER_FULL:
            bmp.mem_full |= (1 << child);
            break;

        default:
            break;
        }
    }

    if (bmp.boot) {
        errcode = MBi_CommParentSendMsg(MB_COMM_TYPE_PARENT_BOOTREQ, bmp.boot);
    } else if (bmp.connected) {
        errcode = MBi_CommParentSendMsg(MB_COMM_TYPE_PARENT_SENDSTART, bmp.connected);
    } else if (bmp.mem_full) {
        errcode = MBi_CommParentSendMsg(MB_COMM_TYPE_PARENT_MEMBER_FULL, bmp.mem_full);
    } else if (bmp.kick) {
        errcode = MBi_CommParentSendMsg(MB_COMM_TYPE_PARENT_KICKREQ, bmp.kick);
    } else if (bmp.req) {
        errcode = MBi_CommParentSendDLFileInfo();
    } else {
        errcode = MBi_CommParentSendBlock();
    }

    if (MB_SENDFUNC_STATE_ERR == errcode) {
        errcode = MBi_CommParentSendMsg(MB_COMM_TYPE_DUMMY, 0xffff);
    }

    return errcode;
}

static void MBi_calc_sendblock (u8 file_id) {
    if ((any_recv_bitmap & (1 << file_id)) == 0) {
        return;
    }

    if (pPwork->fileinfo[file_id].active && pPwork->fileinfo[file_id].pollbmp) {
        if (pPwork->fileinfo[file_id].nextb <= pPwork->fileinfo[file_id].currentb &&
            pPwork->fileinfo[file_id].currentb <=
            pPwork->fileinfo[file_id].nextb + MB_SEND_THRESHOLD) {
            pPwork->fileinfo[file_id].currentb++;
        } else {
            pPwork->fileinfo[file_id].currentb = pPwork->fileinfo[file_id].nextb;
        }
        MB_DEBUG_OUTPUT("**FILE %2d SendBlock %d\n", file_id, pPwork->fileinfo[file_id].currentb);
    }
}

static u16 MBi_calc_nextsendblock (u16 next_block, u16 next_block_req) {
    return max(next_block_req, next_block);
}

static inline u16 max (u16 a, u16 b) {
    return (a > b) ? a : b;
}

static BOOL IsChildAidValid (u16 child_aid) {
    return (child_aid >= 1 && child_aid <= WM_NUM_MAX_CHILD) ? TRUE : FALSE;
}

static void MBi_CommCallParentError (u16 aid, u16 errcode) {
    MBErrorStatus e_stat;
    e_stat.errcode = errcode;

    MBi_CommChangeParentStateCallbackOnly(aid, MB_COMM_PSTATE_ERROR, &e_stat);
}
