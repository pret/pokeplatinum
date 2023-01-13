#include <nitro.h>

#include <base/dwc_report.h>
#include <base/dwc_error.h>
#include <base/dwc_memfunc.h>
#include <base/dwc_ghttp.h>


typedef struct DWCGHTTPParamEntry {
    DWCGHTTPParam param;
    char *buf;
    int req;
    struct DWCGHTTPParamEntry *nextentry;
} DWCGHTTPParamEntry;


static DWCGHTTPParamEntry *paramhead = NULL;
static int ghttpinitcount = 0;


static GHTTPBool GHTTPCompletedCallback(GHTTPRequest request, GHTTPResult result, char *buffer, GHTTPByteCount bufferLen, void *param);
static void GHTTPProgressCallback(GHTTPRequest request, GHTTPState state, const char *buffer, GHTTPByteCount bufferLen, GHTTPByteCount bytesReceived, GHTTPByteCount totalSize, void *param);
static DWCGHTTPResult DWCi_HandleGHTTPError(DWCGHTTPResult result);
static DWCGHTTPParamEntry *DWCi_AppendDWCGHTTPParam(const DWCGHTTPParam *param);
static void DWCi_RemoveDWCGHTTPParamEntry(DWCGHTTPParamEntry *entry);
static void DWCi_RemoveAllDWCGHTTPParamEntry(void);
static DWCGHTTPParamEntry *DWCi_FindDWCGHTTPParamEntryByReq(int req);


BOOL DWC_InitGHTTP(const char *gamename) {
#pragma unused(gamename)

    DWC_Printf(DWC_REPORTFLAG_DEBUG, "DWC_InitGHTTP\n");
    ghttpStartup();

    ghttpinitcount++;

    return TRUE;
}

BOOL DWC_ShutdownGHTTP(void) {
    DWC_Printf(DWC_REPORTFLAG_DEBUG, "DWC_ShutdownGHTTP\n");

    if (ghttpinitcount <= 0) {
        return TRUE;
    }

    ghttpCleanup();
    ghttpinitcount--;

    if (ghttpinitcount == 0) {
        DWCi_RemoveAllDWCGHTTPParamEntry();
    }

    return TRUE;
}

BOOL DWC_ProcessGHTTP(void) {
    if (DWCi_IsError()) {
        return FALSE;
    }

    ghttpThink();

    return TRUE;
}

static GHTTPBool GHTTPCompletedCallback(GHTTPRequest request, GHTTPResult result, char *buffer, GHTTPByteCount bufferLen, void *param) {
#pragma unused(request)

    DWCGHTTPParamEntry *entry = (DWCGHTTPParamEntry *)param;
    DWCGHTTPParam *parameter = &entry->param;
    DWCGHTTPCompletedCallback callback = (DWCGHTTPCompletedCallback)parameter->completedCallback;
    BOOL buffer_clear = parameter->buffer_clear;

    DWC_Printf(DWC_REPORTFLAG_DEBUG, "GHTTPCompleteCallback result : %d\n", result);

    if (callback) {
        if (result == GHTTPSuccess) {
            callback(buffer, (int)bufferLen, (DWCGHTTPResult)result, parameter->param);
        } else {
            DWCi_HandleGHTTPError((DWCGHTTPResult)result);
            callback(NULL, 0, (DWCGHTTPResult)result, parameter->param);
        }
    } else {
        DWC_Printf(DWC_REPORTFLAG_DEBUG, "Callback is NULL\n");
    }

    if ((result != GHTTPSuccess) || (buffer_clear == TRUE)) {
        if (entry->buf) {
            DWC_Free(DWC_ALLOCTYPE_BASE, (void *)entry->buf, 0);
        } else {
            buffer_clear = TRUE;
        }
    }

    DWCi_RemoveDWCGHTTPParamEntry(entry);

    if (!buffer_clear) {
        return GHTTPFalse;
    }

    return GHTTPTrue;
}

