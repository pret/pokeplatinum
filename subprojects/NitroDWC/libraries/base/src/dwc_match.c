#include <nitro.h>
#include <base/dwc_base_gamespy.h>
#include <gs/natneg/natneg.h>
#include <gs/serverbrowsing/sb_internal.h>
#include <base/dwc_report.h>
#include <base/dwc_account.h>
#include <base/dwc_error.h>
#include <base/dwc_memfunc.h>
#include <base/dwc_login.h>
#include <base/dwc_friend.h>
#include <base/dwc_match.h>
#include <base/dwc_transport.h>
#include <base/dwc_main.h>
#include <base/dwc_common.h>


#define DWC_MATCH_COMMAND_ADD_MESSAGE_MAX 512
#define DWC_MATCH_COMMAND_ADD_MESSAGE_NUM (DWC_MATCH_COMMAND_ADD_MESSAGE_MAX >> 2)
#define DWC_MATCH_RESV_DENY_REASON_SV_FULL 0x10


enum {
    DWC_MATCH_CANCEL_STATE_INIT = 0, DWC_MATCH_CANCEL_STATE_EXEC, DWC_MATCH_CANCEL_STATE_NUM
};

enum {
    DWC_MATCH_CLOSE_STATE_INIT = 0, DWC_MATCH_CLOSE_STATE_CHANGE_TO_CLIENT, DWC_MATCH_CLOSE_STATE_TIMEOUT, DWC_MATCH_CLOSE_STATE_FORCED, DWC_MATCH_CLOSE_STATE_NUM
};

typedef enum {
    DWC_PP_CONNECTION_SV_CONNECT = 0, DWC_PP_CONNECTION_CL_GT2_CONNECT, DWC_PP_CONNECTION_CL_GT2_ACCEPT, DWC_PP_CONNECTION_CL_FINISH_CONNECT, DWC_PP_CONNECTION_SYN_FINISH, DWC_PP_CONNECTION_NUM
} DWCMatchPpConnectionType;

typedef enum {
    DWC_MATCH_RESET_ALL = 0, DWC_MATCH_RESET_RESTART, DWC_MATCH_RESET_CONTINUE, DWC_MATCH_RESET_NUM
} DWCMatchResetLevel;


static char *stpAddFilter = NULL;
static DWCMatchOptMinCompleteIn *stpOptMinComp = NULL;
static DWCMatchOptSCBlock stOptSCBlock;
static DWCGameMatchKeyData stGameMatchKeys[DWC_QR2_GAME_RESERVED_KEYS];
static const stEvalRate[DWC_SB_UPDATE_MAX_SERVERS] = {3, 3, 2, 2, 1, 1, };
static int s_sbCallbackLevel = 0;
static BOOL s_needSbFree = FALSE;
static BOOL s_bInNNThink = FALSE;
static BOOL s_bNNFreeNegotiateList = FALSE;
#if 0
int DWCi_connect_errorcount = 0;
#endif


static void DWCi_ResetMatchParam(DWCMatchResetLevel level);
static void DWCi_SetMatchCommonParam(u8 matchType, u8 numEntry, DWCMatchedSCCallback callback, void *param);
static void DWCi_CloseMatching(void);
static SBError DWCi_SBUpdateAsync(int profileID);
static int DWCi_GetDefaultMatchFilter(char *filter, int profileID, u8 numEntry, u8 matchType);
static NegotiateError DWCi_NNStartupAsync(int isQR2, int cookie, SBServer server);
static NegotiateError DWCi_DoNatNegotiationAsync(DWCNNInfo *nnInfo);
static int DWCi_SendMatchCommand(u8 command, int profileID, u32 ip, u16 port, const u32 data[], int len);
static SBError DWCi_SendSBMsgCommand(u8 command, u32 ip, u16 port, const u32 data[], int len);
static GPResult DWCi_SendGPBuddyMsgCommand(GPConnection *connection, u8 command, int profileID, const char *message);
static int DWCi_GetGPBuddyAdditionalMsg(char *dstMsg, const char *srcMsg, int index);
static void DWCi_StopResendingMatchCommand(void);
static BOOL DWCi_ProcessRecvMatchCommand(u8 command, int srcPid, u32 srcIP, u16 srcPort, const u32 data[], int len);
static u8 DWCi_CheckResvCommand(int profileID, u32 qr2IP, u16 qr2Port, u32 matchType, BOOL priorFlag);
static int DWCi_ProcessResvOK(int profileID, u32 ip, u16 port);
static void DWCi_MakeBackupServerData(int profileID, const u32 data[]);
static int DWCi_HandleMatchCommandError(int error);
static int DWCi_SendResvCommand(int profileID, BOOL delay);
static int DWCi_SendResvCommandToFriend(BOOL delay, BOOL init, int resendPid);
static BOOL DWCi_RetryReserving(int resendPid);
static int DWCi_CancelReservation(int profileID);
static BOOL DWCi_CancelPreConnectedServerProcess(int clientPid);
static BOOL DWCi_CancelPreConnectedClientProcess(int serverPid);
static int DWCi_ChangeToClient(void);
static void DWCi_PostProcessConnection(DWCMatchPpConnectionType type);
static BOOL DWCi_AreAllBuddies(const u32 pidList[], u32 pidListLen);
static void DWCi_DoCancelMatching(void);
static void DWCi_FinishCancelMatching(void);
static int DWCi_InvalidateReservation(void);
static void DWCi_RestartFromCancel(DWCMatchResetLevel level);
static void DWCi_RestartFromTimeout(void);
static int DWCi_ResumeMatching(void);
static BOOL DWCi_CloseCancelHostAsync(int profileID);
static void DWCi_CloseAllConnectionsByTimeout(void);
static BOOL DWCi_CloseShutdownClientSC(u32 bitmap);
static void DWCi_SendMatchSynPacket(u8 aid, u16 type);
static BOOL DWCi_ProcessMatchSynTimeout(void);
static BOOL DWCi_SendCancelMatchSynCommand(int profileID, u8 command);
static BOOL DWCi_ProcessCancelMatchSynCommand(int profileID, u8 command, u32 data);
static BOOL DWCi_ProcessCancelMatchSynTimeout(void);
static u8 DWCi_GetNewMatchKey(void);
static void DWCi_ClearGameMatchKeys(void);
static u8 DWCi_GetAIDFromList(void);
static BOOL DWCi_IsFriendByIdxList(int profileID);
static int DWCi_CheckDWCServer(SBServer server);
static int DWCi_GetPidListIndex(int profileID, BOOL idx0);
static u8 DWCi_GetAIDFromProfileID(int profileID, BOOL idx0);
static u32 DWCi_GetAIDBitmask(BOOL valid);
static void DWCi_InitClWaitTimeout(void);
static void DWCi_InitOptMinCompParam(BOOL reset);
static void DWCi_ProcessOptMinComp(void);
static GPResult DWCi_HandleGPError(GPResult result);
static SBError DWCi_HandleSBError(SBError error);
static qr2_error_t DWCi_HandleQR2Error(qr2_error_t error);
static NegotiateError DWCi_HandleNNError(NegotiateError error);
static NegotiateResult DWCi_HandleNNResult(NegotiateResult result);
static GT2Result DWCi_HandleGT2Error(GT2Result result);
static void DWCi_SBCallback(ServerBrowser sb, SBCallbackReason reason, SBServer server, void *instance);
static void DWCi_SBPrintServerData(SBServer server);
static BOOL DWCi_EvaluateServers(BOOL sort);
static void DWCi_RandomizeServers(void);
static void DWCi_QR2ServerKeyCallback(int keyid, qr2_buffer_t outbuf, void *userdata);
static void DWCi_QR2PlayerKeyCallback(int keyid, int index, qr2_buffer_t outbuf, void *userdata);
static void DWCi_QR2TeamKeyCallback(int keyid, int index, qr2_buffer_t outbuf, void *userdata);
static void DWCi_QR2KeyListCallback(qr2_key_type keytype, qr2_keybuffer_t keybuffer, void *userdata);
static int DWCi_QR2CountCallback(qr2_key_type keytype, void *userdata);
static void DWCi_QR2AddErrorCallback(qr2_error_t error, gsi_char *errmsg, void *userdata);
static void DWCi_QR2PublicAddrCallback(unsigned int ip, unsigned short port, void *userdata);
static void DWCi_QR2NatnegCallback(int cookie, void *userdata);
static void DWCi_QR2ClientMsgCallback(gsi_char *data, int len, void *userdata);
static void DWCi_NNProgressCallback(NegotiateState state, void *userdata);
static void DWCi_NNCompletedCallback(NegotiateResult result, SOCKET gamesocket, struct sockaddr_in *remoteaddr, void *userdata);
static BOOL DWCi_ProcessNNFailure(BOOL ignoreError);
static void DWCi_SetMatchCnt(DWCMatchControl *pCnt);
static DWCMatchControl *DWCi_GetMatchCnt(void);
static void DWCi_SetMatchStatus(DWCMatchState state);
#ifdef NITRODWC_DEBUG
static void disp_time(void);
static void disp_match_state(DWCMatchState old, DWCMatchState now);
static const char *get_dwccommandstr(u8 command);
#endif


void DWCi_NNFreeNegotiateList() {
    if (s_bInNNThink == FALSE) {
        NNFreeNegotiateList();
    }
    else {
        s_bNNFreeNegotiateList = TRUE;
    }
}

#ifdef DWC_QR2_ALIVE_DURING_MATCHING
BOOL DWC_RegisterMatchingStatus(void) {
    DWC_Printf(DWC_REPORTFLAG_DEBUG, "!!DWC_RegisterMatchingStatus() was called!!\n");

    if ((DWCi_GetMatchCnt() == NULL) || (DWCi_GetMatchCnt()->profileID == 0) || DWCi_IsError()) {
        DWC_Printf(DWC_REPORTFLAG_DEBUG, "But ignored.\n");

        return FALSE;
    }

    if (DWCi_QR2Startup(DWCi_GetMatchCnt()->profileID)) {
        return FALSE;
    }

    return TRUE;
}
#endif

BOOL DWC_CancelMatching(void) {
    if (DWC_IsValidCancelMatching()) {
        DWCi_DoCancelMatching();
        return TRUE;
    }
    else {
        DWC_Printf(DWC_REPORTFLAG_DEBUG, "Now unable to cancel.\n");
        return FALSE;
    }
}

BOOL DWC_CancelMatchingAsync(void) {
    if (DWC_IsValidCancelMatching()) {
        DWCi_DoCancelMatching();
        return TRUE;
    }
    else {
        DWC_Printf(DWC_REPORTFLAG_DEBUG, "Now unable to cancel.\n");
        return FALSE;
    }
}

BOOL DWC_IsValidCancelMatching(void) {
    if (DWCi_IsError()) {
        return FALSE;
    }

    if (!DWCi_GetMatchCnt() || (DWC_GetState() != DWC_STATE_MATCHING) || (DWCi_GetMatchCnt()->cancelState != DWC_MATCH_CANCEL_STATE_INIT)) {
        return FALSE;
    }
    else {
        return TRUE;
    }
}

#ifdef DWC_STOP_SC_SERVER
BOOL DWC_StopSCMatchingAsync(DWCStopSCCallback callback, void *param) {
    if (DWCi_IsError() || !DWCi_GetMatchCnt() || (DWCi_GetMatchCnt()->qr2MatchType != DWC_MATCH_TYPE_SC_SV) || ((DWC_GetState() != DWC_STATE_MATCHING) && (DWC_GetState() != DWC_STATE_CONNECTED))) {
        return FALSE;
    }

    if (DWCi_GetMatchCnt()->state == DWC_MATCH_STATE_SV_WAITING) {
        DWCi_GetMatchCnt()->qr2NumEntry = DWCi_GetMatchCnt()->gt2NumConnection;
        (void)DWCi_GPSetServerStatus();

        if (callback) {
            callback(param);
        }
    }
    else {
        DWCi_GetMatchCnt()->stopSCCallback = callback;
        DWCi_GetMatchCnt()->stopSCParam = param;
        DWCi_GetMatchCnt()->stopSCFlag = 1;
    }

    return TRUE;
}
#endif

u8 DWC_AddMatchKeyInt(u8 keyID, const char *keyString, const int *valueSrc) {
    int index;

    if (!keyString || !valueSrc) {
        return 0;
    }

    if ((keyID >= DWC_QR2_GAME_KEY_START) && stGameMatchKeys[keyID - DWC_QR2_GAME_KEY_START].keyID) {
        if ((stGameMatchKeys[keyID - DWC_QR2_GAME_KEY_START].keyStr != NULL) && (strcmp(stGameMatchKeys[keyID - DWC_QR2_GAME_KEY_START].keyStr, keyString) != 0)) {
            return 0;
        }
    }
    else {
        keyID = DWCi_GetNewMatchKey();

        if (!keyID) {
            return 0;
        }
    }

    index = keyID - DWC_QR2_GAME_KEY_START;
    stGameMatchKeys[index].keyID = keyID;
    stGameMatchKeys[index].isStr = 0;
    stGameMatchKeys[index].pad = 0;

    if (stGameMatchKeys[index].keyStr) {
        DWC_Free(DWC_ALLOCTYPE_BASE, stGameMatchKeys[index].keyStr, 0);
    }

    stGameMatchKeys[index].keyStr = DWC_Alloc(DWC_ALLOCTYPE_BASE, strlen(keyString) + 1);

    if (!stGameMatchKeys[index].keyStr) {
        DWCi_StopMatching(DWC_ERROR_FATAL, DWC_ECODE_SEQ_MATCH + DWC_ECODE_TYPE_ALLOC);
        return 0;
    }

    strcpy(stGameMatchKeys[index].keyStr, keyString);
    DWC_Printf(DWC_REPORTFLAG_DEBUG, "DWC_AddMatchKeyInt: key='%s', value=%d\n", keyString, *valueSrc);

    stGameMatchKeys[index].value = valueSrc;
    qr2_register_key(keyID, stGameMatchKeys[index].keyStr);

    return keyID;
}

u8 DWC_AddMatchKeyString(u8 keyID, const char *keyString, const char *valueSrc) {
    int index;

    if (!keyString || !valueSrc) {
        return 0;
    }

    if ((keyID >= DWC_QR2_GAME_KEY_START) && stGameMatchKeys[keyID - DWC_QR2_GAME_KEY_START].keyID) {
        if ((stGameMatchKeys[keyID - DWC_QR2_GAME_KEY_START].keyStr != NULL) && (strcmp(stGameMatchKeys[keyID - DWC_QR2_GAME_KEY_START].keyStr, keyString) != 0)) {
            return 0;
        }
    }
    else {
        keyID = DWCi_GetNewMatchKey();

        if (!keyID) {
            return 0;
        }
    }

    index = keyID - DWC_QR2_GAME_KEY_START;
    stGameMatchKeys[index].keyID = keyID;
    stGameMatchKeys[index].isStr = 1;
    stGameMatchKeys[index].pad = 0;

    if (stGameMatchKeys[index].keyStr) {
        DWC_Free(DWC_ALLOCTYPE_BASE, stGameMatchKeys[index].keyStr, 0);
    }

    stGameMatchKeys[index].keyStr = DWC_Alloc(DWC_ALLOCTYPE_BASE, strlen(keyString) + 1);

    if (!stGameMatchKeys[index].keyStr) {
        DWCi_StopMatching(DWC_ERROR_FATAL, DWC_ECODE_SEQ_MATCH + DWC_ECODE_TYPE_ALLOC);
        return 0;
    }

    strcpy(stGameMatchKeys[index].keyStr, keyString);
    DWC_Printf(DWC_REPORTFLAG_DEBUG, "DWC_AddMatchKeyString: key='%s' value='%s'\n", keyString, valueSrc);

    stGameMatchKeys[index].value = valueSrc;
    qr2_register_key(keyID, stGameMatchKeys[index].keyStr);

    return keyID;
}

int DWC_GetMatchIntValue(int index, const char *keyString, int idefault) {
    SBServer server;

    if (!DWCi_GetMatchCnt() || DWCi_IsError()) {
        return idefault;
    }

    server = ServerBrowserGetServer(DWCi_GetMatchCnt()->sbObj, index);

    if (!server) {
        return idefault;
    }

    return SBServerGetIntValue(server, keyString, idefault);
}

const char*DWC_GetMatchStringValue(int index, const char *keyString, const char *sdefault) {
    SBServer server;

    if (!DWCi_GetMatchCnt() || DWCi_IsError()) {
        return sdefault;
    }

    server = ServerBrowserGetServer(DWCi_GetMatchCnt()->sbObj, index);

    if (!server) {
        return sdefault;
    }

    return SBServerGetStringValue(server, keyString, sdefault);
}

int DWC_GetLastMatchingType(void) {
    if (DWCi_GetMatchCnt()) {
        return DWCi_GetMatchCnt()->qr2MatchType;
    }
    else {
        return -1;
    }
}

int DWC_SetMatchingOption(DWCMatchOptType opttype, const void *optval, int optlen) {
#pragma unused(optlen)
    DWCMatchOptMinComplete *pMinComp;

    DWC_Printf(DWC_REPORTFLAG_DEBUG, "!!DWC_SetMatchingOption() was called!! type %d\n", opttype);

    if (!DWCi_GetMatchCnt()) {
        return DWC_SET_MATCH_OPT_RESULT_E_BAD_STATE;
    }

    if (!optval) {
        return DWC_SET_MATCH_OPT_RESULT_E_PARAM;
    }

    switch (opttype) {
    case DWC_MATCH_OPTION_MIN_COMPLETE:

        if (DWCi_GetMatchCnt()->state == DWC_MATCH_STATE_SV_POLL_TIMEOUT) {
            return DWC_SET_MATCH_OPT_RESULT_E_BAD_STATE;
        }

        pMinComp = (DWCMatchOptMinComplete *)optval;

        if (pMinComp->valid && (pMinComp->minEntry <= 1)) {
            return DWC_SET_MATCH_OPT_RESULT_E_PARAM;
        }

        if (!stpOptMinComp) {
            stpOptMinComp = DWC_Alloc(DWC_ALLOCTYPE_BASE, sizeof(DWCMatchOptMinCompleteIn));

            if (!stpOptMinComp) {
                return DWC_SET_MATCH_OPT_RESULT_E_ALLOC;
            }
        }

        stpOptMinComp->valid = pMinComp->valid;
        stpOptMinComp->minEntry = pMinComp->minEntry;
        stpOptMinComp->retry = 0;
        stpOptMinComp->pad = 0;
        stpOptMinComp->timeout = pMinComp->timeout;
        stpOptMinComp->recvBit = 0;
        stpOptMinComp->timeoutBit = 0;
        stpOptMinComp->startTime = OS_GetTick();
        stpOptMinComp->lastPollTime = OS_GetTick();
        
        return DWC_SET_MATCH_OPT_RESULT_SUCCESS;
    case DWC_MATCH_OPTION_SC_CONNECT_BLOCK:
        if (*(BOOL *)optval) {
            stOptSCBlock.valid = 1;
        }
        else {
            stOptSCBlock.valid = 0;
        }

        stOptSCBlock.lock = 0;
        return DWC_SET_MATCH_OPT_RESULT_SUCCESS;
    default:
        return DWC_SET_MATCH_OPT_RESULT_E_INVALID;
    }
}

int DWC_GetMatchingOption(DWCMatchOptType opttype, void *optval, int *optlen) {
    if (!DWCi_GetMatchCnt()) {
        return DWC_SET_MATCH_OPT_RESULT_E_BAD_STATE;
    }

    if (!optval) {
        return DWC_SET_MATCH_OPT_RESULT_E_PARAM;
    }

    switch (opttype) {
    case DWC_MATCH_OPTION_MIN_COMPLETE:

        if (!stpOptMinComp) {
            if (optlen) {
                *optlen = 0;
            }
        }
        else {
            DWCMatchOptMinComplete *pVal = optval;

            pVal->valid = stpOptMinComp->valid;
            pVal->minEntry = stpOptMinComp->minEntry;
            pVal->timeout = stpOptMinComp->timeout;
            pVal->pad[0] = pVal->pad[1] = 0;

            if (optlen) {
                *optlen = sizeof(DWCMatchOptMinComplete);
            }
        }

        return DWC_SET_MATCH_OPT_RESULT_SUCCESS;
    case DWC_MATCH_OPTION_SC_CONNECT_BLOCK:

        if (stOptSCBlock.valid == 1) {
            *(BOOL *)optval = TRUE;
        }
        else {
            *(BOOL *)optval = FALSE;
        }

        if (optlen) {
            *optlen = sizeof(BOOL);
        }

        return DWC_SET_MATCH_OPT_RESULT_SUCCESS;
    default:
        return DWC_SET_MATCH_OPT_RESULT_E_INVALID;
    }
}

int DWC_GetMOMinCompState(u64 *time) {
    u64 passTime;

    if (!stpOptMinComp || !stpOptMinComp->valid) {
        return -1;
    }

    passTime = OS_TicksToMilliSeconds(OS_GetTick() - stpOptMinComp->startTime);

    if (time) {
        *time = passTime;
    }

    if (passTime >= stpOptMinComp->timeout) {
        return 1;
    }
    else {
        return 0;
    }
}

BOOL DWC_GetMOSCConnectBlockState(void) {
    if ((stOptSCBlock.valid == 0) || (stOptSCBlock.lock == 0)) {
        return FALSE;
    }
    else {
        return TRUE;
    }
}

void DWC_ClearMOSCConnectBlock(void) {
    stOptSCBlock.lock = 0;
    DWC_Printf(DWC_REPORTFLAG_DEBUG, "[OPT_SC_BLOCK] ClearMOSCConnectBlock\n");
}

DWCMatchState DWC_GetMatchingState(void) {
    if (DWCi_GetMatchCnt()) {
        return DWCi_GetMatchCnt()->state;
    }
    else {
        return DWC_MATCH_STATE_INIT;
    }
}

void DWCi_MatchInit(DWCMatchControl *matchcnt, GPConnection pGpObj, GT2Socket *pGt2Socket, GT2ConnectionCallbacks *gt2Callbacks, const char *gameName, const char *secretKey, const DWCFriendData friendList[], int friendListLen) {
    SDK_ASSERT(matchcnt);

    DWCi_SetMatchCnt(matchcnt);
    DWCi_GetMatchCnt()->pGpObj = pGpObj;
    DWCi_GetMatchCnt()->pGt2Socket = pGt2Socket;
    DWCi_GetMatchCnt()->gt2Callbacks = gt2Callbacks;
    DWCi_GetMatchCnt()->qr2Obj = NULL;
    DWCi_GetMatchCnt()->qr2IP = 0;
    DWCi_GetMatchCnt()->qr2Port = 0;
    DWCi_GetMatchCnt()->sbObj = NULL;
    DWCi_SetMatchStatus(DWC_MATCH_STATE_INIT);
    DWCi_GetMatchCnt()->pad1 = 0;
    DWCi_GetMatchCnt()->pad2 = 0;
#ifdef DWC_STOP_SC_SERVER
    DWCi_GetMatchCnt()->pad3 = 0;
    DWCi_GetMatchCnt()->pad4 = 0;
#endif
#ifdef DWC_LIMIT_FRIENDS_MATCH_VALID
    DWCi_GetMatchCnt()->friendAcceptBit = 0;
#endif
    DWCi_GetMatchCnt()->profileID = 0;
    DWCi_GetMatchCnt()->gameName = gameName;
    DWCi_GetMatchCnt()->secretKey = secretKey;
    DWCi_GetMatchCnt()->friendList = friendList;
    DWCi_GetMatchCnt()->friendListLen = friendListLen;
    MI_CpuClear8(DWCi_GetMatchCnt()->friendIdxList, DWC_MAX_MATCH_IDX_LIST);
    DWCi_GetMatchCnt()->friendIdxListLen = 0;
    DWCi_GetMatchCnt()->matchedCallback = NULL;
    DWCi_GetMatchCnt()->matchedParam = NULL;
    DWCi_GetMatchCnt()->evalCallback = NULL;
    DWCi_GetMatchCnt()->evalParam = NULL;
#ifdef DWC_STOP_SC_SERVER
    DWCi_GetMatchCnt()->stopSCCallback = NULL;
    DWCi_GetMatchCnt()->stopSCParam = NULL;
#endif
    DWCi_GetMatchCnt()->sbUpdateRequestTick = 0;
    DWC_Printf(DWC_REPORTFLAG_DEBUG, "ServerBrowserLimitUpdate timeout reset.(%s)\n", __FUNCTION__);
    DWCi_ClearGameMatchKeys();

    stOptSCBlock.valid = 0;
    stOptSCBlock.lock = 0;
    stOptSCBlock.pad = 0;

    DWCi_ResetMatchParam(DWC_MATCH_RESET_ALL);
}

qr2_error_t DWCi_QR2Startup(int profileID) {
    int i;
    qr2_error_t qr2Error = e_qrnoerror;

    if (DWCi_GetMatchCnt()->qr2Obj) {
        DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "QR2 is already set up.\n");
        return e_qrnoerror;
    }

    DWCi_GetMatchCnt()->profileID = profileID;

    for (i = 0; i < DWC_DNS_ERROR_RETRY_MAX; i++) {
        qr2Error = qr2_init_socket(&DWCi_GetMatchCnt()->qr2Obj, gt2GetSocketSOCKET(*DWCi_GetMatchCnt()->pGt2Socket), gt2GetLocalPort(*DWCi_GetMatchCnt()->pGt2Socket), DWCi_GetMatchCnt()->gameName, DWCi_GetMatchCnt()->secretKey, 1, 1, DWCi_QR2ServerKeyCallback, DWCi_QR2PlayerKeyCallback, DWCi_QR2TeamKeyCallback, DWCi_QR2KeyListCallback, DWCi_QR2CountCallback, DWCi_QR2AddErrorCallback, NULL);

        if (!qr2Error) {
            break;
        }
        else {
            qr2_shutdown(DWCi_GetMatchCnt()->qr2Obj);
            DWCi_GetMatchCnt()->qr2Obj = NULL;
        }

        if ((qr2Error != e_qrdnserror) || (i == DWC_DNS_ERROR_RETRY_MAX - 1)) {
            DWCi_HandleQR2Error(qr2Error);

            return qr2Error;
        }
    }

#ifdef DWC_QR2_ALIVE_DURING_MATCHING
    DWCi_GetMatchCnt()->qr2IP = 0;
    DWCi_GetMatchCnt()->qr2Port = 0;
#endif
    qr2_register_publicaddress_callback(DWCi_GetMatchCnt()->qr2Obj, DWCi_QR2PublicAddrCallback);
    qr2_register_natneg_callback(DWCi_GetMatchCnt()->qr2Obj, DWCi_QR2NatnegCallback);
    qr2_register_clientmessage_callback(DWCi_GetMatchCnt()->qr2Obj, DWCi_QR2ClientMsgCallback);
    qr2_send_statechanged(DWCi_GetMatchCnt()->qr2Obj);

    return qr2Error;
}

void DWCi_ConnectToAnybodyAsync(u8 numEntry, const char *addFilter, DWCMatchedSCCallback matchedCallback, void *matchedParam, DWCEvalPlayerCallback evalCallback, void *evalParam) {
    char filter[MAX_FILTER_LEN];
    u32 addFilterLenMax;
    SBError sbError;

    if (stpAddFilter) {
        DWC_Free(DWC_ALLOCTYPE_BASE, stpAddFilter, 0);
        stpAddFilter = NULL;
    }

    if (addFilter) {
        addFilterLenMax = MAX_FILTER_LEN - DWCi_GetDefaultMatchFilter(filter, 0xffffffff, DWC_MAX_CONNECTIONS, DWC_MATCH_TYPE_SC_CL) - strlen(" and ()");

        SDK_ASSERT(strlen(addFilter) < addFilterLenMax);

        stpAddFilter = DWC_Alloc(DWC_ALLOCTYPE_BASE, addFilterLenMax);

        if (!stpAddFilter) {
            DWCi_StopMatching(DWC_ERROR_FATAL, DWC_ECODE_SEQ_MATCH + DWC_ECODE_TYPE_ALLOC);
            return;
        }

        MI_CpuCopy8(addFilter, stpAddFilter, addFilterLenMax);
        stpAddFilter[addFilterLenMax - 1] = '\0';
    }

    DWCi_SetMatchCommonParam(DWC_MATCH_TYPE_ANYBODY, numEntry, matchedCallback, matchedParam);
    DWCi_GetMatchCnt()->evalCallback = evalCallback;
    DWCi_GetMatchCnt()->evalParam = evalParam;
    DWCi_SetMatchStatus(DWC_MATCH_STATE_CL_SEARCH_OWN);

    if (!DWCi_GetMatchCnt()->sbObj) {
        DWCi_GetMatchCnt()->sbObj = ServerBrowserNew(DWCi_GetMatchCnt()->gameName, DWCi_GetMatchCnt()->gameName, DWCi_GetMatchCnt()->secretKey, 0, 20, QVERSION_QR2, SBFalse, DWCi_SBCallback, NULL);
    }

    if (!DWCi_GetMatchCnt()->sbObj) {
        if (DWCi_HandleSBError(sbe_allocerror)) {
            return;
        }
    }

    (void)DWCi_SetGPStatus(DWC_STATUS_MATCH_ANYBODY, "", NULL);
    sbError = DWCi_SBUpdateAsync(DWCi_GetMatchCnt()->profileID);

    if (DWCi_HandleSBError(sbError)) {
        return;
    }

#ifdef DWC_QR2_ALIVE_DURING_MATCHING
    if (DWCi_GetMatchCnt()->qr2Obj == NULL) {
        DWCi_QR2Startup(DWCi_GetMatchCnt()->profileID);
    }
#else
    qr2_send_statechanged(DWCi_GetMatchCnt()->qr2Obj);
#endif

    DWCi_InitOptMinCompParam(FALSE);
}

