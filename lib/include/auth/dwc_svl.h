#ifndef DWC_SVL_H
#define DWC_SVL_H

#include "util_alloc.h"

#ifdef __cplusplus
extern "C" {
#endif

#define DWC_SVL_ERROR_BASENUM (-24000)
#define DWC_SVL_ERROR_HTTPBASENUM (-25000)
#define DWC_SVL_ERROR_FATAL (-100)
#define DWC_SVL_ERROR_BADDATA (-101)
#define DWC_SVL_HOST_LENGTH 64
#define DWC_SVL_TOKEN_LENGTH 300
#define DWC_SVL_STATUSDATA_LENGTH 1

typedef enum {
    DWC_SVL_STATE_DIRTY = 0, DWC_SVL_STATE_IDLE, DWC_SVL_STATE_HTTP, DWC_SVL_STATE_SUCCESS, DWC_SVL_STATE_ERROR, DWC_SVL_STATE_CANCELED, DWC_SVL_STATE_MAX
} DWCSvlState;

typedef struct {
    BOOL status;
    char svlhost[DWC_SVL_HOST_LENGTH + 1];
    char svltoken[DWC_SVL_TOKEN_LENGTH + 1];
} DWCSvlResult;

BOOL DWC_Svl_Init(DWCAuthAlloc alloc, DWCAuthFree free);
void DWC_Svl_Cleanup(void);
BOOL DWC_Svl_GetTokenAsync(char * svc, DWCSvlResult * result);
DWCSvlState DWC_Svl_Process(void);
void DWC_Svl_Abort(void);

#ifdef __cplusplus
}
#endif

#endif
