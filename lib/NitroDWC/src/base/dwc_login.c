#include <nitro.h>
#include <base/dwc_base_gamespy.h>
#include <auth/dwc_auth.h>
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


typedef void (*DWCRemoteAuthCallback)(const char *authToken, const char *partnerChallenge, void *param);


static DWCLoginControl *stpLoginCnt = NULL;
static DWCRemoteAuthCallback stRemoteAuthCallback;
static void *pStRemoteAuthParam;


static void DWCi_CloseLogin(void);
static GPResult DWCi_HandleGPError(GPResult result);
static void DWCi_GPConnectCallback(GPConnection *pconnection, GPConnectResponseArg *arg, void *param);
static void DWCi_RemoteAuthCallback(const char *authToken, const char *partnerChallenge, void *param);
static void DWCi_GPConnect(const char *authToken, const char *partnerChallenge, GPCallback callback, DWCLoginState nextstate);
static void DWCi_GPGetInfo(void);
static void DWCi_GPGetInfoCallback(GPConnection *pconnection, GPGetInfoResponseArg *arg, void *param);
static void DWCi_RemoteLogin(DWCRemoteAuthCallback callback, void *param);
static void DWCi_RemoteLoginProcess(void);


void DWCi_LoginInit(DWCLoginControl *logcnt, DWCUserData *userdata, GPConnection *pGpObj, int productID, u32 gamecode, const u16 *playerName, DWCLoginCallback callback, void *param) {
    SDK_ASSERT(logcnt);

    DWC_Printf(DWC_REPORTFLAG_LOGIN, "Login Init\n");
    stpLoginCnt = logcnt;
    MI_CpuClear8(stpLoginCnt, sizeof(DWCLoginControl));

    stpLoginCnt->pGpObj = pGpObj;
    stpLoginCnt->state = DWC_LOGIN_STATE_INIT;
    stpLoginCnt->productID = productID;
    stpLoginCnt->gamecode = gamecode;
    stpLoginCnt->playerName = playerName;
    stpLoginCnt->callback = callback;
    stpLoginCnt->param = param;
    stpLoginCnt->userdata = userdata;

    DWC_Printf(DWC_REPORTFLAG_LOGIN, "******************************************\n");
    DWC_Printf(DWC_REPORTFLAG_LOGIN, "  pseudo    UserID   : %016llx\n", DWCi_Acc_GetUserId(&userdata->pseudo));
    DWC_Printf(DWC_REPORTFLAG_LOGIN, "  pseudo    PlayerID : %08x\n", DWCi_Acc_GetPlayerId(&userdata->pseudo));
    DWC_Printf(DWC_REPORTFLAG_LOGIN, "  authentic UserID   : %016llx\n", DWCi_Acc_GetUserId(&userdata->authentic));
    DWC_Printf(DWC_REPORTFLAG_LOGIN, "  authentic PlayerID : %08x\n", DWCi_Acc_GetPlayerId(&userdata->authentic));
    DWC_Printf(DWC_REPORTFLAG_LOGIN, "******************************************\n");

}

void DWCi_LoginAsync(void) {
    DWC_Printf(DWC_REPORTFLAG_LOGIN, "Login Async\n");
    DWCi_RemoteLogin(DWCi_RemoteAuthCallback, NULL);

    stpLoginCnt->state = DWC_LOGIN_STATE_REMOTE_AUTH;
    stpLoginCnt->connectFlag = FALSE;
}