void DWCi_ConnectToFriendsAsync(const u8 friendIdxList[], int friendIdxListLen, u8 numEntry, BOOL distantFriend, DWCMatchedSCCallback matchedCallback, void *matchedParam, DWCEvalPlayerCallback evalCallback, void *evalParam) {
    char valueStr[12], keyValueStr[32];

#ifndef DWC_MATCH_ACCEPT_NO_FRIEND
    int checkpid;
    int friendCount;
    int i;
#endif
    int result;
    GPResult gpResult;

    DWCi_SetMatchCommonParam(DWC_MATCH_TYPE_FRIEND, numEntry, matchedCallback, matchedParam);
    DWCi_GetMatchCnt()->distantFriend = (u8)(distantFriend ? 1 : 0);
    DWCi_GetMatchCnt()->evalCallback = evalCallback;
    DWCi_GetMatchCnt()->evalParam = evalParam;

#ifdef DWC_MATCH_ACCEPT_NO_FRIEND
    MI_CpuCopy8(friendIdxList, DWCi_GetMatchCnt()->friendIdxList, (u32)friendIdxListLen);
    DWCi_GetMatchCnt()->friendIdxListLen = friendIdxListLen;

    if (!friendIdxListLen || ((friendIdxListLen < numEntry) && !distantFriend && (!stpOptMinComp || !stpOptMinComp->valid || (friendIdxListLen < stpOptMinComp->minEntry - 1)))) {
        DWCi_StopMatching(DWC_ERROR_FRIENDS_SHORTAGE, 0);
        return;
    }
#else
    for (i = 0, friendCount = 0; i < friendIdxListLen; i++) {
        if (!(checkpid = DWCi_GetProfileIDFromList(friendIdxList[i])) || !gpIsBuddy(DWCi_GetMatchCnt()->pGpObj, checkpid)) {
            continue;
        }

        DWCi_GetMatchCnt()->friendIdxList[friendCount] = friendIdxList[i];
        friendCount++;
    }

    if (!friendCount || ((friendCount < numEntry) && !distantFriend && (!stpOptMinComp || !stpOptMinComp->valid || (friendCount < stpOptMinComp->minEntry - 1)))) {
        DWCi_StopMatching(DWC_ERROR_FRIENDS_SHORTAGE, 0);
        return;
    }
    DWCi_GetMatchCnt()->friendIdxListLen = friendCount;
#endif

    DWCi_SetMatchStatus(DWC_MATCH_STATE_CL_WAIT_RESV);

    if (!DWCi_GetMatchCnt()->sbObj) {
        DWCi_GetMatchCnt()->sbObj = ServerBrowserNew(DWCi_GetMatchCnt()->gameName, DWCi_GetMatchCnt()->gameName, DWCi_GetMatchCnt()->secretKey, 0, 20, QVERSION_QR2, SBFalse, DWCi_SBCallback, NULL);
    }

    if (!DWCi_GetMatchCnt()->sbObj) {
        if (DWCi_HandleSBError(sbe_allocerror)) {
            return;
        }
    }

    (void)OS_SNPrintf(valueStr, sizeof(valueStr), "%u", numEntry);
    (void)DWC_SetCommonKeyValueString(DWC_GP_SSTR_KEY_MATCH_FRIEND_NUM, valueStr, keyValueStr, '/');
    (void)DWC_AddCommonKeyValueString(DWC_GP_SSTR_KEY_DISTANT_FRIEND, distantFriend ? "Y" : "N", keyValueStr, '/');
    (void)OS_SNPrintf(valueStr, sizeof(valueStr), "%u", DWC_MATCHING_VERSION);
    (void)DWC_AddCommonKeyValueString(DWC_GP_SSTR_KEY_MATCH_VERSION, valueStr, keyValueStr, '/');

    gpResult = DWCi_SetGPStatus(DWC_STATUS_MATCH_FRIEND, keyValueStr, NULL);

    if (DWCi_HandleGPError(gpResult)) {
        return;
    }

#ifdef DWC_QR2_ALIVE_DURING_MATCHING
    if (DWCi_GetMatchCnt()->qr2Obj == NULL) {
        if (DWCi_QR2Startup(DWCi_GetMatchCnt()->profileID)) {
            return;
        }
    }
#else
    qr2_send_statechanged(DWCi_GetMatchCnt()->qr2Obj);
#endif

    result = DWCi_SendResvCommandToFriend(FALSE, TRUE, 0);

    if (DWCi_HandleMatchCommandError(result)) {
        return;
    }

    DWCi_InitOptMinCompParam(FALSE);
}

void DWCi_SetupGameServer(u8 maxEntry, DWCMatchedSCCallback matchedCallback, void *matchedParam, DWCNewClientCallback newClientCallback, void *newClientParam) {
    GPResult gpResult;

    DWCi_SetMatchCommonParam(DWC_MATCH_TYPE_SC_SV, maxEntry, matchedCallback, matchedParam);
    DWCi_GetMatchCnt()->newClientCallback = newClientCallback;
    DWCi_GetMatchCnt()->newClientParam = newClientParam;
    DWCi_GetMatchCnt()->sbPidList[0] = DWCi_GetMatchCnt()->profileID;
    DWCi_GetMatchCnt()->validAidBitmap = 1;
    DWCi_GetMatchCnt()->gt2NumValidConn = 0;

    stOptSCBlock.lock = 0;

    DWCi_SetMatchStatus(DWC_MATCH_STATE_SV_WAITING);

    gpResult = DWCi_GPSetServerStatus();

    if (DWCi_HandleGPError(gpResult)) {
        return;
    }

#ifdef DWC_QR2_ALIVE_DURING_MATCHING
    if (DWCi_GetMatchCnt()->qr2Obj == NULL) {
        DWCi_QR2Startup(DWCi_GetMatchCnt()->profileID);
    }
#else
    qr2_send_statechanged(DWCi_GetMatchCnt()->qr2Obj);
#endif

}

void DWCi_ConnectToGameServerAsync(int serverPid, DWCMatchedSCCallback matchedCallback, void *matchedParam, DWCNewClientCallback newClientCallback, void *newClientParam) {
    int result;
    GPResult gpResult;

    DWCi_SetMatchCommonParam(DWC_MATCH_TYPE_SC_CL, 0, matchedCallback, matchedParam);
    DWCi_GetMatchCnt()->newClientCallback = newClientCallback;
    DWCi_GetMatchCnt()->newClientParam = newClientParam;
    DWCi_GetMatchCnt()->qr2IsReserved = 1;
    DWCi_GetMatchCnt()->qr2Reservation = DWCi_GetMatchCnt()->profileID;
    DWCi_GetMatchCnt()->sbPidList[0] = serverPid;
    DWCi_SetMatchStatus(DWC_MATCH_STATE_CL_WAIT_RESV);

    if (!DWCi_GetMatchCnt()->sbObj) {
        DWCi_GetMatchCnt()->sbObj = ServerBrowserNew(DWCi_GetMatchCnt()->gameName, DWCi_GetMatchCnt()->gameName, DWCi_GetMatchCnt()->secretKey, 0, 20, QVERSION_QR2, SBFalse, DWCi_SBCallback, NULL);
    }

    if (!DWCi_GetMatchCnt()->sbObj) {
        if (DWCi_HandleSBError(sbe_allocerror)) {
            return;
        }
    }

    gpResult = DWCi_SetGPStatus(DWC_STATUS_MATCH_SC_CL, "", NULL);

    if (DWCi_HandleGPError(gpResult)) {
        return;
    }

#ifdef DWC_QR2_ALIVE_DURING_MATCHING
    if (DWCi_GetMatchCnt()->qr2Obj == NULL) {
        if (DWCi_QR2Startup(DWCi_GetMatchCnt()->profileID)) {
            return;
        }
    }
#else
    qr2_send_statechanged(DWCi_GetMatchCnt()->qr2Obj);
#endif

    result = DWCi_SendResvCommand(DWCi_GetMatchCnt()->sbPidList[0], FALSE);

    if (DWCi_HandleMatchCommandError(result)) {
        return;
    }
}

static void DWCi_SendStateChanged(qr2_t qr2Obj) {
    if (qr2Obj == NULL) {
        return;
    }

    qr2_think(qr2Obj);

    if (qr2Obj->userstatechangerequested) {
        return;
    }

    switch (DWCi_GetMatchCnt()->qr2MatchType) {
    case DWC_MATCH_TYPE_ANYBODY:
    case DWC_MATCH_TYPE_FRIEND:
        switch (DWCi_GetMatchCnt()->state) {
        case DWC_MATCH_STATE_CL_WAITING:
        case DWC_MATCH_STATE_CL_SEARCH_OWN:
        case DWC_MATCH_STATE_CL_SEARCH_HOST:
        case DWC_MATCH_STATE_CL_WAIT_RESV:
        case DWC_MATCH_STATE_CL_NN:
        case DWC_MATCH_STATE_SV_OWN_NN:
            qr2_send_statechanged(DWCi_GetMatchCnt()->qr2Obj);
            break;
        }

        break;
    case DWC_MATCH_TYPE_SC_SV:
        if (DWCi_GetMatchCnt()->state == DWC_MATCH_STATE_SV_OWN_NN) {
            qr2_send_statechanged(DWCi_GetMatchCnt()->qr2Obj);
        }

        break;
    }
}

void DWCi_MatchProcess(BOOL fullSpec) {
    u32 resendInterval;
    u32 sbInterval;
    int result;
    SBError sbError;

    if (!DWCi_GetMatchCnt() || DWCi_IsError()) {
        return;
    }

    if (!fullSpec) {
        if (DWCi_GetMatchCnt()->qr2Obj) {
            qr2_think(DWCi_GetMatchCnt()->qr2Obj);
        }

        if (DWCi_GetMatchCnt()->pGt2Socket) {
            gt2Think(*DWCi_GetMatchCnt()->pGt2Socket);
        }

        return;
    }

    if (DWCi_GetMatchCnt()->state == DWC_MATCH_STATE_INIT) {
        return;
    }

    switch (DWCi_GetMatchCnt()->state) {
    case DWC_MATCH_STATE_CL_WAIT_RESV:
        if (DWCi_GetMatchCnt()->cmdTimeoutTime > 0) {
            if (OS_TicksToMilliSeconds(OS_GetTick() - DWCi_GetMatchCnt()->cmdTimeoutStartTick) > DWCi_GetMatchCnt()->cmdTimeoutTime) {
                DWCi_GetMatchCnt()->cmdTimeoutTime = 0;

                if (DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_SC_CL) {
                    DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "Timeout: wait server response %d/%d.\n", DWCi_GetMatchCnt()->scResvRetryCount, DWC_MATCH_CMD_RETRY_MAX);
                    DWCi_GetMatchCnt()->scResvRetryCount++;

                    if (DWCi_GetMatchCnt()->scResvRetryCount > DWC_MATCH_CMD_RETRY_MAX) {
                        DWCi_StopMatching(DWC_ERROR_NETWORK, DWC_ECODE_SEQ_MATCH + DWC_ECODE_TYPE_SC_CL_FAIL);
                        return;
                    }
                    else {
                        result = DWCi_SendResvCommand(DWCi_GetMatchCnt()->sbPidList[0], FALSE);
                        if (DWCi_HandleMatchCommandError(result)) {
                            return;
                        }
                    }
                }
                else {
                    DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "NN resv(with %u) timed out. Try next server.\n", DWCi_GetMatchCnt()->sbPidList[0]);
                    if (!DWCi_RetryReserving(0)) {
                        return;
                    }
                }
            }
        }

        if (DWCi_GetMatchCnt()->cmdResendFlag) {
            resendInterval = (u32)DWC_MATCH_CMD_RESEND_INTERVAL_MSEC + DWC_MATCH_CMD_RESEND_INTERVAL_ADD_MSEC * DWCi_GetMatchCnt()->gt2NumConnection;

            if (OS_TicksToMilliSeconds(OS_GetTick() - DWCi_GetMatchCnt()->cmdResendTick) >= resendInterval) {
                result = DWCi_SendResvCommand(DWCi_GetMatchCnt()->sbPidList[0], FALSE);
                if (DWCi_HandleMatchCommandError(result)) {
                    return;
                }
            }
        }
        break;
    case DWC_MATCH_STATE_CL_SEARCH_OWN:
    case DWC_MATCH_STATE_CL_SEARCH_HOST:
    case DWC_MATCH_STATE_CL_SEARCH_NN_HOST:
        if (DWCi_GetMatchCnt()->sbUpdateFlag <= 0) {
            break;
        }

        if (DWCi_GetMatchCnt()->state == DWC_MATCH_STATE_CL_SEARCH_HOST) {
            sbInterval = (u32)DWC_SB_UPDATE_INTERVAL_MSEC + DWC_SB_UPDATE_INTERVAL_ADD_MSEC * DWCi_GetMatchCnt()->gt2NumConnection;
        }
        else {
            if (DWCi_GetMatchCnt()->sbUpdateFlag == DWC_SB_UPDATE_INTERVAL_SHORT) {
                sbInterval = DWC_SB_UPDATE_INTERVAL_SHORT_MSEC;
            }
            else {
                sbInterval = DWC_SB_UPDATE_INTERVAL_MSEC;
            }
        }

        if (OS_TicksToMilliSeconds(OS_GetTick() - DWCi_GetMatchCnt()->sbUpdateTick) > sbInterval) {
            sbError = DWCi_SBUpdateAsync(DWCi_GetMatchCnt()->reqProfileID);

            if (DWCi_HandleSBError(sbError)) {
                return;
            }

            DWCi_GetMatchCnt()->sbUpdateFlag = 0;
        }
        break;
    case DWC_MATCH_STATE_CL_GT2:
        if (DWCi_GetMatchCnt()->nnFinishTime) {
            if (OS_TicksToMilliSeconds(OS_GetTick() - DWCi_GetMatchCnt()->nnFinishTime) > DWC_WAIT_GT2_CONNECT_TIMEOUT) {
                DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "Timeout: wait gt2Connect().\n");
                DWCi_GetMatchCnt()->nnFinishTime = 0;

                if (!DWCi_CancelPreConnectedClientProcess(DWCi_GetMatchCnt()->sbPidList[0])) {
                    return;
                }
            }
        }
        else if ((DWCi_GetMatchCnt()->cmdCnt.command == DWC_MATCH_COMMAND_TELL_ADDR) && (OS_TicksToMilliSeconds(OS_GetTick() - DWCi_GetMatchCnt()->cmdCnt.sendTime) > DWC_MATCH_CMD_RTT_TIMEOUT)) {
            DWC_Printf(DWC_REPORTFLAG_DEBUG, "RTT Timeout with DWC_MATCH_STATE_CL_GT2.\n");
            DWCi_GetMatchCnt()->cmdCnt.count++;

            if (DWCi_GetMatchCnt()->cmdCnt.count > DWC_MATCH_CMD_RETRY_MAX) {
                DWCi_StopResendingMatchCommand();
                DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "Stop resending command %d.\n", DWC_MATCH_COMMAND_TELL_ADDR);

                if (!DWCi_CancelPreConnectedClientProcess(DWCi_GetMatchCnt()->sbPidList[0])) {
                    return;
                }

                break;
            }

            result = DWCi_SendMatchCommand(DWC_MATCH_COMMAND_TELL_ADDR, DWCi_GetMatchCnt()->cmdCnt.profileID, DWCi_GetMatchCnt()->cmdCnt.ip, DWCi_GetMatchCnt()->cmdCnt.port, DWCi_GetMatchCnt()->cmdCnt.data, DWCi_GetMatchCnt()->cmdCnt.len);

            if (DWCi_HandleMatchCommandError(result)) {
                return;
            }
        }

        break;
    case DWC_MATCH_STATE_SV_OWN_NN:
        if ((DWCi_GetMatchCnt()->cmdCnt.command == DWC_MATCH_COMMAND_RESV_OK) && (((DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_ANYBODY) && (OS_TicksToMilliSeconds(OS_GetTick() - DWCi_GetMatchCnt()->cmdCnt.sendTime) > DWC_MATCH_RESV_KEEP_TIME_ANYBODY)) || ((DWCi_GetMatchCnt()->qr2MatchType != DWC_MATCH_TYPE_ANYBODY) && (OS_TicksToMilliSeconds(OS_GetTick() - DWCi_GetMatchCnt()->cmdCnt.sendTime) > DWC_MATCH_RESV_KEEP_TIME_FRIEND)))) {
            DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "Reservation timeout. Cancel reservation.\n");
            DWCi_StopResendingMatchCommand();

            if (!DWCi_CancelPreConnectedServerProcess(DWCi_GetMatchCnt()->sbPidList[DWCi_GetMatchCnt()->gt2NumConnection + 1])) {
                return;
            }
        }
        break;
    case DWC_MATCH_STATE_SV_WAIT_CL_LINK:
        if ((DWCi_GetMatchCnt()->cmdCnt.command == DWC_MATCH_COMMAND_LINK_CLS_REQ) && (OS_TicksToMilliSeconds(OS_GetTick() - DWCi_GetMatchCnt()->cmdCnt.sendTime) > DWC_MATCH_LINK_CLS_TIMEOUT)) {
            DWCi_GetMatchCnt()->cmdCnt.count++;

            if (DWCi_GetMatchCnt()->cmdCnt.count > 0) {
                DWCi_StopResendingMatchCommand();
                DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "Wait clients connecting timeout.\n");

                if (DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_SC_SV) {
                    if (!DWCi_CancelPreConnectedServerProcess(DWCi_GetMatchCnt()->sbPidList[DWCi_GetMatchCnt()->gt2NumConnection])) {
                        return;
                    }
                }
                else {
                    DWCi_RestartFromTimeout();
                }
                break;
            }

            result = DWCi_SendMatchCommand(DWC_MATCH_COMMAND_LINK_CLS_REQ, DWCi_GetMatchCnt()->cmdCnt.profileID, DWCi_GetMatchCnt()->cmdCnt.ip, DWCi_GetMatchCnt()->cmdCnt.port, DWCi_GetMatchCnt()->cmdCnt.data, DWCi_GetMatchCnt()->cmdCnt.len);

            if (DWCi_HandleMatchCommandError(result)) {
                return;
            }
        }

        break;
    case DWC_MATCH_STATE_CL_WAITING:
        if ((DWC_GetState() == DWC_STATE_MATCHING) && (OS_TicksToMilliSeconds(OS_GetTick() - DWCi_GetMatchCnt()->clWaitTime) > DWC_MATCH_CL_WAIT_TIMEOUT)) {
            DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "No data from server %d/%d.\n", DWCi_GetMatchCnt()->clWaitTimeoutCount, DWC_MATCH_CMD_RETRY_MAX);

            if (DWCi_GetMatchCnt()->clWaitTimeoutCount >= DWC_MATCH_CMD_RETRY_MAX) {
                DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "Timeout: Connection to server was shut down.\n");

                if (!DWCi_CancelPreConnectedClientProcess(DWCi_GetMatchCnt()->sbPidList[0])) {
                    return;
                }
            }
            else {
                result = DWCi_SendMatchCommand(DWC_MATCH_COMMAND_CL_WAIT_POLL, DWCi_GetMatchCnt()->sbPidList[0], DWCi_GetMatchCnt()->qr2IPList[0], DWCi_GetMatchCnt()->qr2PortList[0], NULL, 0);

                if (DWCi_HandleMatchCommandError(result)) {
                    return;
                }

                DWCi_GetMatchCnt()->clWaitTimeoutCount++;
                DWCi_GetMatchCnt()->clWaitTime = OS_GetTick() - OS_MilliSecondsToTicks(DWC_MATCH_CL_WAIT_TIMEOUT - DWC_MATCH_CMD_RTT_TIMEOUT);
            }
        }
        break;
    default:
        break;
    }

    if (((DWCi_GetMatchCnt()->state == DWC_MATCH_STATE_SV_OWN_NN) || (DWCi_GetMatchCnt()->state == DWC_MATCH_STATE_CL_NN)) && DWCi_GetMatchCnt()->nnFailedTime && (OS_TicksToMilliSeconds(OS_GetTick() - DWCi_GetMatchCnt()->nnFailedTime) > DWC_WAIT_NN_RETRY_TIMEOUT)) {
        DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "Timeout : wait NN retry.\n");
        DWCi_NNCompletedCallback(nr_deadbeatpartner, NULL, NULL, &DWCi_GetMatchCnt()->nnInfo);
    }

    if (DWCi_GetMatchCnt()->sbObj) {
#if 1
        s_sbCallbackLevel = 0;
        s_needSbFree = FALSE;

        (void)ServerBrowserThink(DWCi_GetMatchCnt()->sbObj);

        if (s_needSbFree) {
            ServerBrowserFree(DWCi_GetMatchCnt()->sbObj);
            DWCi_GetMatchCnt()->sbObj = NULL;
        }
#else
        sbError = ServerBrowserThink(DWCi_GetMatchCnt()->sbObj);

        if (DWCi_HandleSBError(sbError)) {
            return;
        }
#endif

        if (DWCi_GetMatchCnt()->sbObj) {
            if ((ServerBrowserState(DWCi_GetMatchCnt()->sbObj) != sb_disconnected) && (DWCi_GetMatchCnt()->sbUpdateRequestTick != 0) && (OS_GetTick() > DWCi_GetMatchCnt()->sbUpdateRequestTick)) {
                DWCi_StopMatching(DWC_ERROR_NETWORK, DWC_ECODE_SEQ_MATCH + DWC_ECODE_GS_SB + DWC_ECODE_TYPE_NETWORK);
                DWC_Printf(DWC_REPORTFLAG_SB_UPDATE, "ServerBrowserLimitUpdate timeout.\n");
            }
        }
    }

    DWCi_SendStateChanged(DWCi_GetMatchCnt()->qr2Obj);

    s_bNNFreeNegotiateList = FALSE;
    s_bInNNThink = TRUE;
    NNThink();
    s_bInNNThink = FALSE;

    if (s_bNNFreeNegotiateList == TRUE) {
        s_bNNFreeNegotiateList = FALSE;
        NNFreeNegotiateList();
    }

    if (DWCi_GetMatchCnt()->pGt2Socket) {
        gt2Think(*DWCi_GetMatchCnt()->pGt2Socket);
    }

    if ((DWCi_GetMatchCnt()->state == DWC_MATCH_STATE_WAIT_CLOSE) && (OS_TicksToMilliSeconds(OS_GetTick() - DWCi_GetMatchCnt()->closedTime) > (DWC_MATCH_CMD_RTT_TIMEOUT >> 1))) {
        DWC_Printf(DWC_REPORTFLAG_DEBUG, "RTT Timeout with DWCi_MatchProcess.\n");
        DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "Timeout : Wait prior profileID.\n");

        if (DWCi_ResumeMatching()) {
            return;
        }
    }

    if (!DWCi_ProcessMatchSynTimeout()) {
        return;
    }

    if (!DWCi_ProcessCancelMatchSynTimeout()) {
        return;
    }

    DWCi_ProcessOptMinComp();

#ifdef DWC_STOP_SC_SERVER
    if (DWCi_GetMatchCnt()->stopSCFlag && (DWCi_GetMatchCnt()->state == DWC_MATCH_STATE_SV_WAITING)) {
        DWCi_GetMatchCnt()->qr2NumEntry = DWCi_GetMatchCnt()->gt2NumConnection;
        (void)DWCi_GPSetServerStatus();

        DWCi_GetMatchCnt()->stopSCFlag = 0;

        if (DWCi_GetMatchCnt()->stopSCCallback) {
            DWCi_GetMatchCnt()->stopSCCallback(DWCi_GetMatchCnt()->stopSCParam);
        }
    }
#endif
}

GT2Bool DWCi_GT2UnrecognizedMessageCallback(GT2Socket socket, unsigned int ip, unsigned short port, GT2Byte *message, int len) {
#pragma unused(socket)
    struct sockaddr_in saddr;

    if (!len || !message) {
        return GT2False;
    }

    MI_CpuClear32(&saddr, sizeof(saddr));
    saddr.sin_family = AF_INET;
    saddr.sin_addr.s_addr = ip;
    saddr.sin_port = htons(port);

    if (((message[0] == QR_MAGIC_1) && (message[1] == QR_MAGIC_2)) || (message[0] == '\\')) {
        DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "GT2 Unrecognized : Received QR2 data.\n");

        if (DWCi_GetMatchCnt()->qr2Obj) {
            qr2_parse_query(DWCi_GetMatchCnt()->qr2Obj, (gsi_char *)message, len, (struct sockaddr *)&saddr);
        }
        else {
            DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "  ignore qr2 message.\n");
        }
    }
    else if (!memcmp(message, NNMagicData, NATNEG_MAGIC_LEN)) {
        DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "GT2 Unrecognized : Received NN data.\n");
        NNProcessData((char *)message, len, &saddr);
    }
    else if ((message[0] == 0xfe) && (message[1] == 0xfe)) {
        DWC_Printf(DWC_REPORTFLAG_MATCH_GT2, "GT2 Unrecognized : Not Connected gt2 data.\n");
        return GT2False;
    }
    else {
        DWC_Printf(DWC_REPORTFLAG_WARNING, "GT2 Unrecognized : Received unrecognized data.\n");
        return GT2False;
    }

    return GT2True;
}

void DWCi_GT2ConnectAttemptCallback(GT2Socket socket, GT2Connection connection, unsigned int ip, unsigned short port, int latency, GT2Byte *message, int len) {
#pragma unused(socket)
#pragma unused(message)
#pragma unused(len)
    int index;
    GT2Bool result;
    GT2Connection *pGt2Con;
    DWCConnectionInfo *pConInfo;

    if (!DWCi_GetMatchCnt() || (DWCi_GetMatchCnt()->state != DWC_MATCH_STATE_CL_GT2) || (DWCi_GetMatchCnt()->cancelState != DWC_MATCH_CANCEL_STATE_INIT)) {
        gt2Reject(connection, (const GT2Byte *)"Init state", -1);
        DWC_Printf(DWC_REPORTFLAG_MATCH_GT2, "gt2Reject was called : Init state\n");
        return;
    }

    index = DWCi_GT2GetConnectionListIdx();

    if (index == -1) {
        gt2Reject(connection, (const GT2Byte *)"Server full", -1);
        DWC_Printf(DWC_REPORTFLAG_MATCH_GT2, "gt2Reject was called : Server full\n");
        DWCi_StopMatching(DWC_ERROR_NETWORK, DWC_ECODE_SEQ_MATCH + DWC_ECODE_GS_GT2 + DWC_ECODE_TYPE_CONN_OVER);
    }
    else {
        if ((ip != DWCi_GetMatchCnt()->ipList[DWCi_GetMatchCnt()->gt2NumConnection]) || (port != DWCi_GetMatchCnt()->portList[DWCi_GetMatchCnt()->gt2NumConnection])) {
            if (message[0] && (strtoul((const char *)message, NULL, 10) == DWCi_GetMatchCnt()->sbPidList[DWCi_GetMatchCnt()->gt2NumConnection])) {
                DWC_Printf(DWC_REPORTFLAG_WARNING, "gt2Connect() came before NN complete.\n");
                DWCi_GetMatchCnt()->ipList[DWCi_GetMatchCnt()->gt2NumConnection] = ip;
                DWCi_GetMatchCnt()->portList[DWCi_GetMatchCnt()->gt2NumConnection] = port;
            }
            else {
                gt2Reject(connection, (const GT2Byte *)"Unknown connect attempt", -1);
                DWC_Printf(DWC_REPORTFLAG_WARNING, "gt2Reject was called : Unknown connect attempt from %s\n", gt2AddressToString(ip, port, NULL));
                return;
            }
        }

        DWCi_GetMatchCnt()->nnFinishTime = 0;
        result = gt2Accept(connection, DWCi_GetMatchCnt()->gt2Callbacks);

        if (result == GT2False) {
            DWC_Printf(DWC_REPORTFLAG_WARNING, "Unexpected failure to gt2Accept.\n");
            DWCi_StopMatching(DWC_ERROR_NETWORK, DWC_ECODE_SEQ_MATCH + DWC_ECODE_TYPE_OTHER);
            return;
        }

        DWC_Printf(DWC_REPORTFLAG_MATCH_GT2, "Accepted connection from %s (latency %d)\n", gt2AddressToString(ip, port, NULL), latency);
        DWCi_StopResendingMatchCommand();

        if (DWCi_GetMatchCnt()->gt2NumConnection == 0) {
            DWCi_GetMatchCnt()->baseLatency = (u16)(((latency >> 1) < 0xffff) ? (latency >> 1) : 0xffff);
        }

        pGt2Con = DWCi_GetGT2ConnectionByIdx(index);
        pConInfo = DWCi_GetConnectionInfoByIdx(index);

        *pGt2Con = connection;
        DWCi_GetMatchCnt()->gt2NumConnection++;

        pConInfo->index = (u8)index;
        pConInfo->aid = DWCi_GetMatchCnt()->aidList[DWCi_GetMatchCnt()->gt2NumConnection - 1];
        pConInfo->reserve = 0;
        pConInfo->param = NULL;

        gt2SetConnectionData(connection, pConInfo);
        DWCi_PostProcessConnection(DWC_PP_CONNECTION_CL_GT2_ACCEPT);
    }
}

