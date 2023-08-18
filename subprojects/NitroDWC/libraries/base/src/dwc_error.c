#include <nitro.h>
#include <base/dwc_error.h>


static DWCError stDwcLastError = DWC_ERROR_NONE;
static int stDwcErrorCode = 0;


DWCError DWC_GetLastError(int *errorCode) {
    if (errorCode != NULL) {
        *errorCode = stDwcErrorCode;
    }

    return stDwcLastError;
}

DWCError DWC_GetLastErrorEx(int *errorCode, DWCErrorType *errorType) {
    if (errorCode != NULL) {
        *errorCode = stDwcErrorCode;
    }

    if (errorType != NULL) {
        switch (stDwcLastError) {
        case DWC_ERROR_AUTH_ANY:
        case DWC_ERROR_AUTH_OUT_OF_SERVICE:
        case DWC_ERROR_AUTH_STOP_SERVICE:
        case DWC_ERROR_AC_ANY:
        case DWC_ERROR_DISCONNECTED:
            *errorType = DWC_ETYPE_DISCONNECT;
            break;
        case DWC_ERROR_NETWORK:
            *errorType = DWC_ETYPE_SHUTDOWN_FM;
            break;
        case DWC_ERROR_GHTTP_ANY:
            *errorType = DWC_ETYPE_SHUTDOWN_GHTTP;
            break;
        case DWC_ERROR_FRIENDS_SHORTAGE:
        case DWC_ERROR_NOT_FRIEND_SERVER:
        case DWC_ERROR_MO_SC_CONNECT_BLOCK:
        case DWC_ERROR_SERVER_FULL:
            *errorType = DWC_ETYPE_LIGHT;
            break;
        case DWC_ERROR_DS_MEMORY_ANY:
        case DWC_ERROR_FATAL:
            *errorType = DWC_ETYPE_FATAL;
            break;
        case DWC_ERROR_ND_ANY:
            *errorType = DWC_ETYPE_SHUTDOWN_ND;
            break;
        case DWC_ERROR_ND_HTTP:
        case DWC_ERROR_SVL_HTTP:
        case DWC_ERROR_PROF_HTTP:
            *errorType = DWC_ETYPE_DISCONNECT;
            break;
        case DWC_ERROR_SVL_ANY:
        case DWC_ERROR_PROF_ANY:
            *errorType = DWC_ETYPE_SHOW_ERROR;
            break;
        case DWC_ERROR_NONE:
        default:
            *errorType = DWC_ETYPE_NO_ERROR;
            break;
        }
    }

    return stDwcLastError;
}

void DWC_ClearError(void) {
    if (stDwcLastError != DWC_ERROR_FATAL) {
        stDwcLastError = DWC_ERROR_NONE;
        stDwcErrorCode = 0;
    }
}

BOOL DWCi_IsError(void) {
    if (stDwcLastError != DWC_ERROR_NONE) {
        return TRUE;
    }
    else {
        return FALSE;
    }
}

void DWCi_SetError(DWCError error, int errorCode) {
    if (stDwcLastError != DWC_ERROR_FATAL) {
        stDwcLastError = error;
        stDwcErrorCode = errorCode;
    }

#ifndef SDK_FINALROM
    if (error == DWC_ERROR_FATAL) {
        OS_TPrintf("FATALERROR_SET\n");
    }
#endif
}