static void GHTTPProgressCallback(GHTTPRequest request, GHTTPState state, const char *buffer, GHTTPByteCount bufferLen, GHTTPByteCount bytesReceived, GHTTPByteCount totalSize, void *param) {
#pragma unused(request)

    DWCGHTTPParam *parameter = &((DWCGHTTPParamEntry *)param)->param;
    DWCGHTTPProgressCallback callback = (DWCGHTTPProgressCallback)parameter->progressCallback;

    if (callback) {
        callback((DWCGHTTPState)state, buffer, (int)bufferLen, (int)bytesReceived, (int)totalSize, parameter->param);
    }
}

void DWC_GHTTPNewPost(DWCGHTTPPost *post) {
    DWC_Printf(DWC_REPORTFLAG_DEBUG, "DWC_GHTTPNewPost\n");

    *post = ghttpNewPost();

    if (post == NULL) {
        DWCi_HandleGHTTPError((DWCGHTTPResult)DWC_GHTTP_INSUFFICIENT_MEMORY);
        DWC_Printf(DWC_REPORTFLAG_DEBUG, "DWC_Alloc Error\n");
    }
}

BOOL DWC_GHTTPPostAddString(DWCGHTTPPost *post, const char *key, const char *value) {
    if (!ghttpPostAddString(*post, key, value)) {
        DWC_Printf(DWC_REPORTFLAG_WARNING, "DWC_GHTTPPostAddString FALSE\n");
        return FALSE;
    } else {
        return TRUE;
    }
}

BOOL DWC_GHTTPPostAddFileFromMemory(DWCGHTTPPost *post, const char *key, const char *buffer, int bufferlen, const char *filename, const char *contentType) {
    if (!ghttpPostAddFileFromMemory(*post, key, buffer, bufferlen, filename, contentType)) {
        DWC_Printf(DWC_REPORTFLAG_WARNING, "DWC_GHTTPPostAddFileFromMemory FALSE\n");
        return FALSE;
    } else {
        return TRUE;
    }
}

int DWC_PostGHTTPData(const char *url, GHTTPPost *post, DWCGHTTPCompletedCallback completedCallback, void *param) {
    GHTTPRequest req;
    DWCGHTTPParamEntry *entry = NULL;
    DWCGHTTPParam parameter_instance;

    DWC_Printf(DWC_REPORTFLAG_DEBUG, "DWC_PostGHTTPData\n");

    if (DWCi_IsError()) {
        return DWC_GHTTP_IN_ERROR;
    }

    parameter_instance.param = param;
    parameter_instance.completedCallback = completedCallback;
    parameter_instance.progressCallback = NULL;
    parameter_instance.buffer_clear = TRUE;
    entry = DWCi_AppendDWCGHTTPParam(&parameter_instance);

    if (!entry) {
        DWCi_HandleGHTTPError((DWCGHTTPResult)DWC_GHTTP_INSUFFICIENT_MEMORY);
        DWC_Printf(DWC_REPORTFLAG_DEBUG, "DWC_Alloc Error\n");
        completedCallback(NULL, 0, (DWCGHTTPResult)DWC_GHTTP_INSUFFICIENT_MEMORY, param);

        return (int)DWC_GHTTP_INSUFFICIENT_MEMORY;
    }

    req = ghttpPost(url, *post, GHTTPFalse, GHTTPCompletedCallback, (void *)entry);

    if (req < 0) {
        DWCi_HandleGHTTPError((DWCGHTTPResult)req);
        completedCallback(NULL, 0, (DWCGHTTPResult)req, param);
        DWCi_RemoveDWCGHTTPParamEntry(entry);
    }

    entry->req = req;
    return (int)req;
}