void DWCi_GT2ConnectedCallback(GT2Connection connection, GT2Result result, GT2Byte *message, int len) {
#pragma unused(len)
    char pidStr[12];
    int index;
    GT2Connection *pGt2Con;
    GT2Result gt2Result;
    DWCConnectionInfo *pConInfo;

    if (!DWCi_GetMatchCnt() || ((DWCi_GetMatchCnt()->state != DWC_MATCH_STATE_CL_GT2) && (DWCi_GetMatchCnt()->state != DWC_MATCH_STATE_SV_OWN_GT2))) {
        DWC_Printf(DWC_REPORTFLAG_MATCH_GT2, "gt2ConnectedCallback: Already cancel\n");
        return;
    }

    if (result != GT2Success) {
        if (!message) {
            message = (GT2Byte *)"";
        }

        DWC_Printf(DWC_REPORTFLAG_MATCH_GT2, "GT2 connect failed %d: %s\n", result, message);

        if (result == GT2DuplicateAddress) {
            return;
        }
        else if (result == GT2TimedOut) {
            DWCi_GetMatchCnt()->gt2ConnectCount++;

            if (DWCi_GetMatchCnt()->gt2ConnectCount > DWC_MATCH_CMD_RETRY_MAX) {
                DWC_Printf(DWC_REPORTFLAG_MATCH_GT2, "gt2Connect() retry over.\n");
                DWCi_GetMatchCnt()->gt2ConnectCount = 0;
                DWCi_CancelPreConnectedServerProcess(DWCi_GetMatchCnt()->sbPidList[DWCi_GetMatchCnt()->qr2NNFinishCount]);
                return;
            }

            DWC_Printf(DWC_REPORTFLAG_MATCH_GT2, "Retry to gt2Connect.\n");

            (void)OS_SNPrintf(pidStr, sizeof(pidStr), "%u", DWCi_GetMatchCnt()->profileID);
            gt2Result = gt2Connect(*DWCi_GetMatchCnt()->pGt2Socket, NULL, gt2AddressToString(
                                       DWCi_GetMatchCnt()->ipList[DWCi_GetMatchCnt()->qr2NNFinishCount], DWCi_GetMatchCnt()->portList[DWCi_GetMatchCnt()->qr2NNFinishCount], NULL), (GT2Byte *)pidStr, -1, DWC_GT2_CONNECT_TIMEOUT, DWCi_GetMatchCnt()->gt2Callbacks, GT2False);

            if (gt2Result == GT2OutOfMemory) {
                DWCi_HandleGT2Error(gt2Result);
                return;
            }
            else if (gt2Result == GT2Success) {
            }
            else if (!DWCi_CancelPreConnectedServerProcess(DWCi_GetMatchCnt()->sbPidList[DWCi_GetMatchCnt()->qr2NNFinishCount])) {
                return;
            }
        }
        else {
            if (!DWCi_CancelPreConnectedServerProcess(DWCi_GetMatchCnt()->sbPidList[DWCi_GetMatchCnt()->gt2NumConnection + 1])) {
                return;
            }
        }
    }
    else {
        DWC_Printf(DWC_REPORTFLAG_MATCH_GT2, "GT2 connected.\n");

        index = DWCi_GT2GetConnectionListIdx();

        if (index == -1) {
            DWC_Printf(DWC_REPORTFLAG_WARNING, "Don't continue matching without closing connections!!\n");
            DWCi_StopMatching(DWC_ERROR_NETWORK, DWC_ECODE_SEQ_MATCH + DWC_ECODE_GS_GT2 + DWC_ECODE_TYPE_CONN_OVER);
            return;
        }

        pGt2Con = DWCi_GetGT2ConnectionByIdx(index);
        pConInfo = DWCi_GetConnectionInfoByIdx(index);

        *pGt2Con = connection;
        DWCi_GetMatchCnt()->gt2NumConnection++;

        pConInfo->index = (u8)index;
        pConInfo->reserve = 0;
        pConInfo->param = NULL;
        pConInfo->aid = DWCi_GetMatchCnt()->aidList[DWCi_GetMatchCnt()->gt2NumConnection];

        gt2SetConnectionData(connection, pConInfo);

        if (DWCi_GetMatchCnt()->state == DWC_MATCH_STATE_SV_OWN_GT2) {
            DWCi_PostProcessConnection(DWC_PP_CONNECTION_SV_CONNECT);
        }
        else {
            DWCi_PostProcessConnection(DWC_PP_CONNECTION_CL_GT2_CONNECT);
        }
    }
}

void DWCi_MatchGPRecvBuddyMsgCallback(GPConnection *pconnection, int profileID, char *message) {
#pragma unused(pconnection)
    char tmpStr[16];

    u32 data[DWC_MATCH_COMMAND_ADD_MESSAGE_NUM];
    int i;

    DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "<GP> RECV-0x%02x <- [--------:-----] [pid=%u]\n", *message, profileID);

    for (i = 0; i < DWC_MATCH_COMMAND_ADD_MESSAGE_NUM; i++) {
        if (DWCi_GetGPBuddyAdditionalMsg(tmpStr, message + 1, i) == -1) {
            break;
        }

        data[i] = strtoul(tmpStr, NULL, 10);
    }

    (void)DWCi_ProcessRecvMatchCommand((u8) * message, profileID, 0, 0, data, i);
}

static void DWCi_StopResendingMatchCommand(void) {
    DWCi_GetMatchCnt()->cmdCnt.command = DWC_MATCH_COMMAND_DUMMY;
    DWCi_GetMatchCnt()->cmdCnt.count = 0;
}

void DWCi_StopMatching(DWCError error, int errorCode) {
    if (!DWCi_GetMatchCnt() || (error == DWC_ERROR_NONE)) {
        return;
    }

    DWCi_CloseAllConnectionsByTimeout();
    DWCi_SetError(error, errorCode);
    (void)DWCi_SetGPStatus(DWC_STATUS_ONLINE, "", NULL);
    DWCi_GetMatchCnt()->matchedCallback(error, FALSE, DWCi_GetMatchCnt()->cbEventPid ? FALSE : TRUE, (DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_SC_SV) ? TRUE : FALSE, DWCi_GetFriendListIndex(DWCi_GetMatchCnt()->cbEventPid), DWCi_GetMatchCnt()->matchedParam);
    DWCi_CloseMatching();
}

void DWCi_ClearQR2Key(void) {
    if (DWCi_GetMatchCnt()->qr2MatchType != DWC_MATCH_TYPE_SC_SV) {
        DWCi_GetMatchCnt()->qr2NNFinishCount = 0;
        DWCi_GetMatchCnt()->qr2NumEntry = 0;

        qr2_send_statechanged(DWCi_GetMatchCnt()->qr2Obj);
    }
}

void DWCi_ProcessMatchSynPacket(u8 aid, u16 type, u8 *data) {
    u8 aidIdx;
    u32 bitmask;
    int i;

    DWC_Printf(DWC_REPORTFLAG_MATCH_GT2, "Received SYN %d packet from aid %d.\n", type - DWC_SEND_TYPE_MATCH_SYN, aid);

    switch (type) {
    case DWC_SEND_TYPE_MATCH_SYN:
        if (DWCi_GetMatchCnt()->state == DWC_MATCH_STATE_CL_WAITING) {
            if (data[0] == 1) {
                DWCi_GetMatchCnt()->cbEventPid = 0;
            }

            aidIdx = data[1];

            DWCi_GetMatchCnt()->aidList[aidIdx] = data[2];
            DWCi_GetMatchCnt()->sbPidList[aidIdx] = DWCi_GetMatchCnt()->profileID;

            if ((DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_ANYBODY) || (DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_FRIEND)) {
                DWCi_GetMatchCnt()->qr2NumEntry = (u8)DWCi_GetMatchCnt()->gt2NumConnection;
            }

            DWCi_GetMatchCnt()->clWaitTimeoutCount = 0;
            DWCi_SetMatchStatus(DWC_MATCH_STATE_CL_SYN);
        }

        DWCi_SendMatchSynPacket(aid, DWC_SEND_TYPE_MATCH_SYN_ACK);
        break;

    case DWC_SEND_TYPE_MATCH_SYN_ACK:
        if (DWCi_GetMatchCnt()->state == DWC_MATCH_STATE_SV_SYN) {
            DWCi_GetMatchCnt()->synAckBit |= 1 << aid;

            if ((data[0] | (data[1] << 8)) > DWCi_GetMatchCnt()->baseLatency) {
                DWCi_GetMatchCnt()->baseLatency = (u16)(data[0] | (data[1] << 8));
            }

            bitmask = DWCi_GetAIDBitmask(FALSE);

            if (DWCi_GetMatchCnt()->synAckBit == bitmask) {
                for (i = 1; i <= DWCi_GetMatchCnt()->gt2NumConnection; i++) {
                    DWCi_SendMatchSynPacket(DWCi_GetMatchCnt()->aidList[i], DWC_SEND_TYPE_MATCH_ACK);
                }

                DWCi_SetMatchStatus(DWC_MATCH_STATE_SV_SYN_WAIT);
                DWC_Printf(DWC_REPORTFLAG_MATCH_GT2, "Wait max latency %d msec.\n", DWCi_GetMatchCnt()->baseLatency);
            }
        }
        else {
            DWCi_SendMatchSynPacket(aid, DWC_SEND_TYPE_MATCH_ACK);
        }

        break;

    case DWC_SEND_TYPE_MATCH_ACK:
        if (DWCi_GetMatchCnt()->state == DWC_MATCH_STATE_CL_SYN) {
            DWCi_PostProcessConnection(DWC_PP_CONNECTION_SYN_FINISH);
        }

        break;
    }
}

BOOL DWCi_ProcessMatchClosing(DWCError error, int errorCode, int profileID) {
#pragma unused(profileID)

    if (DWC_GetState() != DWC_STATE_MATCHING) {
        return FALSE;
    }

    if (DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_SC_SV) {
        DWC_Printf(DWC_REPORTFLAG_DEBUG, "DWCi_ProcessMatchClosing: SC_SV.\n");
        return TRUE;
    }

    if (error) {
        DWCi_StopMatching(error, errorCode + DWC_ECODE_SEQ_MATCH);
        return TRUE;
    }

    DWCi_GetMatchCnt()->aidList[0] = 0;

    if ((DWCi_GetMatchCnt()->cancelState == DWC_MATCH_CANCEL_STATE_EXEC) || (DWCi_GetMatchCnt()->closeState == DWC_MATCH_CLOSE_STATE_CHANGE_TO_CLIENT) || (DWCi_GetMatchCnt()->closeState == DWC_MATCH_CLOSE_STATE_TIMEOUT)) {
        return TRUE;
    }

    if (DWCi_GetMatchCnt()->nnInfo.cookie) {
        NNCancel(DWCi_GetMatchCnt()->nnInfo.cookie);
        DWCi_GetMatchCnt()->nnInfo.cookie = 0;
    }

    if (DWCi_GetMatchCnt()->gt2NumConnection) {
        if (DWCi_GetMatchCnt()->closeState == DWC_MATCH_CLOSE_STATE_INIT) {
            DWCi_GetMatchCnt()->closeState = DWC_MATCH_CLOSE_STATE_FORCED;
            gt2CloseAllConnectionsHard(*DWCi_GetMatchCnt()->pGt2Socket);
        }
    }
    else {
        if (DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_SC_CL) {
            DWCi_StopMatching(DWC_ERROR_NETWORK, DWC_ECODE_SEQ_MATCH + DWC_ECODE_TYPE_SC_CL_FAIL);
        }
        else if (DWCi_GetMatchCnt()->priorProfileID) {
            DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "Reserve NN to %u.\n", DWCi_GetMatchCnt()->priorProfileID);
            (void)DWCi_ResumeMatching();
        }
        else if (DWCi_GetMatchCnt()->state == DWC_MATCH_STATE_CL_WAITING) {
            DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "Wait prior profileID.\n");
            DWCi_SetMatchStatus(DWC_MATCH_STATE_WAIT_CLOSE);
            DWCi_GetMatchCnt()->closedTime = OS_GetTick();
        }
        else {
            DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "Restart matching immediately.\n");
            DWCi_RestartFromCancel(DWC_MATCH_RESET_RESTART);
        }
    }

    return TRUE;
}

void DWCi_ProcessMatchSCClosing(int clientPid) {
    if (DWCi_GetMatchCnt()->closeState != DWC_MATCH_CLOSE_STATE_TIMEOUT) {
        DWCi_CancelPreConnectedServerProcess(clientPid);
    }
}

BOOL DWCi_DeleteHostByProfileID(int profileID, int numHost) {
    int i;

    if (!DWCi_GetMatchCnt()) {
        return FALSE;
    }

    for (i = 0; i < numHost; i++) {
        if (DWCi_GetMatchCnt()->sbPidList[i] == profileID) {
            DWCi_DeleteHostByIndex(i, numHost);
            return TRUE;
        }
    }

    return FALSE;
}

int DWCi_DeleteHostByIndex(int index, int numHost) {
    int profileID;

    if (!DWCi_GetMatchCnt()) {
        return 0;
    }

    profileID = DWCi_GetMatchCnt()->sbPidList[index];

    DWCi_GetMatchCnt()->validAidBitmap &= ~(1 << DWCi_GetMatchCnt()->aidList[index]);
    DWCi_SetNumValidConnection();

    if (index < numHost - 1) {
        int i;

        for (i = 0 ; i < numHost - index - 1 ; ++i) {
            DWCi_GetMatchCnt()->qr2IPList  [index + i] = DWCi_GetMatchCnt()->qr2IPList  [index + i + 1];
            DWCi_GetMatchCnt()->qr2PortList[index + i] = DWCi_GetMatchCnt()->qr2PortList[index + i + 1];
            DWCi_GetMatchCnt()->sbPidList  [index + i] = DWCi_GetMatchCnt()->sbPidList  [index + i + 1];
            DWCi_GetMatchCnt()->ipList     [index + i] = DWCi_GetMatchCnt()->ipList     [index + i + 1];
            DWCi_GetMatchCnt()->portList   [index + i] = DWCi_GetMatchCnt()->portList   [index + i + 1];
            DWCi_GetMatchCnt()->aidList    [index + i] = DWCi_GetMatchCnt()->aidList    [index + i + 1];
        }
    }

    if (numHost > 0) {
        DWCi_GetMatchCnt()->qr2IPList[numHost - 1] = 0;
        DWCi_GetMatchCnt()->qr2PortList[numHost - 1] = 0;
        DWCi_GetMatchCnt()->sbPidList[numHost - 1] = 0;
        DWCi_GetMatchCnt()->ipList[numHost - 1] = 0;
        DWCi_GetMatchCnt()->portList[numHost - 1] = 0;
        DWCi_GetMatchCnt()->aidList[numHost - 1] = 0;
    }

    return profileID;
}

int DWCi_GetNumAllConnection(void) {
    if (!DWCi_GetMatchCnt()) {
        return 0;
    }

    return DWCi_GetMatchCnt()->gt2NumConnection;
}

int DWCi_GetNumValidConnection(void) {
    if (!DWCi_GetMatchCnt()) {
        return 0;
    }

    return DWCi_GetMatchCnt()->gt2NumValidConn;
}

void DWCi_SetNumValidConnection(void) {
    int count = -1;
    int i;

    for (i = 0; i < DWC_MAX_CONNECTIONS; i++) {
        if (DWCi_GetMatchCnt()->validAidBitmap & (1 << i)) {
            count++;
        }
    }

    if (count == -1) {
        DWCi_GetMatchCnt()->gt2NumValidConn = 0;
    }
    else {
        DWCi_GetMatchCnt()->gt2NumValidConn = (u8)count;
    }
}

int DWCi_GetAllAIDList(u8 **aidList) {
    if (!DWCi_GetMatchCnt()) {
        return 0;
    }

    *aidList = DWCi_GetMatchCnt()->aidList;

    return DWCi_GetMatchCnt()->gt2NumConnection + 1;
}

int DWCi_GetValidAIDList(u8 **aidList) {
    static u8 validAidList[DWC_MAX_CONNECTIONS];
    int i;

    if (!DWCi_GetMatchCnt()) {
        return 0;
    }

    MI_CpuClear8(validAidList, sizeof(validAidList));

    for (i = 0; i <= DWCi_GetMatchCnt()->gt2NumValidConn; i++) {
        if (DWCi_GetMatchCnt()->validAidBitmap & (1 << DWCi_GetMatchCnt()->aidList[i])) {
            validAidList[i] = DWCi_GetMatchCnt()->aidList[i];
        }
        else {
            break;
        }
    }

    *aidList = validAidList;

    return DWCi_GetMatchCnt()->gt2NumValidConn + 1;
}

GPResult DWCi_GPSetServerStatus(void) {
    char valueStr[12], keyValueStr[32];

    if (DWCi_GetMatchCnt()->qr2MatchType != DWC_MATCH_TYPE_SC_SV) {
        return GP_NO_ERROR;
    }

    (void)OS_SNPrintf(valueStr, sizeof(valueStr), "%u", DWCi_GetMatchCnt()->qr2NumEntry + 1);
    (void)DWC_SetCommonKeyValueString(DWC_GP_SSTR_KEY_MATCH_SC_MAX, valueStr, keyValueStr, '/');
    (void)OS_SNPrintf(valueStr, sizeof(valueStr), "%u", DWCi_GetMatchCnt()->gt2NumConnection + 1);
    (void)DWC_AddCommonKeyValueString(DWC_GP_SSTR_KEY_MATCH_SC_NUM, valueStr, keyValueStr, '/');
    (void)OS_SNPrintf(valueStr, sizeof(valueStr), "%u", DWC_MATCHING_VERSION);
    (void)DWC_AddCommonKeyValueString(DWC_GP_SSTR_KEY_MATCH_VERSION, valueStr, keyValueStr, '/');

    return DWCi_SetGPStatus(DWC_STATUS_MATCH_SC_SV, keyValueStr, NULL);
}

void DWCi_ShutdownMatch(void) {
    DWCi_SetMatchCnt(NULL);

    if (stpAddFilter) {
        DWC_Free(DWC_ALLOCTYPE_BASE, stpAddFilter, 0);
        stpAddFilter = NULL;
    }

    DWCi_ClearGameMatchKeys();

    if (stpOptMinComp != NULL) {
        DWC_Free(DWC_ALLOCTYPE_BASE, stpOptMinComp, 0);
        stpOptMinComp = NULL;
    }

    stOptSCBlock.valid = 0;
    stOptSCBlock.lock = 0;
}

BOOL DWCi_IsShutdownMatch(void) {
    if (!DWCi_GetMatchCnt()) {
        return TRUE;
    }
    else {
        return FALSE;
    }
}

static void DWCi_ResetMatchParam(DWCMatchResetLevel level) {
    DWCi_GetMatchCnt()->gt2ConnectCount = 0;
    DWCi_GetMatchCnt()->nnRecvCount = 0;
    DWCi_GetMatchCnt()->nnCookieRand = (u16)DWCi_GetMathRand32(0x10000);
    DWCi_GetMatchCnt()->nnLastCookie = 0;
    DWCi_GetMatchCnt()->nnFailedTime = 0;
    DWCi_GetMatchCnt()->nnFinishTime = 0;
    DWCi_GetMatchCnt()->clLinkProgress = 0;
    DWCi_GetMatchCnt()->cancelState = DWC_MATCH_CANCEL_STATE_INIT;
    DWCi_GetMatchCnt()->scResvRetryCount = 0;
    DWCi_GetMatchCnt()->synResendCount = 0;
    DWCi_GetMatchCnt()->cancelSynResendCount = 0;
    DWCi_GetMatchCnt()->resvWaitCount = 0;
    DWCi_GetMatchCnt()->closeState = DWC_MATCH_CLOSE_STATE_INIT;
    DWCi_GetMatchCnt()->cancelBaseLatency = 0;
    DWCi_GetMatchCnt()->searchPort = 0;
    DWCi_GetMatchCnt()->searchIP = 0;
    DWCi_GetMatchCnt()->lastSynSent = 0;
    DWCi_GetMatchCnt()->closedTime = 0;
    MI_CpuClear32(&DWCi_GetMatchCnt()->cmdCnt, sizeof(DWCi_GetMatchCnt()->cmdCnt));

    if (level == DWC_MATCH_RESET_CONTINUE) {
        DWCi_GetMatchCnt()->qr2NNFinishCount = (u8)DWCi_GetMatchCnt()->gt2NumConnection;

        if (DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_SC_CL) {
            DWCi_SetMatchStatus(DWC_MATCH_STATE_CL_WAITING);
        }
        else if (DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_SC_SV) {
            DWCi_SetMatchStatus(DWC_MATCH_STATE_SV_WAITING);
        }
    }
    else {
        DWCi_GetMatchCnt()->gt2NumConnection = 0;
        DWCi_GetMatchCnt()->gt2NumValidConn = 0;
        DWCi_GetMatchCnt()->qr2NNFinishCount = 0;
        DWCi_GetMatchCnt()->qr2IsReserved = 0;
        DWCi_GetMatchCnt()->qr2Reservation = 0;
        DWCi_GetMatchCnt()->sbUpdateFlag = FALSE;
        DWCi_GetMatchCnt()->friendCount = 0;
        DWCi_GetMatchCnt()->baseLatency = 0;
        DWCi_GetMatchCnt()->cmdResendFlag = FALSE;
        DWCi_GetMatchCnt()->cmdResendTick = 0;
        DWCi_GetMatchCnt()->cmdTimeoutTime = 0;
        DWCi_GetMatchCnt()->cmdTimeoutStartTick = 0;
        DWCi_GetMatchCnt()->synAckBit = 0;
        DWCi_GetMatchCnt()->reqProfileID = 0;
        DWCi_GetMatchCnt()->priorProfileID = 0;
        DWCi_GetMatchCnt()->validAidBitmap = 0;

        MI_CpuClear32(DWCi_GetMatchCnt()->qr2IPList, sizeof(DWCi_GetMatchCnt()->qr2IPList));
        MI_CpuClear16(DWCi_GetMatchCnt()->qr2PortList, sizeof(DWCi_GetMatchCnt()->qr2PortList));
        MI_CpuClear32(DWCi_GetMatchCnt()->sbPidList, sizeof(DWCi_GetMatchCnt()->sbPidList));
        MI_CpuClear32(&DWCi_GetMatchCnt()->nnInfo, sizeof(DWCNNInfo));
        MI_CpuClear32(DWCi_GetMatchCnt()->ipList, sizeof(DWCi_GetMatchCnt()->ipList));
        MI_CpuClear16(DWCi_GetMatchCnt()->portList, sizeof(DWCi_GetMatchCnt()->portList));
        MI_CpuClear8(DWCi_GetMatchCnt()->aidList, sizeof(DWCi_GetMatchCnt()->aidList));
        MI_CpuClear32(DWCi_GetMatchCnt()->svDataBak, sizeof(DWCi_GetMatchCnt()->svDataBak));

        if (level == DWC_MATCH_RESET_RESTART) {
            if (DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_ANYBODY) {
                DWCi_SetMatchStatus(DWC_MATCH_STATE_CL_SEARCH_HOST);
            }
            else if (DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_FRIEND) {
                DWCi_SetMatchStatus(DWC_MATCH_STATE_CL_WAIT_RESV);
            }
        }
        else {
            DWCi_GetMatchCnt()->qr2MatchType = 0;
            DWCi_GetMatchCnt()->qr2NumEntry = 0;
#ifdef DWC_QR2_ALIVE_DURING_MATCHING
            DWCi_GetMatchCnt()->qr2ShutdownFlag = 0;
#endif
            DWCi_GetMatchCnt()->cbEventPid = 0;
            DWCi_GetMatchCnt()->distantFriend = 0;
#ifdef DWC_STOP_SC_SERVER
            DWCi_GetMatchCnt()->stopSCFlag = 0;
#endif
            DWCi_GetMatchCnt()->clWaitTimeoutCount = 0;
            DWCi_GetMatchCnt()->clWaitTime = 0;
            DWCi_GetMatchCnt()->newClientCallback = NULL;
            DWCi_GetMatchCnt()->newClientParam = NULL;
        }
    }
}

static void DWCi_SetMatchCommonParam(u8 matchType, u8 numEntry, DWCMatchedSCCallback callback, void *param) {
    DWCi_ResetMatchParam(DWC_MATCH_RESET_ALL);
    DWCi_GetMatchCnt()->qr2MatchType = matchType;
    DWCi_GetMatchCnt()->qr2NumEntry = numEntry;
    DWCi_GetMatchCnt()->matchedCallback = callback;
    DWCi_GetMatchCnt()->matchedParam = param;
    DWCi_GetMatchCnt()->nnFailureCount = 0;
    DWCi_GetMatchCnt()->aidList[0] = 0;

    qr2_register_key(DWC_QR2_PID_KEY, DWC_QR2_PID_KEY_STR);
    qr2_register_key(DWC_QR2_MATCH_TYPE_KEY, DWC_QR2_MATCH_TYPE_KEY_STR);
    qr2_register_key(DWC_QR2_MATCH_RESV_KEY, DWC_QR2_MATCH_RESV_KEY_STR);
    qr2_register_key(DWC_QR2_MATCH_VER_KEY, DWC_QR2_MATCH_VER_KEY_STR);
    qr2_register_key(DWC_QR2_MATCH_EVAL_KEY, DWC_QR2_MATCH_EVAL_KEY_STR);
}

static void DWCi_CloseMatching(void) {
    DWC_Printf(DWC_REPORTFLAG_MATCH_NN, " Close Matching....\n");

    if (!DWCi_GetMatchCnt()) {
        return;
    }

#ifndef DWC_BUG_WIFI_DELAY_SEND
    if (DWCi_GetMatchCnt()->sbObj) {
        if (s_sbCallbackLevel == 0) {
            ServerBrowserFree(DWCi_GetMatchCnt()->sbObj);
            DWCi_GetMatchCnt()->sbObj = NULL;
        }
        else {
            s_needSbFree = TRUE;
        }
    }
#endif

    DWCi_NNFreeNegotiateList();
    DWCi_SetMatchStatus(DWC_MATCH_STATE_INIT);

    if (stpAddFilter) {
        DWC_Free(DWC_ALLOCTYPE_BASE, stpAddFilter, 0);
        stpAddFilter = NULL;
    }

    DWCi_ClearGameMatchKeys();

#ifdef DWC_QR2_ALIVE_DURING_MATCHING
    DWCi_GetMatchCnt()->qr2ShutdownFlag = 1;
#endif
}

#define DWC_NUM_QR2_MATCH_KEY 7


static SBError DWCi_SBUpdateAsync(int profileID) {
    char filter[MAX_FILTER_LEN];
    char *pFilter = filter;
    u8 basicFields[DWC_NUM_QR2_MATCH_KEY + DWC_QR2_GAME_RESERVED_KEYS];
    int len;
    int numBasicFields = DWC_NUM_QR2_MATCH_KEY;
    int i;
    SBError sbError = sbe_noerror;

    basicFields[0] = NUMPLAYERS_KEY;
    basicFields[1] = MAXPLAYERS_KEY;
    basicFields[2] = DWC_QR2_PID_KEY;
    basicFields[3] = DWC_QR2_MATCH_TYPE_KEY;
    basicFields[4] = DWC_QR2_MATCH_RESV_KEY;
    basicFields[5] = DWC_QR2_MATCH_VER_KEY;
    basicFields[6] = DWC_QR2_MATCH_EVAL_KEY;

    if ((DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_ANYBODY) || (DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_FRIEND)) {
        for (i = 0; i < DWC_QR2_GAME_RESERVED_KEYS; i++) {
            if (stGameMatchKeys[i].keyID) {
                basicFields[numBasicFields] = stGameMatchKeys[i].keyID;
                numBasicFields++;
            }
        }
    }

    switch (DWCi_GetMatchCnt()->state) {
    case DWC_MATCH_STATE_CL_SEARCH_HOST:
        if (!DWCi_GetMatchCnt()->priorProfileID) {
            len = DWCi_GetDefaultMatchFilter(filter, DWCi_GetMatchCnt()->profileID, DWCi_GetMatchCnt()->qr2NumEntry, DWCi_GetMatchCnt()->qr2MatchType);

            if (stpAddFilter) {
                (void)OS_SNPrintf(&filter[len], sizeof(filter) - len, " and (%s)", stpAddFilter);
            }

            break;
        }
        else {
            profileID = DWCi_GetMatchCnt()->priorProfileID;
        }
    case DWC_MATCH_STATE_CL_SEARCH_OWN:
    case DWC_MATCH_STATE_CL_WAIT_RESV:
    case DWC_MATCH_STATE_CL_SEARCH_NN_HOST:

        (void)OS_SNPrintf(filter, sizeof(filter), "%s = %u", DWC_QR2_PID_KEY_STR, profileID);
        DWCi_GetMatchCnt()->reqProfileID = profileID;
        break;

    default:
        DWC_Printf(DWC_REPORTFLAG_ERROR, "---DWCi_SBUpdateAsync() illegal state %d.\n", DWCi_GetMatchCnt()->state);
    }

    DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "ServerBrowserFilter : %s\n", filter);

