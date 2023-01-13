#include <nitro.h>
#include <base/dwc_base_gamespy.h>
#include <gs/gp/gpi.h>
#include <gs/gstats/gpersist.h>
#include <auth/util_base64.h>
#include <base/dwc_report.h>
#include <base/dwc_account.h>
#include <base/dwc_error.h>
#include <base/dwc_login.h>
#include <base/dwc_friend.h>
#include <base/dwc_match.h>
#include <base/dwc_transport.h>
#include <base/dwc_main.h>
#include <base/dwc_common.h>



static DWCFriendControl *stpFriendCnt = NULL;
static int stPersState = DWC_PERS_STATE_INIT;
static BOOL s_bInPersistThink = FALSE;
static BOOL s_bNeedCloseStatsConnection = FALSE;


static GPResult DWCi_GPProcess(void);
static void DWCi_CloseFriendProcess(void);
static void DWCi_UpdateFriendReq(DWCFriendData friendList[], int friendListLen);
static void DWCi_EndUpdateServers(void);
static void DWCi_DeleteFriendFromList(DWCFriendData friendList[], int index, int otherIndex);
static BOOL DWCi_RefreshFriendListForth(DWCFriendData friendList[], int index, int profileID);
static int DWCi_RefreshFriendListAll(DWCFriendData friendList[], int friendListLen, int profileID);
static GPResult DWCi_GPSendBuddyRequest(int profileID);
static BOOL DWCi_GetFriendBuddyStatus(const DWCFriendData *friendData, GPBuddyStatus *status);
static GPResult DWCi_HandleGPError(GPResult result);
static int DWCi_HandlePersError(int error);
static void DWCi_GPProfileSearchCallback(GPConnection *connection, GPProfileSearchResponseArg *arg, void *param);
static void DWCi_GPGetInfoCallback_RecvBuddyRequest(GPConnection *connection, GPGetInfoResponseArg *arg, void *param);
static void DWCi_GPGetInfoCallback_RecvAuthMessage(GPConnection *connection, GPGetInfoResponseArg *arg, void *param);
static void DWCi_StopPersLogin(DWCError error, int errorCode);
static void DWCi_SetPersistDataValuesAsync(int profileID, persisttype_t type, gsi_char *keyvalues, void *param);
static void DWCi_GetPersistDataValuesAsync(int profileID, persisttype_t type, gsi_char *keys, void *param);
static void DWCi_PersAuthCallback(int localid, int profileid, int authenticated, gsi_char *errmsg, void *instance);
static void DWCi_PersDataCallback(int localid, int profileid, persisttype_t type, int index, int success, time_t modified, char *data, int len, void *instance);
static void DWCi_PersDataSaveCallback(int localid, int profileid, persisttype_t type, int index, int success, time_t modified, void *instance);
static void DWCi_AddPersCallbackLevel(void);
static void DWCi_SubPersCallbackLevel(void);
static u32 DWCi_GetPersCallbackLevel(void);


u8 DWC_GetFriendStatus(const DWCFriendData *friendData, char *statusString) {
    return DWC_GetFriendStatusSC(friendData, NULL, NULL, statusString);
}

u8 DWC_GetFriendStatusSC(const DWCFriendData *friendData, u8 *maxEntry, u8 *numEntry, char *statusString) {
    char valueStr[4];
    int len;
    GPBuddyStatus status;

    if (DWCi_GetFriendBuddyStatus(friendData, &status)) {
        if (status.status == DWC_STATUS_MATCH_SC_SV) {
            if (maxEntry) {
                len = DWC_GetCommonValueString(DWC_GP_SSTR_KEY_MATCH_SC_MAX, valueStr, status.statusString, '/');

                if (len > 0) {
                    *maxEntry = (u8)strtoul(valueStr, NULL, 10);
                }
                else {
                    *maxEntry = 0;
                }
            }

            if (numEntry) {
                len = DWC_GetCommonValueString(DWC_GP_SSTR_KEY_MATCH_SC_NUM, valueStr, status.statusString, '/');

                if (len > 0) {
                    *numEntry = (u8)strtoul(valueStr, NULL, 10);
                }
                else {
                    *numEntry = 0;
                }
            }
        }
        else {
            if (maxEntry) {
                *maxEntry = 0;
            }
            if (numEntry) {
                *numEntry = 0;
            }
        }

        if (statusString) {
            strcpy(statusString, status.locationString);
        }

        return status.status;
    }
    else {
        if (maxEntry) {
            *maxEntry = 0;
        }
        if (numEntry) {
            *numEntry = 0;
        }

        return DWC_STATUS_OFFLINE;
    }
}

u8 DWC_GetFriendStatusData(const DWCFriendData *friendData, char *statusData, int *size) {
    return DWC_GetFriendStatusDataSC(friendData, NULL, NULL, statusData, size);
}

u8 DWC_GetFriendStatusDataSC(const DWCFriendData *friendData, u8 *maxEntry, u8 *numEntry, char *statusData, int *size) {
    u8 ret;
    char statusString[DWC_GS_STATUS_STRING_LEN];

    ret = DWC_GetFriendStatusSC(friendData, maxEntry, numEntry, statusString);

    if (ret == DWC_STATUS_OFFLINE) {
        *size = -1;
        return ret;
    }

    *size = DWC_Auth_Base64Decode(statusString, strlen(statusString), NULL, 0);

    if (!statusData || (*size == -1)) {
        return ret;
    }

    (void)DWC_Auth_Base64Decode(statusString, strlen(statusString), statusData, (u32) * size);

    return ret;
}

int DWC_GetNumFriend(const DWCFriendData friendList[], int friendListLen) {
    int count = 0;
    int i;

    if (!friendList) {
        return 0;
    }

    for (i = 0; i < friendListLen; i++) {
        if (DWCi_Acc_IsValidFriendData(&friendList[i])) {
            count++;
        }
    }

    return count;
}

BOOL DWC_SetOwnStatusString(const char *statusString) {
    if ((stpFriendCnt == NULL) || !DWCi_CheckLogin()) {
        return FALSE;
    }

    if (DWCi_SetGPStatus(DWC_GP_STATUS_NO_CHANGE, NULL, statusString)) {
        return FALSE;
    }
    else {
        return TRUE;
    }
}

BOOL DWC_GetOwnStatusString(char *statusString) {
    if ((stpFriendCnt == NULL) || (*stpFriendCnt->pGpObj == NULL) || !statusString) {
        return FALSE;
    }

    strcpy(statusString, ((GPIConnection *)*stpFriendCnt->pGpObj)->lastLocationString);

    return TRUE;
}