int DWC_GetGHTTPData(const char *url, DWCGHTTPCompletedCallback completedCallback, void *param) {
    GHTTPRequest req;
    DWCGHTTPParamEntry *entry = NULL;
    DWCGHTTPParam parameter_instance;

    DWC_Printf(DWC_REPORTFLAG_DEBUG, "DWC_GetGHTTPData\n");

    if (DWCi_IsError()) {
        return DWC_GHTTP_IN_ERROR;
    }

    parameter_instance.param = param;
    parameter_instance.completedCallback = completedCallback;
    parameter_instance.progressCallback = NULL;
    parameter_instance.buffer_clear = TRUE;
    entry = DWCi_AppendDWCGHTTPParam(&parameter_instance);

    if (!entry) {
        DWCi_HandleGHTTPError((DWCGHTTPResult)DWC_GHTTP_INSUFFICIENT_MEMORY);
        DWC_Printf(DWC_REPORTFLAG_DEBUG, "DWC_Alloc Error\n");
        completedCallback(NULL, 0, (DWCGHTTPResult)DWC_GHTTP_INSUFFICIENT_MEMORY, param);

        return (int)DWC_GHTTP_INSUFFICIENT_MEMORY;
    }

    req = ghttpGet(url, GHTTPFalse, GHTTPCompletedCallback, (void *)entry);

    if (req < 0) {
        DWCi_HandleGHTTPError((DWCGHTTPResult)req);
        completedCallback(NULL, 0, (DWCGHTTPResult)req, param);
        DWCi_RemoveDWCGHTTPParamEntry(entry);
    }

    entry->req = req;
    return (int)req;
}

static int DWCi_GHTTPGetEx(const char *url, int bufferlen, BOOL buffer_clear, DWCGHTTPPost *post, DWCGHTTPProgressCallback progressCallback, DWCGHTTPCompletedCallback completedCallback, void *param) {
    char *buffer = NULL;
    GHTTPRequest req;
    DWCGHTTPParamEntry *entry = NULL;
    DWCGHTTPParam parameter_instance;

    if (DWCi_IsError()) {
        return DWC_GHTTP_IN_ERROR;
    }

    parameter_instance.param = param;
    parameter_instance.completedCallback = completedCallback;
    parameter_instance.progressCallback = progressCallback;
    parameter_instance.buffer_clear = buffer_clear;
    entry = DWCi_AppendDWCGHTTPParam(&parameter_instance);

    if (!entry) {
        DWCi_HandleGHTTPError((DWCGHTTPResult)DWC_GHTTP_INSUFFICIENT_MEMORY);
        DWC_Printf(DWC_REPORTFLAG_DEBUG, "DWC_Alloc Error\n");
        completedCallback(NULL, 0, (DWCGHTTPResult)DWC_GHTTP_INSUFFICIENT_MEMORY, param);

        return (int)DWC_GHTTP_INSUFFICIENT_MEMORY;
    }

    if (bufferlen > 0) {
        buffer = (char *)DWC_Alloc(DWC_ALLOCTYPE_BASE, (u32)bufferlen);

        if (!buffer) {
            DWCi_HandleGHTTPError((DWCGHTTPResult)DWC_GHTTP_INSUFFICIENT_MEMORY);
            DWC_Printf(DWC_REPORTFLAG_DEBUG, "DWC_Alloc Error\n");
            completedCallback(NULL, 0, (DWCGHTTPResult)DWC_GHTTP_INSUFFICIENT_MEMORY, param);
            DWCi_RemoveDWCGHTTPParamEntry(entry);

            return (int)DWC_GHTTP_INSUFFICIENT_MEMORY;
        }
        entry->buf = buffer;
    }

    if (post) {
        req = ghttpGetEx(url, NULL, buffer, bufferlen, *post, GHTTPFalse, GHTTPFalse, GHTTPProgressCallback, GHTTPCompletedCallback, (void *)entry);
    } else {
        req = ghttpGetEx(url, NULL, buffer, bufferlen, NULL, GHTTPFalse, GHTTPFalse, GHTTPProgressCallback, GHTTPCompletedCallback, (void *)entry);
    }

    if (req < 0) {
        DWCi_HandleGHTTPError((DWCGHTTPResult)req);
        completedCallback(NULL, 0, (DWCGHTTPResult)req, param);

        if (entry->buf != NULL) {
            DWC_Free(DWC_ALLOCTYPE_BASE, (void *)entry->buf, 0);
        }

        DWCi_RemoveDWCGHTTPParamEntry(entry);
    }

    entry->req = req;
    return (int)req;
}