void DWCi_LoginProcess(void) {
    if (!stpLoginCnt || DWCi_IsError()) {
        return;
    }

    switch (stpLoginCnt->state) {
    case DWC_LOGIN_STATE_REMOTE_AUTH:
        DWCi_RemoteLoginProcess();
        break;
    case DWC_LOGIN_STATE_CONNECTING:
    case DWC_LOGIN_STATE_GPGETINFO:
    case DWC_LOGIN_STATE_GPSETINFO:
        if (stpLoginCnt->pGpObj && *stpLoginCnt->pGpObj) {
            gpProcess(stpLoginCnt->pGpObj);
        }

        if (stpLoginCnt->connectFlag && (OS_TicksToMilliSeconds(OS_GetTick() - stpLoginCnt->connectTick) > DWC_LOGIN_GPCONNECT_TIMEOUT)) {
            DWCi_StopLogin(DWC_ERROR_NETWORK, DWC_ECODE_SEQ_LOGIN + DWC_ECODE_GS_GP + DWC_ECODE_TYPE_TIMEOUT);
            stpLoginCnt->connectFlag = FALSE;
        }
        break;
    case DWC_LOGIN_STATE_INIT:
    case DWC_LOGIN_STATE_CONNECTED:
    default:
        DWC_Printf(DWC_REPORTFLAG_DEBUG, "Ignore invalid login state.\n");
        break;
    }
}

DWCAccUserData*DWCi_GetUserData(void) {
    if (stpLoginCnt) {
        return stpLoginCnt->userdata;
    }
    else {
        return NULL;
    }
}

void DWCi_StopLogin(DWCError error, int errorCode) {
    if (!stpLoginCnt || (error == DWC_ERROR_NONE)) {
        return;
    }

    DWCi_SetError(error, errorCode);

    if (stpLoginCnt->callback != NULL) {
        stpLoginCnt->callback(error, 0, stpLoginCnt->param);
    }

    DWCi_CloseLogin();
}

void DWCi_ShutdownLogin(void) {
    if (stpLoginCnt->http != NULL) {
        DWC_Auth_Abort();
        DWC_Auth_Destroy();
        DWC_Free(DWC_ALLOCTYPE_AUTH, stpLoginCnt->http, 0);

        stpLoginCnt->http = NULL;
    }

    stpLoginCnt = NULL;
}

static void DWCi_CloseLogin(void) {
    if (!stpLoginCnt) {
        return;
    }

    stpLoginCnt->state = DWC_LOGIN_STATE_INIT;
    stpLoginCnt->connectFlag = FALSE;
}

static GPResult DWCi_HandleGPError(GPResult result) {
    int errorCode;
    DWCError dwcError;

    if (result == GP_NO_ERROR) {
        return GP_NO_ERROR;
    }

    DWC_Printf(DWC_REPORTFLAG_ERROR, "Login, GP error %d\n", result);

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

    errorCode += DWC_ECODE_SEQ_LOGIN + DWC_ECODE_GS_GP;
    DWCi_StopLogin(dwcError, errorCode);

    return result;
}

static void DWCi_GPConnectCallback(GPConnection *pconnection, GPConnectResponseArg *arg, void *param) {
#pragma unused( param )
    GPResult gpResult;

    DWC_Printf(DWC_REPORTFLAG_LOGIN, "Finished connecting to GP server, result = %d\n", arg->result);
    stpLoginCnt->connectFlag = FALSE;

    if (arg->result == GP_NO_ERROR) {
        stpLoginCnt->gpconnectresponsearg = *arg;

        if (stpLoginCnt->state == DWC_LOGIN_STATE_CONNECTING) {
            if (stpLoginCnt->userdata->gs_profile_id == arg->profile) {
                DWC_Printf(DWC_REPORTFLAG_LOGIN, "  gs profile id is valid.\n");

                stpLoginCnt->state = DWC_LOGIN_STATE_CONNECTED;
                gpResult = DWCi_SetGPStatus(DWC_STATUS_ONLINE, "", NULL);

                if (DWCi_HandleGPError(gpResult)) {
                    return;
                }

                stpLoginCnt->callback(DWC_ERROR_NONE, arg->profile, stpLoginCnt->param);

                if (!DWCi_GT2Startup()) {
                    if (DWCi_QR2Startup(arg->profile)) {
                        return;
                    }
                }
                else {
                    return;
                }
            }
            else {
                DWC_Printf(DWC_REPORTFLAG_LOGIN, "  gs profile id is invalid.\n");
                DWCi_StopLogin(DWC_ERROR_NETWORK, DWC_ECODE_SEQ_LOGIN);
            }
        }
        else if (stpLoginCnt->state == DWC_LOGIN_STATE_GPGETINFO) {
            gpResult = gpGetInfo(pconnection, arg->profile, GP_DONT_CHECK_CACHE, GP_NON_BLOCKING, (GPCallback)DWCi_GPGetInfoCallback, NULL);

            if (DWCi_HandleGPError(gpResult)) {
                return;
            }
        }
    }
    else {
        (void)DWCi_HandleGPError(arg->result);
    }
}