BOOL DWC_SetOwnStatusData(const char *statusData, u32 size) {
    char statusString[DWC_GS_STATUS_STRING_LEN];
    int len;

    if (!stpFriendCnt || !DWCi_CheckLogin()) {
        return FALSE;
    }

    len = DWC_Auth_Base64Encode(statusData, size, statusString, DWC_GS_STATUS_STRING_LEN - 1);

    if (len == -1) {
        return FALSE;
    }

    statusString[len] = '\0';

    if (DWCi_SetGPStatus(DWC_GP_STATUS_NO_CHANGE, NULL, statusString)) {
        return FALSE;
    }
    else {
        return TRUE;
    }
}

int DWC_GetOwnStatusData(char *statusData) {
    int size;

    if (!stpFriendCnt || !DWCi_CheckLogin()) {
        return FALSE;
    }

    size = DWC_Auth_Base64Decode(((GPIConnection *)*stpFriendCnt->pGpObj)->lastLocationString, strlen(((GPIConnection *)*stpFriendCnt->pGpObj)->lastLocationString), NULL, 0);

    if (!statusData || (size == -1)) {
        return size;
    }

    return DWC_Auth_Base64Decode(((GPIConnection *)*stpFriendCnt->pGpObj)->lastLocationString, strlen(((GPIConnection *)*stpFriendCnt->pGpObj)->lastLocationString), statusData, (u32)size);
}

BOOL DWC_CanChangeFriendList(void) {
    if ((stpFriendCnt != NULL) && ((stpFriendCnt->buddyUpdateState == DWC_BUDDY_UPDATE_STATE_CHECK) || (stpFriendCnt->buddyUpdateState == DWC_BUDDY_UPDATE_STATE_PSEARCH))) {
        return FALSE;
    }
    else {
        return TRUE;
    }
}

void DWC_DeleteBuddyFriendData(DWCFriendData *friendData) {
    int profileID;

    if ((stpFriendCnt != NULL) && DWCi_CheckLogin() && (DWCi_GetUserData() != NULL) && ((profileID = ((DWC_GetGsProfileId(DWCi_GetUserData(), friendData)) != 0))) && (profileID != -1) && gpIsBuddy(stpFriendCnt->pGpObj, profileID)) {
        (void)gpDeleteBuddy(stpFriendCnt->pGpObj, profileID);
        DWC_Printf(DWC_REPORTFLAG_DEBUG, "DWC_DeleteBuddyFriendData : Deleted buddy.\n");
    }
    else {
        DWC_Printf(DWC_REPORTFLAG_DEBUG, "DWC_DeleteBuddyFriendData : Only clear data.\n");
    }

    MI_CpuClear8(friendData, sizeof(DWCFriendData));
}

BOOL DWC_SetBuddyFriendCallback(DWCBuddyFriendCallback callback, void *param) {
    if (!stpFriendCnt) {
        return FALSE;
    }

    stpFriendCnt->buddyCallback = callback;
    stpFriendCnt->buddyParam = param;

    return TRUE;
}

BOOL DWC_SetFriendStatusCallback(DWCFriendStatusCallback callback, void *param) {
    if (!stpFriendCnt) {
        return FALSE;
    }

    stpFriendCnt->statusCallback = callback;

    if (param != NULL) {
        stpFriendCnt->statusParam = param;
    }

    return TRUE;
}

int DWC_Base64Encode(const char *src, const u32 srclen, char *dst, const u32 dstlen) {
    return DWC_Auth_Base64Encode(src, srclen, dst, dstlen);
}

int DWC_Base64Decode(const char *src, const u32 srclen, char *dst, const u32 dstlen) {
    return DWC_Auth_Base64Decode(src, srclen, dst, dstlen);
}

BOOL DWC_LoginToStorageServerAsync(DWCStorageLoginCallback callback, void *param) {
    char response[33];
    char *authToken, *partnerChallenge;
    int persResult;
    int i;

    if (!DWCi_GetAuthInfo(&authToken, &partnerChallenge) || IsStatsConnected()) {
        return FALSE;
    }

    stpFriendCnt->persLoginCallback = callback;
    stpFriendCnt->persLoginParam = param;

    for (i = 0; i < DWC_DNS_ERROR_RETRY_MAX; i++) {
        stPersState = DWC_PERS_STATE_LOGIN;
        persResult = InitStatsConnection(0);

        if (persResult == GE_NOERROR) {
            break;
        }

        if ((persResult != GE_NODNS) || (i == DWC_DNS_ERROR_RETRY_MAX - 1)) {
            DWCi_HandlePersError(persResult);

            return TRUE;
        }
    }

    (void)GenerateAuth(GetChallenge(NULL), partnerChallenge, response);

    PreAuthenticatePlayerPartner(0, authToken, response, DWCi_PersAuthCallback, NULL);
    DWCi_AddPersCallbackLevel();

    return TRUE;
}

void DWC_LogoutFromStorageServer(void) {
    if (s_bInPersistThink == TRUE) {
        s_bNeedCloseStatsConnection = TRUE;
    }
    else {
        CloseStatsConnection();
    }

    stPersState = DWC_PERS_STATE_INIT;

    if (stpFriendCnt != NULL) {
        stpFriendCnt->persCallbackLevel = 0;
    }
}

BOOL DWC_SetStorageServerCallback(DWCSaveToServerCallback saveCallback, DWCLoadFromServerCallback loadCallback) {
    if (!stpFriendCnt) {
        return FALSE;
    }

    stpFriendCnt->saveCallback = saveCallback;
    stpFriendCnt->loadCallback = loadCallback;

    return TRUE;
}

BOOL DWC_SavePublicDataAsync(char *keyvalues, void *param) {
    if ((stPersState != DWC_PERS_STATE_CONNECTED) || DWCi_IsError() || !stpFriendCnt) {
        return FALSE;
    }

    DWCi_SetPersistDataValuesAsync(stpFriendCnt->profileID, pd_public_rw, keyvalues, param);

    return TRUE;
}

BOOL DWC_SavePrivateDataAsync(char *keyvalues, void *param) {
    if ((stPersState != DWC_PERS_STATE_CONNECTED) || DWCi_IsError() || !stpFriendCnt) {
        return FALSE;
    }

    DWCi_SetPersistDataValuesAsync(stpFriendCnt->profileID, pd_private_rw, keyvalues, param);

    return TRUE;
}

BOOL DWC_LoadOwnPublicDataAsync(char *keys, void *param) {
    if ((stPersState != DWC_PERS_STATE_CONNECTED) || DWCi_IsError() || !stpFriendCnt) {
        return FALSE;
    }

    DWCi_GetPersistDataValuesAsync(stpFriendCnt->profileID, pd_public_rw, keys, param);

    return TRUE;
}

BOOL DWC_LoadOwnPrivateDataAsync(char *keys, void *param) {
    if ((stPersState != DWC_PERS_STATE_CONNECTED) || DWCi_IsError() || !stpFriendCnt) {
        return FALSE;
    }

    DWCi_GetPersistDataValuesAsync(stpFriendCnt->profileID, pd_private_rw, keys, param);

    return TRUE;
}