#if 1
    ServerBrowserClear(DWCi_GetMatchCnt()->sbObj);
#else
    if (ServerBrowserState(DWCi_GetMatchCnt()->sbObj) != sb_disconnected) {
        ServerBrowserClear(DWCi_GetMatchCnt()->sbObj);
    }
#endif

    for (i = 0; i < DWC_DNS_ERROR_RETRY_MAX; i++) {
        sbError = ServerBrowserLimitUpdate(DWCi_GetMatchCnt()->sbObj, SBTrue, SBFalse, basicFields, numBasicFields, filter, DWC_SB_UPDATE_MAX_SERVERS);

        if (!sbError) {
            break;
        }
        else if (sbError != sbe_dnserror) {
            break;
        }
    }

    if (!sbError) {
        DWCi_GetMatchCnt()->sbUpdateRequestTick = OS_GetTick() + OS_MilliSecondsToTicks(DWC_SB_UPDATE_TIMEOUT);
        DWC_Printf(DWC_REPORTFLAG_DEBUG, "ServerBrowserLimitUpdate timeout set.(%s)\n", __FUNCTION__);
    }

    return sbError;
}

static int DWCi_GetDefaultMatchFilter(char *filter, int profileID, u8 numEntry, u8 matchType) {
    return OS_SNPrintf(filter, MAX_FILTER_LEN, "%s = %d and %s != %u and maxplayers = %d and numplayers < %d and %s = %d and %s != %s", DWC_QR2_MATCH_VER_KEY_STR, DWC_MATCHING_VERSION, DWC_QR2_PID_KEY_STR, profileID, numEntry, numEntry, DWC_QR2_MATCH_TYPE_KEY_STR, matchType, DWC_QR2_MATCH_RESV_KEY_STR, DWC_QR2_PID_KEY_STR);
}

static NegotiateError DWCi_NNStartupAsync(int isQR2, int cookie, SBServer server) {
    u32 ip;
    u32 senddata[2];
    int index = DWCi_GetMatchCnt()->qr2NNFinishCount;
    int result;
    BOOL nnValid;
    NegotiateError nnError = ne_noerror;

    if (!isQR2) {
        cookie = (DWCi_GetMatchCnt()->profileID & 0x0ffff) | (DWCi_GetMatchCnt()->nnCookieRand << 16);

        if (SBServerHasPrivateAddress(server)) {
            if (SBServerGetPublicInetAddress(server) == ServerBrowserGetMyPublicIPAddr(DWCi_GetMatchCnt()->sbObj)) {
                DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "Server[%d] is behind same NAT as me.\n", index);
                DWCi_GetMatchCnt()->ipList[index] = SBServerGetPrivateInetAddress(server);
                DWCi_GetMatchCnt()->portList[index] = SBServerGetPrivateQueryPort(server);

                nnValid = FALSE;
            }
            else {
                DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "Server[%d] is behind NAT.\n", index);
                nnValid = TRUE;
            }
        }
        else {
            ip = (u16)SO_GetHostID();

            if (((ip & 0xffff) == 0xa8c0) || (((ip & 0xff) == 0xac) && ((ip & 0xff00) >= 0x1000) && ((ip & 0xff00) <= 0x1f00)) || ((ip & 0xff) == 0x0a)) {
                DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "Server[%d] is not behind NAT. But I'm behind NAT.\n", index);
                nnValid = TRUE;
            }
            else {
                DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "Both I and Server[%d] are not behind NAT.\n", index);
                DWCi_GetMatchCnt()->ipList[index] = SBServerGetPublicInetAddress(server);
                DWCi_GetMatchCnt()->portList[index] = SBServerGetPublicQueryPort(server);

                nnValid = FALSE;
            }
        }

        if (nnValid) {
            DWCi_GetMatchCnt()->nnCookieRand = (u16)DWCi_GetMathRand32(0x10000);
            DWCi_GetMatchCnt()->nnInfo.cookie = cookie;
        }
        else {
            senddata[0] = (u32)SO_GetHostID();
            senddata[1] = gt2GetLocalPort(*DWCi_GetMatchCnt()->pGt2Socket);
            result = DWCi_SendMatchCommand(DWC_MATCH_COMMAND_TELL_ADDR, DWCi_GetMatchCnt()->sbPidList[index], SBServerGetPublicInetAddress(server), SBServerGetPublicQueryPort(server), senddata, 2);

            DWCi_GetMatchCnt()->cmdCnt.count = 0;

            if (result) {
                return ne_socketerror;
            }

            DWCi_GetMatchCnt()->nnInfo.cookie = 0;
        }

        DWCi_GetMatchCnt()->nnInfo.isQR2 = 0;
        DWCi_GetMatchCnt()->nnInfo.retryCount = 0;
        DWCi_GetMatchCnt()->nnInfo.port = SBServerGetPublicQueryPort(server);
        DWCi_GetMatchCnt()->nnInfo.ip = SBServerGetPublicInetAddress(server);
    }
    else {
        DWCi_GetMatchCnt()->nnInfo.isQR2 = 1;
        DWCi_GetMatchCnt()->nnInfo.retryCount = 0;
        DWCi_GetMatchCnt()->nnInfo.port = 0;
        DWCi_GetMatchCnt()->nnInfo.ip = 0;
        DWCi_GetMatchCnt()->nnInfo.cookie = cookie;

        nnValid = TRUE;
    }

    if (nnValid) {
        nnError = DWCi_DoNatNegotiationAsync(&DWCi_GetMatchCnt()->nnInfo);
    }
    else {
        DWCi_NNCompletedCallback(nr_success, gt2GetSocketSOCKET(*DWCi_GetMatchCnt()->pGt2Socket), NULL, &DWCi_GetMatchCnt()->nnInfo);
        DWCi_GetMatchCnt()->nnFinishTime = 0;
    }

    return nnError;
}

static NegotiateError DWCi_DoNatNegotiationAsync(DWCNNInfo *nnInfo) {
    SBError sbError;
    NegotiateError nnError;
    int i;

    if (!nnInfo->isQR2) {
        sbError = ServerBrowserSendNatNegotiateCookieToServer(
            DWCi_GetMatchCnt()->sbObj, gt2AddressToString(nnInfo->ip, 0, NULL), nnInfo->port, nnInfo->cookie);

        if (DWCi_HandleSBError(sbError)) {
            return ne_socketerror;
        }

        DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "Send NN cookie = %x.\n", nnInfo->cookie);
    }

    for (i = 0 ; i < DWC_DNS_ERROR_RETRY_MAX ; ++i) {
        nnError = NNBeginNegotiationWithSocket(gt2GetSocketSOCKET(*DWCi_GetMatchCnt()->pGt2Socket), nnInfo->cookie, nnInfo->isQR2, DWCi_NNProgressCallback, DWCi_NNCompletedCallback, nnInfo);

        if ((nnError == ne_noerror) || (nnError != ne_dnserror)) {
            break;
        }

        DWC_Printf(DWC_REPORTFLAG_DEBUG, " dns error occurs when NatNegotiation begin... retry\n");
    }

    return nnError;
}

static int  DWCi_SendMatchCommand(u8 command, int profileID, u32 ip, u16 port, const u32 data[], int len) {
    char message[DWC_MATCH_COMMAND_ADD_MESSAGE_MAX];
    char tmpStr[16];
    int msgLen = 0, tmpLen;
    int result;
    int i;

    if ((DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_ANYBODY) || (((DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_SC_CL) || DWCi_GetMatchCnt()->distantFriend) && (command == DWC_MATCH_COMMAND_TELL_ADDR))) {
        result = (int)DWCi_SendSBMsgCommand(command, ip, port, data, len);
    }
    else {
        if (data && len) {
            msgLen = OS_SNPrintf(message, sizeof(message), "%u", data[0]);

            for (i = 1; i < len; i++) {
                tmpLen = OS_SNPrintf(tmpStr, sizeof(tmpStr), "/%u", data[i]);

                if (msgLen + tmpLen + 1 > sizeof(message)) {
                    SDK_ASSERTMSG(0, "Match command is too long.");
                    break;
                }

                MI_CpuCopy8(tmpStr, &message[msgLen], (u32)tmpLen);
                msgLen += tmpLen;
            }
        }

        message[msgLen] = '\0';
        result = (int)DWCi_SendGPBuddyMsgCommand(DWCi_GetMatchCnt()->pGpObj, command, profileID, message);
    }

    if ((command == DWC_MATCH_COMMAND_RESV_OK) || (command == DWC_MATCH_COMMAND_TELL_ADDR) || (command == DWC_MATCH_COMMAND_LINK_CLS_REQ) || (command == DWC_MATCH_COMMAND_LINK_CLS_SUC)) {
        DWCi_GetMatchCnt()->cmdCnt.command = command;
        DWCi_GetMatchCnt()->cmdCnt.port = port;
        DWCi_GetMatchCnt()->cmdCnt.ip = ip;
        DWCi_GetMatchCnt()->cmdCnt.profileID = profileID;
        DWCi_GetMatchCnt()->cmdCnt.len = len;
        DWCi_GetMatchCnt()->cmdCnt.sendTime = OS_GetTick();

        if (data && len) {
            MI_CpuCopy32(data, DWCi_GetMatchCnt()->cmdCnt.data, (u32)len * 4);
        }
    }

    return result;
}

static SBError DWCi_SendSBMsgCommand(u8 command, u32 ip, u16 port, const u32 data[], int len) {
    int i;
    DWCSBMessage senddata;
    SBError sbError;

    if (len > sizeof(senddata.data) / sizeof(u32)) {
        SDK_ASSERTMSG(0, "Match command is too long.");
        len = sizeof(senddata.data) / sizeof(u32);
    }

    if (data && len) {
        MI_CpuCopy32(data, senddata.data, sizeof(u32) * len);
    }
    else {
        len = 0;
    }

    strcpy(senddata.header.identifier, DWC_SB_COMMAND_STRING);
    senddata.header.version = DWC_MATCHING_VERSION;
    senddata.header.command = command;
    senddata.header.size = (u8)(sizeof(u32) * len);
    senddata.header.qr2Port = DWCi_GetMatchCnt()->qr2Port;
    senddata.header.qr2IP = DWCi_GetMatchCnt()->qr2IP;
    senddata.header.profileID = DWCi_GetMatchCnt()->profileID;

#ifdef NITRODWC_DEBUG
    DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "<SB> SEND-%s -> [%08x:%d] [pid=--------]\n", get_dwccommandstr(command), ip, port);
#else
    DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "<SB> SEND-0x%02x -> [%08x:%d] [pid=--------]\n", command, ip, port);
#endif

    for (i = 0; i < DWC_DNS_ERROR_RETRY_MAX; i++) {
        sbError = ServerBrowserSendMessageToServer(DWCi_GetMatchCnt()->sbObj, gt2AddressToString(ip, 0, NULL), port, (gsi_char *)&senddata, (int)(sizeof(DWCSBMessageHeader) + senddata.header.size));

        if (!sbError) {
            break;
        }
        else if (sbError != sbe_dnserror) {
            break;
        }
    }

    return sbError;
}

static GPResult DWCi_SendGPBuddyMsgCommand(GPConnection *connection, u8 command, int profileID, const char *message) {
    char tmpStr[DWC_MATCH_COMMAND_ADD_MESSAGE_MAX];
    u32 len, len2;
    GPResult result;

    len = (u32)OS_SNPrintf(tmpStr, sizeof(tmpStr), "%s%dv%s", DWC_GP_COMMAND_STRING, DWC_MATCHING_VERSION, DWC_GP_COMMAND_MATCH_STRING);
    tmpStr[len] = (char)command;
    tmpStr[len + 1] = '\0';

    if (message) {
        len2 = strlen(message);

        if ((len + 1) + len2 + 1 > sizeof(tmpStr)) {
            SDK_ASSERTMSG(0, "Match command is too long.");
            len2 = sizeof(tmpStr) - (len + 1) - 1;
        }

        MI_CpuCopy8(message, &tmpStr[len + 1], len2);
        tmpStr[len + 1 + len2] = '\0';
    }

    result = gpSendBuddyMessage(connection, profileID, tmpStr);

    DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "<GP> SEND-0x%02x -> [--------:-----] [pid=%u]\n", command, profileID);

    return result;
}

static int  DWCi_GetGPBuddyAdditionalMsg(char *dstMsg, const char *srcMsg, int index) {
    const char *pSrcBegin = srcMsg;
    char *pSrcNext = NULL;
    char *pSrcEnd;
    int len;
    int i;

    pSrcEnd = strchr(pSrcBegin, '\0');

    for (i = 0; i < index; i++) {
        pSrcNext = strchr(pSrcBegin, '/');

        if (!pSrcNext) {
            return -1;
        }

        pSrcBegin = pSrcNext + 1;
    }

    pSrcNext = strchr(pSrcBegin, '/');

    if (!pSrcNext) {
        pSrcNext = pSrcEnd;
    }

    if (pSrcBegin == pSrcNext) {
        return -1;
    }

    len = pSrcNext - pSrcBegin;
    MI_CpuCopy8(pSrcBegin, dstMsg, (u32)len);
    dstMsg[len] = '\0';

    return len;
}

static BOOL DWCi_ProcessRecvMatchCommand(u8 command, int srcPid, u32 srcIP, u16 srcPort, const u32 data[], int len) {
#pragma unused(len)
    u8 sendCommand;
    u8 aid;
    u16 port = 0;
    u32 ip = 0;
    u32 aidIdx;
    u32 senddata[DWC_MAX_MATCH_IDX_LIST + 1];
    int profileID;
    int sendlen = 0;
    int result;
    int i;
    SBError sbError;
    NegotiateError nnError;
    struct sockaddr_in remoteaddr;

    if (!DWCi_GetMatchCnt() || (DWCi_GetMatchCnt()->state == DWC_MATCH_STATE_INIT)) {
        return TRUE;
    }

    if ((DWC_GetState() == DWC_STATE_MATCHING) && (DWCi_GetMatchCnt()->state == DWC_MATCH_STATE_CL_WAITING) && (srcPid == DWCi_GetMatchCnt()->sbPidList[0])) {
        DWCi_InitClWaitTimeout();
    }

    switch (command) {
    case DWC_MATCH_COMMAND_RESERVATION:
    case DWC_MATCH_COMMAND_RESV_PRIOR:
        if (DWCi_GetMatchCnt()->qr2MatchType != DWC_MATCH_TYPE_ANYBODY) {
            srcIP = data[1];
            srcPort = (u16)data[2];
            DWC_Printf(DWC_REPORTFLAG_DEBUG, "friend IP:%x, port:%d\n", srcIP, srcPort);
        }

        sendCommand = DWCi_CheckResvCommand(srcPid, srcIP, srcPort, data[0], (command == DWC_MATCH_COMMAND_RESV_PRIOR)? TRUE : FALSE);

        if (sendCommand == DWC_MATCH_COMMAND_RESV_OK) {
#ifdef DWC_LIMIT_FRIENDS_MATCH_VALID
            DWCi_GetMatchCnt()->friendAcceptBit = 0;
#endif

            result = DWCi_ProcessResvOK(srcPid, srcIP, srcPort);

            if (DWCi_HandleMatchCommandError(result)) {
                return FALSE;
            }

            if (DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_SC_SV) {
                if (DWCi_GetMatchCnt()->newClientCallback) {
                    DWCi_GetMatchCnt()->newClientCallback(DWCi_GetFriendListIndex(srcPid), DWCi_GetMatchCnt()->newClientParam);
                }
            }

            senddata[0] = DWCi_GetMatchCnt()->qr2NNFinishCount;

            for (sendlen = 1; sendlen <= DWCi_GetMatchCnt()->qr2NNFinishCount; sendlen++) {
                senddata[sendlen] = (u32)DWCi_GetMatchCnt()->sbPidList[sendlen];
            }

            senddata[sendlen++] = DWCi_GetMatchCnt()->qr2IP;
            senddata[sendlen++] = DWCi_GetMatchCnt()->qr2Port;

            DWCi_SetMatchStatus(DWC_MATCH_STATE_SV_OWN_NN);
        }
        else if (sendCommand == DWC_MATCH_COMMAND_RESV_DENY) {
            if ((DWCi_GetMatchCnt()->qr2NumEntry > 0) && (DWCi_GetMatchCnt()->qr2NNFinishCount == DWCi_GetMatchCnt()->qr2NumEntry)) {
                if (DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_SC_SV) {
                    senddata[0] = DWC_MATCH_RESV_DENY_REASON_SV_FULL;
                    sendlen = 1;
                }
            }
        }

        if (sendCommand != DWC_MATCH_COMMAND_DUMMY) {
            result = DWCi_SendMatchCommand(sendCommand, srcPid, srcIP, srcPort, senddata, sendlen);

            if (DWCi_HandleMatchCommandError(result)) {
                return FALSE;
            }
        }
        break;
    case DWC_MATCH_COMMAND_RESV_OK:

        if (DWCi_GetMatchCnt()->state != DWC_MATCH_STATE_CL_WAIT_RESV) {
            break;
        }

        DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "Succeeded NN reservation.\n");

        if (srcPid != DWCi_GetMatchCnt()->reqProfileID) {
            break;
        }

        DWCi_GetMatchCnt()->priorProfileID = 0;
        DWCi_GetMatchCnt()->resvWaitCount = 0;
        DWCi_GetMatchCnt()->cmdTimeoutTime = 0;
        DWCi_GetMatchCnt()->cmdResendFlag = FALSE;
        DWCi_GetMatchCnt()->qr2IPList[0] = data[data[0] + 1];
        DWCi_GetMatchCnt()->qr2PortList[0] = (u16)data[data[0] + 2];
        DWCi_GetMatchCnt()->searchIP = data[data[0] + 1];
        DWCi_GetMatchCnt()->searchPort = (u16)data[data[0] + 2];
        DWC_Printf(DWC_REPORTFLAG_DEBUG, "Server IP:%x, port:%d\n", DWCi_GetMatchCnt()->searchIP, DWCi_GetMatchCnt()->searchPort);

        if (DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_FRIEND) {
            if (DWCi_AreAllBuddies(&data[1], data[0])) {
                if (DWCi_GetMatchCnt()->gt2NumConnection) {
                    DWCi_MakeBackupServerData(srcPid, data);
                }
            }
            else {
                DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "But some clients are not friends.\n");
                result = DWCi_CancelReservation(srcPid);

                if (DWCi_HandleMatchCommandError(result)) {
                    return FALSE;
                }

                result = DWCi_SendResvCommandToFriend(FALSE, FALSE, srcPid);

                if (DWCi_HandleMatchCommandError(result)) {
                    return FALSE;
                }

                break;
            }
        }

        if (DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_ANYBODY) {
            if (DWCi_GetMatchCnt()->gt2NumConnection) {
                DWCi_MakeBackupServerData(srcPid, data);

                result = DWCi_ChangeToClient();

                if (DWCi_HandleMatchCommandError(result)) {
                    return FALSE;
                }
            }

            DWCi_SetMatchStatus(DWC_MATCH_STATE_CL_NN);
            nnError = DWCi_NNStartupAsync(0, 0, ServerBrowserGetServer(DWCi_GetMatchCnt()->sbObj, 0));

            if (DWCi_HandleNNError(nnError)) {
                return FALSE;
            }
        }
        else {
            DWCi_SetMatchStatus(DWC_MATCH_STATE_CL_SEARCH_NN_HOST);
            sbError = DWCi_SBUpdateAsync(srcPid);

            if (DWCi_HandleSBError(sbError)) {
                return FALSE;
            }
        }

        break;

    case DWC_MATCH_COMMAND_RESV_DENY:

        if ((DWCi_GetMatchCnt()->state != DWC_MATCH_STATE_CL_WAIT_RESV) || (srcPid != DWCi_GetMatchCnt()->reqProfileID)) {
            break;
        }

        DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "Reservation was denied by %u.\n", srcPid);

        if (len > 0) {
            if (data[0] == DWC_MATCH_RESV_DENY_REASON_SV_FULL) {
                DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "Game server is fully occupied.\n");
                DWCi_StopMatching(DWC_ERROR_SERVER_FULL, 0);

                return FALSE;
            }
        }
        return DWCi_RetryReserving(DWCi_GetMatchCnt()->reqProfileID);
        break;
    case DWC_MATCH_COMMAND_RESV_WAIT:
        if (DWCi_GetMatchCnt()->state != DWC_MATCH_STATE_CL_WAIT_RESV) {
            break;
        }

        if (srcPid == DWCi_GetMatchCnt()->reqProfileID) {
            DWCi_GetMatchCnt()->cmdTimeoutStartTick = OS_GetTick();

            if ((DWCi_GetMatchCnt()->priorProfileID && (DWCi_GetMatchCnt()->resvWaitCount < DWC_RESV_COMMAND_RETRY_MAX)) || (DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_SC_CL)) {
                DWCi_GetMatchCnt()->cmdResendFlag = TRUE;
                DWCi_GetMatchCnt()->cmdResendTick = OS_GetTick();

                if (DWCi_GetMatchCnt()->qr2MatchType != DWC_MATCH_TYPE_SC_CL) {
                    DWCi_GetMatchCnt()->resvWaitCount++;
                }

                break;
            }

            DWCi_GetMatchCnt()->priorProfileID = 0;
            DWCi_GetMatchCnt()->resvWaitCount = 0;

            if (DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_ANYBODY) {
                DWCi_SetMatchStatus(DWC_MATCH_STATE_CL_SEARCH_HOST);
                DWCi_GetMatchCnt()->sbUpdateFlag = DWC_SB_UPDATE_INTERVAL_SHORT;
                DWCi_GetMatchCnt()->sbUpdateTick = OS_GetTick();
            }
            else if (DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_FRIEND) {
                (void)DWCi_SendResvCommandToFriend(TRUE, FALSE, 0);
            }
        }
        break;
    case DWC_MATCH_COMMAND_RESV_CANCEL:
        if (DWCi_GetMatchCnt()->qr2IsReserved && (srcPid == DWCi_GetMatchCnt()->qr2Reservation)) {
            if ((DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_SC_SV) && (DWCi_GetMatchCnt()->gt2NumConnection == 1) && (DWCi_GetMatchCnt()->sbPidList[1] == srcPid)) {
                gt2CloseAllConnectionsHard(*DWCi_GetMatchCnt()->pGt2Socket);
            }

            if (!DWCi_CancelPreConnectedServerProcess(srcPid)) {
                return FALSE;
            }
        }
        break;
    case DWC_MATCH_COMMAND_TELL_ADDR:
        ip = data[0];
        port = (u16)data[1];

        DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "NN parent is behind same NAT as me. Received IP %x & port %d\n", ip, port);

        if (DWCi_GetMatchCnt()->state == DWC_MATCH_STATE_CL_WAITING) {
            DWCi_SetMatchStatus(DWC_MATCH_STATE_CL_NN);
        }
        else if (((DWCi_GetMatchCnt()->state != DWC_MATCH_STATE_CL_NN) && (DWCi_GetMatchCnt()->state != DWC_MATCH_STATE_SV_OWN_NN)) || (srcPid != DWCi_GetMatchCnt()->qr2Reservation)) {
            DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "But already canceled reservation.\n");
            break;
        }

        DWCi_GetMatchCnt()->cmdCnt.command = DWC_MATCH_COMMAND_DUMMY;

        if (DWCi_GetMatchCnt()->sbPidList[DWCi_GetMatchCnt()->gt2NumConnection + 1] != srcPid) {
            DWCi_GetMatchCnt()->sbPidList[DWCi_GetMatchCnt()->gt2NumConnection + 1] = srcPid;
        }

        remoteaddr.sin_addr.s_addr = ip;
        remoteaddr.sin_port = SO_HtoNs(port);

        DWCi_GetMatchCnt()->nnInfo.isQR2 = 1;
        DWCi_NNCompletedCallback(nr_success, gt2GetSocketSOCKET(*DWCi_GetMatchCnt()->pGt2Socket), &remoteaddr, &DWCi_GetMatchCnt()->nnInfo);
        DWCi_GetMatchCnt()->nnFinishTime = 0;
        break;

    case DWC_MATCH_COMMAND_NEW_PID_AID:
        if ((DWCi_GetMatchCnt()->state != DWC_MATCH_STATE_CL_WAITING) || (srcPid != DWCi_GetMatchCnt()->sbPidList[0])) {
            DWC_Printf(DWC_REPORTFLAG_DEBUG, "Ignore delayed NEW_PID_AID command.\n");
            break;
        }

        profileID = (int)data[0];
        aid = (u8)data[1];

#ifdef DWC_LIMIT_FRIENDS_MATCH_VALID
        if ((DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_FRIEND) && !DWCi_GetMatchCnt()->distantFriend) {
            senddata[0] = (u32)DWCi_IsFriendByIdxList(profileID);

            DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "profileID %d is acceptable? - %d.\n", profileID, senddata[0]);

            result = DWCi_SendMatchCommand(DWC_MATCH_COMMAND_FRIEND_ACCEPT, srcPid, srcIP, srcPort, senddata, 1);

            if (DWCi_HandleMatchCommandError(result)) {
                return FALSE;
            }
        }