static void DWCi_RemoteAuthCallback(const char *authToken, const char *partnerChallenge, void *param) {
#pragma unused( param )

    DWCi_GPConnect(authToken, partnerChallenge, (GPCallback)DWCi_GPConnectCallback, DWC_LOGIN_STATE_CONNECTING);
}

static void DWCi_GPConnect(const char *authToken, const char *partnerChallenge, GPCallback callback, DWCLoginState next_state) {
    GPResult gpResult;

    DWC_Printf(DWC_REPORTFLAG_LOGIN, "Succeeded to remote authentication.\n");
    strcpy(stpLoginCnt->authToken, authToken);
    strcpy(stpLoginCnt->partnerChallenge, partnerChallenge);

    stpLoginCnt->connectTick = OS_GetTick();
    stpLoginCnt->connectFlag = TRUE;
    gpResult = gpConnectPreAuthenticated(stpLoginCnt->pGpObj, stpLoginCnt->authToken, stpLoginCnt->partnerChallenge, GP_FIREWALL, GP_NON_BLOCKING, callback, NULL);

    if (DWCi_HandleGPError(gpResult)) {
        return;
    }

    stpLoginCnt->state = next_state;
}

static void DWCi_RemoteLogin(DWCRemoteAuthCallback callback, void *param) {
    DWCAuthParam auth;
    void *http;

    DWC_Printf(DWC_REPORTFLAG_LOGIN, "Start Remote Auth\n");
    MI_CpuClear8(&auth, sizeof(auth));

    stRemoteAuthCallback = callback;
    pStRemoteAuthParam = param;

    if (DWCi_Acc_IsAuthentic(stpLoginCnt->userdata)) {
        DWC_Printf(DWC_REPORTFLAG_LOGIN, "  Hmm.. you already have authentic login id.\n");
        DWCi_Acc_LoginIdToUserName(&stpLoginCnt->userdata->authentic, stpLoginCnt->userdata->gamecode, stpLoginCnt->username);
    }
    else {
        DWC_Printf(DWC_REPORTFLAG_LOGIN, "  Hmm.. you need to create authentic login id.\n");

        if (!DWCi_Acc_IsValidLoginId(&stpLoginCnt->tempLoginId)) {
            DWC_Printf(DWC_REPORTFLAG_LOGIN, "    Hmm.. you are the first time to get authentic login id.");

            if (DWCi_Acc_CheckConsoleUserId(&stpLoginCnt->userdata->pseudo)) {
                DWC_Printf(DWC_REPORTFLAG_LOGIN, "- copy temp loginid from pseudo login id\n");
                stpLoginCnt->tempLoginId = stpLoginCnt->userdata->pseudo;
            }
            else {
                DWC_Printf(DWC_REPORTFLAG_LOGIN, "- create temp loginid from console user id\n");
                DWCi_Acc_CreateTempLoginId(&stpLoginCnt->tempLoginId);
            }
        }
        else {
            MATHRandContext32 randcontext;

            DWC_Printf(DWC_REPORTFLAG_LOGIN, "    Hmm.. you are NOT the first times to get authentic login id.\n");
            MATH_InitRand32(&randcontext, OS_GetTick());
            DWCi_Acc_SetPlayerId(&stpLoginCnt->tempLoginId, MATH_Rand32(&randcontext, 0));
        }

        DWCi_Acc_LoginIdToUserName(&stpLoginCnt->tempLoginId, stpLoginCnt->gamecode, stpLoginCnt->username);
    }

    MI_CpuCopy8(stpLoginCnt->playerName, auth.ingamesn, DWCi_WStrLen(stpLoginCnt->playerName) * 2 + 2);
    DWC_Printf(DWC_REPORTFLAG_LOGIN, "  ingamesn : %s\n", auth.ingamesn);
    strcpy(auth.gsbrcd, &(stpLoginCnt->username[DWC_ACC_USERNAME_GSBRCD_OFFSET]));
    DWC_Printf(DWC_REPORTFLAG_LOGIN, "  gsbrcd   : %s.\n", auth.gsbrcd);

    auth.alloc = (DWCAuthAlloc)DWC_Alloc;
    auth.free = (DWCAuthFree)DWC_Free;

    http = DWC_AllocEx(DWC_ALLOCTYPE_AUTH, sizeof(DWCHttp), 4);
    SDK_ASSERTMSG(http, "DWC_LOGIN: can't alloc memory %s :%d\n", __FILE__, __LINE__);

    stpLoginCnt->http = http;
    stpLoginCnt->startTick = OS_GetTick();

    DWC_Auth_Create(&auth, http);
}