BOOL DWC_LoadOthersDataAsync(char *keys, int index, void *param) {
    if ((stPersState != DWC_PERS_STATE_CONNECTED) || DWCi_IsError() || !stpFriendCnt || !DWCi_GetProfileIDFromList(index)) {
        return FALSE;
    }

    DWCi_GetPersistDataValuesAsync(DWCi_GetProfileIDFromList(index), pd_public_rw, keys, param);

    return TRUE;
}

void DWCi_FriendInit(DWCFriendControl *friendcnt, GPConnection *pGpObj, const u16 *playerName, DWCFriendData *friendList, int friendListLen) {
    SDK_ASSERT(friendcnt);

    stpFriendCnt = friendcnt;
    stpFriendCnt->state = DWC_FRIEND_STATE_INIT;
    stpFriendCnt->pGpObj = pGpObj;
    stpFriendCnt->gpProcessCount = 0;
    stpFriendCnt->lastGpProcess = 0;
    stpFriendCnt->friendListLen = friendListLen;
    stpFriendCnt->friendList = friendList;
    stpFriendCnt->buddyUpdateIdx = 0;
    stpFriendCnt->friendListChanged = 0;
    stpFriendCnt->buddyUpdateState = DWC_BUDDY_UPDATE_STATE_WAIT;
    stpFriendCnt->svUpdateComplete = 0;
    stpFriendCnt->persCallbackLevel = 0;
    stpFriendCnt->profileID = 0;
    stpFriendCnt->playerName = playerName;
    stpFriendCnt->updateCallback = NULL;
    stpFriendCnt->updateParam = NULL;
    stpFriendCnt->statusCallback = NULL;
    stpFriendCnt->statusParam = NULL;
    stpFriendCnt->deleteCallback = NULL;
    stpFriendCnt->deleteParam = NULL;
    stpFriendCnt->buddyCallback = NULL;
    stpFriendCnt->buddyParam = NULL;
    stpFriendCnt->persLoginCallback = NULL;
    stpFriendCnt->persLoginParam = NULL;
    stpFriendCnt->saveCallback = NULL;
    stpFriendCnt->loadCallback = NULL;
}

void DWCi_FriendProcess(void) {
    GPResult gpResult;

    if (!stpFriendCnt || DWCi_IsError()) {
        return;
    }
    else if (!stpFriendCnt->friendList) {
        if (stpFriendCnt->pGpObj && *stpFriendCnt->pGpObj) {
            gpResult = DWCi_GPProcess();
        }
        return;
    }

    if (DWCi_GetPersCallbackLevel() || IsStatsConnected()) {
        s_bInPersistThink = TRUE;
        s_bNeedCloseStatsConnection = FALSE;

        if (!PersistThink()) {
            s_bInPersistThink = FALSE;
            DWC_Printf(DWC_REPORTFLAG_WARNING, "Connection to the stats server was lost\n");
#if 0
            DWCi_StopFriendProcess(DWC_ERROR_NETWORK, DWC_ECODE_SEQ_FRIEND + DWC_ECODE_GS_PERS + DWC_ECODE_TYPE_NETWORK);
            return;
#endif
        }

        s_bInPersistThink = FALSE;

        if (s_bNeedCloseStatsConnection == TRUE) {
            s_bNeedCloseStatsConnection = FALSE;
            CloseStatsConnection();
        }
    }

    if (stpFriendCnt->pGpObj && *stpFriendCnt->pGpObj) {
        gpResult = DWCi_GPProcess();

        if (gpResult != GP_NO_ERROR) {
            return;
        }

        if (stpFriendCnt->state == DWC_FRIEND_STATE_INIT) {
            return;
        }

        if (stpFriendCnt->friendList && (stpFriendCnt->buddyUpdateState != DWC_BUDDY_UPDATE_STATE_COMPLETE) && (stpFriendCnt->gpProcessCount > DWC_FRIEND_UPDATE_WAIT_COUNT)) {
            if ((stpFriendCnt->buddyUpdateState == DWC_BUDDY_UPDATE_STATE_WAIT) || (stpFriendCnt->buddyUpdateState == DWC_BUDDY_UPDATE_STATE_CHECK)) {
                DWCi_UpdateFriendReq(stpFriendCnt->friendList, stpFriendCnt->friendListLen);
            }

            if (stpFriendCnt->buddyUpdateIdx >= stpFriendCnt->friendListLen) {
                stpFriendCnt->buddyUpdateState = DWC_BUDDY_UPDATE_STATE_COMPLETE;
                stpFriendCnt->svUpdateComplete++;
            }
        }
    }

    if (stpFriendCnt->svUpdateComplete >= 2) {
        stpFriendCnt->svUpdateComplete = 0;
        DWCi_EndUpdateServers();
    }
}

void DWCi_UpdateServersAsync(const char *authToken, const char *partnerChallenge, DWCUpdateServersCallback updateCallback, void *updateParam, DWCFriendStatusCallback statusCallback, void *statusParam, DWCDeleteFriendListCallback deleteCallback, void *deleteParam) {
#if 0
    char response[33];
    int persResult;
    int i;
#else
#pragma unused(authToken)
#pragma unused(partnerChallenge)
#endif

    SDK_ASSERT(updateCallback);

    stpFriendCnt->updateCallback = updateCallback;
    stpFriendCnt->updateParam = updateParam;
    stpFriendCnt->statusCallback = statusCallback;
    stpFriendCnt->statusParam = statusParam;
    stpFriendCnt->deleteCallback = deleteCallback;
    stpFriendCnt->deleteParam = deleteParam;
    stpFriendCnt->friendListChanged = 0;
    stpFriendCnt->buddyUpdateState = DWC_BUDDY_UPDATE_STATE_WAIT;
    stpFriendCnt->svUpdateComplete = 0;
    stpFriendCnt->buddyUpdateIdx = 0;
    stpFriendCnt->state = DWC_FRIEND_STATE_PERS_LOGIN;

    if (stpFriendCnt->friendList == NULL) {
        stpFriendCnt->svUpdateComplete++;
    }

#if 0
    if (stpFriendCnt->playerName[0] != '\0') {
        for (i = 0; i < DWC_DNS_ERROR_RETRY_MAX; i++) {
            persResult = InitStatsConnection(0);

            if (!persResult) {
                break;
            }

            if ((persResult != GE_NODNS) || (i == DWC_DNS_ERROR_RETRY_MAX - 1)) {
                DWCi_HandlePersError(persResult);
                return;
            }
        }

        (void)GenerateAuth(GetChallenge(NULL), partnerChallenge, response);
        PreAuthenticatePlayerPartner(0, authToken, response, DWCi_PersAuthCallback, NULL);

        DWCi_AddPersCallbackLevel();
    }
    else {
#endif
    stpFriendCnt->svUpdateComplete++;
#if 0
}
#endif
}

