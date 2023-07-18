#ifndef DWC_FRIEND_H_
#define DWC_FRIEND_H_

#ifdef __cplusplus
extern "C" {
#endif

#define DWC_GS_STATUS_STRING_LEN GP_LOCATION_STRING_LEN
#define DWC_PERS_KEY_ID_MASK 0x80000000
#define DWC_PERS_KEY_ID_PLAYER_NAME (DWC_PERS_KEY_ID_MASK | 0x01)
#define DWC_GP_PROCESS_INTERVAL 300
#define DWC_FRIEND_UPDATE_WAIT_COUNT 7
#define DWC_GP_KEEP_ALIVE_COUNT 256
#define DWC_GP_SSTR_KEY_MATCH_VERSION "VER"
#define DWC_GP_SSTR_KEY_MATCH_FRIEND_NUM "FME"
#define DWC_GP_SSTR_KEY_DISTANT_FRIEND "MDF"
#define DWC_GP_SSTR_KEY_MATCH_SC_MAX "SCM"
#define DWC_GP_SSTR_KEY_MATCH_SC_NUM "SCN"
#define DWC_GP_STATUS_NO_CHANGE -1
#define DWC_FRIEND_DATA_SIZE 16
#define DWC_LoadOwnDataAsync DWC_LoadOwnPrivateDataAsync

enum {
    DWC_STATUS_OFFLINE = 0, DWC_STATUS_ONLINE, DWC_STATUS_PLAYING, DWC_STATUS_MATCH_ANYBODY, DWC_STATUS_MATCH_FRIEND, DWC_STATUS_MATCH_SC_CL, DWC_STATUS_MATCH_SC_SV, DWC_STATUS_NUM
};

typedef enum {
    DWC_FRIEND_STATE_INIT = 0, DWC_FRIEND_STATE_PERS_LOGIN, DWC_FRIEND_STATE_LOGON, DWC_FRIEND_STATE_NUM
} DWCFriendState;

enum {
    DWC_BUDDY_UPDATE_STATE_WAIT = 0, DWC_BUDDY_UPDATE_STATE_CHECK, DWC_BUDDY_UPDATE_STATE_PSEARCH, DWC_BUDDY_UPDATE_STATE_COMPLETE, DWC_BUDDY_UPDATE_STATE_NUM
};

enum {
    DWC_PERS_STATE_INIT = 0, DWC_PERS_STATE_LOGIN, DWC_PERS_STATE_CONNECTED, DWC_PERS_STATE_NUM
};

typedef void (* DWCUpdateServersCallback)(DWCError error, BOOL isChanged, void * param);
typedef void (* DWCFriendStatusCallback)(int index, u8 status, const char * statusString, void * param);
typedef void (* DWCDeleteFriendListCallback)(int deletedIndex, int srcIndex, void * param);
typedef void (* DWCBuddyFriendCallback)(int index, void * param);
typedef void (* DWCStorageLoginCallback)(DWCError error, void * param);
typedef void (* DWCSaveToServerCallback)(BOOL success, BOOL isPublic, void * param);
typedef void (* DWCLoadFromServerCallback)(BOOL success, int index, char * data, int len, void * param);

typedef union DWCunFriendDataOld {
    u8 mpFriendKey[DWC_FRIEND_DATA_SIZE];
    struct {
        int id;
        u8 pad[DWC_FRIEND_DATA_SIZE - sizeof(int)];
    } profile;
    u8 flags[DWC_FRIEND_DATA_SIZE];
} DWCFriendDataOld;

typedef struct DWCstFriendControl {
    DWCFriendState state;
    GPConnection * pGpObj;
    u32 gpProcessCount;
    OSTick lastGpProcess;
    int friendListLen;
    DWCFriendData * friendList;
    u8 buddyUpdateIdx;
    u8 friendListChanged;
    u8 buddyUpdateState;
    vu8 svUpdateComplete;
    u32 persCallbackLevel;
    int profileID;
    const u16 * playerName;
    DWCUpdateServersCallback updateCallback;
    void * updateParam;
    DWCFriendStatusCallback statusCallback;
    void * statusParam;
    DWCDeleteFriendListCallback deleteCallback;
    void * deleteParam;
    DWCBuddyFriendCallback buddyCallback;
    void * buddyParam;
    DWCStorageLoginCallback persLoginCallback;
    void * persLoginParam;
    DWCSaveToServerCallback saveCallback;
    DWCLoadFromServerCallback loadCallback;
} DWCFriendControl;

extern u8 DWC_GetFriendStatus(const DWCFriendData * friendData, char * statusString);
extern u8 DWC_GetFriendStatusSC(const DWCFriendData * friendData, u8 * maxEntry, u8 * numEntry, char * statusString);
extern u8 DWC_GetFriendStatusData(const DWCFriendData * friendData, char * statusData, int * size);
extern u8 DWC_GetFriendStatusDataSC(const DWCFriendData * friendData, u8 * maxEntry, u8 * numEntry, char * statusData, int * size);
extern int DWC_GetNumFriend(const DWCFriendData friendList[], int friendListLen);
extern BOOL DWC_SetOwnStatusString(const char * statusString);
extern BOOL DWC_GetOwnStatusString(char * statusString);
extern BOOL DWC_SetOwnStatusData(const char * statusData, u32 size);
extern int DWC_GetOwnStatusData(char * statusData);
extern BOOL DWC_CanChangeFriendList(void);
extern void DWC_DeleteBuddyFriendData(DWCFriendData * friendData);
extern BOOL DWC_SetBuddyFriendCallback(DWCBuddyFriendCallback callback, void * param);
extern BOOL DWC_SetFriendStatusCallback(DWCFriendStatusCallback callback, void * param);
extern int DWC_Base64Encode(const char * src, const u32 srclen, char * dst, const u32 dstlen);
extern int DWC_Base64Decode(const char * src, const u32 srclen, char * dst, const u32 dstlen);
extern BOOL DWC_LoginToStorageServerAsync(DWCStorageLoginCallback callback, void * param);
extern void DWC_LogoutFromStorageServer(void);
extern BOOL DWC_SetStorageServerCallback(DWCSaveToServerCallback saveCallback, DWCLoadFromServerCallback loadCallback);
extern BOOL DWC_SavePublicDataAsync(char * keyvalues, void * param);
extern BOOL DWC_SavePrivateDataAsync(char * keyvalues, void * param);
extern BOOL DWC_LoadOwnPublicDataAsync(char * keys, void * param);
extern BOOL DWC_LoadOwnPrivateDataAsync(char * keys, void * param);
extern BOOL DWC_LoadOthersDataAsync(char * keys, int index, void * param);
extern void DWCi_FriendInit(DWCFriendControl * friendcnt, GPConnection * pGpObj, const u16 * playerName, DWCFriendData * friendList, int friendListLen);
extern void DWCi_FriendProcess(void);
extern void DWCi_UpdateServersAsync(const char * authToken, const char * partnerChallenge, DWCUpdateServersCallback updateCallback, void * updateParam, DWCFriendStatusCallback statusCallback, void * statusParam, DWCDeleteFriendListCallback deleteCallback, void * deleteParam);
extern void DWCi_StopFriendProcess(DWCError error, int errorCode);
extern void DWCi_GPGetInfoCallback(GPConnection * connection, GPGetInfoResponseArg * arg, void * param);
extern void DWCi_GPRecvBuddyRequestCallback(GPConnection * connection, GPRecvBuddyRequestArg * arg, void * param);
extern BOOL DWCi_GPRecvBuddyAuthCallback(GPConnection * connection, GPRecvBuddyMessageArg * arg, void * param);
extern void DWCi_GPRecvBuddyStatusCallback(GPConnection * connection, GPRecvBuddyStatusArg * arg, void * param);
extern DWCFriendData * DWCi_GetFriendList(void);
extern int DWCi_GetFriendListLen(void);
extern int DWCi_GetProfileIDFromList(int index);
extern int DWCi_GetFriendListIndex(int profileID);
extern void DWCi_InitGPProcessCount(void);
extern GPResult DWCi_SetGPStatus(int status, const char * statusString, const char * locationString);
extern BOOL DWCi_GetGPStatus(int * status, char * statusString, char * locationString);
extern void DWCi_CallBuddyFriendCallback(int index);
extern void DWCi_ShutdownFriend(void);

inline BOOL DWC_SetGsStatusString (const char * statusString)
{
    return DWC_SetOwnStatusString(statusString);
}

inline BOOL DWC_GetGsStatusString (char * statusString)
{
    return DWC_GetOwnStatusString(statusString);
}

inline BOOL DWC_SetGsStatusData (const char * statusData, u32 size)
{
    return DWC_SetOwnStatusData(statusData, size);
}

inline int DWC_GetGsStatusData (char * statusData)
{
    return DWC_GetOwnStatusData(statusData);
}

#ifdef __cplusplus
}
#endif

#endif
