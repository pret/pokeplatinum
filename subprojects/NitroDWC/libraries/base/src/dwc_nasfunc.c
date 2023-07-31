#include <nitro.h>
#include <base/dwc_report.h>
#include <base/dwc_error.h>
#include <base/dwc_nasfunc.h>
#include <base/dwc_memfunc.h>


typedef struct {
    DWCHttp http;
    DWCAuthParam authparam;
    DWCAuthResult result;
} DWCNalCnt;


extern s64 DWCnastimediff;
extern BOOL DWCnastimediffvalid;
extern s64 DWCnastimediffbase;
static DWCNalCnt *nalcnt = NULL;


DWCIngamesnCheckResult DWC_GetIngamesnCheckResult(void) {
    return (DWCIngamesnCheckResult)DWCauthingamesncheckresult;
}

BOOL DWC_GetDateTime(RTCDate *date, RTCTime *time) {
    s64 localsec;

    if (DWCnastimediffvalid == FALSE) {
        return FALSE;
    }

    if (RTC_GetDateTime(date, time) != 0) {
        return FALSE;
    }

    localsec = RTC_ConvertDateTimeToSecond(date, time);

    if (localsec == -1) {
        return FALSE;
    }

    if (localsec < DWCnastimediffbase) {
        DWC_Printf(DWC_REPORTFLAG_DEBUG, "RTC overflow detected.\n");
        localsec += 3155760000;
    }

    localsec -= DWCnastimediff;

    if ((localsec < 0) || (localsec > 3155759999)) {
        return FALSE;
    }

    RTC_ConvertSecondToDateTime(date, time, localsec);

    return TRUE;
}

BOOL DWC_SVLGetTokenAsync(char *svl, DWCSvlResult *result) {
    BOOL flag;

    SDK_ASSERT(svl);
    SDK_ASSERT(result);

    flag = DWC_Svl_Init((DWCAuthAlloc)DWC_Alloc, (DWCAuthFree)DWC_Free);

    if (flag == FALSE) {
        return FALSE;
    }

    if (strlen(svl) == 0) {
        flag = DWC_Svl_GetTokenAsync("0000", result);
    }
    else {
        flag = DWC_Svl_GetTokenAsync(svl, result);
    }

    if (flag == FALSE) {
        DWC_Svl_Cleanup();
        return FALSE;
    }

    return TRUE;
}

DWCSvlState DWC_SVLProcess(void) {
    DWCSvlState state;

    state = DWC_Svl_Process();

    if ((state == DWC_SVL_STATE_ERROR) || (state == DWC_SVL_STATE_SUCCESS) || (state == DWC_SVL_STATE_CANCELED)) {
        DWC_Svl_Cleanup();
    }

    return state;
}

void DWC_SVLAbort(void) {
    DWC_Svl_Abort();
}

BOOL DWC_NASLoginAsync(void) {
    if (nalcnt != NULL) {
        OS_Panic("You can't request more than one NAS login request at once.\n");
    }

    nalcnt = DWC_Alloc(DWC_ALLOCTYPE_BASE, sizeof(DWCNalCnt));

    if (nalcnt == NULL) {
        DWCi_SetError(DWC_ERROR_FATAL, -20100);

        return FALSE;
    }

    MI_CpuClear8(nalcnt, sizeof(DWCNalCnt));
    MI_CpuCopy8("", nalcnt->authparam.gsbrcd, 9);

    nalcnt->authparam.alloc = (DWCAuthAlloc)DWC_Alloc;
    nalcnt->authparam.free = (DWCAuthFree)DWC_Free;

#if 1
    DWC_Auth_Create(&nalcnt->authparam, &nalcnt->http);
#else
    if (DWC_Auth_Create(&nalcnt->authparam, &nalcnt->http) != DWCAUTH_E_NOERR) {
        DWC_Free(DWC_ALLOCTYPE_BASE, nalcnt, sizeof(DWCNalCnt));
        nalcnt = NULL;
        DWCi_SetError(DWC_ERROR_FATAL, -20100);

        return FALSE;
    }
#endif

    return TRUE;
}

DWCNasLoginState DWC_NASLoginProcess(void) {
    DWCAuthResult result;

    if (nalcnt == NULL) {
        return DWC_NASLOGIN_STATE_DIRTY;
    }

    switch (DWC_Auth_GetError()) {
    case DWCAUTH_E_NOERR:
        return DWC_NASLOGIN_STATE_HTTP;
    case DWCAUTH_E_FINISH:
        DWC_Auth_Destroy();
        DWC_Free(DWC_ALLOCTYPE_BASE, nalcnt, sizeof(DWCNalCnt));
        nalcnt = NULL;
        return DWC_NASLOGIN_STATE_SUCCESS;
    case DWCAUTH_E_ABORT:
        DWC_Auth_Destroy();
        DWC_Free(DWC_ALLOCTYPE_BASE, nalcnt, sizeof(DWCNalCnt));
        nalcnt = NULL;
        return DWC_NASLOGIN_STATE_CANCELED;
    default:
        DWC_Auth_GetResult(&result);
        DWC_Auth_Destroy();
        DWC_Free(DWC_ALLOCTYPE_BASE, nalcnt, sizeof(DWCNalCnt));
        nalcnt = NULL;
        DWCi_SetError(DWC_ERROR_AUTH_ANY, result.returncode);
        return DWC_NASLOGIN_STATE_ERROR;
    }
}

void DWC_NASLoginAbort(void) {
    DWC_Auth_Abort();
}