void DWCi_StopFriendProcess(DWCError error, int errorCode) {
    if (!stpFriendCnt || (error == DWC_ERROR_NONE)) {
        return;
    }

    DWCi_SetError(error, errorCode);

    if ((stpFriendCnt->state != DWC_FRIEND_STATE_INIT) && (stpFriendCnt->state != DWC_FRIEND_STATE_LOGON)) {
        stpFriendCnt->updateCallback(error, stpFriendCnt->friendListChanged, stpFriendCnt->updateParam);
    }

    DWCi_CloseFriendProcess();
}

void DWCi_GPRecvBuddyRequestCallback(GPConnection *connection, GPRecvBuddyRequestArg *arg, void *param) {
#pragma unused(param)

    DWC_Printf(DWC_REPORTFLAG_UPDATE_SV, "Received buddy request from %u\n", arg->profile);

    if (!stpFriendCnt->friendList) {
        return;
    }

    DWC_Printf(DWC_REPORTFLAG_UPDATE_SV, "Begin to search gpInfo.\n");
    gpGetInfo(connection, arg->profile, GP_DONT_CHECK_CACHE, GP_NON_BLOCKING, (GPCallback)DWCi_GPGetInfoCallback_RecvBuddyRequest, NULL);
}

BOOL DWCi_GPRecvBuddyAuthCallback(GPConnection *connection, GPRecvBuddyMessageArg *arg, void *param) {
#pragma unused(param)
    char *message = arg->message;

    if (!strcmp(message, "I have authorized your request to add me to your list")) {
        DWC_Printf(DWC_REPORTFLAG_UPDATE_SV, "Received buddy authenticated message from %u.\n", arg->profile);
        DWC_Printf(DWC_REPORTFLAG_UPDATE_SV, "Begin to search gpInfo.\n");
        gpGetInfo(connection, arg->profile, GP_DONT_CHECK_CACHE, GP_NON_BLOCKING, (GPCallback)DWCi_GPGetInfoCallback_RecvAuthMessage, NULL);

        return TRUE;
    }

    return FALSE;
}

void DWCi_GPRecvBuddyStatusCallback(GPConnection *connection, GPRecvBuddyStatusArg *arg, void *param) {
#pragma unused(param)
    int friendIdx;
    GPBuddyStatus status;

    DWC_Printf(DWC_REPORTFLAG_UPDATE_SV, "RECV update friend status. p:%d\n", arg->profile);

    if (stpFriendCnt->statusCallback) {
        friendIdx = DWCi_GetFriendListIndex(arg->profile);

        if (friendIdx == -1) {
            return;
        }

        (void)gpGetBuddyStatus(connection, arg->index, &status);
        stpFriendCnt->statusCallback(friendIdx, (u8)status.status, status.locationString, stpFriendCnt->statusParam);
    }
}

DWCFriendData*DWCi_GetFriendList(void) {
    if (stpFriendCnt) {
        return stpFriendCnt->friendList;
    }
    else {
        return NULL;
    }
}

int DWCi_GetFriendListLen(void) {
    if (stpFriendCnt) {
        return stpFriendCnt->friendListLen;
    }
    else {
        return 0;
    }
}

int DWCi_GetProfileIDFromList(int index) {
    int profileID;

    if (stpFriendCnt->friendList == NULL) {
        return 0;
    }

    profileID = DWC_GetGsProfileId(DWCi_GetUserData(), &stpFriendCnt->friendList[index]);

    if (!profileID || (profileID == -1)) {
        return 0;
    }
    else {
        return profileID;
    }
}

int DWCi_GetFriendListIndex(int profileID) {
    int i;

    if (!stpFriendCnt || !profileID) {
        return -1;
    }

    for (i = 0; i < stpFriendCnt->friendListLen; i++) {
        if (DWCi_GetProfileIDFromList(i) == profileID) {
            return i;
        }
    }

    return -1;
}

void DWCi_InitGPProcessCount(void) {
    if (stpFriendCnt) {
        stpFriendCnt->gpProcessCount = 0;
        stpFriendCnt->lastGpProcess = OS_GetTick();
    }
}

GPResult DWCi_SetGPStatus(int status, const char *statusString, const char *locationString) {
#if 1
    if ((stpFriendCnt == NULL) || !DWCi_CheckLogin()) {
        return GP_NO_ERROR;
    }
#else
    if ((stpFriendCnt == NULL) || (stpFriendCnt->pGpObj == NULL)) {
        return GP_NO_ERROR;
    }
#endif

    if (status == DWC_GP_STATUS_NO_CHANGE) {
        status = ((GPIConnection *)*stpFriendCnt->pGpObj)->lastStatus;
    }
    else {
        DWC_Printf(DWC_REPORTFLAG_DEBUG, "Change GP status->status %d\n", status);
    }

    if (!statusString) {
        statusString = ((GPIConnection *)*stpFriendCnt->pGpObj)->lastStatusString;
    }
    else {
        DWC_Printf(DWC_REPORTFLAG_DEBUG, "Change GP status->statusString %s\n", statusString);
    }

    if (!locationString) {
        locationString = ((GPIConnection *)*stpFriendCnt->pGpObj)->lastLocationString;
    }
    else {
        DWC_Printf(DWC_REPORTFLAG_DEBUG, "Change GP status->locationString %s\n", locationString);
    }

    return gpSetStatus(stpFriendCnt->pGpObj, (GPEnum)status, statusString, locationString);
}

BOOL DWCi_GetGPStatus(int *status, char *statusString, char *locationString) {
    if ((stpFriendCnt == NULL) || (*stpFriendCnt->pGpObj == NULL)) {
        return FALSE;
    }

    *status = ((GPIConnection *)*stpFriendCnt->pGpObj)->lastStatus;
    strcpy(statusString, ((GPIConnection *)*stpFriendCnt->pGpObj)->lastStatusString);
    strcpy(locationString, ((GPIConnection *)*stpFriendCnt->pGpObj)->lastLocationString);

    return TRUE;
}

void DWCi_CallBuddyFriendCallback(int index) {
    if (stpFriendCnt->buddyCallback && (stpFriendCnt->state != DWC_FRIEND_STATE_PERS_LOGIN)) {
        stpFriendCnt->buddyCallback(index, stpFriendCnt->buddyParam);
    }

    if (stpFriendCnt->statusCallback) {
        u8 st;
        GPBuddyStatus status;

        st = DWC_GetFriendStatus(&stpFriendCnt->friendList[index], status.locationString);
        stpFriendCnt->statusCallback(index, st, status.locationString, stpFriendCnt->statusParam);
    }
}

void DWCi_ShutdownFriend(void) {
    stpFriendCnt = NULL;
}

