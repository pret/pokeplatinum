#ifndef DWC_MAIN_H_
#define DWC_MAIN_H_

#ifdef __cplusplus
extern "C" {
#endif

#define DWC_IGNORE_GP_ERROR_ALREADY_BUDDY

#define DWC_GP_COMMAND_STRING "GPCM"
#define DWC_GP_COMMAND_MATCH_STRING "MAT"
#define DWC_DNS_ERROR_RETRY_MAX 5
#define DWC_MAX_PLAYER_NAME 26
#define DWC_SetupGameServerAsync DWC_SetupGameServer

typedef enum {
    DWC_STATE_INIT = 0, DWC_STATE_AVAILABLE_CHECK, DWC_STATE_LOGIN, DWC_STATE_ONLINE, DWC_STATE_UPDATE_SERVERS, DWC_STATE_MATCHING, DWC_STATE_CONNECTED, DWC_STATE_NUM
} DWCState;

typedef void (* DWCConnectionClosedCallback)(DWCError error, BOOL isLocal, BOOL isServer, u8 aid, int index, void * param);

typedef struct DWCstControl {
    GT2Socket gt2Socket;
    GT2ConnectionCallbacks gt2Callbacks;
    int gt2SendBufSize;
    int gt2RecvBufSize;
    GPConnection gpObj;
    DWCUserData * userdata;
    DWCState state;
    DWCState lastState;
    u8 aid;
    u8 ownCloseFlag;
    u16 playerName[DWC_MAX_PLAYER_NAME];
    int profileID;
    const char * gameName;
    const char * secretKey;
    DWCLoginCallback loginCallback;
    void * loginParam;
    DWCUpdateServersCallback updateServersCallback;
    void * updateServersParam;
    DWCMatchedCallback matchedCallback;
    void * matchedParam;
    DWCMatchedSCCallback matchedSCCallback;
    void * matchedSCParam;
    DWCConnectionClosedCallback closedCallback;
    void * closedParam;
    DWCLoginControl logcnt;
    DWCFriendControl friendcnt;
    DWCMatchControl matchcnt;
    DWCTransportInfo transinfo;
} DWCFriendsMatchControl;

typedef struct DWCstConnectionInfo {
    u8 index;
    u8 aid;
    u16 reserve;
    void * param;
} DWCConnectionInfo;

extern void DWC_InitFriendsMatch(DWCFriendsMatchControl * dwccnt, DWCUserData * userdata, int productID, const char * gameName, const char * secretKey, int sendBufSize, int recvBufSize, DWCFriendData friendList[], int friendListLen);
extern void DWC_ShutdownFriendsMatch(void);
extern void DWC_ProcessFriendsMatch(void);
extern BOOL DWC_LoginAsync(const u16 * ingamesn, const char * reserved, DWCLoginCallback callback, void * param);
extern BOOL DWC_UpdateServersAsync(const char * playerName, DWCUpdateServersCallback updateCallback, void * updateParam, DWCFriendStatusCallback statusCallback, void * statusParam, DWCDeleteFriendListCallback deleteCallback, void * deleteParam);
extern BOOL DWC_ConnectToAnybodyAsync(u8 numEntry, const char * addFilter, DWCMatchedCallback matchedCallback, void * matchedParam, DWCEvalPlayerCallback evalCallback, void * evalParam);
extern BOOL DWC_ConnectToFriendsAsync(const u8 friendIdxList[], int friendIdxListLen, u8 numEntry, BOOL distantFriend, DWCMatchedCallback matchedCallback, void * matchedParam, DWCEvalPlayerCallback evalCallback, void * evalParam);
extern BOOL DWC_SetupGameServer(u8 maxEntry, DWCMatchedSCCallback matchedCallback, void * matchedParam, DWCNewClientCallback newClientCallback, void * newClientParam);
extern BOOL DWC_ConnectToGameServerAsync(int serverIndex, DWCMatchedSCCallback matchedCallback, void * matchedParam, DWCNewClientCallback newClientCallback, void * newClientParam);
extern BOOL DWC_SetConnectionClosedCallback(DWCConnectionClosedCallback callback, void * param);
extern int DWC_CloseAllConnectionsHard(void);
extern int DWC_CloseConnectionHard(u8 aid);
extern int DWC_CloseConnectionHardBitmap(u32 * bitmap);
extern int DWC_GetNumConnectionHost(void);
extern u8 DWC_GetMyAID(void);
extern int DWC_GetAIDList(u8 ** aidList);
extern u32 DWC_GetAIDBitmap(void);
extern BOOL DWC_IsValidAID(u8 aid);
extern DWCState DWC_GetState(void);
extern int DWC_GetLastSocketError(void);
extern int DWC_CloseConnectionsAsync(void);
extern GT2Result DWCi_GT2Startup(void);
extern GT2Connection DWCi_GetGT2Connection(u8 aid);
extern u8 DWCi_GetConnectionAID(GT2Connection connection);
extern u8 DWCi_GetConnectionIndex(GT2Connection connection);
extern void * DWCi_GetConnectionUserData(GT2Connection connection);
extern int DWCi_GT2GetConnectionListIdx(void);
extern void DWCi_ClearGT2ConnectionList(void);
extern GT2Connection * DWCi_GetGT2ConnectionByIdx(int index);
extern GT2Connection * DWCi_GetGT2ConnectionByProfileID(int profileID, int numHost);
extern DWCConnectionInfo * DWCi_GetConnectionInfoByIdx(int index);
extern BOOL DWCi_IsValidAID(u8 aid);

#ifdef __cplusplus
}
#endif

#endif
