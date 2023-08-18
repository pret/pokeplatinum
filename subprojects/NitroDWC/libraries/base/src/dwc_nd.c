#include <nitro.h>

#include <base/dwc_report.h>
#include <base/dwc_memfunc.h>
#include <base/dwc_nasfunc.h>
#include <base/dwc_error.h>
#include <base/dwc_nd.h>
#include <nd/DWCi_Nd.h>
#include <auth/dwc_svl.h>
#include <auth/util_base64.h>


#define DWC_ND_SVL              "9000"
#define SVLTHREADSTACKSIZE      2048
#define SVLHOSTNAMEMAX          255
#define GAMECDMAX               32
#define PASSWDMAX               32
#define TOKEN_LENGTH            (300 / 3 * 4)


typedef struct {
    DWCNdCallback callback;
    DWCNdCleanupCallback cleanupcallback;
    char gamecd[GAMECDMAX];
    char passwd[PASSWDMAX];
    BOOL ndinitialized;
    DWCSvlResult svlresult;
    u8 svlthreadstack[SVLTHREADSTACKSIZE];
    OSThread svlthread;
} DWCNdCnt;


static DWCNdCnt *dwcndcnt = NULL;


static void *DWCi_NdAlloc(u32 size, int align) {
    return DWC_AllocEx(DWC_ALLOCTYPE_ND, size, align);
}

static void DWCi_NdFree(void *ptr) {
    DWC_Free(DWC_ALLOCTYPE_ND, ptr, 0);
}

static void DWCi_NdCallback(DWCNdCallbackReason reason, DWCNdError error, int servererror) {
    SDK_ASSERT(dwcndcnt);
    SDK_ASSERT(dwcndcnt->callback);

    if (error == DWC_ND_ERROR_NONE) {
        dwcndcnt->callback(reason, error, servererror);
        return;
    }

    switch (error) {
    case DWC_ND_ERROR_ALLOC:
        DWCi_SetError(DWC_ERROR_FATAL, DWC_ECODE_SEQ_ADDINS + DWC_ECODE_FUNC_ND + DWC_ECODE_TYPE_ND_ALLOC);
        break;
    case DWC_ND_ERROR_BUSY:
        OS_Panic("You can't request more than one download process to DWC_Nd library.");
        break;
    case DWC_ND_ERROR_HTTP:
        DWCi_SetError(DWC_ERROR_ND_HTTP, DWC_ECODE_SEQ_ADDINS + DWC_ECODE_FUNC_ND + DWC_ECODE_TYPE_ND_HTTP);
        break;
    case DWC_ND_ERROR_BUFFULL:
        DWCi_SetError(DWC_ERROR_ND_ANY, DWC_ECODE_SEQ_ADDINS + DWC_ECODE_FUNC_ND + DWC_ECODE_TYPE_ND_BUFFULL);
        break;
    case DWC_ND_ERROR_DLSERVER:
        DWCi_SetError(DWC_ERROR_ND_ANY, DWC_ECODE_SEQ_ADDINS + DWC_ECODE_FUNC_ND - servererror);
        break;
    case DWC_ND_ERROR_CANCELED:
        break;
    case DWC_ND_ERROR_PARAM:
        OS_Panic("Some Parameters passed to DWC_Nd library are invalid.");
        break;
    case DWC_ND_ERROR_FATAL:
        DWCi_SetError(DWC_ERROR_FATAL, DWC_ECODE_SEQ_ADDINS + DWC_ECODE_FUNC_ND + DWC_ECODE_TYPE_ND_FATAL);
        break;
    default:
        OS_Panic("DWCi_NdCallback: Unknown error type.");
    }

    dwcndcnt->callback(reason, error, servererror);
}