static GPResult DWCi_GPProcess(void) {
    GPResult result = GP_NO_ERROR;

    if (OS_TicksToMilliSeconds(OS_GetTick() - stpFriendCnt->lastGpProcess) >= DWC_GP_PROCESS_INTERVAL) {
        stpFriendCnt->gpProcessCount++;

#if defined(DWC_ENABLE_KEEPALIVE_TO_GPSERVER)
        if ((stpFriendCnt->gpProcessCount % DWC_GP_KEEP_ALIVE_COUNT) == 0) {
            DWC_Printf(DWC_REPORTFLAG_DEBUG, "GP:keep alive\n");
            (void)gpSetInfoi(stpFriendCnt->pGpObj, GP_INTERESTS1, 0);
        }
#endif
        result = gpProcess(stpFriendCnt->pGpObj);
        stpFriendCnt->lastGpProcess = OS_GetTick();
    }

    return result;
}

static void DWCi_CloseFriendProcess(void) {
    if (!stpFriendCnt) {
        return;
    }

#if 0
    CloseStatsConnection();
#endif

    stpFriendCnt->state = DWC_FRIEND_STATE_INIT;
    stpFriendCnt->buddyUpdateState = DWC_BUDDY_UPDATE_STATE_WAIT;
    stpFriendCnt->svUpdateComplete = 0;

}

static void DWCi_UpdateFriendReq(DWCFriendData friendList[], int friendListLen) {
    char userName[21];
    int numBuddy;
    int profileID;
    int i, j;
    GPBuddyStatus status;
    GPResult gpResult;

    if (stpFriendCnt->buddyUpdateState == DWC_BUDDY_UPDATE_STATE_WAIT) {
        gpResult = gpGetNumBuddies(stpFriendCnt->pGpObj, &numBuddy);

        (void)DWCi_HandleGPError(gpResult);
        DWC_Printf(DWC_REPORTFLAG_UPDATE_SV, "gpGetNumBuddies -> %d\n", numBuddy);

        for (i = 0; i < numBuddy; i++) {
            gpResult = gpGetBuddyStatus(stpFriendCnt->pGpObj, i, &status);
            (void)DWCi_HandleGPError(gpResult);

            for (j = 0; j < friendListLen; j++) {
                if (DWCi_GetProfileIDFromList(j) == status.profile) {
                    if (!DWC_IsBuddyFriendData(&friendList[j])) {
                        DWC_SetGsProfileId(&friendList[j], status.profile);
                        DWCi_SetBuddyFriendData(&friendList[j]);

                        stpFriendCnt->friendListChanged = 1;
                    }
                    break;
                }
            }

            if (j == friendListLen) {
                DWC_Printf(DWC_REPORTFLAG_UPDATE_SV, "Deleted buddy %u\n", status.profile);

                gpResult = gpDeleteBuddy(stpFriendCnt->pGpObj, status.profile);
                (void)DWCi_HandleGPError(gpResult);

                numBuddy--;
                i--;
            }
        }

        stpFriendCnt->buddyUpdateState = DWC_BUDDY_UPDATE_STATE_CHECK;
    }

    for ( ; stpFriendCnt->buddyUpdateIdx < friendListLen; stpFriendCnt->buddyUpdateIdx++) {
        profileID = DWCi_GetProfileIDFromList(stpFriendCnt->buddyUpdateIdx);

        if (profileID) {
            if (DWCi_RefreshFriendListForth(friendList, stpFriendCnt->buddyUpdateIdx, profileID)) {
                continue;
            }

            gpResult = gpGetBuddyIndex(stpFriendCnt->pGpObj, profileID, &i);
            (void)DWCi_HandleGPError(gpResult);

            if (i == -1) {
                (void)DWCi_GPSendBuddyRequest(profileID);

#ifndef SDK_FINALROM
                if (DWC_IsBuddyFriendData(&friendList[stpFriendCnt->buddyUpdateIdx])) {
                    DWC_Printf(DWC_REPORTFLAG_DEBUG, "Local only friend\n");
                }
#endif
            }
        }
        else if (DWC_GetGsProfileId(DWCi_GetUserData(), &friendList[stpFriendCnt->buddyUpdateIdx]) == -1) {
            DWC_LoginIdToUserName(DWCi_GetUserData(), &friendList[stpFriendCnt->buddyUpdateIdx], userName);
            gpProfileSearch(stpFriendCnt->pGpObj, NULL, NULL, NULL, NULL, userName, NULL, GP_NON_BLOCKING, (GPCallback)DWCi_GPProfileSearchCallback, (void *)stpFriendCnt->buddyUpdateIdx);
            DWC_Printf(DWC_REPORTFLAG_UPDATE_SV, "Called gpProfileSearch().\n");

            stpFriendCnt->buddyUpdateState = DWC_BUDDY_UPDATE_STATE_PSEARCH;
            break;
        }
    }

    return;
}

static void DWCi_EndUpdateServers(void) {
    stpFriendCnt->updateCallback(DWC_ERROR_NONE, stpFriendCnt->friendListChanged, stpFriendCnt->updateParam);
    stpFriendCnt->state = DWC_FRIEND_STATE_LOGON;
}

static void DWCi_DeleteFriendFromList(DWCFriendData friendData[], int deleteIndex, int otherIndex) {
    if (stpFriendCnt) {
        MI_CpuClear8(&friendData[deleteIndex], sizeof(DWCFriendData));

        if (stpFriendCnt->deleteCallback) {
            stpFriendCnt->deleteCallback(deleteIndex, otherIndex, stpFriendCnt->deleteParam);
        }
    }
}

static BOOL DWCi_RefreshFriendListForth(DWCFriendData friendList[], int index, int profileID) {
    int pid_i;
    int i;

    for (i = 0; i < index; i++) {
        pid_i = DWCi_GetProfileIDFromList(i);

        if (pid_i && (pid_i == profileID)) {
            DWC_Printf(DWC_REPORTFLAG_UPDATE_SV, "Found same friend in the list [%d] & [%d], %d\n", i, index, DWC_GetFriendDataType(&friendList[i]));

            if (DWC_IsBuddyFriendData(&friendList[index]) && !DWC_IsBuddyFriendData(&friendList[i])) {
                DWCi_DeleteFriendFromList(friendList, i, index);
            }
            else {
                DWCi_DeleteFriendFromList(friendList, index, i);
            }

            stpFriendCnt->friendListChanged = 1;
            return TRUE;
        }
    }

    return FALSE;
}

static int DWCi_RefreshFriendListAll(DWCFriendData friendList[], int friendListLen, int profileID) {
    int index = -1;
    int pid_i;
    int i, j;

    for (i = 0; i < friendListLen; i++) {
        pid_i = DWCi_GetProfileIDFromList(i);

        if (pid_i == 0) {
            continue;
        }

        if (pid_i == profileID) {
            index = i;
        }

        for (j = i + 1; j < friendListLen; j++) {
            if (pid_i == DWCi_GetProfileIDFromList(j)) {
                if ((DWC_GetFriendDataType(&friendList[i]) == DWC_FRIENDDATA_FRIEND_KEY) && (DWC_GetFriendDataType(&friendList[j]) == DWC_FRIENDDATA_GS_PROFILE_ID)) {
                    DWC_SetGsProfileId(&friendList[i], pid_i);
                }

                if (DWC_IsBuddyFriendData(&friendList[j])) {
                    DWCi_SetBuddyFriendData(&friendList[i]);
                }

                DWC_Printf(DWC_REPORTFLAG_UPDATE_SV, "Found same friend in the list [%d] & [%d], %d\n", i, j, DWC_GetFriendDataType(&friendList[i]));
                DWCi_DeleteFriendFromList(friendList, j, i);

                stpFriendCnt->friendListChanged = 1;
            }
        }
    }

    return index;
}