#endif

        DWCi_GetMatchCnt()->sbPidList[DWCi_GetMatchCnt()->qr2NNFinishCount + 1] = profileID;
        DWCi_GetMatchCnt()->aidList[DWCi_GetMatchCnt()->qr2NNFinishCount + 1] = aid;
        qr2_send_statechanged(DWCi_GetMatchCnt()->qr2Obj);

        if (DWCi_GetMatchCnt()->newClientCallback) {
            DWCi_GetMatchCnt()->newClientCallback(DWCi_GetFriendListIndex(profileID), DWCi_GetMatchCnt()->newClientParam);
        }

        DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "Received new client's profileID = %u & aid = %d.\n", profileID, aid);
        break;

    case DWC_MATCH_COMMAND_LINK_CLS_REQ:
        if ((DWCi_GetMatchCnt()->state != DWC_MATCH_STATE_CL_WAITING) || (srcPid != DWCi_GetMatchCnt()->sbPidList[0])) {
            DWC_Printf(DWC_REPORTFLAG_DEBUG, "Ignore delayed LINK_CLS_REQ command.\n");
            break;
        }

        profileID = (int)data[0];

        if (!profileID) {
            aidIdx = data[1];
            aid = (u8)data[2];

            DWCi_GetMatchCnt()->aidList[aidIdx] = aid;
            DWCi_GetMatchCnt()->sbPidList[aidIdx] = DWCi_GetMatchCnt()->profileID;
            DWCi_PostProcessConnection(DWC_PP_CONNECTION_CL_FINISH_CONNECT);
        }
        else {
            aidIdx = data[1];
            aid = (u8)data[2];

            if ((DWCi_GetMatchCnt()->sbPidList[aidIdx] == profileID) && (aidIdx == DWCi_GetMatchCnt()->gt2NumConnection - 1)) {
                DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "Resend command %d for delayed command %d.\n", DWC_MATCH_COMMAND_LINK_CLS_SUC, DWC_MATCH_COMMAND_LINK_CLS_REQ);

                result = DWCi_SendMatchCommand(DWC_MATCH_COMMAND_LINK_CLS_SUC, srcPid, DWCi_GetMatchCnt()->qr2IPList[0], DWCi_GetMatchCnt()->qr2PortList[0], (u32 *)&profileID, 1);

                if (DWCi_HandleMatchCommandError(result)) {
                    return FALSE;
                }

                break;
            }

            DWCi_GetMatchCnt()->sbPidList[aidIdx] = profileID;
            DWCi_GetMatchCnt()->aidList[aidIdx] = aid;
            DWCi_GetMatchCnt()->qr2IPList[aidIdx] = data[3];
            DWCi_GetMatchCnt()->qr2PortList[aidIdx] = (u16)data[4];
            DWCi_GetMatchCnt()->searchIP = data[3];
            DWCi_GetMatchCnt()->searchPort = (u16)data[4];
            DWC_Printf(DWC_REPORTFLAG_DEBUG, "Client IP:%x, port:%d\n", DWCi_GetMatchCnt()->searchIP, DWCi_GetMatchCnt()->searchPort);
            DWCi_SetMatchStatus(DWC_MATCH_STATE_CL_SEARCH_NN_HOST);
            DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "Next, try to connect to %u.\n", profileID);

            sbError = DWCi_SBUpdateAsync(profileID);

            if (DWCi_HandleSBError(sbError)) {
                return FALSE;
            }

            DWCi_GetMatchCnt()->cmdTimeoutTime = 0;
            DWCi_GetMatchCnt()->cmdResendFlag = FALSE;
        }

        break;
    case DWC_MATCH_COMMAND_LINK_CLS_SUC:
        if ((DWCi_GetMatchCnt()->state == DWC_MATCH_STATE_SV_WAIT_CL_LINK) && (DWCi_GetMatchCnt()->sbPidList[DWCi_GetMatchCnt()->clLinkProgress + 1] == data[0])) {
            DWCi_GetMatchCnt()->clLinkProgress++;
            DWCi_PostProcessConnection(DWC_PP_CONNECTION_SV_CONNECT);
        }
        else {
            DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "Ignore delayed command %d.\n", DWC_MATCH_COMMAND_LINK_CLS_SUC);
        }
        break;
    case DWC_MATCH_COMMAND_CLOSE_LINK:
        if ((DWCi_GetMatchCnt()->state != DWC_MATCH_STATE_CL_WAITING) && (DWCi_GetMatchCnt()->state != DWC_MATCH_STATE_WAIT_CLOSE)) {
            DWC_Printf(DWC_REPORTFLAG_DEBUG, "Ignore delayed CLOSE_LINK command.\n");
            break;
        }

        if ((DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_ANYBODY) || DWCi_AreAllBuddies(&data[1], data[0])) {
            DWCi_GetMatchCnt()->priorProfileID = (int)data[1];
            DWCi_GetMatchCnt()->resvWaitCount = 0;
            DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "Received close command. Next try to %u.\n", data[1]);
        }
        else {
            DWCi_GetMatchCnt()->priorProfileID = 0;
            DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "Received close command. Server %u or its clients are not friends.\n", data[1]);
        }

        if (DWCi_GetMatchCnt()->gt2NumConnection) {
            gt2CloseAllConnectionsHard(*DWCi_GetMatchCnt()->pGt2Socket);
        }
        else {
            if (DWCi_ResumeMatching()) {
                return FALSE;
            }
        }
        break;
    case DWC_MATCH_COMMAND_CANCEL:
        if (srcPid != DWCi_GetMatchCnt()->sbPidList[0]) {
            DWC_Printf(DWC_REPORTFLAG_DEBUG, "Ignore delayed CANCEL command.\n");
            break;
        }

        DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "Received cancel command from %u data[0] = %d.\n", srcPid, data[0]);
        DWC_Printf(DWC_REPORTFLAG_DEBUG, "numHost nn=%d gt2=%d, state %d\n", DWCi_GetMatchCnt()->qr2NNFinishCount, DWCi_GetMatchCnt()->gt2NumConnection, DWCi_GetMatchCnt()->state);

        if ((DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_ANYBODY) || (DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_FRIEND)) {
            if (!DWCi_CancelPreConnectedClientProcess(srcPid)) {
                return FALSE;
            }
        }
        else if (DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_SC_CL) {
            DWCi_GetMatchCnt()->cbEventPid = srcPid;
            DWCi_CloseAllConnectionsByTimeout();
            DWCi_RestartFromCancel(DWC_MATCH_RESET_ALL);
        }
        break;
    case DWC_MATCH_COMMAND_CANCEL_SYN:
    case DWC_MATCH_COMMAND_CANCEL_SYN_ACK:
    case DWC_MATCH_COMMAND_CANCEL_ACK:
        if (!DWCi_ProcessCancelMatchSynCommand(srcPid, command, data[0])) {
            return FALSE;
        }
        break;
    case DWC_MATCH_COMMAND_SC_CLOSE_CL:
        if (srcPid != DWCi_GetMatchCnt()->sbPidList[0]) {
            return TRUE;
        }
        
        DWC_Printf(DWC_REPORTFLAG_DEBUG, "Close shutdown client.\n");

        for (i = 0; i < len; i++) {
            aid = DWCi_GetAIDFromProfileID((int)data[i], FALSE);
            if (aid != 0xff) {
                DWC_CloseConnectionHard(aid);
            }
        }
        break;

    case DWC_MATCH_COMMAND_POLL_TIMEOUT:
        if (stpOptMinComp && stpOptMinComp->valid && (OS_TicksToMilliSeconds(OS_GetTick() - stpOptMinComp->startTime) >= stpOptMinComp->timeout)) {
            senddata[0] = 1;

            DWC_Printf(DWC_REPORTFLAG_MATCH_GT2, "[OPT_MIN_COMP] time is %lu.\n", OS_TicksToMilliSeconds(OS_GetTick() - stpOptMinComp->startTime));
        }
        else {
            senddata[0] = 0;
        }

        result = DWCi_SendMatchCommand(DWC_MATCH_COMMAND_POLL_TO_ACK, srcPid, srcIP, srcPort, senddata, 1);

        if (DWCi_HandleMatchCommandError(result)) {
            return FALSE;
        }
        break;
    case DWC_MATCH_COMMAND_POLL_TO_ACK:
        if (DWCi_GetMatchCnt()->state == DWC_MATCH_STATE_SV_POLL_TIMEOUT) {
            aid = DWCi_GetAIDFromProfileID(srcPid, FALSE);

            if (aid != 0xff) {
                stpOptMinComp->recvBit |= 1 << aid;

                if (data[0]) {
                    stpOptMinComp->timeoutBit |= 1 << aid;
                }
            }
        }
        break;
    case DWC_MATCH_COMMAND_SC_CONN_BLOCK:
        DWCi_StopMatching(DWC_ERROR_MO_SC_CONNECT_BLOCK, 0);
        return FALSE;

#ifdef DWC_LIMIT_FRIENDS_MATCH_VALID
    case DWC_MATCH_COMMAND_FRIEND_ACCEPT:
        if ((DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_FRIEND) && !DWCi_GetMatchCnt()->distantFriend) {
            for (i = 1; i <= DWCi_GetMatchCnt()->gt2NumConnection; i++) {
                if (DWCi_GetMatchCnt()->sbPidList[i] == srcPid) {
                    DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "New client was accepted? - %d.\n", data[0]);

                    if (!data[0]) {
                        if ((DWCi_GetMatchCnt()->state == DWC_MATCH_STATE_SV_OWN_NN) || (DWCi_GetMatchCnt()->state == DWC_MATCH_STATE_SV_OWN_GT2)) {
                            result = DWCi_InvalidateReservation();

                            if (DWCi_HandleMatchCommandError(result)) {
                                return FALSE;
                            }
                        }

                        if (DWCi_GetMatchCnt()->nnInfo.cookie) {
                            NNCancel(DWCi_GetMatchCnt()->nnInfo.cookie);
                            DWCi_GetMatchCnt()->nnInfo.cookie = 0;
                        }

                        DWCi_RestartFromTimeout();
                    }
                    else {
                        DWCi_GetMatchCnt()->friendAcceptBit |= 1 << DWCi_GetAIDFromProfileID(srcPid, FALSE);
                    }

                    break;
                }
            }
        }
        break;
#endif
    case DWC_MATCH_COMMAND_CL_WAIT_POLL:
        for (i = 1; i <= DWCi_GetMatchCnt()->gt2NumConnection; i++) {
            if (DWCi_GetMatchCnt()->sbPidList[i] == srcPid) {
                result = DWCi_SendMatchCommand(DWC_MATCH_COMMAND_SV_KA_TO_CL, srcPid, srcIP, srcPort, NULL, 0);

                if (DWCi_HandleMatchCommandError(result)) {
                    return FALSE;
                }
                else {
                    break;
                }
            }
        }
        break;
    case DWC_MATCH_COMMAND_SV_KA_TO_CL:
        break;
    default:
        DWC_Printf(DWC_REPORTFLAG_ERROR, "Received unexpected matching command 0x%02x.\n", command);
        break;
    }

    return TRUE;
}

static u8  DWCi_CheckResvCommand(int profileID, u32 qr2IP, u16 qr2Port, u32 matchType, BOOL priorFlag) {
    u8 sendCommand;
    int result;

    switch (DWCi_GetMatchCnt()->qr2MatchType) {
    case DWC_MATCH_TYPE_FRIEND:
        if (!gpIsBuddy(DWCi_GetMatchCnt()->pGpObj, profileID)) {
            sendCommand = DWC_MATCH_COMMAND_DUMMY;
            break;
        }

#ifdef DWC_LIMIT_FRIENDS_MATCH_VALID
        else if (!DWCi_IsFriendByIdxList(profileID)) {
            sendCommand = DWC_MATCH_COMMAND_RESV_DENY;
            DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "This friend doesn't exist in friendIdxList.\n");
            break;
        }
#endif

    case DWC_MATCH_TYPE_ANYBODY:
        if ((matchType != DWCi_GetMatchCnt()->qr2MatchType) || (DWCi_GetMatchCnt()->cancelState != DWC_MATCH_CANCEL_STATE_INIT) || (DWCi_GetMatchCnt()->qr2NNFinishCount == DWCi_GetMatchCnt()->qr2NumEntry) || (DWCi_GetMatchCnt()->qr2IsReserved && (DWCi_GetMatchCnt()->qr2Reservation == DWCi_GetMatchCnt()->profileID))) {
            sendCommand = DWC_MATCH_COMMAND_RESV_DENY;

            if ((DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_ANYBODY) && !DWCi_GetMatchCnt()->qr2Obj->userstatechangerequested && DWCi_GetMatchCnt()->qr2IsReserved && (DWCi_GetMatchCnt()->qr2Reservation == DWCi_GetMatchCnt()->profileID)) {
                qr2_send_statechanged(DWCi_GetMatchCnt()->qr2Obj);
            }
        }
        else if (((DWCi_GetMatchCnt()->state != DWC_MATCH_STATE_CL_SEARCH_HOST) && (DWCi_GetMatchCnt()->state != DWC_MATCH_STATE_CL_WAIT_RESV)) || ((DWCi_GetMatchCnt()->qr2IP == 0) && (DWCi_GetMatchCnt()->qr2Port == 0)) || ((qr2IP == 0) && (qr2Port == 0))) {
            sendCommand = DWC_MATCH_COMMAND_RESV_WAIT;
        }
        else {
            if (DWCi_GetMatchCnt()->reqProfileID) {
                if (DWCi_GetMatchCnt()->reqProfileID == profileID) {
                    if (priorFlag || ((DWCi_GetMatchCnt()->profileID < profileID) && (profileID != DWCi_GetMatchCnt()->priorProfileID))) {
                        sendCommand = DWC_MATCH_COMMAND_RESV_OK;
                    }
                    else {
                        sendCommand = DWC_MATCH_COMMAND_DUMMY;
                    }
                }
                else {
                    if (priorFlag || ((DWCi_GetMatchCnt()->profileID < profileID) && !DWCi_GetMatchCnt()->priorProfileID)) {
                        result = DWCi_CancelReservation(DWCi_GetMatchCnt()->reqProfileID);

                        if (DWCi_HandleMatchCommandError(result)) {
                            return DWC_MATCH_COMMAND_DUMMY;
                        }
                        else {
                            sendCommand = DWC_MATCH_COMMAND_RESV_OK;
                        }
                    }
                    else {
                        sendCommand = DWC_MATCH_COMMAND_RESV_DENY;
                    }
                }
            }
            else {
                sendCommand = DWC_MATCH_COMMAND_RESV_OK;
            }
        }

        break;

    case DWC_MATCH_TYPE_SC_SV:
        if (!gpIsBuddy(DWCi_GetMatchCnt()->pGpObj, profileID)) {
            sendCommand = DWC_MATCH_COMMAND_DUMMY;
        }
        else if ((matchType != DWC_MATCH_TYPE_SC_CL) || (DWCi_GetMatchCnt()->qr2NNFinishCount == DWCi_GetMatchCnt()->qr2NumEntry)) {
            sendCommand = DWC_MATCH_COMMAND_RESV_DENY;
        }
        else if ((stOptSCBlock.valid == 1) && (stOptSCBlock.lock == 1)) {
            sendCommand = DWC_MATCH_COMMAND_SC_CONN_BLOCK;
        }
        else if ((DWCi_GetMatchCnt()->state != DWC_MATCH_STATE_SV_WAITING) || ((DWCi_GetMatchCnt()->qr2IP == 0) && (DWCi_GetMatchCnt()->qr2Port == 0)) || ((qr2IP == 0) && (qr2Port == 0))) {
            sendCommand = DWC_MATCH_COMMAND_RESV_WAIT;
        }
        else {
            sendCommand = DWC_MATCH_COMMAND_RESV_OK;
        }

        break;
    }

    return sendCommand;
}

static int DWCi_ProcessResvOK(int profileID, u32 ip, u16 port) {
    u32 senddata[2];
    int result;
    int i;

    if (DWCi_GetMatchCnt()->qr2IsReserved && (DWCi_GetMatchCnt()->qr2Reservation == profileID)) {
        return 0;
    }

    DWCi_GetMatchCnt()->qr2IsReserved = 1;
    DWCi_GetMatchCnt()->qr2Reservation = profileID;
    DWCi_GetMatchCnt()->cmdResendFlag = FALSE;
    DWCi_GetMatchCnt()->cmdTimeoutTime = 0;

    qr2_send_statechanged(DWCi_GetMatchCnt()->qr2Obj);

    DWCi_GetMatchCnt()->reqProfileID = 0;
    DWCi_GetMatchCnt()->sbPidList[DWCi_GetMatchCnt()->qr2NNFinishCount + 1] = profileID;
    DWCi_GetMatchCnt()->qr2IPList[DWCi_GetMatchCnt()->qr2NNFinishCount + 1] = ip;
    DWCi_GetMatchCnt()->qr2PortList[DWCi_GetMatchCnt()->qr2NNFinishCount + 1] = port;
    DWCi_GetMatchCnt()->searchIP = ip;
    DWCi_GetMatchCnt()->searchPort = port;
    DWCi_GetMatchCnt()->aidList[DWCi_GetMatchCnt()->qr2NNFinishCount + 1] = DWCi_GetAIDFromList();

    senddata[0] = (u32)profileID;
    senddata[1] = DWCi_GetMatchCnt()->aidList[DWCi_GetMatchCnt()->qr2NNFinishCount + 1];

    for (i = 1; i <= DWCi_GetMatchCnt()->qr2NNFinishCount; i++) {
        result = DWCi_SendMatchCommand(DWC_MATCH_COMMAND_NEW_PID_AID, DWCi_GetMatchCnt()->sbPidList[i], DWCi_GetMatchCnt()->qr2IPList[i], DWCi_GetMatchCnt()->qr2PortList[i], senddata, 2);

        if (result) {
            return result;
        }
    }

    DWCi_InitOptMinCompParam(TRUE);

    return 0;
}

static void DWCi_MakeBackupServerData(int profileID, const u32 data[]) {
    u32 len;

    len = data[0] + 2;

    if (len > 2) {
        MI_CpuCopy32(&data[1], &DWCi_GetMatchCnt()->svDataBak[2], sizeof(u32) * (len - 2));
    }

    DWCi_GetMatchCnt()->svDataBak[0] = len - 1;
    DWCi_GetMatchCnt()->svDataBak[1] = (u32)profileID;
}

static int DWCi_HandleMatchCommandError(int error) {
    if (DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_ANYBODY) {
        return (int)DWCi_HandleSBError((SBError)error);
    }
    else {
        return (int)DWCi_HandleGPError((GPResult)error);
    }
}

static int DWCi_SendResvCommand(int profileID, BOOL delay) {
    u8 command;
    u32 senddata[3];
    int sendlen;
    int result;
    SBServer server;

    if (delay || ((DWCi_GetMatchCnt()->qr2IP == 0) && (DWCi_GetMatchCnt()->qr2Port == 0))) {
        DWCi_GetMatchCnt()->cmdResendFlag = TRUE;
        DWCi_GetMatchCnt()->cmdResendTick = OS_GetTick();
        DWCi_GetMatchCnt()->sbPidList[0] = profileID;

        if (!delay) {
            DWC_Printf(DWC_REPORTFLAG_DEBUG, "Delay ResvCommand - qr2IP & qr2Port = 0.\n");
        }

        return 0;
    }

    if (DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_ANYBODY) {
        server = ServerBrowserGetServer(DWCi_GetMatchCnt()->sbObj, 0);
        DWCi_GetMatchCnt()->sbPidList[0] = SBServerGetIntValue(server, DWC_QR2_PID_KEY_STR, 0);
        DWCi_GetMatchCnt()->qr2IPList[0] = SBServerGetPublicInetAddress(server);
        DWCi_GetMatchCnt()->qr2PortList[0] = SBServerGetPublicQueryPort(server);

        DWCi_GetMatchCnt()->reqProfileID = DWCi_GetMatchCnt()->sbPidList[0];
        sendlen = 1;
    }
    else {
        if (DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_FRIEND) {
            DWCi_GetMatchCnt()->sbPidList[0] = profileID;
        }

        DWCi_GetMatchCnt()->reqProfileID = profileID;

        senddata[1] = DWCi_GetMatchCnt()->qr2IP;
        senddata[2] = DWCi_GetMatchCnt()->qr2Port;
        sendlen = 3;
    }

    DWCi_GetMatchCnt()->cmdTimeoutTime = DWC_MATCH_CMD_RESV_TIMEOUT_MSEC;
    DWCi_GetMatchCnt()->cmdTimeoutStartTick = OS_GetTick();
    DWCi_GetMatchCnt()->cmdResendFlag = FALSE;

    if (DWCi_GetMatchCnt()->priorProfileID) {
        command = DWC_MATCH_COMMAND_RESV_PRIOR;
    }
    else {
        command = DWC_MATCH_COMMAND_RESERVATION;
    }

    senddata[0] = DWCi_GetMatchCnt()->qr2MatchType;

    result = DWCi_SendMatchCommand(command, profileID, DWCi_GetMatchCnt()->qr2IPList[0], DWCi_GetMatchCnt()->qr2PortList[0], senddata, sendlen);

    return result;
}

static int DWCi_SendResvCommandToFriend(BOOL delay, BOOL init, int resendPid) {
    char version[12];
    char numEntry[4];
    char distantFriend[2];
    int profileID;
    int startIdx = init ? DWCi_GetMatchCnt()->friendCount :(DWCi_GetMatchCnt()->friendCount < DWCi_GetMatchCnt()->friendIdxListLen - 1) ? DWCi_GetMatchCnt()->friendCount + 1 : 0;
    int buddyIdx;
    int initFinished = 0;
    int versionLen, numEntryLen, distantFriendLen;
    int i;
    GPBuddyStatus status;
    GPResult gpResult;

    while (1) {
        if (!init || initFinished) {
            DWCi_GetMatchCnt()->friendCount++;

            if (DWCi_GetMatchCnt()->friendCount >= DWCi_GetMatchCnt()->friendIdxListLen) {
                DWCi_GetMatchCnt()->friendCount = 0;
            }
        }

        if (initFinished) {
            if (DWCi_GetMatchCnt()->friendCount == startIdx) {
                DWCi_GetMatchCnt()->cmdTimeoutTime = DWC_MATCH_CMD_RESEND_INTERVAL_MSEC;
                DWCi_GetMatchCnt()->cmdTimeoutStartTick = OS_GetTick();

                DWCi_GetMatchCnt()->cmdResendFlag = FALSE;

                return 0;
            }
        }

        initFinished = 1;

        profileID = DWC_GetGsProfileId(DWCi_GetUserData(), &DWCi_GetMatchCnt()->friendList[DWCi_GetMatchCnt()->friendIdxList[DWCi_GetMatchCnt()->friendCount]]);

#ifdef DWC_MATCH_ACCEPT_NO_FRIEND
        if ((profileID == 0) || (profileID == -1)) {
            continue;
        }

        if (!DWCi_Acc_IsValidFriendData(&DWCi_GetMatchCnt()->friendList[DWCi_GetMatchCnt()->friendIdxList[DWCi_GetMatchCnt()->friendCount]])) {
            continue;
        }
#endif

        for (i = 1; i <= DWCi_GetMatchCnt()->gt2NumConnection; i++) {
            if (DWCi_GetMatchCnt()->sbPidList[i] == profileID) {
                break;
            }
        }

        if (i > DWCi_GetMatchCnt()->gt2NumConnection) {
            gpResult = gpGetBuddyIndex(DWCi_GetMatchCnt()->pGpObj, profileID, &buddyIdx);
            gpResult |= gpGetBuddyStatus(DWCi_GetMatchCnt()->pGpObj, buddyIdx, &status);

            if (!gpResult && (status.status == DWC_STATUS_MATCH_FRIEND)) {
                versionLen = DWC_GetCommonValueString(DWC_GP_SSTR_KEY_MATCH_VERSION, version, status.statusString, '/');
                numEntryLen = DWC_GetCommonValueString(DWC_GP_SSTR_KEY_MATCH_FRIEND_NUM, numEntry, status.statusString, '/');
                distantFriendLen = DWC_GetCommonValueString(DWC_GP_SSTR_KEY_DISTANT_FRIEND, distantFriend, status.statusString, '/');

                if ((versionLen > 0) && (numEntryLen > 0) && (distantFriendLen > 0) && (strtoul(version, NULL, 10) == DWC_MATCHING_VERSION) && (strtoul(numEntry, NULL, 10) == DWCi_GetMatchCnt()->qr2NumEntry)) {
                    break;
                }
            }
        }
    }

    if (profileID == resendPid) {
        delay = TRUE;
    }

    return DWCi_SendResvCommand(profileID, delay);
}

static BOOL DWCi_RetryReserving(int resendPid) {
    SBError sbError;
    int result;

    DWCi_GetMatchCnt()->priorProfileID = 0;
    DWCi_GetMatchCnt()->reqProfileID = 0;
    DWCi_GetMatchCnt()->resvWaitCount = 0;
    DWCi_GetMatchCnt()->cmdTimeoutStartTick = OS_GetTick();

    if (DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_ANYBODY) {
        DWCi_SetMatchStatus(DWC_MATCH_STATE_CL_SEARCH_HOST);

        sbError = DWCi_SBUpdateAsync(0);

        if (DWCi_HandleSBError(sbError)) {
            return FALSE;
        }
    }
    else if (DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_FRIEND) {
        result = DWCi_SendResvCommandToFriend(FALSE, FALSE, resendPid);

        if (DWCi_HandleMatchCommandError(result)) {
            return FALSE;
        }
    }
    else if (DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_SC_CL) {
        DWCi_StopMatching(DWC_ERROR_NETWORK, DWC_ECODE_SEQ_MATCH + DWC_ECODE_TYPE_OTHER);

        return FALSE;
    }

    return TRUE;
}

static int  DWCi_CancelReservation(int profileID) {
    int result;

    result = DWCi_SendMatchCommand(DWC_MATCH_COMMAND_RESV_CANCEL, profileID, DWCi_GetMatchCnt()->qr2IPList[0], DWCi_GetMatchCnt()->qr2PortList[0], NULL, 0);
    DWCi_GetMatchCnt()->reqProfileID = 0;

    return result;
}

static BOOL DWCi_CancelPreConnectedServerProcess(int clientPid) {
    int i;
    BOOL isServer;

    if (DWCi_GetMatchCnt()->qr2IsReserved && (DWCi_GetMatchCnt()->qr2Reservation == DWCi_GetMatchCnt()->profileID)) {
        DWC_Printf(DWC_REPORTFLAG_DEBUG, "DWCi_CancelPreConnectedServerProcess : client\n");
        isServer = FALSE;
    }
    else {
        DWC_Printf(DWC_REPORTFLAG_DEBUG, "DWCi_CancelPreConnectedServerProcess : server\n");
        isServer = TRUE;
    }

    if (isServer) {
        DWCi_GetMatchCnt()->qr2IsReserved = 0;
        DWCi_GetMatchCnt()->qr2Reservation = 0;
        qr2_send_statechanged(DWCi_GetMatchCnt()->qr2Obj);
    }

    if (DWCi_GetMatchCnt()->gt2NumConnection < DWC_MAX_CONNECTIONS - 1) {
        DWCi_GetMatchCnt()->sbPidList[DWCi_GetMatchCnt()->gt2NumConnection + 1] = 0;
    }

    DWCi_GetMatchCnt()->cmdCnt.command = DWC_MATCH_COMMAND_DUMMY;

    if (DWCi_GetMatchCnt()->nnInfo.cookie) {
        NNCancel(DWCi_GetMatchCnt()->nnInfo.cookie);
        DWCi_GetMatchCnt()->nnInfo.cookie = 0;
    }

    DWCi_GetMatchCnt()->qr2NNFinishCount = (u8)DWCi_GetMatchCnt()->gt2NumConnection;
    DWCi_GetMatchCnt()->reqProfileID = 0;

    if (!isServer) {
        if (DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_SC_CL) {
        }
        else {
            DWCi_RestartFromTimeout();
        }
    }
    else if (DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_ANYBODY) {
        DWCi_SetMatchStatus(DWC_MATCH_STATE_CL_SEARCH_HOST);
        DWCi_GetMatchCnt()->sbUpdateFlag = DWC_SB_UPDATE_INTERVAL_LONG;
        DWCi_GetMatchCnt()->sbUpdateTick = OS_GetTick();
    }
    else if (DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_FRIEND) {
        DWCi_SetMatchStatus(DWC_MATCH_STATE_CL_WAIT_RESV);
        (void)DWCi_SendResvCommandToFriend(TRUE, FALSE, 0);
    }
    else if (DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_SC_SV) {
        DWCi_SetMatchStatus(DWC_MATCH_STATE_SV_CANCEL_SYN);
        DWCi_GetMatchCnt()->cancelSynAckBit = 0;
        DWCi_GetMatchCnt()->cancelBaseLatency = 0;
        DWCi_CloseCancelHostAsync(clientPid);

        for (i = 1; i <= DWCi_GetMatchCnt()->gt2NumConnection; i++) {
            if (!DWCi_SendCancelMatchSynCommand(DWCi_GetMatchCnt()->sbPidList[i], DWC_MATCH_COMMAND_CANCEL_SYN)) {
                return FALSE;
            }
        }

        if (DWCi_GetMatchCnt()->gt2NumConnection == 0) {
            DWCi_RestartFromCancel(DWC_MATCH_RESET_CONTINUE);
        }
    }

    return TRUE;
}

static BOOL DWCi_CancelPreConnectedClientProcess(int serverPid) {
#pragma unused(serverPid)
    BOOL result = TRUE;

    if (DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_SC_CL) {
        if (DWCi_GetMatchCnt()->gt2NumConnection) {
            DWCi_CloseAllConnectionsByTimeout();
        }

        DWCi_StopMatching(DWC_ERROR_NETWORK, DWC_ECODE_SEQ_MATCH + DWC_ECODE_TYPE_SC_CL_FAIL);

        return FALSE;
    }

    DWCi_GetMatchCnt()->qr2NNFinishCount = (u8)DWCi_GetMatchCnt()->gt2NumConnection;
    DWCi_GetMatchCnt()->priorProfileID = 0;

    if (DWCi_GetMatchCnt()->nnInfo.cookie) {
        NNCancel(DWCi_GetMatchCnt()->nnInfo.cookie);
        DWCi_GetMatchCnt()->nnInfo.cookie = 0;
    }

    if (DWCi_GetMatchCnt()->gt2NumConnection) {
        DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "Close all connection and restart matching.\n");
        DWCi_RestartFromTimeout();
    }
    else {
        DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "Cancel and restart client process.\n");
        DWCi_SetMatchStatus(DWC_MATCH_STATE_CL_WAIT_RESV);
        DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "Cancel and retry to reserve.\n");

        result = DWCi_RetryReserving(0);
    }

    return result;
}

static int  DWCi_ChangeToClient(void) {
    int result;
    int i;

    for (i = 1; i <= DWCi_GetMatchCnt()->gt2NumConnection; i++) {
        result = DWCi_SendMatchCommand(DWC_MATCH_COMMAND_CLOSE_LINK, DWCi_GetMatchCnt()->sbPidList[i], DWCi_GetMatchCnt()->qr2IPList[i], DWCi_GetMatchCnt()->qr2PortList[i], DWCi_GetMatchCnt()->svDataBak, (int)(DWCi_GetMatchCnt()->svDataBak[0] + 1));

        if (result) {
            return result;
        }
    }

    DWCi_GetMatchCnt()->qr2IsReserved = 0;
    DWCi_GetMatchCnt()->qr2Reservation = 0;
    DWCi_GetMatchCnt()->closeState = DWC_MATCH_CLOSE_STATE_CHANGE_TO_CLIENT;
    
    gt2CloseAllConnectionsHard(*DWCi_GetMatchCnt()->pGt2Socket);
    
    DWCi_GetMatchCnt()->closeState = DWC_MATCH_CLOSE_STATE_INIT;
    DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "Closed all connections. Begin NN to %u\n", DWCi_GetMatchCnt()->reqProfileID);

    return 0;
}