static void DWCi_NdCleanupCallback(void) {
    DWCNdCleanupCallback callback;

    SDK_ASSERT(dwcndcnt);

    OS_JoinThread(&dwcndcnt->svlthread);

    callback = dwcndcnt->cleanupcallback;

    DWCi_NdFree(dwcndcnt);
    dwcndcnt = NULL;

    if (callback != NULL) {
        callback();
    }
}

static void DWCi_SVLTokenWaitThread(void *arg) {
#pragma unused(arg)
    DWCSvlState svlstate;
    char url[SVLHOSTNAMEMAX + 1];
    char token[TOKEN_LENGTH];
    int errorcode;

    SDK_ASSERT(dwcndcnt);
    SDK_ASSERT(dwcndcnt->callback);

    for (;;) {
        svlstate = DWC_SVLProcess();

        if (svlstate == DWC_SVL_STATE_SUCCESS) {
            if (strlen(dwcndcnt->svlresult.svlhost) + strlen("https:///download") > SVLHOSTNAMEMAX) {
                DWC_Printf(DWC_REPORTFLAG_ERROR, "DWCi_SVLTokenWaitThread: DWCi_NdStartup too long svlhost.\n");
                DWCi_NdCallback(DWC_ND_CBREASON_INITIALIZE, DWC_ND_ERROR_FATAL, -1);
                return;
            }

            OS_SNPrintf(url, SVLHOSTNAMEMAX + 1, "https://%s/download", dwcndcnt->svlresult.svlhost);

            if (DWC_Auth_Base64Encode(dwcndcnt->svlresult.svltoken, strlen(dwcndcnt->svlresult.svltoken), token, TOKEN_LENGTH) < 0) {
                DWC_Printf(DWC_REPORTFLAG_ERROR, "DWCi_SVLTokenWaitThread: Can't encode SVL token.\n");
                DWCi_NdCallback(DWC_ND_CBREASON_INITIALIZE, DWC_ND_ERROR_FATAL, -1);
                return;
            }

            if (DWCi_NdStartup(DWCi_NdAlloc, DWCi_NdFree, url, token, dwcndcnt->gamecd, dwcndcnt->passwd, DWCi_NdCallback) == FALSE) {
                DWC_Printf(DWC_REPORTFLAG_ERROR, "DWCi_SVLTokenWaitThread: DWCi_NdStartup failed.\n");
                DWCi_NdCallback(DWC_ND_CBREASON_INITIALIZE, DWC_ND_ERROR_FATAL, -1);
                return;
            }

            DWC_Printf(DWC_REPORTFLAG_DEBUG, "DWCi_SVLTokenWaitThread: DWCi_NdStartup successed.\n");
            dwcndcnt->ndinitialized = TRUE;
            DWCi_NdCallback(DWC_ND_CBREASON_INITIALIZE, DWC_ND_ERROR_NONE, -1);
            return;
        }
        else if (svlstate == DWC_SVL_STATE_ERROR) {
            DWC_Printf(DWC_REPORTFLAG_ERROR, "DWCi_SVLTokenWaitThread: Can't get SVL token.\n");
            (void)DWC_GetLastError(&errorcode);
            DWCi_SetError(DWC_ERROR_ND_ANY, errorcode);

            dwcndcnt->callback(DWC_ND_CBREASON_INITIALIZE, DWC_ND_ERROR_HTTP, -1);

            return;
        }
        else if (svlstate == DWC_SVL_STATE_CANCELED) {
            DWCi_NdCallback(DWC_ND_CBREASON_INITIALIZE, DWC_ND_ERROR_CANCELED, -1);
        }

        OS_Sleep(100);
    }

    return;
}