static GPResult DWCi_GPSendBuddyRequest(int profileID) {
    GPResult gpResult;

    gpResult = gpSendBuddyRequest(stpFriendCnt->pGpObj, profileID, "");
    (void)DWCi_HandleGPError(gpResult);

    DWC_Printf(DWC_REPORTFLAG_UPDATE_SV, "Send buddy request to %u\n", profileID);

    return gpResult;
}

static BOOL DWCi_GetFriendBuddyStatus(const DWCFriendData *friendData, GPBuddyStatus *status) {
    u8 ret;
    int buddyIdx = 0;
    int profileid;

    SDK_ASSERT(friendData);
    SDK_ASSERT(status);

    if (!stpFriendCnt || !DWCi_CheckLogin()) {
        return FALSE;
    }

    profileid = DWC_GetGsProfileId(DWCi_GetUserData(), friendData);

    if ((profileid > 0) && gpGetBuddyIndex(stpFriendCnt->pGpObj, profileid, &buddyIdx)) {
        ret = FALSE;
    }
    else if ((profileid <= 0) || (buddyIdx == -1)) {
        ret = FALSE;
    }
    else {
        if (gpGetBuddyStatus(stpFriendCnt->pGpObj, buddyIdx, status)) {
            ret = FALSE;
        }
        else {
            ret = TRUE;
        }
    }

    return ret;
}

static GPResult DWCi_HandleGPError(GPResult result) {
    int errorCode;
    DWCError dwcError;

    if (result == GP_NO_ERROR) {
        return GP_NO_ERROR;
    }

    DWC_Printf(DWC_REPORTFLAG_ERROR, "Friend, GP error %d\n", result);

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

    errorCode += DWC_ECODE_SEQ_FRIEND + DWC_ECODE_GS_GP;
    DWCi_StopFriendProcess(dwcError, errorCode);

    return result;
}

static int DWCi_HandlePersError(int error) {
    int errorCode;
    DWCError dwcError;

    if (error == GE_NOERROR) {
        return GE_NOERROR;
    }

    DWC_Printf(DWC_REPORTFLAG_ERROR, "Friend, persistent error %d\n", error);

    switch (error) {
    case GE_NOSOCKET:
        dwcError = DWC_ERROR_NETWORK;
        errorCode = DWC_ECODE_TYPE_SOCKET;
        break;
    case GE_NODNS:
        dwcError = DWC_ERROR_NETWORK;
        errorCode = DWC_ECODE_TYPE_DNS;
        break;
    case GE_NOCONNECT:
        dwcError = DWC_ERROR_NETWORK;
        errorCode = DWC_ECODE_TYPE_SERVER;
        break;
    case GE_DATAERROR:
        dwcError = DWC_ERROR_NETWORK;
        errorCode = DWC_ECODE_TYPE_DATA;
        break;
    case GE_TIMEDOUT:
        dwcError = DWC_ERROR_NETWORK;
        errorCode = DWC_ECODE_TYPE_TIMEOUT;
        break;
    }

#if 0
    errorCode += DWC_ECODE_SEQ_FRIEND + DWC_ECODE_GS_PERS;
    DWCi_StopFriendProcess(dwcError, errorCode);
#else
    errorCode += DWC_ECODE_SEQ_ETC + DWC_ECODE_GS_PERS;

    if (stPersState == DWC_PERS_STATE_LOGIN) {
        DWCi_StopPersLogin(dwcError, errorCode);
    }
#endif

    return error;
}

static void DWCi_GPProfileSearchCallback(GPConnection *connection, GPProfileSearchResponseArg *arg, void *param) {
    int idx;
    GPResult gpResult;
    int friendIdx = (int)param;

    DWC_Printf(DWC_REPORTFLAG_DEBUG, "ProfileSearch: num:%d m:%x\n", arg->numMatches, arg->more);

    if ((arg->result == GP_NO_ERROR) && arg->numMatches && (DWC_GetFriendDataType(&stpFriendCnt->friendList[friendIdx]) != DWC_FRIENDDATA_NODATA)) {
        int match_index;

        if (arg->numMatches > 1) {
            DWC_Printf(DWC_REPORTFLAG_UPDATE_SV, "Happned to find %d profiles.\n", arg->numMatches);
        }

        if (stpFriendCnt->state == DWC_FRIEND_STATE_PERS_LOGIN) {
            for (match_index = 0 ; match_index < arg->numMatches ; ++match_index) {
                if (DWCi_RefreshFriendListForth(stpFriendCnt->friendList, friendIdx, arg->matches[match_index].profile)) {
                    stpFriendCnt->buddyUpdateIdx++;
                    stpFriendCnt->buddyUpdateState = DWC_BUDDY_UPDATE_STATE_CHECK;
                    arg->more = GP_DONE;
                    return;
                }
            }

            for (match_index = 0 ; match_index < arg->numMatches ; ++match_index) {
                gpResult = gpGetBuddyIndex(connection, arg->matches[match_index].profile, &idx);
                (void)DWCi_HandleGPError(gpResult);

                if (idx == -1) {
                    (void)DWCi_GPSendBuddyRequest(arg->matches[match_index].profile);
                }
                else {
                    DWC_SetGsProfileId(&stpFriendCnt->friendList[friendIdx], arg->matches->profile);
                    DWCi_SetBuddyFriendData(&stpFriendCnt->friendList[friendIdx]);
                    DWCi_CallBuddyFriendCallback(friendIdx);

                    stpFriendCnt->buddyUpdateIdx++;
                    stpFriendCnt->buddyUpdateState = DWC_BUDDY_UPDATE_STATE_CHECK;
                    arg->more = GP_DONE;
                    stpFriendCnt->friendListChanged = 1;

                    return;
                }
            }

            if (arg->more != GP_MORE) {
                stpFriendCnt->buddyUpdateIdx++;
                stpFriendCnt->buddyUpdateState = DWC_BUDDY_UPDATE_STATE_CHECK;
            }
            else {
                DWC_Printf(DWC_REPORTFLAG_DEBUG, "more profiles will come...\n");
            }
        }
    }
    else if (arg->result) {
        if (DWCi_HandleGPError(arg->result)) {
            return;
        }
    }
    else if ((stpFriendCnt->state == DWC_FRIEND_STATE_PERS_LOGIN) || (DWC_GetFriendDataType(&stpFriendCnt->friendList[friendIdx]) == DWC_FRIENDDATA_NODATA)) {
        stpFriendCnt->buddyUpdateIdx++;
        stpFriendCnt->buddyUpdateState = DWC_BUDDY_UPDATE_STATE_CHECK;
    }
}