static void DWCi_RemoteLoginProcess(void) {
    if (DWC_Auth_GetError() == DWCAUTH_E_FINISH) {
        DWCAuthResult result;

        DWC_Printf(DWC_REPORTFLAG_LOGIN, " *** Auth Done\n");
        DWC_Auth_GetResult(&result);

        strcpy(stpLoginCnt->authToken, result.token);
        strcpy(stpLoginCnt->partnerChallenge, result.challenge);

        DWC_Auth_Destroy();
        DWC_Free(DWC_ALLOCTYPE_AUTH, stpLoginCnt->http, 0);
        
        stpLoginCnt->http = NULL;

        if (DWCi_Acc_IsAuthentic(stpLoginCnt->userdata)) {
            stRemoteAuthCallback(stpLoginCnt->authToken, stpLoginCnt->partnerChallenge, pStRemoteAuthParam);
        }
        else {
            DWCi_GPConnect(stpLoginCnt->authToken, stpLoginCnt->partnerChallenge, (GPCallback)DWCi_GPConnectCallback, DWC_LOGIN_STATE_GPGETINFO);
        }
    }
    else if (DWC_Auth_GetError() != DWCAUTH_E_NOERR) {
        OSTick nowTick;

        DWC_Printf(DWC_REPORTFLAG_LOGIN, " *** Auth Error\n");
        nowTick = OS_GetTick();

        if (OS_TicksToMilliSeconds(nowTick - stpLoginCnt->startTick) > DWC_LOGIN_AUTH_TIMEOUT) {
            DWCAuthResult result;

            DWC_Auth_GetResult(&result);
            DWC_Auth_Destroy();
            DWC_Free(DWC_ALLOCTYPE_AUTH, stpLoginCnt->http, 0);
            
            stpLoginCnt->http = NULL;

            DWCi_StopLogin(DWC_ERROR_AUTH_ANY, result.returncode);

            return;
        }
        else {
            DWCAuthParam auth;

            DWC_Printf(DWC_REPORTFLAG_LOGIN, "  **** AUTH FAILED ... retry AUTH_ERROR:%d.\n", DWC_Auth_GetError());
            DWC_Auth_Destroy();

            MI_CpuClear8(&auth, sizeof(auth));
            MI_CpuCopy8(stpLoginCnt->playerName, auth.ingamesn, DWCi_WStrLen(stpLoginCnt->playerName) * 2 + 2);

            DWC_Printf(DWC_REPORTFLAG_LOGIN, "  ingamesn : %s\n", auth.ingamesn);

            strcpy(auth.gsbrcd, &(stpLoginCnt->username[DWC_ACC_USERNAME_GSBRCD_OFFSET]));
            auth.alloc = (DWCAuthAlloc)DWC_Alloc;
            auth.free = (DWCAuthFree)DWC_Free;

            DWC_Printf(DWC_REPORTFLAG_LOGIN, "  gsbrcd   : %s.\n", auth.gsbrcd);
            DWC_Auth_Create(&auth, stpLoginCnt->http);
        }
    }
}