int DWC_GetGHTTPDataEx(const char *url, int bufferlen, BOOL buffer_clear, DWCGHTTPProgressCallback progressCallback, DWCGHTTPCompletedCallback completedCallback, void *param) {
    DWC_Printf(DWC_REPORTFLAG_DEBUG, "DWC_GetGHTTPDataEx\n");
    return DWCi_GHTTPGetEx(url, bufferlen, buffer_clear, NULL, progressCallback, completedCallback, param);
}

int DWC_GetGHTTPDataEx2(const char *url, int bufferlen, BOOL buffer_clear, DWCGHTTPPost *post, DWCGHTTPProgressCallback progressCallback, DWCGHTTPCompletedCallback completedCallback, void *param) {
    DWC_Printf(DWC_REPORTFLAG_DEBUG, "DWC_GetGHTTPDataEx2\n");
    return DWCi_GHTTPGetEx(url, bufferlen, buffer_clear, post, progressCallback, completedCallback, param);
}

void DWC_CancelGHTTPRequest(int req) {
    DWCGHTTPParamEntry *entry;

    ghttpCancelRequest((GHTTPRequest)req);

    entry = DWCi_FindDWCGHTTPParamEntryByReq(req);

    if (entry == NULL) {
        return;
    }

    if (entry->buf != NULL) {
        DWC_Free(DWC_ALLOCTYPE_BASE, (void *)entry->buf, 0);
    }

    DWCi_RemoveDWCGHTTPParamEntry(entry);
}

DWCGHTTPState DWC_GetGHTTPState(int req) {
    if (req < 0) {
        return DWC_GHTTP_FALSE;
    } else {
        return (DWCGHTTPState)(ghttpGetState(req));
    }
}

static DWCGHTTPResult DWCi_HandleGHTTPError(DWCGHTTPResult result) {
    int errorCode = DWC_ECODE_SEQ_ETC + DWC_ECODE_GS_HTTP;
    DWCError dwcError = DWC_ERROR_GHTTP_ANY;

    if (result == DWC_GHTTP_SUCCESS) {
        return DWC_GHTTP_SUCCESS;
    }

    DWC_Printf(DWC_REPORTFLAG_ERROR, "Main, DWCGHTTP error %d\n", result);

    switch (result) {
    case DWC_GHTTP_FAILED_TO_OPEN_FILE:
        errorCode += DWC_ECODE_TYPE_OPEN_FILE;
        break;
    case DWC_GHTTP_INVALID_POST:
        errorCode += DWC_ECODE_TYPE_INVALID_POST;
        break;
    case DWC_GHTTP_INSUFFICIENT_MEMORY:
        errorCode += DWC_ECODE_TYPE_BUFF_OVER;
        break;
    case DWC_GHTTP_INVALID_FILE_NAME:
    case DWC_GHTTP_INVALID_BUFFER_SIZE:
    case DWC_GHTTP_INVALID_URL:
        errorCode += DWC_ECODE_TYPE_REQ_INVALID;
        break;
    case DWC_GHTTP_UNSPECIFIED_ERROR:
        errorCode += DWC_ECODE_TYPE_UNSPECIFIED;
        break;
    case DWC_GHTTP_OUT_OF_MEMORY:
    case DWC_GHTTP_MEMORY_ERROR:
        dwcError = DWC_ERROR_FATAL;
        errorCode += DWC_ECODE_TYPE_ALLOC;
        break;
    case DWC_GHTTP_BUFFER_OVERFLOW:
        errorCode += DWC_ECODE_TYPE_BUFF_OVER;
        break;
    case DWC_GHTTP_PARSE_URL_FAILED:
        errorCode += DWC_ECODE_TYPE_PARSE_URL;
        break;
    case DWC_GHTTP_HOST_LOOKUP_FAILED:
        errorCode += DWC_ECODE_TYPE_DNS;
        break;
    case DWC_GHTTP_SOCKET_FAILED:
        errorCode += DWC_ECODE_TYPE_SOCKET;
        break;
    case DWC_GHTTP_CONNECT_FAILED:
    case DWC_GHTTP_FILE_NOT_FOUND:
    case DWC_GHTTP_SERVER_ERROR:
        errorCode += DWC_ECODE_TYPE_SERVER;
        break;
    case DWC_GHTTP_BAD_RESPONSE:
        errorCode += DWC_ECODE_TYPE_BAD_RESPONSE;
        break;
    case DWC_GHTTP_REQUEST_REJECTED:
    case DWC_GHTTP_UNAUTHORIZED:
    case DWC_GHTTP_FORBIDDEN:
        errorCode += DWC_ECODE_TYPE_REJECTED;
        break;
    case DWC_GHTTP_FILE_WRITE_FAILED:
    case DWC_GHTTP_FILE_READ_FAILED:
        errorCode += DWC_ECODE_TYPE_FILE_RW;
        break;
    case DWC_GHTTP_FILE_INCOMPLETE:
        errorCode += DWC_ECODE_TYPE_INCOMPLETE;
        break;
    case DWC_GHTTP_FILE_TOO_BIG:
        errorCode += DWC_ECODE_TYPE_TO_BIG;
        break;
    case DWC_GHTTP_ENCRYPTION_ERROR:
        errorCode += DWC_ECODE_TYPE_ENCRYPTION;
        break;

    default:
        break;
    }

    DWCi_SetError(dwcError, errorCode);

    return result;
}