static void DWCi_GPGetInfoCallback_RecvBuddyRequest(GPConnection *connection, GPGetInfoResponseArg *arg, void *param) {
#pragma unused(param)
    char userName[21];
    char gamecode_str[5];
    unsigned int gamecode;
    GPResult gpResult;
    int i;
    BOOL confirm = FALSE;

    if (arg->result != GP_NO_ERROR) {
        DWC_Printf(DWC_REPORTFLAG_LOGIN, " ERROR: GetInfo Req. why??? : %d\n", arg->result);

        return;
    }

    DWC_Printf(DWC_REPORTFLAG_DEBUG, "GetInfo Req: profileID %u, lastname '%s'.\n", arg->profile, arg->lastname);

    for (i = 0; i < stpFriendCnt->friendListLen; i++) {
        if (DWC_GetFriendDataType(&stpFriendCnt->friendList[i]) == DWC_FRIENDDATA_LOGIN_ID) {
            DWC_LoginIdToUserName(DWCi_GetUserData(), &stpFriendCnt->friendList[i], userName);

            if (strcmp(userName, arg->lastname) == 0) {
                gpResult = gpAuthBuddyRequest(connection, arg->profile);
                DWC_SetGsProfileId(&stpFriendCnt->friendList[i], arg->profile);
                confirm = TRUE;
                DWC_Printf(DWC_REPORTFLAG_UPDATE_SV, "Auth buddy request from %u, friend[%d]mp.\n", arg->profile, i);
            }
        }
        else if ((DWC_GetFriendDataType(&stpFriendCnt->friendList[i]) == DWC_FRIENDDATA_GS_PROFILE_ID) || (DWC_GetFriendDataType(&stpFriendCnt->friendList[i]) == DWC_FRIENDDATA_FRIEND_KEY)) {
            gamecode = DWCi_GetUserData()->gamecode;
            OS_SNPrintf(gamecode_str, 5, "%c%c%c%c", (u8)(gamecode >> 24), (u8)(gamecode >> 16), (u8)(gamecode >> 8), (u8)gamecode);

            if ((DWC_GetGsProfileId(DWCi_GetUserData(), &stpFriendCnt->friendList[i]) == arg->profile) && (memcmp(gamecode_str, arg->lastname + DWC_ACC_USERNAME_GSBRCD_OFFSET, 4) == 0)) {
                gpResult = gpAuthBuddyRequest(connection, arg->profile);
                confirm = TRUE;
                DWC_Printf(DWC_REPORTFLAG_UPDATE_SV, "Auth buddy request from %u, friend[%d]gs.\n", arg->profile, i);
            }
        }
    }

    if (confirm) {
        (void)DWCi_GPSendBuddyRequest(arg->profile);
    }
    else {
        gpDenyBuddyRequest(connection, arg->profile);
        DWC_Printf(DWC_REPORTFLAG_UPDATE_SV, "Denied buddy request from %u.\n", arg->profile);
    }
}

static void DWCi_GPGetInfoCallback_RecvAuthMessage(GPConnection *connection, GPGetInfoResponseArg *arg, void *param) {
#pragma unused(connection)
#pragma unused(param)
    char userName[21];
    int index;
    int i;
    BOOL listChanged = FALSE;
    BOOL alreadyBuddy = FALSE;

    if (arg->result != GP_NO_ERROR) {
        DWC_Printf(DWC_REPORTFLAG_LOGIN, " ERROR: GetInfo Auth. why??? : %d\n", arg->result);

        return;
    }

    DWC_Printf(DWC_REPORTFLAG_DEBUG, "GetInfo Auth: profileID %u, lastname '%s'.\n", arg->profile, arg->lastname);

    for (i = 0; i < stpFriendCnt->friendListLen; i++) {
        if (DWC_GetFriendDataType(&stpFriendCnt->friendList[i]) == DWC_FRIENDDATA_LOGIN_ID) {
            DWC_LoginIdToUserName(DWCi_GetUserData(), &stpFriendCnt->friendList[i], userName);

            if (strcmp(userName, arg->lastname) == 0) {
                DWC_SetGsProfileId(&stpFriendCnt->friendList[i], arg->profile);
                DWCi_SetBuddyFriendData(&stpFriendCnt->friendList[i]);

                listChanged = TRUE;

                DWC_Printf(DWC_REPORTFLAG_UPDATE_SV, "Established buddy with %u, friend[%d]mp.\n", arg->profile, i);

            }
        }
        else if ((DWC_GetFriendDataType(&stpFriendCnt->friendList[i]) == DWC_FRIENDDATA_GS_PROFILE_ID) || (DWC_GetFriendDataType(&stpFriendCnt->friendList[i]) == DWC_FRIENDDATA_FRIEND_KEY)) {
            if (DWC_GetGsProfileId(DWCi_GetUserData(), &stpFriendCnt->friendList[i]) == arg->profile) {
                if (DWC_IsBuddyFriendData(&stpFriendCnt->friendList[i]) == TRUE) {
                    DWC_Printf(DWC_REPORTFLAG_UPDATE_SV, "This profile is already my friend[%d].\n", i);
                    alreadyBuddy = TRUE;
                }
                else {
                    DWC_SetGsProfileId(&stpFriendCnt->friendList[i], arg->profile);
                    DWCi_SetBuddyFriendData(&stpFriendCnt->friendList[i]);
                    listChanged = TRUE;
                    DWC_Printf(DWC_REPORTFLAG_UPDATE_SV, "Established buddy with %u, friend[%d]gs.\n", arg->profile, i);
                }
            }
        }
    }

    if (listChanged) {
        index = DWCi_RefreshFriendListAll(stpFriendCnt->friendList, stpFriendCnt->friendListLen, arg->profile);

        if (!alreadyBuddy) {
            DWCi_CallBuddyFriendCallback(index);
        }

        stpFriendCnt->friendListChanged = 1;
    }
    else {
        if (!alreadyBuddy) {
            DWC_Printf(DWC_REPORTFLAG_UPDATE_SV, "Not Established buddy with %u.\n", arg->profile);
        }
    }
}

static void DWCi_StopPersLogin(DWCError error, int errorCode) {
    if (!stpFriendCnt || (error == DWC_ERROR_NONE)) {
        return;
    }

    DWCi_SetError(error, errorCode);

    if (IsStatsConnected()) {
        DWC_LogoutFromStorageServer();
    }

    if (stpFriendCnt->persLoginCallback != NULL) {
        stpFriendCnt->persLoginCallback(error, stpFriendCnt->persLoginParam);
    }
}