static void DWCi_GPGetInfoCallback(GPConnection *pconnection, GPGetInfoResponseArg *arg, void *param) {
#pragma unused( param )

    if (arg->result == GP_NO_ERROR) {
        if (stpLoginCnt->state == DWC_LOGIN_STATE_GPGETINFO) {
            if (arg->lastname[0] == 0) {
                GPResult gpResult;
                char pseudo_name[DWC_ACC_USERNAME_STRING_BUFSIZE];

                DWC_Printf(DWC_REPORTFLAG_LOGIN, "    login id is authenticated. set lastname field.\n");
                DWCi_Acc_LoginIdToUserName(&stpLoginCnt->userdata->pseudo, stpLoginCnt->gamecode, pseudo_name);
                gpResult = gpSetInfos(pconnection, GP_LASTNAME, pseudo_name);

                if (DWCi_HandleGPError(gpResult)) {
                    return;
                }

                stpLoginCnt->state = DWC_LOGIN_STATE_GPSETINFO;
                gpResult = gpGetInfo(pconnection, arg->profile, GP_DONT_CHECK_CACHE, GP_NON_BLOCKING, (GPCallback)DWCi_GPGetInfoCallback, NULL);

                if (DWCi_HandleGPError(gpResult)) {
                    return;
                }

                DWC_Printf(DWC_REPORTFLAG_LOGIN, "    call gpSetInfos\n");
            }
            else {
                DWC_Printf(DWC_REPORTFLAG_LOGIN, "    this login id is used by anybody.... retry.\n");
                gpDisconnect(pconnection);
                DWCi_RemoteLogin(DWCi_RemoteAuthCallback, NULL);
                
                stpLoginCnt->state = DWC_LOGIN_STATE_REMOTE_AUTH;
            }
        }
        else if (stpLoginCnt->state == DWC_LOGIN_STATE_GPSETINFO) {
            char pseudo_name[DWC_ACC_USERNAME_STRING_BUFSIZE];
            DWCi_Acc_LoginIdToUserName(&stpLoginCnt->userdata->pseudo, stpLoginCnt->gamecode, pseudo_name);

            if (strcmp(arg->lastname, pseudo_name) == 0) {
                char username[DWC_ACC_USERNAME_STRING_BUFSIZE];
                DWCi_Acc_LoginIdToUserName(&stpLoginCnt->tempLoginId, stpLoginCnt->gamecode, username);
                DWC_Printf(DWC_REPORTFLAG_LOGIN, "    Account is created : %s(%s) - %d.\n", username, pseudo_name, arg->profile);
                DWCi_Acc_SetLoginIdToUserData(stpLoginCnt->userdata, &stpLoginCnt->tempLoginId, arg->profile);

                stpLoginCnt->state = DWC_LOGIN_STATE_CONNECTING;
                DWCi_GPConnectCallback(pconnection, &stpLoginCnt->gpconnectresponsearg, NULL);
            }
            else {
                GPResult gpResult;
                DWC_Printf(DWC_REPORTFLAG_LOGIN, "    Login but gpSetInfo failed... %s : %d retry gpGetInfo.\n", arg->lastname, arg->profile);

                gpResult = gpGetInfo(pconnection, arg->profile, GP_DONT_CHECK_CACHE, GP_NON_BLOCKING, (GPCallback)DWCi_GPGetInfoCallback, NULL);

                if (DWCi_HandleGPError(gpResult)) {
                    return;
                }
            }
        }
    }
    else {
        DWC_Printf(DWC_REPORTFLAG_LOGIN, " ERROR: gpGetInfo. why??? : %d\n", arg->result);
    }
}

BOOL DWCi_CheckLogin(void) {
    if ((stpLoginCnt != NULL) && (stpLoginCnt->state == DWC_LOGIN_STATE_CONNECTED)) {
        return TRUE;
    }

    return FALSE;
}

BOOL DWCi_GetAuthInfo(char **authToken, char **partnerChallenge) {
    if (!DWCi_CheckLogin()) {
        return FALSE;
    }

    *authToken = stpLoginCnt->authToken;
    *partnerChallenge = stpLoginCnt->partnerChallenge;

    return TRUE;
}