static DWCGHTTPParamEntry*DWCi_AppendDWCGHTTPParam(const DWCGHTTPParam *param) {
    DWCGHTTPParamEntry *entry;

    entry = DWC_Alloc(DWC_ALLOCTYPE_BASE, sizeof(DWCGHTTPParamEntry));

    if (entry == NULL) {
        return NULL;
    }

    entry->param = *param;
    entry->nextentry = NULL;
    entry->buf = NULL;

    if (paramhead == NULL) {
        paramhead = entry;
        return entry;
    }

    entry->nextentry = paramhead;
    paramhead = entry;

    return entry;
}

static void DWCi_RemoveDWCGHTTPParamEntry(DWCGHTTPParamEntry *entry) {
    DWCGHTTPParamEntry *cursor, *target;

    if (paramhead == NULL) {
        return;
    }

    if (paramhead == entry) {
        cursor = paramhead->nextentry;
        DWC_Free(DWC_ALLOCTYPE_BASE, (void *)paramhead, 0);
        paramhead = cursor;

        return;
    }

    cursor = paramhead;

    while (cursor->nextentry != NULL) {
        if (cursor->nextentry != entry) {
            cursor = cursor->nextentry;
            continue;
        }

        target = cursor->nextentry;
        cursor->nextentry = cursor->nextentry->nextentry;
        DWC_Free(DWC_ALLOCTYPE_BASE, (void *)target, 0);

        return;
    }

    return;
}

static DWCGHTTPParamEntry*DWCi_FindDWCGHTTPParamEntryByReq(int req) {
    DWCGHTTPParamEntry *cursor;

    cursor = paramhead;

    while (cursor != NULL && cursor->req != req) {
        cursor = cursor->nextentry;
    }

    return cursor;
}

static void DWCi_RemoveAllDWCGHTTPParamEntry(void) {
    DWCGHTTPParamEntry *cursor, *target;

    cursor = paramhead;

    while (cursor != NULL) {
        target = cursor;
        cursor = cursor->nextentry;

        if (target->buf != NULL) {
            DWC_Free(DWC_ALLOCTYPE_BASE, (void *)target->buf, 0);
        }

        DWC_Free(DWC_ALLOCTYPE_BASE, (void *)target, 0);
    }

    paramhead = NULL;

    return;
}