static void DWCi_SetPersistDataValuesAsync(int profileID, persisttype_t type, gsi_char *keyvalues, void *param) {
    DWCi_AddPersCallbackLevel();
    SetPersistDataValues(0, profileID, type, 0, keyvalues, DWCi_PersDataSaveCallback, param);
}

static void DWCi_GetPersistDataValuesAsync(int profileID, persisttype_t type, gsi_char *keys, void *param) {
    DWCi_AddPersCallbackLevel();
    GetPersistDataValues(0, profileID, type, 0, keys, DWCi_PersDataCallback, param);
}

static void DWCi_PersAuthCallback(int localid, int profileid, int authenticated, gsi_char *errmsg, void *instance) {
#ifdef SDK_FINALROM
#pragma unused(errmsg)
#endif
#pragma unused(instance)
#if 0
    char tmpStr[DWC_MAX_PLAYER_NAME * 2];
#endif

    DWCi_SubPersCallbackLevel();

    if (!authenticated || (localid != 0)) {
        DWC_Printf(DWC_REPORTFLAG_ERROR, "Stats server authentication failed.\n");
        DWC_Printf(DWC_REPORTFLAG_ERROR, "%s\n", errmsg);

#if 0
        DWCi_StopFriendProcess(DWC_ERROR_NETWORK, DWC_ECODE_SEQ_FRIEND + DWC_ECODE_GS_PERS + DWC_ECODE_TYPE_STATS_AUTH);
#else
        DWCi_StopPersLogin(DWC_ERROR_NETWORK, DWC_ECODE_SEQ_ETC + DWC_ECODE_GS_PERS + DWC_ECODE_TYPE_STATS_AUTH);
#endif
        return;
    }
    else {
        DWC_Printf(DWC_REPORTFLAG_UPDATE_SV, "Stats server authentication succeeded.\n");
        stpFriendCnt->profileID = profileid;
#if 0
        (void)OS_SNPrintf(tmpStr, sizeof(tmpStr), "\\dwc_name\\%s", stpFriendCnt->playerName);
        DWCi_SetPersistDataValuesAsync(stpFriendCnt->profileID, pd_public_rw, tmpStr, (void *)DWC_PERS_KEY_ID_PLAYER_NAME);
#else
        stPersState = DWC_PERS_STATE_CONNECTED;

        if (stpFriendCnt->persLoginCallback != NULL) {
            stpFriendCnt->persLoginCallback(DWC_ERROR_NONE, stpFriendCnt->persLoginParam);
        }
#endif
    }
}

static void DWCi_PersDataCallback(int localid, int profileid, persisttype_t type, int index, int success, time_t modified, char *data, int len, void *instance) {
#pragma unused(localid)
#pragma unused(type)
#pragma unused(index)
#pragma unused(modified)
    BOOL result;

    DWCi_SubPersCallbackLevel();

    if (success) {
        if (len == 0) {
            DWC_Printf(DWC_REPORTFLAG_WARNING, "Persitent, Specified key is not exist.\n");

            result = FALSE;
        }
        else {
            DWC_Printf(DWC_REPORTFLAG_DEBUG, "Loaded data from persistent server. -> %s\n", data);
            result = TRUE;
        }

        if (stpFriendCnt->loadCallback) {
            stpFriendCnt->loadCallback(result, DWCi_GetFriendListIndex(profileid), data, len, instance);
        }
    }
    else {
        DWC_Printf(DWC_REPORTFLAG_ERROR, "Failed to load persistent data.\n");

#if 0
        DWCi_StopFriendProcess(DWC_ERROR_NETWORK, DWC_ECODE_SEQ_FRIEND + DWC_ECODE_GS_PERS + DWC_ECODE_TYPE_STATS_LOAD);
        return;
#endif

        if (stpFriendCnt->loadCallback) {
            stpFriendCnt->loadCallback(FALSE, DWCi_GetFriendListIndex(profileid), data, len, instance);
        }
    }
}

static void DWCi_PersDataSaveCallback(int localid, int profileid, persisttype_t type, int index, int success, time_t modified, void *instance) {
#pragma unused(localid)
#pragma unused(profileid)
#pragma unused(index)
#pragma unused(modified)
    u32 flag = (u32)instance;
    BOOL isPublic;

    DWCi_SubPersCallbackLevel();

#if 0
    if (flag == DWC_PERS_KEY_ID_PLAYER_NAME) {
        if (success) {
            if (stpFriendCnt->state == DWC_FRIEND_STATE_PERS_LOGIN) {
                DWC_Printf(DWC_REPORTFLAG_UPDATE_SV, "Saved player name to persistent server.\n");
                stpFriendCnt->svUpdateComplete++;
            }
            else {
                flag = 0;
            }
        }
        else {
            DWC_Printf(DWC_REPORTFLAG_ERROR, "Failed to save persistent data.\n");
            DWCi_StopFriendProcess(DWC_ERROR_NETWORK, DWC_ECODE_SEQ_FRIEND + DWC_ECODE_GS_PERS + DWC_ECODE_TYPE_STATS_SAVE);
        }
    }

    if (flag & DWC_PERS_KEY_ID_MASK) {
        return;
    }
#endif

    DWC_Printf(DWC_REPORTFLAG_DEBUG, "Saved data to persistent server.\n");

    if ((type == pd_public_ro) || (type == pd_public_rw)) {
        isPublic = TRUE;
    }
    else {
        isPublic = FALSE;
    }

    if (success) {
        if (stpFriendCnt->saveCallback) {
            stpFriendCnt->saveCallback(TRUE, isPublic, instance);
        }
    }
    else {
        DWC_Printf(DWC_REPORTFLAG_ERROR, "Failed to save persistent data.\n");

#if 0
        DWCi_StopFriendProcess(DWC_ERROR_NETWORK, DWC_ECODE_SEQ_FRIEND + DWC_ECODE_GS_PERS + DWC_ECODE_TYPE_STATS_SAVE);
#endif

        if (stpFriendCnt->saveCallback) {
            stpFriendCnt->saveCallback(FALSE, isPublic, instance);
        }
    }
}

static void DWCi_AddPersCallbackLevel(void) {
    if (stpFriendCnt->persCallbackLevel == 0xffffffff) {
        DWCi_StopFriendProcess(DWC_ERROR_FATAL, DWC_ECODE_SEQ_FRIEND + DWC_ECODE_TYPE_UNEXPECTED);

        return;
    }

    stpFriendCnt->persCallbackLevel++;
}

static void DWCi_SubPersCallbackLevel(void) {
    if (stpFriendCnt->persCallbackLevel == 0) {
        DWCi_StopFriendProcess(DWC_ERROR_FATAL, DWC_ECODE_SEQ_FRIEND + DWC_ECODE_TYPE_UNEXPECTED);

        return;
    }

    stpFriendCnt->persCallbackLevel--;
}

static u32 DWCi_GetPersCallbackLevel(void) {
    return stpFriendCnt->persCallbackLevel;
}