BOOL DWC_NdInitAsync(DWCNdCallback callback, char *gamecd, char *passwd) {
    SDK_ASSERT(callback);
    SDK_ASSERT(dwcndcnt == NULL);
    SDK_ASSERT(gamecd);
    SDK_ASSERT(passwd);

    if (DWCi_IsError()) {
        return FALSE;
    }

    dwcndcnt = DWCi_NdAlloc(sizeof(DWCNdCnt), 32);
    SDK_ASSERT(dwcndcnt);
    dwcndcnt->ndinitialized = FALSE;

    MI_CpuClear8(dwcndcnt, sizeof(DWCNdCnt));
    dwcndcnt->callback = callback;
    strncpy(dwcndcnt->gamecd, gamecd, GAMECDMAX - 1);
    strncpy(dwcndcnt->passwd, passwd, PASSWDMAX - 1);

    if (DWC_SVLGetTokenAsync(DWC_ND_SVL, &dwcndcnt->svlresult) == FALSE) {
        DWC_Printf(DWC_REPORTFLAG_ERROR, "DWC_NdInitAsync: DWC_SVLGetTokenAsync failed.\n");
        DWCi_NdFree(dwcndcnt);
        dwcndcnt = NULL;

        return FALSE;
    }

    DWC_Printf(DWC_REPORTFLAG_DEBUG, "DWC_NdInitAsync: DWC_SVLGetTokenAsync started.\n");
    OS_CreateThread(&dwcndcnt->svlthread, DWCi_SVLTokenWaitThread, NULL, dwcndcnt->svlthreadstack + SVLTHREADSTACKSIZE, SVLTHREADSTACKSIZE, 16);
    OS_WakeupThreadDirect(&dwcndcnt->svlthread);

    return TRUE;
}

BOOL DWC_NdCleanupAsync(DWCNdCleanupCallback callback) {
    if (dwcndcnt == NULL) {
        return FALSE;
    }

    dwcndcnt->cleanupcallback = callback;

    if (dwcndcnt->ndinitialized == FALSE) {
        DWCi_NdCleanupCallback();
    }
    else {
        DWCi_NdCleanupAsync(DWCi_NdCleanupCallback);
    }

    return TRUE;
}

BOOL DWC_NdSetAttr(const char *attr1, const char *attr2, const char *attr3) {
    SDK_ASSERT(dwcndcnt);

    if (DWCi_IsError()) {
        return FALSE;
    }

    return DWCi_NdSetAttr((char *)attr1, (char *)attr2, (char *)attr3);
}

BOOL DWC_NdGetFileListNumAsync(int *entrynum) {
    SDK_ASSERT(dwcndcnt);

    if (DWCi_IsError()) {
        return FALSE;
    }

    return DWCi_NdGetFileListNumAsync(entrynum);
}

BOOL DWC_NdGetFileListAsync(DWCNdFileInfo *filelist, unsigned offset, unsigned int num) {
    SDK_ASSERT(dwcndcnt);

    if (DWCi_IsError()) {
        return FALSE;
    }

    MI_CpuClear8(filelist, sizeof(DWCNdFileInfo) * num);

    return DWCi_NdGetFileListAsync(filelist, (int)offset, (int)num);
}

BOOL DWC_NdGetFileAsync(DWCNdFileInfo *fileinfo, char *buf, unsigned int size) {
#pragma unused(size)
    SDK_ASSERT(dwcndcnt);
    SDK_ASSERT(fileinfo);
    SDK_ASSERT(buf);
    SDK_ASSERT(size >= DWC_ND_RECVBUF_MIN);
    SDK_ASSERT(size >= fileinfo->size);

    if (DWCi_IsError()) {
        return FALSE;
    }

    return DWCi_NdGetFileAsync(fileinfo, buf, size);
}

BOOL DWC_NdCancelAsync(void) {
    SDK_ASSERT(dwcndcnt);

    if (DWCi_IsError()) {
        return FALSE;
    }

    return DWCi_NdCancelAsync();
}

BOOL DWC_NdGetProgress(u32 *received, u32 *contentlen) {
    SDK_ASSERT(dwcndcnt);

    if (DWCi_IsError()) {
        return FALSE;
    }

    return DWCi_NdGetProgress(received, contentlen);
}