static void DWCi_PostProcessConnection(DWCMatchPpConnectionType type) {
    u32 senddata[5];
    int sendlen = 3;
    int result;
    int i;
    BOOL sbClear = FALSE;
    GPResult gpResult;

    switch (type) {
    case DWC_PP_CONNECTION_SV_CONNECT:

        if (DWCi_GetMatchCnt()->clLinkProgress < DWCi_GetMatchCnt()->gt2NumConnection - 1) {
            DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "Send client-client link request.\n");

            DWCi_SetMatchStatus(DWC_MATCH_STATE_SV_WAIT_CL_LINK);

            senddata[0] = (u32)DWCi_GetMatchCnt()->sbPidList[DWCi_GetMatchCnt()->clLinkProgress + 1];
            senddata[1] = (u32)(DWCi_GetMatchCnt()->clLinkProgress + 1);
            senddata[2] = DWCi_GetMatchCnt()->aidList[DWCi_GetMatchCnt()->clLinkProgress + 1];

            senddata[3] = DWCi_GetMatchCnt()->qr2IPList[DWCi_GetMatchCnt()->clLinkProgress + 1];
            senddata[4] = DWCi_GetMatchCnt()->qr2PortList[DWCi_GetMatchCnt()->clLinkProgress + 1];
            sendlen = 5;
        }
        else {
            DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "Tell new client completion of matching.\n");
            DWCi_GetMatchCnt()->qr2IsReserved = 0;
            DWCi_GetMatchCnt()->qr2Reservation = 0;

            qr2_send_statechanged(DWCi_GetMatchCnt()->qr2Obj);

            if (DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_ANYBODY) {
                DWCi_SetMatchStatus(DWC_MATCH_STATE_CL_SEARCH_HOST);
            }
            else if (DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_FRIEND) {
                DWCi_SetMatchStatus(DWC_MATCH_STATE_CL_WAIT_RESV);
            }
            else {
                DWCi_SetMatchStatus(DWC_MATCH_STATE_SV_WAITING);
            }

            DWCi_GetMatchCnt()->clLinkProgress = 0;

            if ((DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_SC_SV) || (DWCi_GetMatchCnt()->gt2NumConnection == DWCi_GetMatchCnt()->qr2NumEntry)) {
                if (DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_SC_SV) {
                    DWCi_GetMatchCnt()->cbEventPid = DWCi_GetMatchCnt()->sbPidList[DWCi_GetMatchCnt()->gt2NumConnection];
                }
                else {
                    DWCi_GetMatchCnt()->cbEventPid = 0;
                    DWCi_GetMatchCnt()->sbPidList[0] = DWCi_GetMatchCnt()->profileID;
                }

                DWCi_SetMatchStatus(DWC_MATCH_STATE_SV_SYN);
                DWCi_GetMatchCnt()->synAckBit = 0;

                for (i = 1; i <= DWCi_GetMatchCnt()->gt2NumConnection; i++) {
                    DWCi_SendMatchSynPacket(DWCi_GetMatchCnt()->aidList[i], DWC_SEND_TYPE_MATCH_SYN);
                }
            }
            else {
                senddata[0] = 0;
                senddata[1] = (u8)DWCi_GetMatchCnt()->gt2NumConnection;
                senddata[2] = DWCi_GetMatchCnt()->aidList[DWCi_GetMatchCnt()->gt2NumConnection];

                if (DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_ANYBODY) {
                    DWCi_GetMatchCnt()->sbUpdateFlag = DWC_SB_UPDATE_INTERVAL_LONG;
                    DWCi_GetMatchCnt()->sbUpdateTick = OS_GetTick();
                }
                else if (DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_FRIEND) {
                    (void)DWCi_SendResvCommandToFriend(TRUE, FALSE, 0);

#ifdef DWC_LIMIT_FRIENDS_MATCH_VALID
                    if (!DWCi_GetMatchCnt()->distantFriend && (DWCi_GetMatchCnt()->gt2NumConnection >= 2)) {
                        if (DWCi_GetMatchCnt()->friendAcceptBit != (DWCi_GetAIDBitmask(FALSE) & ~(1 << DWCi_GetMatchCnt()->aidList[DWCi_GetMatchCnt()->gt2NumConnection]))) {
                            DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "FRIEND_ACCEPT command droped.\n");
                            DWCi_RestartFromTimeout();
                            break;
                        }
                    }
#endif
                }
            }

            if (DWCi_GetMatchCnt()->qr2MatchType != DWC_MATCH_TYPE_SC_SV) {
                sbClear = TRUE;
            }
        }

        if (DWCi_GetMatchCnt()->state != DWC_MATCH_STATE_SV_SYN) {
            result = DWCi_SendMatchCommand(DWC_MATCH_COMMAND_LINK_CLS_REQ, DWCi_GetMatchCnt()->sbPidList[DWCi_GetMatchCnt()->gt2NumConnection], DWCi_GetMatchCnt()->qr2IPList[DWCi_GetMatchCnt()->gt2NumConnection], DWCi_GetMatchCnt()->qr2PortList[DWCi_GetMatchCnt()->gt2NumConnection], senddata, sendlen);

            if (DWCi_HandleMatchCommandError(result)) {
                return;
            }

            DWCi_GetMatchCnt()->cmdCnt.count = 0;
        }
        break;
    case DWC_PP_CONNECTION_CL_GT2_CONNECT:
        DWCi_SetMatchStatus(DWC_MATCH_STATE_CL_WAITING);

        if (DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_SC_CL) {
            DWCi_GetMatchCnt()->cbEventPid = DWCi_GetMatchCnt()->sbPidList[DWCi_GetMatchCnt()->gt2NumConnection];
        }

        sbClear = TRUE;
        break;
    case DWC_PP_CONNECTION_CL_GT2_ACCEPT:
        DWCi_SetMatchStatus(DWC_MATCH_STATE_CL_WAITING);

        if ((DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_ANYBODY) || (DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_FRIEND)) {
            DWCi_GetMatchCnt()->qr2IsReserved = 1;
            DWCi_GetMatchCnt()->qr2Reservation = DWCi_GetMatchCnt()->profileID;
        }

        DWCi_InitClWaitTimeout();

        if (DWCi_GetMatchCnt()->gt2NumConnection > 1) {
            result = DWCi_SendMatchCommand(DWC_MATCH_COMMAND_LINK_CLS_SUC, DWCi_GetMatchCnt()->sbPidList[0], DWCi_GetMatchCnt()->qr2IPList[0], DWCi_GetMatchCnt()->qr2PortList[0], (u32 *)&DWCi_GetMatchCnt()->sbPidList[DWCi_GetMatchCnt()->gt2NumConnection - 1], 1);
            if (DWCi_HandleMatchCommandError(result)) {
                return;
            }
        }
        break;
    case DWC_PP_CONNECTION_CL_FINISH_CONNECT:
        DWCi_SetMatchStatus(DWC_MATCH_STATE_CL_WAITING);
        DWCi_InitClWaitTimeout();
        DWCi_GetMatchCnt()->cbEventPid = 0;
        sbClear = TRUE;
        break;

    case DWC_PP_CONNECTION_SYN_FINISH:
        DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "Completed matching!\n");

        if (DWCi_GetMatchCnt()->qr2MatchType != DWC_MATCH_TYPE_SC_SV) {
            (void)DWCi_SetGPStatus(DWC_STATUS_PLAYING, "", NULL);
        }

        DWCi_GetMatchCnt()->matchedCallback(DWC_ERROR_NONE, FALSE, DWCi_GetMatchCnt()->cbEventPid ? FALSE : TRUE, FALSE, DWCi_GetFriendListIndex(DWCi_GetMatchCnt()->cbEventPid), DWCi_GetMatchCnt()->matchedParam);

        if ((DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_ANYBODY) || (DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_FRIEND)) {
            DWCi_CloseMatching();
        }
        else {
#ifndef DWC_BUG_WIFI_DELAY_SEND
            if (DWCi_GetMatchCnt()->sbObj) {
                ServerBrowserFree(DWCi_GetMatchCnt()->sbObj);
                DWCi_GetMatchCnt()->sbObj = NULL;
            }
#endif

            DWCi_NNFreeNegotiateList();

            if (DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_SC_SV) {
                gpResult = DWCi_GPSetServerStatus();

                if (DWCi_HandleGPError(gpResult)) {
                    return;
                }

                if (stOptSCBlock.valid == 1) {
                    stOptSCBlock.lock = 1;
                    DWC_Printf(DWC_REPORTFLAG_DEBUG, "[OPT_SC_BLOCK] Connect block start!\n");
                }

                DWCi_SetMatchStatus(DWC_MATCH_STATE_SV_WAITING);
            }
            else {
                DWCi_SetMatchStatus(DWC_MATCH_STATE_CL_WAITING);
            }

            DWCi_GetMatchCnt()->cbEventPid = 0;
        }

        DWCi_GetMatchCnt()->cancelState = DWC_MATCH_CANCEL_STATE_INIT;
        break;
    }

#ifndef DWC_BUG_WIFI_DELAY_SEND
#if 1
    if (sbClear && (DWCi_GetMatchCnt()->qr2MatchType != DWC_MATCH_TYPE_SC_CL)) {
        ServerBrowserClear(DWCi_GetMatchCnt()->sbObj);
    }
#else
    if (sbClear && (DWCi_GetMatchCnt()->qr2MatchType != DWC_MATCH_TYPE_SC_CL) && (ServerBrowserState(DWCi_GetMatchCnt()->sbObj) != sb_disconnected)) {
        ServerBrowserClear(DWCi_GetMatchCnt()->sbObj);
    }
#endif
#endif
}

static BOOL DWCi_AreAllBuddies(const u32 pidList[], u32 pidListLen) {
    int i;

    if (DWCi_GetMatchCnt()->distantFriend && (DWCi_GetMatchCnt()->state == DWC_MATCH_STATE_CL_WAIT_RESV)) {
        return TRUE;
    }

    for (i = 0; i < pidListLen; i++) {
#ifdef DWC_LIMIT_FRIENDS_MATCH_VALID
        if (!DWCi_IsFriendByIdxList((int)pidList[i])) {
            return FALSE;
        }
#else
        if (!gpIsBuddy(DWCi_GetMatchCnt()->pGpObj, (int)pidList[i])) {
            return FALSE;
        }
#endif

        if (DWCi_GetMatchCnt()->distantFriend && (DWCi_GetMatchCnt()->state == DWC_MATCH_STATE_CL_WAITING)) {
            return TRUE;
        }
    }

    return TRUE;
}

static void DWCi_DoCancelMatching(void) {
    u32 senddata;
    int result;

    DWC_Printf(DWC_REPORTFLAG_DEBUG, "CANCEL! state %d, numHost nn=%d gt2=%d.\n", DWCi_GetMatchCnt()->state, DWCi_GetMatchCnt()->qr2NNFinishCount, DWCi_GetMatchCnt()->gt2NumConnection);
    DWCi_GetMatchCnt()->cbEventPid = 0;

    if (DWCi_GetMatchCnt()->state == DWC_MATCH_STATE_CL_SEARCH_OWN) {
        DWCi_FinishCancelMatching();

        return;
    }

    DWCi_GetMatchCnt()->cancelState = DWC_MATCH_CANCEL_STATE_EXEC;

    if (DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_SC_CL) {
        senddata = 0;

        DWCi_GetMatchCnt()->cancelState = DWC_MATCH_CANCEL_STATE_EXEC;

        if (DWCi_GetMatchCnt()->gt2NumConnection) {
            gt2CloseAllConnectionsHard(*DWCi_GetMatchCnt()->pGt2Socket);
        }
        else {
            result = DWCi_CancelReservation(DWCi_GetMatchCnt()->sbPidList[0]);

            if (DWCi_HandleMatchCommandError(result)) {
                return;
            }
        }

        DWCi_FinishCancelMatching();

        return;
    }

    if ((DWCi_GetMatchCnt()->state == DWC_MATCH_STATE_CL_WAIT_RESV) || (DWCi_GetMatchCnt()->state == DWC_MATCH_STATE_CL_SEARCH_NN_HOST) || (DWCi_GetMatchCnt()->state == DWC_MATCH_STATE_CL_NN) || (DWCi_GetMatchCnt()->state == DWC_MATCH_STATE_CL_GT2) || (DWCi_GetMatchCnt()->state == DWC_MATCH_STATE_SV_OWN_NN) || (DWCi_GetMatchCnt()->state == DWC_MATCH_STATE_SV_OWN_GT2)) {
        if (DWCi_GetMatchCnt()->reqProfileID) {
            result = DWCi_CancelReservation(DWCi_GetMatchCnt()->sbPidList[0]);

            if (DWCi_HandleMatchCommandError(result)) {
                return;
            }
        }

        result = DWCi_InvalidateReservation();

        if (DWCi_HandleMatchCommandError(result)) {
            return;
        }
    }

    if (DWCi_GetMatchCnt()->nnInfo.cookie) {
        NNCancel(DWCi_GetMatchCnt()->nnInfo.cookie);
        DWCi_GetMatchCnt()->nnInfo.cookie = 0;
    }

    if (DWCi_GetMatchCnt()->gt2NumConnection) {
        DWCi_GetMatchCnt()->cancelState = DWC_MATCH_CANCEL_STATE_EXEC;

        gt2CloseAllConnectionsHard(*DWCi_GetMatchCnt()->pGt2Socket);
    }

    DWCi_FinishCancelMatching();
}

static void DWCi_FinishCancelMatching(void) {
    GPResult gpResult;

    gpResult = DWCi_SetGPStatus(DWC_STATUS_ONLINE, "", NULL);

    if (DWCi_HandleGPError(gpResult)) {
        return;
    }

    DWCi_CloseMatching();
    DWCi_GetMatchCnt()->matchedCallback(DWC_ERROR_NONE, TRUE, DWCi_GetMatchCnt()->cbEventPid ? FALSE : TRUE, DWCi_GetMatchCnt()->cbEventPid ? TRUE : ((DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_SC_SV) ? TRUE : FALSE), DWCi_GetFriendListIndex(DWCi_GetMatchCnt()->cbEventPid), DWCi_GetMatchCnt()->matchedParam);
    DWCi_GetMatchCnt()->cancelState = DWC_MATCH_CANCEL_STATE_INIT;
}

static int  DWCi_InvalidateReservation(void) {
    u32 senddata = 0;
    int result = 0;

    if (DWCi_GetMatchCnt()->qr2IsReserved && DWCi_GetMatchCnt()->qr2Reservation && (DWCi_GetMatchCnt()->qr2Reservation != DWCi_GetMatchCnt()->profileID)) {
        result = DWCi_SendMatchCommand(DWC_MATCH_COMMAND_CANCEL, DWCi_GetMatchCnt()->qr2Reservation, DWCi_GetMatchCnt()->qr2IPList[DWCi_GetMatchCnt()->gt2NumConnection + 1], DWCi_GetMatchCnt()->qr2PortList[DWCi_GetMatchCnt()->gt2NumConnection + 1], &senddata, 1);

        DWCi_GetMatchCnt()->qr2IsReserved = 0;
        DWCi_GetMatchCnt()->qr2Reservation = 0;

    }

    return result;
}

static void DWCi_RestartFromCancel(DWCMatchResetLevel level) {
    SBError sbError;

    if (level == DWC_MATCH_RESET_ALL) {
        DWCi_FinishCancelMatching();
    }
    else {
        DWCi_ResetMatchParam(level);

        if ((DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_SC_SV) || (DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_SC_CL)) {
            DWCi_GetMatchCnt()->matchedCallback(DWC_ERROR_NONE, TRUE, DWCi_GetMatchCnt()->cbEventPid ? FALSE : TRUE, FALSE, DWCi_GetFriendListIndex(DWCi_GetMatchCnt()->cbEventPid), DWCi_GetMatchCnt()->matchedParam);
        }
        else if (DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_ANYBODY) {
            if (level == DWC_MATCH_RESET_RESTART) {
                sbError = DWCi_SBUpdateAsync(0);

                if (DWCi_HandleSBError(sbError)) {
                    return;
                }
            }
        }
        else if (DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_FRIEND) {
            if (level == DWC_MATCH_RESET_RESTART) {
                (void)DWCi_SendResvCommandToFriend(FALSE, FALSE, 0);
            }
        }
        else {
            DWC_Printf(DWC_REPORTFLAG_ERROR, "ERROR - DWCi_RestartFromCancel : matchType %d, level %d\n", DWCi_GetMatchCnt()->qr2MatchType, level);
        }
    }
}

static void DWCi_RestartFromTimeout(void) {
    if ((DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_SC_SV) || (DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_SC_CL)) {
        DWC_Printf(DWC_REPORTFLAG_WARNING, "DWCi_RestartFromTimeout() shouldn't be called.\n");

        return;
    }

    DWCi_CloseAllConnectionsByTimeout();
    DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "Closed all connections and restart matching.\n");
    DWCi_RestartFromCancel(DWC_MATCH_RESET_RESTART);
}

static int DWCi_ResumeMatching(void) {
    SBError sbError;
    int result;

    DWCi_GetMatchCnt()->qr2IsReserved = 0;
    DWCi_GetMatchCnt()->qr2Reservation = 0;
    DWCi_GetMatchCnt()->closeState = DWC_MATCH_CLOSE_STATE_INIT;

    if (DWCi_GetMatchCnt()->priorProfileID) {
        if (DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_ANYBODY) {
            DWCi_SetMatchStatus(DWC_MATCH_STATE_CL_SEARCH_HOST);

            sbError = DWCi_SBUpdateAsync(0);

            if (DWCi_HandleSBError(sbError)) {
                return sbError;
            }
        }
        else if (DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_FRIEND) {
            DWCi_SetMatchStatus(DWC_MATCH_STATE_CL_WAIT_RESV);

            result = DWCi_SendResvCommand(DWCi_GetMatchCnt()->priorProfileID, FALSE);

            if (DWCi_HandleMatchCommandError(result)) {
                return result;
            }
        }
    }
    else {
        DWCi_RestartFromCancel(DWC_MATCH_RESET_RESTART);
    }

    return 0;
}

static BOOL DWCi_CloseCancelHostAsync(int profileID) {
    BOOL ret;
    GT2Connection *connection;

    DWCi_GetMatchCnt()->cbEventPid = profileID;

    connection = DWCi_GetGT2ConnectionByProfileID(profileID, DWCi_GetMatchCnt()->gt2NumConnection + 1);

    if (connection) {
        DWCi_GetMatchCnt()->closeState = DWC_MATCH_CLOSE_STATE_TIMEOUT;
        gt2CloseConnectionHard(*connection);
        DWCi_GetMatchCnt()->closeState = DWC_MATCH_CLOSE_STATE_INIT;
        ret = TRUE;
    }
    else {
        (void)DWCi_DeleteHostByProfileID(profileID, DWCi_GetMatchCnt()->gt2NumConnection + 1);
        ret = FALSE;
    }

    return ret;
}

static void DWCi_CloseAllConnectionsByTimeout(void) {
    DWCi_GetMatchCnt()->closeState = DWC_MATCH_CLOSE_STATE_TIMEOUT;
    gt2CloseAllConnectionsHard(*DWCi_GetMatchCnt()->pGt2Socket);
    DWCi_GetMatchCnt()->closeState = DWC_MATCH_CLOSE_STATE_INIT;
}

static BOOL DWCi_CloseShutdownClientSC(u32 bitmap) {
    u8 aid;
    int senddata[DWC_MAX_CONNECTIONS];
    int senddataLen = 0;
    int validPid[DWC_MAX_CONNECTIONS];
    int validPidLen = 0;
    int result;
    int i;

    for (i = 1; i <= DWCi_GetMatchCnt()->gt2NumConnection; i++) {
        if (bitmap & (1 << DWCi_GetMatchCnt()->aidList[i])) {
            validPid[validPidLen] = DWCi_GetMatchCnt()->sbPidList[i];
            validPidLen++;
        }
        else {
            senddata[senddataLen] = DWCi_GetMatchCnt()->sbPidList[i];
            senddataLen++;
        }
    }

    for (i = 0; i < validPidLen; i++) {
        result = DWCi_SendMatchCommand(DWC_MATCH_COMMAND_SC_CLOSE_CL, validPid[i], 0, 0, (u32 *)senddata, senddataLen);

        if (DWCi_HandleMatchCommandError(result)) {
            return FALSE;
        }
    }

    DWCi_GetMatchCnt()->closeState = DWC_MATCH_CLOSE_STATE_TIMEOUT;

    for (i = 0; i < senddataLen; i++) {
        aid = DWCi_GetAIDFromProfileID(senddata[i], FALSE);

        if (aid != 0xff) {
            DWC_CloseConnectionHard(aid);
        }
    }

    DWCi_GetMatchCnt()->closeState = DWC_MATCH_CLOSE_STATE_INIT;

    return TRUE;
}

static void DWCi_SendMatchSynPacket(u8 aid, u16 type) {
    u8 i;
    u8 senddata[4];

    DWC_Printf(DWC_REPORTFLAG_MATCH_GT2, "Sent SYN %d packet to aid %d.\n", type - DWC_SEND_TYPE_MATCH_SYN, aid);

    switch (type) {
    case DWC_SEND_TYPE_MATCH_SYN:
        if (aid == DWCi_GetMatchCnt()->aidList[DWCi_GetMatchCnt()->gt2NumConnection]) {
            senddata[0] = 1;
        }
        else {
            senddata[0] = 0;
        }

        for (i = 1; i <= DWCi_GetMatchCnt()->gt2NumConnection; i++) {
            if (aid == DWCi_GetMatchCnt()->aidList[i]) {
                senddata[1] = i;
                senddata[2] = aid;
                break;
            }
        }
        break;
    case DWC_SEND_TYPE_MATCH_SYN_ACK:
        senddata[0] = (u8)(DWCi_GetMatchCnt()->baseLatency & 0xff);
        senddata[1] = (u8)((DWCi_GetMatchCnt()->baseLatency >> 8) & 0xff);
        break;
    }

    DWCi_SendReliable(type, aid, senddata, DWC_MATCH_SYN_DATA_BODY_SIZE);
    DWCi_GetMatchCnt()->lastSynSent = OS_GetTick();
}

static BOOL DWCi_ProcessMatchSynTimeout(void) {
    u64 passTime;
    int i;

    if ((DWCi_GetMatchCnt()->state == DWC_MATCH_STATE_CL_SYN) || (DWCi_GetMatchCnt()->state == DWC_MATCH_STATE_SV_SYN) || (DWCi_GetMatchCnt()->state == DWC_MATCH_STATE_SV_SYN_WAIT)) {
        passTime = OS_TicksToMilliSeconds(OS_GetTick() - DWCi_GetMatchCnt()->lastSynSent);
    }
    else {
        return TRUE;
    }

    switch (DWCi_GetMatchCnt()->state) {
    case DWC_MATCH_STATE_CL_SYN:
        if (passTime > DWC_MATCH_SYN_ACK_WAIT_TIME) {
            DWC_Printf(DWC_REPORTFLAG_MATCH_GT2, "[SYN] No ACK from server %d/%d.\n", DWCi_GetMatchCnt()->clWaitTimeoutCount, DWC_MATCH_CMD_RETRY_MAX);

            if ((DWC_GetState() == DWC_STATE_MATCHING) && (DWCi_GetMatchCnt()->clWaitTimeoutCount >= DWC_MATCH_CMD_RETRY_MAX)) {
                DWC_Printf(DWC_REPORTFLAG_MATCH_GT2, "Timeout: [SYN] Connection to server was shut down.\n");

                if (!DWCi_CancelPreConnectedClientProcess(DWCi_GetMatchCnt()->sbPidList[0])) {
                    return FALSE;
                }
            }
            else {
                DWCi_GetMatchCnt()->clWaitTimeoutCount++;
                DWCi_SendMatchSynPacket(DWCi_GetMatchCnt()->aidList[0], DWC_SEND_TYPE_MATCH_SYN_ACK);
            }
        }
        break;
    case DWC_MATCH_STATE_SV_SYN:
        if (passTime > DWC_MATCH_SYN_ACK_WAIT_TIME) {
            DWCi_GetMatchCnt()->synResendCount++;

            if (DWCi_GetMatchCnt()->synResendCount > DWC_MATCH_CMD_RETRY_MAX) {
                DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "Timeout: wait SYN-ACK (aidbitmap 0x%x). Restart matching.\n", DWCi_GetMatchCnt()->synAckBit);

                if ((DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_ANYBODY) || (DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_FRIEND)) {
                    DWCi_CloseAllConnectionsByTimeout();
                    DWCi_RestartFromCancel(DWC_MATCH_RESET_RESTART);
                }
                else {
                    if (!DWCi_CloseShutdownClientSC(DWCi_GetMatchCnt()->synAckBit)) {
                        return FALSE;
                    }

                    if (DWCi_GetMatchCnt()->gt2NumConnection != 0) {
                        DWCi_GetMatchCnt()->synResendCount = 0;
                        DWCi_GetMatchCnt()->lastSynSent = OS_GetTick();
                    }
                    else {
                        if (!DWCi_CancelPreConnectedServerProcess(DWCi_GetMatchCnt()->cbEventPid)) {
                            return FALSE;
                        }
                    }
                }
            }
            else {
                for (i = 1; i <= DWCi_GetMatchCnt()->gt2NumConnection; i++) {
                    if (!(DWCi_GetMatchCnt()->synAckBit & (1 << DWCi_GetMatchCnt()->aidList[i]))) {
                        DWCi_SendMatchSynPacket(DWCi_GetMatchCnt()->aidList[i], DWC_SEND_TYPE_MATCH_SYN);
                    }
                }
            }
        }

        break;

    case DWC_MATCH_STATE_SV_SYN_WAIT:
        if (passTime > DWCi_GetMatchCnt()->baseLatency) {
            DWCi_PostProcessConnection(DWC_PP_CONNECTION_SYN_FINISH);
        }

        break;
    }

    return TRUE;
}

static BOOL DWCi_SendCancelMatchSynCommand(int profileID, u8 command) {
    u32 senddata;
    int len;
    int result;

    DWC_Printf(DWC_REPORTFLAG_MATCH_GT2, "Sent CANCEL SYN %d command to %u.\n", command - DWC_MATCH_COMMAND_CANCEL_SYN, profileID);

    if (command == DWC_MATCH_COMMAND_CANCEL_SYN) {
        senddata = (u32)DWCi_GetMatchCnt()->cbEventPid;
        len = 1;
    }
    else {
        len = 0;
    }

    result = DWCi_SendMatchCommand(command, profileID, 0, 0, &senddata, len);

    if (DWCi_HandleMatchCommandError(result)) {
        return FALSE;
    }

    DWCi_GetMatchCnt()->lastCancelSynSent = OS_GetTick();

    return TRUE;
}

static BOOL DWCi_ProcessCancelMatchSynCommand(int profileID, u8 command, u32 data) {
    u8 aid;
    u32 bitmask;
    u64 baseTime, latency;
    int i;

    DWC_Printf(DWC_REPORTFLAG_MATCH_GT2, "Received CANCEL SYN %d command from %u.\n", command - DWC_MATCH_COMMAND_CANCEL_SYN, profileID);

    if (DWC_GetState() != DWC_STATE_CONNECTED) {
        DWC_Printf(DWC_REPORTFLAG_MATCH_GT2, "Ignore delayed CANCEL SYN.\n");

        return TRUE;
    }

    switch (command) {
    case DWC_MATCH_COMMAND_CANCEL_SYN:
        if (DWCi_GetMatchCnt()->state != DWC_MATCH_STATE_CL_CANCEL_SYN) {
            DWCi_SetMatchStatus(DWC_MATCH_STATE_CL_CANCEL_SYN);

            DWCi_CloseCancelHostAsync((int)data);
        }

        if (!DWCi_SendCancelMatchSynCommand(profileID, DWC_MATCH_COMMAND_CANCEL_SYN_ACK)) {
            return FALSE;
        }

        break;
    case DWC_MATCH_COMMAND_CANCEL_SYN_ACK:
        if (DWCi_GetMatchCnt()->state == DWC_MATCH_STATE_SV_CANCEL_SYN) {
            baseTime = OS_GetTick();

            if ((OS_TicksToMilliSeconds(baseTime - DWCi_GetMatchCnt()->lastCancelSynSent) >> 1) > DWC_GP_PROCESS_INTERVAL) {
                latency = (OS_TicksToMilliSeconds(baseTime - DWCi_GetMatchCnt()->lastCancelSynSent) >> 1) - DWC_GP_PROCESS_INTERVAL;

                if (latency > DWCi_GetMatchCnt()->cancelBaseLatency) {
                    DWCi_GetMatchCnt()->cancelBaseLatency = (u16)latency;
                }
            }

            aid = DWCi_GetAIDFromProfileID(profileID, FALSE);

            if (aid != 0xff) {
                DWCi_GetMatchCnt()->cancelSynAckBit |= 1 << aid;
            }

            bitmask = DWCi_GetAIDBitmask(TRUE);

            if (DWCi_GetMatchCnt()->cancelSynAckBit == bitmask) {
                for (i = 1; i <= DWCi_GetMatchCnt()->gt2NumConnection; i++) {
                    if (!DWCi_SendCancelMatchSynCommand(DWCi_GetMatchCnt()->sbPidList[i], DWC_MATCH_COMMAND_CANCEL_ACK)) {
                        return FALSE;
                    }
                }

                DWCi_SetMatchStatus(DWC_MATCH_STATE_SV_CANCEL_SYN_WAIT);
                DWC_Printf(DWC_REPORTFLAG_MATCH_GT2, "Wait max latency %d msec.\n", DWCi_GetMatchCnt()->cancelBaseLatency);
            }
        }
        else {
            if (!DWCi_SendCancelMatchSynCommand(profileID, DWC_MATCH_COMMAND_CANCEL_ACK)) {
                return FALSE;
            }
        }
        break;
    case DWC_MATCH_COMMAND_CANCEL_ACK:
        if (DWCi_GetMatchCnt()->state == DWC_MATCH_STATE_CL_CANCEL_SYN) {
            DWCi_RestartFromCancel(DWC_MATCH_RESET_CONTINUE);
        }

        break;
    }

    return TRUE;
}

