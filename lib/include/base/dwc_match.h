#ifndef DWC_MATCH_H_
#define DWC_MATCH_H_

#ifdef __cplusplus
extern "C" {
#endif

#define DWC_QR2_ALIVE_DURING_MATCHING
#define DWC_MATCH_ACCEPT_NO_FRIEND
#define DWC_LIMIT_FRIENDS_MATCH_VALID
#define DWC_STOP_SC_SERVER
#define DWC_MATCHING_VERSION 3U
#define DWC_MAX_CONNECTIONS 32
#define DWC_QR2_PID_KEY NUM_RESERVED_KEYS
#define DWC_QR2_MATCH_TYPE_KEY (NUM_RESERVED_KEYS + 1)
#define DWC_QR2_MATCH_RESV_KEY (NUM_RESERVED_KEYS + 2)
#define DWC_QR2_MATCH_VER_KEY (NUM_RESERVED_KEYS + 3)
#define DWC_QR2_MATCH_EVAL_KEY (NUM_RESERVED_KEYS + 4)
#define DWC_QR2_PID_KEY_STR "dwc_pid"
#define DWC_QR2_MATCH_TYPE_KEY_STR "dwc_mtype"
#define DWC_QR2_MATCH_RESV_KEY_STR "dwc_mresv"
#define DWC_QR2_MATCH_VER_KEY_STR "dwc_mver"
#define DWC_QR2_MATCH_EVAL_KEY_STR "dwc_eval"
#define DWC_QR2_RESERVED_KEYS (100 - NUM_RESERVED_KEYS)
#define DWC_QR2_GAME_RESERVED_KEYS (MAX_REGISTERED_KEYS - NUM_RESERVED_KEYS - DWC_QR2_RESERVED_KEYS)
#define DWC_QR2_GAME_KEY_START 100
#define DWC_SB_COMMAND_STRING "SBCM"
#define DWC_MATCH_COMMAND_RESERVATION 0x01
#define DWC_MATCH_COMMAND_RESV_OK 0x02
#define DWC_MATCH_COMMAND_RESV_DENY 0x03
#define DWC_MATCH_COMMAND_RESV_WAIT 0x04
#define DWC_MATCH_COMMAND_RESV_CANCEL 0x05
#define DWC_MATCH_COMMAND_TELL_ADDR 0x06
#define DWC_MATCH_COMMAND_NEW_PID_AID 0x07
#define DWC_MATCH_COMMAND_LINK_CLS_REQ 0x08
#define DWC_MATCH_COMMAND_LINK_CLS_SUC 0x09
#define DWC_MATCH_COMMAND_CLOSE_LINK 0x0a
#define DWC_MATCH_COMMAND_RESV_PRIOR 0x0b
#define DWC_MATCH_COMMAND_CANCEL 0x0c
#define DWC_MATCH_COMMAND_CANCEL_SYN 0x0d
#define DWC_MATCH_COMMAND_CANCEL_SYN_ACK 0x0e
#define DWC_MATCH_COMMAND_CANCEL_ACK 0x0f
#define DWC_MATCH_COMMAND_SC_CLOSE_CL 0x10
#define DWC_MATCH_COMMAND_POLL_TIMEOUT 0x11
#define DWC_MATCH_COMMAND_POLL_TO_ACK 0x12
#define DWC_MATCH_COMMAND_SC_CONN_BLOCK 0x13
#ifdef DWC_LIMIT_FRIENDS_MATCH_VALID
#define DWC_MATCH_COMMAND_FRIEND_ACCEPT 0x20
#endif
#define DWC_MATCH_COMMAND_CL_WAIT_POLL 0x40
#define DWC_MATCH_COMMAND_SV_KA_TO_CL 0x41
#define DWC_MATCH_COMMAND_DUMMY 0xff

#if 0
#define DWC_MATCH_CMD_RESEND_INTERVAL 60
#define DWC_MATCH_CMD_RESEND_INTERVAL_ADD 150
#define DWC_MATCH_CMD_RESV_TIMEOUT 480
#define DWC_SB_UPDATE_INTERVAL 60
#define DWC_SB_UPDATE_INTERVAL_ADD 180
#define DWC_QR2_KEEP_RESV_TIMEOUT 600
#else
#define DWC_MATCH_CMD_RESEND_INTERVAL_MSEC 3000
#define DWC_MATCH_CMD_RESEND_INTERVAL_ADD_MSEC 3000
#define DWC_MATCH_CMD_RESV_TIMEOUT_MSEC 6000
#define DWC_SB_UPDATE_INTERVAL_MSEC 3000
#define DWC_SB_UPDATE_INTERVAL_SHORT_MSEC 1000
#define DWC_SB_UPDATE_INTERVAL_ADD_MSEC 3000
#define DWC_SB_UPDATE_INTERVAL_SHORT 1
#define DWC_SB_UPDATE_INTERVAL_LONG 2
#define DWC_SB_UPDATE_TIMEOUT 30000
#endif
#define DWC_MATCH_CMD_RTT_TIMEOUT 6000
#define DWC_MATCH_SB_UPDATE_TIMEOUT 13000
#define DWC_MATCH_CMD_RETRY_MAX 5
#define DWC_MATCH_SYN_ACK_WAIT_TIME DWC_MATCH_CMD_RTT_TIMEOUT
#define DWC_MATCH_CANCEL_SYN_ACK_WAIT_TIME DWC_MATCH_CMD_RTT_TIMEOUT
#define DWC_MATCH_RESV_KEEP_TIME_ANYBODY DWC_MATCH_CMD_RTT_TIMEOUT
#define DWC_MATCH_RESV_KEEP_TIME_FRIEND (DWC_MATCH_CMD_RTT_TIMEOUT + DWC_MATCH_SB_UPDATE_TIMEOUT)
#define DWC_MAX_MATCH_NN_RETRY 1
#define DWC_MATCH_NN_FAILURE_MAX 5
#define DWC_WAIT_NN_RETRY_TIMEOUT 10000
#define DWC_GT2_CONNECT_TIMEOUT 5000
#define DWC_WAIT_GT2_CONNECT_TIMEOUT (DWC_GT2_CONNECT_TIMEOUT * DWC_MATCH_CMD_RETRY_MAX)
#define DWC_MATCH_LINK_CLS_TIMEOUT 30000
#define DWC_MATCH_CL_WAIT_TIMEOUT 30000
#define DWC_RESV_COMMAND_RETRY_MAX 16
#define DWC_MATCH_OPT_MIN_COMP_POLL_RETRY_MAX 5
#define DWC_SB_UPDATE_MAX_SERVERS 6
#define DWC_MATCH_SYN_DATA_BODY_SIZE 4
#define DWC_MAX_MATCH_IDX_LIST 64

typedef enum {
    DWC_MATCH_OPTION_MIN_COMPLETE = 0,
    DWC_MATCH_OPTION_SC_CONNECT_BLOCK,
    DWC_MATCH_OPTION_NUM
} DWCMatchOptType;

enum {
    DWC_SET_MATCH_OPT_RESULT_SUCCESS = 0,
    DWC_SET_MATCH_OPT_RESULT_E_BAD_STATE,
    DWC_SET_MATCH_OPT_RESULT_E_INVALID,
    DWC_SET_MATCH_OPT_RESULT_E_PARAM,
    DWC_SET_MATCH_OPT_RESULT_E_ALLOC,
    DWC_SET_MATCH_OPT_RESULT_NUM
};

typedef enum {
    DWC_MATCH_STATE_INIT = 0,
    DWC_MATCH_STATE_CL_WAITING,
    DWC_MATCH_STATE_CL_SEARCH_OWN,
    DWC_MATCH_STATE_CL_SEARCH_HOST,
    DWC_MATCH_STATE_CL_WAIT_RESV,
    DWC_MATCH_STATE_CL_SEARCH_NN_HOST,
    DWC_MATCH_STATE_CL_NN,
    DWC_MATCH_STATE_CL_GT2,
    DWC_MATCH_STATE_CL_CANCEL_SYN,
    DWC_MATCH_STATE_CL_SYN,
    DWC_MATCH_STATE_SV_WAITING,
    DWC_MATCH_STATE_SV_OWN_NN,
    DWC_MATCH_STATE_SV_OWN_GT2,
    DWC_MATCH_STATE_SV_WAIT_CL_LINK,
    DWC_MATCH_STATE_SV_CANCEL_SYN,
    DWC_MATCH_STATE_SV_CANCEL_SYN_WAIT,
    DWC_MATCH_STATE_SV_SYN,
    DWC_MATCH_STATE_SV_SYN_WAIT,
    DWC_MATCH_STATE_WAIT_CLOSE,
    DWC_MATCH_STATE_SV_POLL_TIMEOUT,
    DWC_MATCH_STATE_NUM
} DWCMatchState;

enum {
    DWC_MATCH_TYPE_ANYBODY = 0,
    DWC_MATCH_TYPE_FRIEND,
    DWC_MATCH_TYPE_SC_SV,
    DWC_MATCH_TYPE_SC_CL,
    DWC_MATCH_TYPE_NUM
};

typedef void (* DWCMatchedCallback)(DWCError error, BOOL cancel, void * param);
typedef void (* DWCMatchedSCCallback)(DWCError error, BOOL cancel, BOOL self, BOOL isServer, int index, void * param);
typedef void (* DWCNewClientCallback)(int index, void * param);
typedef int (* DWCEvalPlayerCallback)(int index, void * param);
typedef void (* DWCStopSCCallback)(void * param);

typedef struct DWCstMatchOptMinComplete {
    u8 valid;
    u8 minEntry;
    u8 pad[2];
    u32 timeout;
} DWCMatchOptMinComplete;

typedef struct DWCstNNInfo {
    u8 isQR2;
    u8 retryCount;
    u16 port;
    u32 ip;
    int cookie;
} DWCNNInfo;

typedef struct DWCstMatchCommandControl {
    u8 command;
    u8 count;
    u16 port;
    u32 ip;
    u32 data[32];
    int profileID;
    int len;
    OSTick sendTime;
} DWCMatchCommandControl;

typedef struct DWCstMatchControl {
    GPConnection * pGpObj;
    GT2Socket * pGt2Socket;
    GT2ConnectionCallbacks * gt2Callbacks;
    u8 gt2ConnectCount;
    u8 gt2NumConnection;
    u8 gt2NumValidConn;
    u8 pad1;
    qr2_t qr2Obj;
    vu8 qr2NNFinishCount;
    vu8 qr2MatchType;
    vu8 qr2NumEntry;
    vu8 qr2IsReserved;
#ifdef DWC_QR2_ALIVE_DURING_MATCHING
    u8 qr2ShutdownFlag;
    u8 pad2;
#else
    u16 pad2;
#endif
    u16 qr2Port;
    u32 qr2IP;
    volatile int qr2Reservation;
    u32 qr2IPList[DWC_MAX_CONNECTIONS];
    u16 qr2PortList[DWC_MAX_CONNECTIONS];
    ServerBrowser sbObj;
    BOOL sbUpdateFlag;
    OSTick sbUpdateTick;
    int sbPidList[DWC_MAX_CONNECTIONS];
    OSTick sbUpdateRequestTick;
    u8 nnRecvCount;
    u8 nnFailureCount;
    u16 nnCookieRand;
    int nnLastCookie;
    OSTick nnFailedTime;
    OSTick nnFinishTime;
    DWCNNInfo nnInfo;
    DWCMatchState state;
    u8 clLinkProgress;
    u8 friendCount;
    u8 distantFriend;
    u8 resvWaitCount;
    u8 closeState;
    u8 cancelState;
    u8 scResvRetryCount;
    u8 synResendCount;
    u8 cancelSynResendCount;
    u8 clWaitTimeoutCount;
#ifdef DWC_STOP_SC_SERVER
    u8 stopSCFlag;
    u8 pad3;
#endif
    u16 baseLatency;
    u16 cancelBaseLatency;
    u16 searchPort;
#ifdef DWC_STOP_SC_SERVER
    u16 pad4;
#endif
    u32 searchIP;
#if 0
    u32 cmdResendCount;
    u32 cmdTimeoutCount;
#else
    BOOL cmdResendFlag;
    OSTick cmdResendTick;
    u32 cmdTimeoutTime;
    OSTick cmdTimeoutStartTick;
#endif
    u32 synAckBit;
    u32 cancelSynAckBit;
#ifdef DWC_LIMIT_FRIENDS_MATCH_VALID
    u32 friendAcceptBit;
#endif
    OSTick lastSynSent;
    OSTick lastCancelSynSent;
    OSTick closedTime;
    OSTick clWaitTime;
    volatile int profileID;
    int reqProfileID;
    int priorProfileID;
    int cbEventPid;
    u32 ipList[DWC_MAX_CONNECTIONS];
    u16 portList[DWC_MAX_CONNECTIONS];
    u8 aidList[DWC_MAX_CONNECTIONS];
    u32 validAidBitmap;
    const char * gameName;
    const char * secretKey;
    const DWCFriendData * friendList;
    int friendListLen;
    u8 friendIdxList[DWC_MAX_MATCH_IDX_LIST];
    int friendIdxListLen;
    u32 svDataBak[DWC_MAX_CONNECTIONS + 1];
    DWCMatchCommandControl cmdCnt;
    DWCMatchedSCCallback matchedCallback;
    void * matchedParam;
    DWCNewClientCallback newClientCallback;
    void * newClientParam;
    DWCEvalPlayerCallback evalCallback;
    void * evalParam;
#ifdef DWC_STOP_SC_SERVER
    DWCStopSCCallback stopSCCallback;
    void * stopSCParam;
#endif
} DWCMatchControl;

typedef struct DWCstSBMessageHeader {
    char identifier[4];
    u32 version;
    u8 command;
    u8 size;
    u16 qr2Port;
    u32 qr2IP;
    int profileID;
} DWCSBMessageHeader;

typedef struct DWCstSBMessage {
    DWCSBMessageHeader header;
    u32 data[DWC_MAX_CONNECTIONS];
} DWCSBMessage;

typedef struct DWCstGameMatchKeyData {
    u8 keyID;
    u8 isStr;
    u16 pad;
    char * keyStr;
    const void * value;
} DWCGameMatchKeyData;

typedef struct DWCstMatchOptMinCompleteIn {
    u8 valid;
    u8 minEntry;
    u8 retry;
    u8 pad;
    u32 timeout;
    u32 recvBit;
    u32 timeoutBit;
    OSTick startTime;
    OSTick lastPollTime;
} DWCMatchOptMinCompleteIn;

typedef struct DWCstMatchOptSCBlock {
    u8 valid;
    u8 lock;
    u16 pad;
} DWCMatchOptSCBlock;

#ifdef DWC_QR2_ALIVE_DURING_MATCHING
extern BOOL DWC_RegisterMatchingStatus(void);
#endif

BOOL DWC_CancelMatching(void);
extern BOOL DWC_CancelMatchingAsync(void);
extern BOOL DWC_IsValidCancelMatching(void);

#ifdef DWC_STOP_SC_SERVER
extern BOOL DWC_StopSCMatchingAsync(DWCStopSCCallback callback, void * param);
#endif

extern u8 DWC_AddMatchKeyInt(u8 keyID, const char * keyString, const int * valueSrc);
extern u8 DWC_AddMatchKeyString(u8 keyID, const char * keyString, const char * valueSrc);
extern int DWC_GetMatchIntValue(int index, const char * keyString, int idefault);
extern const char * DWC_GetMatchStringValue(int index, const char * keyString, const char * sdefault);
extern int DWC_GetLastMatchingType(void);
extern int DWC_SetMatchingOption(DWCMatchOptType opttype, const void * optval, int optlen);
extern int DWC_GetMatchingOption(DWCMatchOptType opttype, void * optval, int * optlen);
extern int DWC_GetMOMinCompState(u64 * time);
extern BOOL DWC_GetMOSCConnectBlockState(void);
extern void DWC_ClearMOSCConnectBlock(void);
extern DWCMatchState DWC_GetMatchingState(void);
extern void DWCi_MatchInit(DWCMatchControl * matchcnt, GPConnection pGpObj, GT2Socket * pGt2Socket, GT2ConnectionCallbacks * gt2Callbacks, const char * gameName, const char * secretKey, const DWCFriendData friendList[], int friendListLen);
extern qr2_error_t DWCi_QR2Startup(int profileID);
extern void DWCi_ConnectToAnybodyAsync(u8 numEntry, const char * addFilter, DWCMatchedSCCallback matchedCallback, void * matchedParam, DWCEvalPlayerCallback evalCallback, void * evalParam);
extern void DWCi_ConnectToFriendsAsync(const u8 friendIdxList[], int friendIdxListLen, u8 numEntry, BOOL distantFriend, DWCMatchedSCCallback matchedCallback, void * matchedParam, DWCEvalPlayerCallback evalCallback, void * evalParam);
extern void DWCi_SetupGameServer(u8 maxEntry, DWCMatchedSCCallback matchedCallback, void * matchedParam, DWCNewClientCallback newClientCallback, void * newClientParam);
extern void DWCi_ConnectToGameServerAsync(int serverPid, DWCMatchedSCCallback matchedCallback, void * matchedParam, DWCNewClientCallback newClientCallback, void * newClientParam);
extern void DWCi_MatchProcess(BOOL fullSpec);
extern void DWCi_GT2ConnectAttemptCallback(GT2Socket socket, GT2Connection connection, unsigned int ip, unsigned short port, int latency, GT2Byte * message, int len);
extern GT2Bool DWCi_GT2UnrecognizedMessageCallback(GT2Socket socket, unsigned int ip, unsigned short port, GT2Byte * message, int len);
extern void DWCi_GT2ConnectedCallback(GT2Connection connection, GT2Result result, GT2Byte * message, int len);
extern void DWCi_MatchGPRecvBuddyMsgCallback(GPConnection * pconnection, int profileID, char * message);
extern void DWCi_StopMatching(DWCError error, int errorCode);
extern void DWCi_ClearQR2Key(void);
extern void DWCi_ProcessMatchSynPacket(u8 aid, u16 type, u8 * data);
extern BOOL DWCi_ProcessMatchClosing(DWCError error, int errorCode, int profileID);
extern void DWCi_ProcessMatchSCClosing(int clientPid);
extern BOOL DWCi_DeleteHostByProfileID(int profileID, int numHost);
extern int DWCi_DeleteHostByIndex(int index, int numHost);
extern int DWCi_GetNumAllConnection(void);
extern int DWCi_GetNumValidConnection(void);
extern void DWCi_SetNumValidConnection(void);
extern int DWCi_GetAllAIDList(u8 ** aidList);
extern int DWCi_GetValidAIDList(u8 ** aidList);
extern GPResult DWCi_GPSetServerStatus(void);
extern void DWCi_ShutdownMatch(void);
extern BOOL DWCi_IsShutdownMatch(void);
extern int DWCi_GetNumValidConnection(void);
extern void DWCi_NNFreeNegotiateList(void);

#ifdef __cplusplus
}
#endif

#endif