static BOOL DWCi_ProcessCancelMatchSynTimeout(void) {
    u64 passTime;
    int i;

    if ((DWCi_GetMatchCnt()->state == DWC_MATCH_STATE_CL_CANCEL_SYN) || (DWCi_GetMatchCnt()->state == DWC_MATCH_STATE_SV_CANCEL_SYN) || (DWCi_GetMatchCnt()->state == DWC_MATCH_STATE_SV_CANCEL_SYN_WAIT)) {
        passTime = OS_TicksToMilliSeconds(OS_GetTick() - DWCi_GetMatchCnt()->lastCancelSynSent);
    }
    else {
        return TRUE;
    }

    switch (DWCi_GetMatchCnt()->state) {
    case DWC_MATCH_STATE_CL_CANCEL_SYN:
        if (passTime > DWC_MATCH_CANCEL_SYN_ACK_WAIT_TIME) {
            if (!DWCi_SendCancelMatchSynCommand(DWCi_GetMatchCnt()->sbPidList[0], DWC_MATCH_COMMAND_CANCEL_SYN_ACK)) {
                return FALSE;
            }
        }
        break;
    case DWC_MATCH_STATE_SV_CANCEL_SYN:
        if (passTime > DWC_MATCH_CANCEL_SYN_ACK_WAIT_TIME) {
            DWCi_GetMatchCnt()->cancelSynResendCount++;

            if (DWCi_GetMatchCnt()->cancelSynResendCount > DWC_MATCH_CMD_RETRY_MAX) {
                DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "Timeout: wait cancel SYN-ACK (aidbitmap 0x%x).\n", DWCi_GetMatchCnt()->cancelSynAckBit);

                if (!DWCi_CloseShutdownClientSC(DWCi_GetMatchCnt()->cancelSynAckBit)) {
                    return FALSE;
                }

                if (DWCi_GetMatchCnt()->gt2NumConnection != 0) {
                    DWCi_GetMatchCnt()->cancelSynResendCount = 0;
                    DWCi_GetMatchCnt()->lastCancelSynSent = OS_GetTick();
                }
                else {
                    DWCi_RestartFromCancel(DWC_MATCH_RESET_CONTINUE);
                }
            }
            else {
                for (i = 1; i <= DWCi_GetMatchCnt()->gt2NumConnection; i++) {
                    if (!(DWCi_GetMatchCnt()->cancelSynAckBit & (1 << DWCi_GetMatchCnt()->aidList[i]))) {
                        if (!DWCi_SendCancelMatchSynCommand(DWCi_GetMatchCnt()->sbPidList[i], DWC_MATCH_COMMAND_CANCEL_SYN)) {
                            return FALSE;
                        }
                    }
                }
            }
        }
        break;
    case DWC_MATCH_STATE_SV_CANCEL_SYN_WAIT:
        if (passTime > DWCi_GetMatchCnt()->cancelBaseLatency) {
            DWCi_RestartFromCancel(DWC_MATCH_RESET_CONTINUE);
        }
        break;
    }

    return TRUE;
}

static u8  DWCi_GetNewMatchKey(void) {
    u8 i;

    for (i = 0; i < DWC_QR2_GAME_RESERVED_KEYS; i++) {
        if (!stGameMatchKeys[i].keyID) {
            return (u8)(DWC_QR2_GAME_KEY_START + i);
        }
    }

    return 0;
}

static void DWCi_ClearGameMatchKeys(void) {
    int i;

    for (i = 0; i < DWC_QR2_GAME_RESERVED_KEYS; i++) {
        if (stGameMatchKeys[i].keyStr) {
            DWC_Free(DWC_ALLOCTYPE_BASE, stGameMatchKeys[i].keyStr, 0);
        }
    }

    MI_CpuClear32(stGameMatchKeys, sizeof(DWCGameMatchKeyData) * DWC_QR2_GAME_RESERVED_KEYS);
}

static u8 DWCi_GetAIDFromList(void) {
    u8 i;
    int j;

    for (i = 0; i < DWC_MAX_CONNECTIONS; i++) {
        for (j = 0; j <= DWCi_GetMatchCnt()->qr2NNFinishCount; j++) {
            if (DWCi_GetMatchCnt()->aidList[j] == i) {
                break;
            }
        }

        if (j > DWCi_GetMatchCnt()->qr2NNFinishCount) {
            break;
        }
    }

    return i;
}

static BOOL DWCi_IsFriendByIdxList(int profileID) {
    int listProfileID;
    int i;

    if (DWCi_GetMatchCnt()->friendList == NULL) {
        return FALSE;
    }

    for (i = 0; i < DWCi_GetMatchCnt()->friendIdxListLen; i++) {
        if (((listProfileID = DWCi_GetProfileIDFromList(DWCi_GetMatchCnt()->friendIdxList[i])) > 0) && (listProfileID == profileID)) {
            return TRUE;
        }
    }

    return FALSE;
}

static int  DWCi_CheckDWCServer(SBServer server) {
    if (SBServerGetIntValue(server, "numplayers", -1) == -1) {
        return 0;
    }

    if (SBServerGetIntValue(server, "maxplayers", -1) == -1) {
        return 0;
    }

    if (SBServerGetIntValue(server, DWC_QR2_MATCH_TYPE_KEY_STR, -1) == -1) {
        return 0;
    }

    if (SBServerGetIntValue(server, DWC_QR2_MATCH_RESV_KEY_STR, -1) == -1) {
        if (SBServerGetIntValue(server, DWC_QR2_MATCH_RESV_KEY_STR, 0) == 0) {
            return 0;
        }
    }

    if (SBServerGetIntValue(server, DWC_QR2_MATCH_VER_KEY_STR, -1) == -1) {
        return 0;
    }

    return SBServerGetIntValue(server, DWC_QR2_PID_KEY_STR, 0);
}

static int DWCi_GetPidListIndex(int profileID, BOOL idx0) {
    int i;

    for (i = (idx0 ? 0 : 1); i <= DWCi_GetMatchCnt()->qr2NNFinishCount; i++) {
        if (DWCi_GetMatchCnt()->sbPidList[i] == profileID) {
            return i;
        }
    }

    return -1;
}

static u8 DWCi_GetAIDFromProfileID(int profileID, BOOL idx0) {
    int i;

    for (i = (idx0 ? 0 : 1); i <= DWCi_GetMatchCnt()->gt2NumConnection; i++) {
        if (DWCi_GetMatchCnt()->sbPidList[i] == profileID) {
            return DWCi_GetMatchCnt()->aidList[i];
        }
    }

    return 0xff;
}

static u32 DWCi_GetAIDBitmask(BOOL valid) {
    u32 bitmask = 0;
    int i;

    if (valid) {
        return DWCi_GetMatchCnt()->validAidBitmap & ~1;
    }
    else {
        for (i = 1; i <= DWCi_GetMatchCnt()->gt2NumConnection; i++) {
            bitmask |= 1 << DWCi_GetMatchCnt()->aidList[i];
        }

        return bitmask;
    }
}

static void DWCi_InitClWaitTimeout(void) {
    DWCi_GetMatchCnt()->clWaitTimeoutCount = 0;
    DWCi_GetMatchCnt()->clWaitTime = OS_GetTick();
}

static void DWCi_InitOptMinCompParam(BOOL reset) {
    if (stpOptMinComp && stpOptMinComp->valid) {
        stpOptMinComp->recvBit = 0;
        stpOptMinComp->timeoutBit = 0;
        stpOptMinComp->retry = 0;
        stpOptMinComp->lastPollTime = OS_GetTick();

        if (!reset) {
            stpOptMinComp->startTime = OS_GetTick();
        }
    }
}

static void DWCi_ProcessOptMinComp(void) {
    u32 bitmask;
    int result;
    int i;

    if (!stpOptMinComp || !stpOptMinComp->valid || (DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_SC_SV) || (DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_SC_CL)) {
        return;
    }

    if (DWCi_GetMatchCnt()->state == DWC_MATCH_STATE_SV_POLL_TIMEOUT) {
        bitmask = DWCi_GetAIDBitmask(FALSE);

        if (stpOptMinComp->recvBit == bitmask) {
            if (stpOptMinComp->timeoutBit == bitmask) {
                DWC_Printf(DWC_REPORTFLAG_MATCH_GT2, "[OPT_MIN_COMP] Timeout occured in all hosts.\n");

                DWCi_GetMatchCnt()->qr2NumEntry = (u8)DWCi_GetMatchCnt()->gt2NumConnection;

                DWCi_GetMatchCnt()->clLinkProgress = (u8)(DWCi_GetMatchCnt()->gt2NumConnection - 1);

                DWCi_PostProcessConnection(DWC_PP_CONNECTION_SV_CONNECT);
            }
            else {
                DWC_Printf(DWC_REPORTFLAG_MATCH_GT2, "[OPT_MIN_COMP] Some clients is in time.\n");

                stpOptMinComp->lastPollTime = OS_GetTick();
                stpOptMinComp->recvBit = 0;

                if (DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_ANYBODY) {
                    DWCi_SetMatchStatus(DWC_MATCH_STATE_CL_SEARCH_HOST);

                    DWCi_GetMatchCnt()->sbUpdateFlag = DWC_SB_UPDATE_INTERVAL_LONG;
                    DWCi_GetMatchCnt()->sbUpdateTick = OS_GetTick();
                }
                else {
                    DWCi_SetMatchStatus(DWC_MATCH_STATE_CL_WAIT_RESV);
                    (void)DWCi_SendResvCommandToFriend(TRUE, FALSE, 0);
                }
            }
        }
        else if (OS_TicksToMilliSeconds(OS_GetTick() - stpOptMinComp->lastPollTime) >= DWC_MATCH_CMD_RTT_TIMEOUT * stpOptMinComp->retry) {
            DWC_Printf(DWC_REPORTFLAG_DEBUG, "[OPT_MIN_COMP] Timeout: wait poll-ACK %d/%d.\n", stpOptMinComp->retry - 1, DWC_MATCH_OPT_MIN_COMP_POLL_RETRY_MAX);

            if (stpOptMinComp->retry > DWC_MATCH_OPT_MIN_COMP_POLL_RETRY_MAX) {
                DWC_Printf(DWC_REPORTFLAG_DEBUG, "[OPT_MIN_COMP] Timeout: aidbitmap 0x%x. Restart matching.\n", stpOptMinComp->recvBit);

                DWCi_InitOptMinCompParam(TRUE);

                DWCi_CloseAllConnectionsByTimeout();
                DWCi_RestartFromCancel(DWC_MATCH_RESET_RESTART);
            }
            else {
                for (i = 1; i <= DWCi_GetMatchCnt()->gt2NumConnection; i++) {
                    if (!(stpOptMinComp->recvBit & (1 << DWCi_GetMatchCnt()->aidList[i]))) {
                        result = DWCi_SendMatchCommand(DWC_MATCH_COMMAND_POLL_TIMEOUT, DWCi_GetMatchCnt()->sbPidList[i], DWCi_GetMatchCnt()->qr2IPList[i], DWCi_GetMatchCnt()->qr2PortList[i], NULL, 0);

                        if (DWCi_HandleMatchCommandError(result)) {
                            return;
                        }
                    }
                }

                stpOptMinComp->retry++;
            }
        }
    }
    else if (((DWCi_GetMatchCnt()->state == DWC_MATCH_STATE_CL_WAIT_RESV) || (DWCi_GetMatchCnt()->state == DWC_MATCH_STATE_CL_SEARCH_HOST)) && (DWCi_GetMatchCnt()->gt2NumConnection >= stpOptMinComp->minEntry - 1) && ((!stpOptMinComp->retry && (OS_TicksToMilliSeconds(OS_GetTick() - stpOptMinComp->startTime) >= stpOptMinComp->timeout)) || (stpOptMinComp->retry && (OS_TicksToMilliSeconds(OS_GetTick() - stpOptMinComp->lastPollTime) >= stpOptMinComp->timeout >> 2)))) {
        if (DWCi_GetMatchCnt()->reqProfileID) {
            result = DWCi_CancelReservation(DWCi_GetMatchCnt()->reqProfileID);

            if (DWCi_HandleMatchCommandError(result)) {
                return;
            }
        }

        DWCi_SetMatchStatus(DWC_MATCH_STATE_SV_POLL_TIMEOUT);

        DWC_Printf(DWC_REPORTFLAG_MATCH_GT2, "[OPT_MIN_COMP] Poll timeout (my time is %lu).\n", OS_TicksToMilliSeconds(OS_GetTick() - stpOptMinComp->startTime));

        for (i = 1; i <= DWCi_GetMatchCnt()->gt2NumConnection; i++) {
            result = DWCi_SendMatchCommand(DWC_MATCH_COMMAND_POLL_TIMEOUT, DWCi_GetMatchCnt()->sbPidList[i], DWCi_GetMatchCnt()->qr2IPList[i], DWCi_GetMatchCnt()->qr2PortList[i], NULL, 0);

            if (DWCi_HandleMatchCommandError(result)) {
                return;
            }
        }

        stpOptMinComp->lastPollTime = OS_GetTick();
        stpOptMinComp->retry = 1;
    }
}

static GPResult DWCi_HandleGPError(GPResult result) {
    int errorCode;
    DWCError dwcError;

    if (result == GP_NO_ERROR) {
        return GP_NO_ERROR;
    }

    DWC_Printf(DWC_REPORTFLAG_ERROR, "Match, GP error %d\n", result);

    switch (result) {
    case GP_MEMORY_ERROR:
        dwcError = DWC_ERROR_FATAL;
        errorCode = DWC_ECODE_TYPE_ALLOC;
        break;
    case GP_PARAMETER_ERROR:
        dwcError = DWC_ERROR_FATAL;
        errorCode = DWC_ECODE_TYPE_PARAM;
        break;
    case GP_NETWORK_ERROR:
        dwcError = DWC_ERROR_NETWORK;
        errorCode = DWC_ECODE_TYPE_NETWORK;
        break;
    case GP_SERVER_ERROR:
        dwcError = DWC_ERROR_NETWORK;
        errorCode = DWC_ECODE_TYPE_SERVER;
        break;
    }

    errorCode += DWC_ECODE_SEQ_MATCH + DWC_ECODE_GS_GP;

    DWCi_StopMatching(dwcError, errorCode);

    return result;
}

static SBError DWCi_HandleSBError(SBError error) {
    int errorCode;
    DWCError dwcError;

    if (error == sbe_noerror) {
        return sbe_noerror;
    }

#if 0
    if (error == sbe_connecterror) {
        DWCi_connect_errorcount++;
        DWC_Printf(DWC_REPORTFLAG_ERROR, "********************************%d\n", DWCi_connect_errorcount);

        return sbe_noerror;
    }
#endif

    DWC_Printf(DWC_REPORTFLAG_ERROR, "Match, SB error %d\n", error);

    switch (error) {
    case sbe_socketerror:
        dwcError = DWC_ERROR_NETWORK;
        errorCode = DWC_ECODE_TYPE_SOCKET;
        break;
    case sbe_dnserror:
        dwcError = DWC_ERROR_NETWORK;
        errorCode = DWC_ECODE_TYPE_DNS;
        break;
    case sbe_connecterror:
        dwcError = DWC_ERROR_NETWORK;
        errorCode = DWC_ECODE_TYPE_SERVER;
        break;
    case sbe_dataerror:
        dwcError = DWC_ERROR_NETWORK;
        errorCode = DWC_ECODE_TYPE_DATA;
        break;
    case sbe_allocerror:
        dwcError = DWC_ERROR_FATAL;
        errorCode = DWC_ECODE_TYPE_ALLOC;
        break;
    case sbe_paramerror:
        dwcError = DWC_ERROR_FATAL;
        errorCode = DWC_ECODE_TYPE_PARAM;
        break;
    }

    errorCode += DWC_ECODE_SEQ_MATCH + DWC_ECODE_GS_SB;
    DWCi_StopMatching(dwcError, errorCode);

    return error;
}

static qr2_error_t DWCi_HandleQR2Error(qr2_error_t error) {
    int errorCode;
    DWCError dwcError;

    if (error == e_qrnoerror) {
        return e_qrnoerror;
    }

    DWC_Printf(DWC_REPORTFLAG_ERROR, "Match, QR2 error %d\n", error);

    switch (error) {
    case e_qrwsockerror:
        dwcError = DWC_ERROR_NETWORK;
        errorCode = DWC_ECODE_TYPE_SOCKET;
        break;
    case e_qrbinderror:
        dwcError = DWC_ERROR_NETWORK;
        errorCode = DWC_ECODE_TYPE_BIND;
        break;
    case e_qrdnserror:
        dwcError = DWC_ERROR_NETWORK;
        errorCode = DWC_ECODE_TYPE_DNS;
        break;
    case e_qrconnerror:
        dwcError = DWC_ERROR_NETWORK;
        errorCode = DWC_ECODE_TYPE_PEER;
        break;
    case e_qrnochallengeerror:
        dwcError = DWC_ERROR_NETWORK;
        errorCode = DWC_ECODE_TYPE_SERVER;
        break;
    }

    switch (DWC_GetState()) {
    case DWC_STATE_LOGIN:
        errorCode += DWC_ECODE_SEQ_LOGIN + DWC_ECODE_GS_QR2;
        DWCi_StopLogin(dwcError, errorCode);
        break;
    case DWC_STATE_UPDATE_SERVERS:
        errorCode += DWC_ECODE_SEQ_FRIEND + DWC_ECODE_GS_QR2;
        DWCi_StopFriendProcess(dwcError, errorCode);
        break;
    case DWC_STATE_MATCHING:

        errorCode += DWC_ECODE_SEQ_MATCH + DWC_ECODE_GS_QR2;
        DWCi_StopMatching(dwcError, errorCode);
        break;
    default:
        errorCode += DWC_ECODE_SEQ_ETC + DWC_ECODE_GS_QR2;
        DWCi_SetError(dwcError, errorCode);
        break;
    }

    return error;
}

static NegotiateError DWCi_HandleNNError(NegotiateError error) {
    int errorCode;
    DWCError dwcError;

    if (error == ne_noerror) {
        return ne_noerror;
    }

    DWC_Printf(DWC_REPORTFLAG_ERROR, "Match, NN error %d\n", error);

    switch (error) {
    case ne_allocerror:
        dwcError = DWC_ERROR_FATAL;
        errorCode = DWC_ECODE_TYPE_ALLOC;
        break;
    case ne_socketerror:
        dwcError = DWC_ERROR_NETWORK;
        errorCode = DWC_ECODE_TYPE_SOCKET;
        break;
    case ne_dnserror:
        dwcError = DWC_ERROR_NETWORK;
        errorCode = DWC_ECODE_TYPE_DNS;
        break;
    }

    errorCode += DWC_ECODE_SEQ_MATCH + DWC_ECODE_GS_NN;

    DWCi_StopMatching(dwcError, errorCode);

    return error;
}

static NegotiateResult DWCi_HandleNNResult(NegotiateResult result) {
    int errorCode;
    DWCError dwcError;

    if (result == nr_success) {
        return nr_success;
    }

    DWC_Printf(DWC_REPORTFLAG_WARNING, "Match, NN result %d\n", result);

    switch (result) {
    case nr_deadbeatpartner:
        return nr_deadbeatpartner;
        break;
    case nr_inittimeout:
        return nr_inittimeout;
        break;
    default:
        dwcError = DWC_ERROR_NETWORK;
        errorCode = DWC_ECODE_TYPE_UNEXPECTED;
        break;
    }

    if (dwcError) {
        errorCode += DWC_ECODE_SEQ_MATCH + DWC_ECODE_GS_NN;
        DWCi_StopMatching(dwcError, errorCode);
    }

    return result;
}

static GT2Result DWCi_HandleGT2Error(GT2Result result) {
    int errorCode;
    DWCError dwcError;

    if (result == GT2Success) {
        return GT2Success;
    }

    DWC_Printf(DWC_REPORTFLAG_ERROR, "Match, GT2 error %d\n", result);

    switch (result) {
    case GT2OutOfMemory:
        dwcError = DWC_ERROR_FATAL;
        errorCode = DWC_ECODE_TYPE_ALLOC;
        break;
    case GT2Rejected:
    case GT2DuplicateAddress:
        dwcError = DWC_ERROR_NONE;
        errorCode = 0;
        result = GT2Success;
        break;
    case GT2NetworkError:
        dwcError = DWC_ERROR_NETWORK;
        errorCode = DWC_ECODE_TYPE_NETWORK;
        break;
    case GT2AddressError:
        dwcError = DWC_ERROR_NETWORK;
        errorCode = DWC_ECODE_TYPE_DNS;
        break;
    case GT2TimedOut:
        dwcError = DWC_ERROR_NETWORK;
        errorCode = DWC_ECODE_TYPE_TIMEOUT;
        break;
    case GT2NegotiationError:
        dwcError = DWC_ERROR_NETWORK;
        errorCode = DWC_ECODE_TYPE_PEER;
        break;
    }

    if (dwcError) {
        errorCode += DWC_ECODE_SEQ_MATCH + DWC_ECODE_GS_GT2;
        DWCi_StopMatching(dwcError, errorCode);
    }

    return result;
}

static void DWCi_SBCallback(ServerBrowser sb, SBCallbackReason reason, SBServer server, void *instance) {
#pragma unused(instance)
    int profileID;
    int result;
    int i;
    NegotiateError nnError;

    DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "SBCallback : reason %d (state = %d)\n", reason, DWCi_GetMatchCnt()->state);

    s_sbCallbackLevel++;

    if (DWCi_GetMatchCnt()->sbUpdateRequestTick != 0) {
        if ((reason == sbc_updatecomplete) || (reason == sbc_queryerror)) {
            DWCi_GetMatchCnt()->sbUpdateRequestTick = 0;
            DWC_Printf(DWC_REPORTFLAG_DEBUG, "ServerBrowserLimitUpdate timeout reset.(%s)\n", __FUNCTION__);
        }
        else {
            DWCi_GetMatchCnt()->sbUpdateRequestTick = OS_GetTick() + OS_MilliSecondsToTicks(DWC_SB_UPDATE_TIMEOUT);
            DWC_Printf(DWC_REPORTFLAG_DEBUG, "ServerBrowserLimitUpdate timeout update.(%s)\n", __FUNCTION__);
        }
    }

    switch (reason) {
    case sbc_serveradded:
        DWCi_SBPrintServerData(server);
        break;
    case sbc_updatecomplete:
        for (i = 0; i < ServerBrowserCount(sb); i++) {
            server = ServerBrowserGetServer(sb, i);

            if (!DWCi_CheckDWCServer(server)) {
                ServerBrowserRemoveServer(sb, server);
                DWC_Printf(DWC_REPORTFLAG_SB_UPDATE, "Deleted server [%d].\n", i);
                i--;
            }
        }

        switch (DWCi_GetMatchCnt()->state) {
        case DWC_MATCH_STATE_CL_SEARCH_OWN:
            for (i = 0; i < ServerBrowserCount(sb); i++) {
                server = ServerBrowserGetServer(sb, i);
                if (DWCi_GetMatchCnt()->qr2IP && (DWCi_GetMatchCnt()->qr2IP == SBServerGetPublicInetAddress(server)) && DWCi_GetMatchCnt()->qr2Port && (DWCi_GetMatchCnt()->qr2Port == SBServerGetPublicQueryPort(server))) {
                    break;
                }
            }

            if (i < ServerBrowserCount(sb)) {
                SBError sbError;

                DWCi_SetMatchStatus(DWC_MATCH_STATE_CL_SEARCH_HOST);
                DWCi_GetMatchCnt()->reqProfileID = 0;

                sbError = DWCi_SBUpdateAsync(DWCi_GetMatchCnt()->reqProfileID);

                if (DWCi_HandleSBError(sbError)) {
                    goto on_exit;
                }
            }
            else {
                DWCi_GetMatchCnt()->sbUpdateFlag = DWC_SB_UPDATE_INTERVAL_LONG;
                DWCi_GetMatchCnt()->sbUpdateTick = OS_GetTick();
            }

            break;

        case DWC_MATCH_STATE_CL_SEARCH_HOST:
            (void)DWCi_EvaluateServers(TRUE);
            DWCi_RandomizeServers();

            if (ServerBrowserCount(sb)) {
                result = DWCi_SendResvCommand(0, FALSE);

                if (DWCi_HandleMatchCommandError(result)) {
                    goto on_exit;
                }

                DWCi_SetMatchStatus(DWC_MATCH_STATE_CL_WAIT_RESV);
                DWCi_GetMatchCnt()->sbUpdateFlag = 0;
            }
            else {
                DWCi_GetMatchCnt()->sbUpdateFlag = DWC_SB_UPDATE_INTERVAL_LONG;
                DWCi_GetMatchCnt()->sbUpdateTick = OS_GetTick();
            }

            break;
        case DWC_MATCH_STATE_CL_SEARCH_NN_HOST:
            DWC_Printf(DWC_REPORTFLAG_DEBUG, "searchIP: %x, searchPort: %d\n", DWCi_GetMatchCnt()->searchIP, DWCi_GetMatchCnt()->searchPort);

            while (ServerBrowserCount(sb)) {
                server = ServerBrowserGetServer(sb, 0);

                if ((SBServerGetPublicInetAddress(server) == DWCi_GetMatchCnt()->searchIP) && (SBServerGetPublicQueryPort(server) == DWCi_GetMatchCnt()->searchPort)) {
                    break;
                }
                else {
                    ServerBrowserRemoveServer(sb, server);
                }
            }

            if (ServerBrowserCount(sb)) {
                profileID = SBServerGetIntValue(ServerBrowserGetServer(sb, 0), DWC_QR2_PID_KEY_STR, 0);

                if ((DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_FRIEND) && (profileID == DWCi_GetMatchCnt()->sbPidList[0])) {
                    if (DWCi_EvaluateServers(FALSE)) {
                        if (DWCi_GetMatchCnt()->gt2NumConnection) {
                            result = DWCi_ChangeToClient();

                            if (DWCi_HandleMatchCommandError(result)) {
                                goto on_exit;
                            }
                        }
                    }
                    else {
                        result = DWCi_CancelReservation(DWCi_GetMatchCnt()->sbPidList[0]);

                        if (DWCi_HandleMatchCommandError(result)) {
                            goto on_exit;
                        }

                        DWCi_SetMatchStatus(DWC_MATCH_STATE_CL_WAIT_RESV);
                        result = DWCi_SendResvCommandToFriend(FALSE, FALSE, DWCi_GetMatchCnt()->sbPidList[0]);

                        if (DWCi_HandleMatchCommandError(result)) {
                            goto on_exit;
                        }

                        break;
                    }
                }

                DWCi_SetMatchStatus(DWC_MATCH_STATE_CL_NN);

                server = ServerBrowserGetServer(sb, 0);
                nnError = DWCi_NNStartupAsync(0, 0, server);

                if (DWCi_HandleNNError(nnError)) {
                    goto on_exit;
                }
            }
            else {
                DWCi_GetMatchCnt()->sbUpdateFlag = DWC_SB_UPDATE_INTERVAL_LONG;
                DWCi_GetMatchCnt()->sbUpdateTick = OS_GetTick();
            }
            break;

        default:
            break;
        }
        break;
    case sbc_queryerror:
        break;
    default:
        break;
    }

 on_exit: s_sbCallbackLevel--;

    return;
}

static void DWCi_SBPrintServerData(SBServer server) {
#if defined(SDK_FINALROM)
#pragma unused(server)
#endif
    int i;

    DWC_Printf(DWC_REPORTFLAG_SB_UPDATE, "SBServerGetPrivateAddress     = %s\n", SBServerGetPrivateAddress(server));
    DWC_Printf(DWC_REPORTFLAG_SB_UPDATE, "SBServerGetPrivateInetAddress = %x\n", SBServerGetPrivateInetAddress(server));
    DWC_Printf(DWC_REPORTFLAG_SB_UPDATE, "SBServerGetPrivateQueryPort   = %d\n", SBServerGetPrivateQueryPort(server));
    DWC_Printf(DWC_REPORTFLAG_SB_UPDATE, "SBServerGetPublicAddress      = %s\n", SBServerGetPublicAddress(server));
    DWC_Printf(DWC_REPORTFLAG_SB_UPDATE, "SBServerGetPublicInetAddres   = %x\n", SBServerGetPublicInetAddress(server));
    DWC_Printf(DWC_REPORTFLAG_SB_UPDATE, "SBServerGetPublicQueryPort    = %d\n", SBServerGetPublicQueryPort(server));
    DWC_Printf(DWC_REPORTFLAG_SB_UPDATE, "SBServerHasPrivateAddress     = %d\n", SBServerHasPrivateAddress(server));

    DWC_Printf(DWC_REPORTFLAG_SB_UPDATE, "numplayers  = %d\n", SBServerGetIntValue(server, "numplayers", -1));
    DWC_Printf(DWC_REPORTFLAG_SB_UPDATE, "maxplayers  = %d\n", SBServerGetIntValue(server, "maxplayers", -1));
    DWC_Printf(DWC_REPORTFLAG_SB_UPDATE, "%s     = %u\n", DWC_QR2_PID_KEY_STR, SBServerGetIntValue(server, DWC_QR2_PID_KEY_STR, 0));
    DWC_Printf(DWC_REPORTFLAG_SB_UPDATE, "%s   = %u\n", DWC_QR2_MATCH_RESV_KEY_STR, SBServerGetIntValue(server, DWC_QR2_MATCH_RESV_KEY_STR, -1));
    DWC_Printf(DWC_REPORTFLAG_SB_UPDATE, "%s   = %d\n", DWC_QR2_MATCH_TYPE_KEY_STR, SBServerGetIntValue(server, DWC_QR2_MATCH_TYPE_KEY_STR, -1));
    DWC_Printf(DWC_REPORTFLAG_SB_UPDATE, "%s   = %d\n", DWC_QR2_MATCH_VER_KEY_STR, SBServerGetIntValue(server, DWC_QR2_MATCH_VER_KEY_STR, -1));

    for (i = 0; i < DWC_QR2_GAME_RESERVED_KEYS; i++) {
        if (stGameMatchKeys[i].keyID) {
            if (stGameMatchKeys[i].isStr) {
                DWC_Printf(DWC_REPORTFLAG_SB_UPDATE, "%s  = %s\n", stGameMatchKeys[i].keyStr, SBServerGetStringValue(server, stGameMatchKeys[i].keyStr, "NONE"));
            }
            else {
                DWC_Printf(DWC_REPORTFLAG_SB_UPDATE, "%s  = %d\n", stGameMatchKeys[i].keyStr, SBServerGetIntValue(server, stGameMatchKeys[i].keyStr, -1));
            }
        }
    }
}

static BOOL DWCi_EvaluateServers(BOOL sort) {
    int eval;
    int deleteFlag = 0;
    int localDelete;
    int profileID;
    int i, j;
    SBServer server;

    for (i = 0; i < ServerBrowserCount(DWCi_GetMatchCnt()->sbObj); i++) {
        server = ServerBrowserGetServer(DWCi_GetMatchCnt()->sbObj, i);

        if (DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_ANYBODY) {
            profileID = SBServerGetIntValue(server, DWC_QR2_PID_KEY_STR, 0);
            localDelete = 0;

            for (j = 1; j <= DWCi_GetMatchCnt()->gt2NumConnection; j++) {
                if (profileID == DWCi_GetMatchCnt()->sbPidList[j]) {
                    ServerBrowserRemoveServer(DWCi_GetMatchCnt()->sbObj, server);

                    i--;
                    localDelete = 1;
                    break;
                }
            }

            if (localDelete) {
                continue;
            }
        }

        if (DWCi_GetMatchCnt()->evalCallback) {
            eval = DWCi_GetMatchCnt()->evalCallback(i, DWCi_GetMatchCnt()->evalParam);

            if (eval > 0) {
                if (eval > 0x007fffff) {
                    eval = 0x007fffff;
                }

                SBServerAddIntKeyValue(server, DWC_QR2_MATCH_EVAL_KEY_STR, (int)((eval << 8) | DWCi_GetMathRand32(256)));
            }
            else {
                ServerBrowserRemoveServer(DWCi_GetMatchCnt()->sbObj, server);

                DWC_Printf(DWC_REPORTFLAG_SB_UPDATE, "Deleted server [%d] (eval point is %d).\n", i, eval);

                i--;
                deleteFlag = 1;
            }
        }
        else {
            SBServerAddIntKeyValue(server, DWC_QR2_MATCH_EVAL_KEY_STR, (int)DWCi_GetMathRand32(DWC_MAX_CONNECTIONS << 2));
        }
    }

    if (sort && ServerBrowserCount(DWCi_GetMatchCnt()->sbObj)) {
        ServerBrowserSort(DWCi_GetMatchCnt()->sbObj, SBFalse, DWC_QR2_MATCH_EVAL_KEY_STR, sbcm_int);
    }

    if (deleteFlag && !ServerBrowserCount(DWCi_GetMatchCnt()->sbObj)) {
        return FALSE;
    }
    else {
        return TRUE;
    }
}

static void DWCi_RandomizeServers(void) {
    u32 rand;
    int tmpEval, maxEval = 0;
    int sum = 0;
    int i;
    int eval[DWC_SB_UPDATE_MAX_SERVERS];
    SBServer server;

    if (ServerBrowserCount(DWCi_GetMatchCnt()->sbObj) <= 1) {
        return;
    }

    for (i = 0; i < ServerBrowserCount(DWCi_GetMatchCnt()->sbObj); i++) {
        server = ServerBrowserGetServer(DWCi_GetMatchCnt()->sbObj, i);
        tmpEval = SBServerGetIntValue(server, DWC_QR2_MATCH_EVAL_KEY_STR, -1);

        if (tmpEval > maxEval) {
            maxEval = tmpEval;
        }

        sum += stEvalRate[i];
    }

    rand = DWCi_GetMathRand32(100);

    for (i = 0; i < ServerBrowserCount(DWCi_GetMatchCnt()->sbObj); i++) {
        if (i == ServerBrowserCount(DWCi_GetMatchCnt()->sbObj) - 1) {
            eval[i] = 100;
            break;
        }
        else {
            eval[i] = (100 * stEvalRate[i]) / sum + ((i > 0)? eval[i - 1] : 0);

            if (rand < eval[i]) {
                break;
            }
        }
    }

    DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "Server[%d] is selected (%d/100: rand %d)\n", i, eval[i], rand);

    if (maxEval < 0x7fffffff) {
        maxEval++;
    }

    SBServerAddIntKeyValue(ServerBrowserGetServer(DWCi_GetMatchCnt()->sbObj, i), DWC_QR2_MATCH_EVAL_KEY_STR, maxEval);

    ServerBrowserSort(DWCi_GetMatchCnt()->sbObj, SBFalse, DWC_QR2_MATCH_EVAL_KEY_STR, sbcm_int);
}

static void DWCi_QR2ServerKeyCallback(int keyid, qr2_buffer_t outbuf, void *userdata) {
#pragma unused(userdata)
    int index;

    switch (keyid) {
    case NUMPLAYERS_KEY:
        qr2_buffer_add_int(outbuf, DWCi_GetMatchCnt()->qr2NNFinishCount);
        DWC_Printf(DWC_REPORTFLAG_QR2_REQ, "QR2, Received ServerKeyReq : keyID %d - %d\n", keyid, DWCi_GetMatchCnt()->qr2NNFinishCount);
        break;
    case MAXPLAYERS_KEY:
        qr2_buffer_add_int(outbuf, DWCi_GetMatchCnt()->qr2NumEntry);
        DWC_Printf(DWC_REPORTFLAG_QR2_REQ, "QR2, Received ServerKeyReq : keyID %d - %d\n", keyid, DWCi_GetMatchCnt()->qr2NumEntry);
        break;
    case DWC_QR2_PID_KEY:
        qr2_buffer_add_int(outbuf, DWCi_GetMatchCnt()->profileID);
        DWC_Printf(DWC_REPORTFLAG_QR2_REQ, "QR2, Received ServerKeyReq : keyID %d - %d\n", keyid, DWCi_GetMatchCnt()->profileID);
        break;
    case DWC_QR2_MATCH_TYPE_KEY:
        qr2_buffer_add_int(outbuf, DWCi_GetMatchCnt()->qr2MatchType);
        DWC_Printf(DWC_REPORTFLAG_QR2_REQ, "QR2, Received ServerKeyReq : keyID %d - %d\n", keyid, DWCi_GetMatchCnt()->qr2MatchType);
        break;
    case DWC_QR2_MATCH_RESV_KEY:
        qr2_buffer_add_int(outbuf, DWCi_GetMatchCnt()->qr2Reservation);
        DWC_Printf(DWC_REPORTFLAG_QR2_REQ, "QR2, Received ServerKeyReq : keyID %d - %d\n", keyid, DWCi_GetMatchCnt()->qr2Reservation);
        break;
    case DWC_QR2_MATCH_VER_KEY:
        qr2_buffer_add_int(outbuf, DWC_MATCHING_VERSION);
        DWC_Printf(DWC_REPORTFLAG_QR2_REQ, "QR2, Received ServerKeyReq : keyID %d - %d\n", keyid, DWC_MATCHING_VERSION);
        break;
    case DWC_QR2_MATCH_EVAL_KEY:
        qr2_buffer_add_int(outbuf, 1);
        DWC_Printf(DWC_REPORTFLAG_QR2_REQ, "QR2, Received ServerKeyReq : keyID %d - %d\n", keyid, 1);
        break;
    default:

        index = keyid - DWC_QR2_GAME_KEY_START;

        if (((index >= 0) && (index < DWC_QR2_GAME_RESERVED_KEYS)) && stGameMatchKeys[index].keyID) {
            if (stGameMatchKeys[index].isStr) {
                qr2_buffer_add(outbuf, (char *)stGameMatchKeys[index].value);
            }
            else {
                qr2_buffer_add_int(outbuf, *(int *)stGameMatchKeys[index].value);
            }
        }

        break;
    }
}

static void DWCi_QR2PlayerKeyCallback(int keyid, int index, qr2_buffer_t outbuf, void *userdata) {
#pragma unused(keyid)
#pragma unused(index)
#pragma unused(outbuf)
#pragma unused(userdata)
}

static void DWCi_QR2TeamKeyCallback(int keyid, int index, qr2_buffer_t outbuf, void *userdata) {
#pragma unused(keyid)
#pragma unused(index)
#pragma unused(outbuf)
#pragma unused(userdata)
}

static void DWCi_QR2KeyListCallback(qr2_key_type keytype, qr2_keybuffer_t keybuffer, void *userdata) {
#pragma unused(userdata)
    int i;

    switch (keytype) {
    case key_server:
        qr2_keybuffer_add(keybuffer, NUMPLAYERS_KEY);
        qr2_keybuffer_add(keybuffer, MAXPLAYERS_KEY);
        qr2_keybuffer_add(keybuffer, DWC_QR2_PID_KEY);
        qr2_keybuffer_add(keybuffer, DWC_QR2_MATCH_TYPE_KEY);
        qr2_keybuffer_add(keybuffer, DWC_QR2_MATCH_RESV_KEY);
        qr2_keybuffer_add(keybuffer, DWC_QR2_MATCH_VER_KEY);
        qr2_keybuffer_add(keybuffer, DWC_QR2_MATCH_EVAL_KEY);

        for (i = 0; i < DWC_QR2_GAME_RESERVED_KEYS; i++) {
            if (stGameMatchKeys[i].keyID) {
                qr2_keybuffer_add(keybuffer, stGameMatchKeys[i].keyID);
            }
        }

        break;
    case key_player:
        break;
    case key_team:
        break;
    }

    DWC_Printf(DWC_REPORTFLAG_QR2_REQ, "QR2, Received KeyListReq : keytype %d\n", keytype);
}

static int DWCi_QR2CountCallback(qr2_key_type keytype, void *userdata) {
#pragma unused(keytype)
#pragma unused(userdata)

    return 0;
}

static void DWCi_QR2AddErrorCallback(qr2_error_t error, gsi_char *errmsg, void *userdata) {
#pragma unused(userdata)
#if defined(SDK_FINALROM)
#pragma unused(errmsg)
#endif
    DWC_Printf(DWC_REPORTFLAG_ERROR, "QR2 Failed query addition to master server %d\n", error);
    DWC_Printf(DWC_REPORTFLAG_ERROR, "%s\n", errmsg);

    (void)DWCi_HandleQR2Error(error);
}

static void DWCi_QR2PublicAddrCallback(unsigned int ip, unsigned short port, void *userdata) {
#pragma unused(userdata)
    DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "Got my query IP %08x & port %d.\n", ip, port);
    DWCi_GetMatchCnt()->qr2IP = ip;
    DWCi_GetMatchCnt()->qr2Port = port;
}

static void DWCi_QR2NatnegCallback(int cookie, void *userdata) {
#pragma unused(userdata)
    NegotiateError nnError;

    DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "Got NN request, cookie = %x.\n", cookie);

    if (DWCi_GetMatchCnt()->state == DWC_MATCH_STATE_CL_WAITING) {
        DWCi_SetMatchStatus(DWC_MATCH_STATE_CL_NN);
    }
    else if ((DWCi_GetMatchCnt()->state != DWC_MATCH_STATE_CL_NN) && (DWCi_GetMatchCnt()->state != DWC_MATCH_STATE_SV_OWN_NN)) {
        DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "But already canceled reservation.\n");
        return;
    }

    if (DWCi_GetMatchCnt()->nnLastCookie == cookie) {
        DWCi_GetMatchCnt()->nnRecvCount++;
    }
    else {
        DWCi_GetMatchCnt()->nnRecvCount = 0;
        DWCi_GetMatchCnt()->nnLastCookie = cookie;
    }

    DWCi_GetMatchCnt()->nnFailedTime = 0;

    nnError = DWCi_NNStartupAsync(1, cookie, NULL);

    if (DWCi_HandleNNError(nnError)) {
        return;
    }

    DWCi_GetMatchCnt()->cmdCnt.command = DWC_MATCH_COMMAND_DUMMY;
}

static void DWCi_QR2ClientMsgCallback(gsi_char *data, int len, void *userdata) {
#pragma unused(userdata)
    int offset = 0;
    BOOL boolResult;
    DWCSBMessage sbMsg;

    if ((DWC_GetState() != DWC_STATE_MATCHING) && ((DWC_GetState() != DWC_STATE_CONNECTED) || ((DWCi_GetMatchCnt()->qr2MatchType != DWC_MATCH_TYPE_SC_SV) && (DWCi_GetMatchCnt()->qr2MatchType != DWC_MATCH_TYPE_SC_CL)))) {
        DWC_Printf(DWC_REPORTFLAG_DEBUG, "Ignore delayed SB matching command.\n");

        return;
    }

    while (offset + sizeof(DWCSBMessageHeader) <= len) {
        MI_CpuCopy8(data, &sbMsg, sizeof(DWCSBMessageHeader));

        if (strncmp(sbMsg.header.identifier, DWC_SB_COMMAND_STRING, 4)) {
            DWC_Printf(DWC_REPORTFLAG_WARNING, "Got undefined SBcommand.\n");

            return;
        }

        if (sbMsg.header.version != DWC_MATCHING_VERSION) {
            DWC_Printf(DWC_REPORTFLAG_WARNING, "Got different version SBcommand.\n");

            return;
        }

        MI_CpuCopy8(data + sizeof(DWCSBMessageHeader), sbMsg.data, sbMsg.header.size);

#ifdef NITRODWC_DEBUG
        DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "<SB> RECV-%s <- [%08x:%d] [pid=%u]\n", get_dwccommandstr(sbMsg.header.command), sbMsg.header.qr2IP, sbMsg.header.qr2Port, sbMsg.header.profileID);
#else
        DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "<SB> RECV-0x%02x <- [%08x:%d] [pid=%u]\n", sbMsg.header.command, sbMsg.header.qr2IP, sbMsg.header.qr2Port, sbMsg.header.profileID);
#endif

        boolResult = DWCi_ProcessRecvMatchCommand(sbMsg.header.command, sbMsg.header.profileID, sbMsg.header.qr2IP, sbMsg.header.qr2Port, sbMsg.data, sbMsg.header.size >> 2);

        if (!boolResult) {
            return;
        }

        offset += sizeof(DWCSBMessageHeader) + sbMsg.header.size;
    }
}

static void DWCi_NNProgressCallback(NegotiateState state, void *userdata) {
#pragma unused(userdata)
#if defined(SDK_FINALROM)
#pragma unused(state)
#endif

    DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "NN, Got state update: %d\n", state);
}

static void DWCi_NNCompletedCallback(NegotiateResult result, SOCKET gamesocket, struct sockaddr_in *remoteaddr, void *userdata) {
#pragma unused(gamesocket)
    char pidStr[12];
    int index;
    NegotiateError nnError;
    NegotiateResult nnResult;
    GT2Result gt2Result;
    DWCNNInfo *nnInfo = (DWCNNInfo *)userdata;

    DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "NN, Complete NAT Negotiation. result : %d\n", result);

    if (nnInfo) {
        DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "NN cookie = %x.\n", nnInfo->cookie);
    }

    if (((DWCi_GetMatchCnt()->state != DWC_MATCH_STATE_CL_NN) && (DWCi_GetMatchCnt()->state != DWC_MATCH_STATE_SV_OWN_NN)) || !nnInfo) {
        DWC_Printf(DWC_REPORTFLAG_DEBUG, "Ignore delayed NN after cancel.\n");

        return;
    }

    if (result == nr_success) {
        if (remoteaddr) {
            DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "NN, remote address : %s\n", gt2AddressToString(remoteaddr->sin_addr.s_addr, SO_NtoHs(remoteaddr->sin_port), NULL));
        }

        nnInfo->cookie = 0;

        DWCi_GetMatchCnt()->qr2NNFinishCount++;
        index = DWCi_GetMatchCnt()->qr2NNFinishCount;

        if (nnInfo->isQR2) {
            DWCi_GetMatchCnt()->ipList[index] = remoteaddr->sin_addr.s_addr;
            DWCi_GetMatchCnt()->portList[index] = SO_NtoHs(remoteaddr->sin_port);
            DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "NN child finished Nat Negotiation.\n");

            DWCi_GetMatchCnt()->nnRecvCount = 0;
            DWCi_GetMatchCnt()->nnLastCookie = 0;
            DWCi_GetMatchCnt()->nnFailedTime = 0;

            if (DWCi_GetMatchCnt()->state == DWC_MATCH_STATE_SV_OWN_NN) {
                DWCi_SetMatchStatus(DWC_MATCH_STATE_SV_OWN_GT2);
            }
            else {
                DWCi_SetMatchStatus(DWC_MATCH_STATE_CL_GT2);
            }

            DWCi_GetMatchCnt()->gt2ConnectCount = 0;

            DWC_Printf(DWC_REPORTFLAG_MATCH_GT2, "gt2Connect() to pidList[%d] (%s)\n", index, gt2AddressToString(DWCi_GetMatchCnt()->ipList[index], DWCi_GetMatchCnt()->portList[index], NULL));

            (void)OS_SNPrintf(pidStr, sizeof(pidStr), "%u", DWCi_GetMatchCnt()->profileID);
            gt2Result = gt2Connect(*DWCi_GetMatchCnt()->pGt2Socket, NULL, gt2AddressToString(DWCi_GetMatchCnt()->ipList[index], DWCi_GetMatchCnt()->portList[index], NULL), (GT2Byte *)pidStr, -1, DWC_GT2_CONNECT_TIMEOUT, DWCi_GetMatchCnt()->gt2Callbacks, GT2False);

            if (gt2Result == GT2OutOfMemory) {
                DWCi_HandleGT2Error(gt2Result);

                return;
            }
            else if (gt2Result == GT2Success) {
            }
            else if (!DWCi_CancelPreConnectedServerProcess(DWCi_GetMatchCnt()->sbPidList[index])) {
                return;
            }
        }
        else {
            DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "NN parent finished Nat Negotiation.\n");

            if (remoteaddr) {
                DWCi_GetMatchCnt()->ipList[index - 1] = remoteaddr->sin_addr.s_addr;
                DWCi_GetMatchCnt()->portList[index - 1] = SO_NtoHs(remoteaddr->sin_port);
            }

            DWCi_GetMatchCnt()->nnFinishTime = OS_GetTick();

            DWCi_SetMatchStatus(DWC_MATCH_STATE_CL_GT2);
        }
    }
    else {
        if (!nnInfo->cookie) {
            DWC_Printf(DWC_REPORTFLAG_DEBUG, "Ignore delayed NN error after cancel.\n");

            return;
        }

        nnResult = DWCi_HandleNNResult(result);

        if ((nnResult != nr_inittimeout) && (nnResult != nr_deadbeatpartner)) {
            return;
        }

        if (!nnInfo->isQR2) {
            DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "Failed %d/%d NN send.\n", nnInfo->retryCount, DWC_MAX_MATCH_NN_RETRY);

            if ((nnResult == nr_deadbeatpartner) || ((nnResult == nr_inittimeout) && (nnInfo->retryCount >= DWC_MAX_MATCH_NN_RETRY))) {
                DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "Abort NN.\n");

                nnInfo->cookie = 0;

                if (!DWCi_ProcessNNFailure(FALSE)) {
                    return;
                }

                if (!DWCi_CancelPreConnectedClientProcess(DWCi_GetMatchCnt()->sbPidList[DWCi_GetMatchCnt()->gt2NumConnection])) {
                    return;
                }
            }
            else {
                nnInfo->retryCount++;

                nnError = DWCi_DoNatNegotiationAsync(nnInfo);

                if (DWCi_HandleNNError(nnError)) {
                    return;
                }
            }
        }
        else {
            DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "Failed %d/%d NN recv.\n", DWCi_GetMatchCnt()->nnRecvCount, DWC_MAX_MATCH_NN_RETRY);

            DWCi_GetMatchCnt()->nnFailedTime = OS_GetTick();

            if ((nnResult == nr_deadbeatpartner) || ((nnResult == nr_inittimeout) && (DWCi_GetMatchCnt()->nnRecvCount >= DWC_MAX_MATCH_NN_RETRY))) {
                DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "Abort NN.\n");

                nnInfo->cookie = 0;

                if ((DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_SC_CL) || (DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_SC_SV)) {
                    if (!DWCi_ProcessNNFailure(TRUE)) {
                        return;
                    }
                }
                else {
                    if (!DWCi_ProcessNNFailure(FALSE)) {
                        return;
                    }
                }

                DWCi_GetMatchCnt()->nnRecvCount = 0;
                DWCi_GetMatchCnt()->nnLastCookie = 0;
                DWCi_GetMatchCnt()->nnFailedTime = 0;

                if (!DWCi_CancelPreConnectedServerProcess(DWCi_GetMatchCnt()->sbPidList[DWCi_GetMatchCnt()->gt2NumConnection + 1])) {
                    return;
                }
            }
        }
    }
}

static BOOL DWCi_ProcessNNFailure(BOOL ignoreError) {
    if (ignoreError) {
        return TRUE;
    }

    if (DWCi_GetMatchCnt()->qr2MatchType != DWC_MATCH_TYPE_SC_CL) {
        DWCi_GetMatchCnt()->nnFailureCount++;

        DWC_Printf(DWC_REPORTFLAG_MATCH_NN, "NN failure %d/%d.\n", DWCi_GetMatchCnt()->nnFailureCount, DWC_MATCH_NN_FAILURE_MAX);
    }

    if ((DWCi_GetMatchCnt()->qr2MatchType == DWC_MATCH_TYPE_SC_CL) || (DWCi_GetMatchCnt()->nnFailureCount >= DWC_MATCH_NN_FAILURE_MAX)) {
        DWCi_StopMatching(DWC_ERROR_NETWORK, DWC_ECODE_SEQ_MATCH + DWC_ECODE_GS_NN + DWC_ECODE_TYPE_MUCH_FAILURE);

        return FALSE;
    }
    else {
        return TRUE;
    }
}

static DWCMatchControl *stpMatchCnt = NULL;
#ifdef NITRODWC_DEBUG
static OSTick sMatchStateTick;
#endif


static void DWCi_SetMatchCnt(DWCMatchControl *pCnt) {
    stpMatchCnt = pCnt;
#ifdef NITRODWC_DEBUG
    sMatchStateTick = OS_GetTick();
#endif
}

static DWCMatchControl*DWCi_GetMatchCnt(void) {
    return stpMatchCnt;
}

static void DWCi_SetMatchStatus(DWCMatchState state) {
    SDK_ASSERT(stpMatchCnt);
#ifdef NITRODWC_DEBUG
    if (stpMatchCnt->state != state) {
        disp_match_state(stpMatchCnt->state, state);
    }
#endif
    stpMatchCnt->state = state;
}

#ifdef NITRODWC_DEBUG
static char *match_st_string[DWC_MATCH_STATE_NUM] = {
    "DWC_MATCH_STATE_INIT", "DWC_MATCH_STATE_CL_WAITING", "DWC_MATCH_STATE_CL_SEARCH_OWN", "DWC_MATCH_STATE_CL_SEARCH_HOST", "DWC_MATCH_STATE_CL_WAIT_RESV", "DWC_MATCH_STATE_CL_SEARCH_NN_HOST", "DWC_MATCH_STATE_CL_NN", "DWC_MATCH_STATE_CL_GT2", "DWC_MATCH_STATE_CL_CANCEL_SYN", "DWC_MATCH_STATE_CL_SYN", "DWC_MATCH_STATE_SV_WAITING", "DWC_MATCH_STATE_SV_OWN_NN", "DWC_MATCH_STATE_SV_OWN_GT2", "DWC_MATCH_STATE_SV_WAIT_CL_LINK", "DWC_MATCH_STATE_SV_CANCEL_SYN", "DWC_MATCH_STATE_SV_CANCEL_SYN_WAIT", "DWC_MATCH_STATE_SV_SYN", "DWC_MATCH_STATE_SV_SYN_WAIT", "DWC_MATCH_STATE_WAIT_CLOSE", "DWC_MATCH_STATE_SV_POLL_TIMEOUT",
};

static void disp_time(void) {
    int m_time, sec;

    m_time = (int)OS_TicksToMilliSeconds(OS_GetTick() - sMatchStateTick);
    sec = m_time / 1000;
    m_time = (m_time - sec + 50) / 100;
    OS_TPrintf("�o�ߎ��� %d.%d �b\n", sec, m_time);
}

static void disp_match_state(DWCMatchState old, DWCMatchState now) {
    int m_time, sec;
    OSTick tick;

    tick = sMatchStateTick; sMatchStateTick = OS_GetTick(); tick = sMatchStateTick - tick;
    m_time = (int)OS_TicksToMilliSeconds(tick);
    sec = m_time / 1000;
    m_time = (m_time - sec + 50) / 100;
    OS_TPrintf("�X�e�[�^�X�ύX %s(%d.%d �b) -> %s\n", match_st_string[old], sec, m_time, match_st_string[now]);
}

static const char*get_dwccommandstr(u8 command) {
    switch (command) {
    case DWC_MATCH_COMMAND_RESERVATION:
        return "DWC_MATCH_COMMAND_RESERVATION";
    case DWC_MATCH_COMMAND_RESV_OK:
        return "DWC_MATCH_COMMAND_RESV_OK";
    case DWC_MATCH_COMMAND_RESV_DENY:
        return "DWC_MATCH_COMMAND_RESV_DENY";
    case DWC_MATCH_COMMAND_RESV_WAIT:
        return "DWC_MATCH_COMMAND_RESV_WAIT";
    case DWC_MATCH_COMMAND_RESV_CANCEL:
        return "DWC_MATCH_COMMAND_RESV_CANCEL";
    case DWC_MATCH_COMMAND_TELL_ADDR:
        return "DWC_MATCH_COMMAND_TELL_ADDR";
    case DWC_MATCH_COMMAND_NEW_PID_AID:
        return "DWC_MATCH_COMMAND_NEW_PID_AID";
    case DWC_MATCH_COMMAND_LINK_CLS_REQ:
        return "DWC_MATCH_COMMAND_LINK_CLS_REQ";
    case DWC_MATCH_COMMAND_LINK_CLS_SUC:
        return "DWC_MATCH_COMMAND_LINK_CLS_SUC";
    case DWC_MATCH_COMMAND_CLOSE_LINK:
        return "DWC_MATCH_COMMAND_CLOSE_LINK";
    case DWC_MATCH_COMMAND_RESV_PRIOR:
        return "DWC_MATCH_COMMAND_RESV_PRIOR";
    case DWC_MATCH_COMMAND_CANCEL:
        return "DWC_MATCH_COMMAND_CANCEL";
    case DWC_MATCH_COMMAND_CANCEL_SYN:
        return "DWC_MATCH_COMMAND_CANCEL_SYN";
    case DWC_MATCH_COMMAND_CANCEL_SYN_ACK:
        return "DWC_MATCH_COMMAND_CANCEL_SYN_ACK";
    case DWC_MATCH_COMMAND_CANCEL_ACK:
        return "DWC_MATCH_COMMAND_CANCEL_ACK";
    case DWC_MATCH_COMMAND_SC_CLOSE_CL:
        return "DWC_MATCH_COMMAND_SC_CLOSE_CL";
    case DWC_MATCH_COMMAND_POLL_TIMEOUT:
        return "DWC_MATCH_COMMAND_POLL_TIMEOUT";
    case DWC_MATCH_COMMAND_POLL_TO_ACK:
        return "DWC_MATCH_COMMAND_POLL_TO_ACK";
    case DWC_MATCH_COMMAND_SC_CONN_BLOCK:
        return "DWC_MATCH_COMMAND_SC_CONN_BLOCK";
    case DWC_MATCH_COMMAND_FRIEND_ACCEPT:
        return "DWC_MATCH_COMMAND_FRIEND_ACCEPT";
    case DWC_MATCH_COMMAND_CL_WAIT_POLL:
        return "DWC_MATCH_COMMAND_CL_WAIT_POLL";
    case DWC_MATCH_COMMAND_SV_KA_TO_CL:
        return "DWC_MATCH_COMMAND_SV_KA_TO_CL";
    case DWC_MATCH_COMMAND_DUMMY:
        return "DWC_MATCH_COMMAND_DUMMY";
    default:
        return "DWC_MATCH_COMMAND_UNDEFINED";
    }
}

#endif
