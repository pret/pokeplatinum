#ifndef DWC_AUTH_H_
#define DWC_AUTH_H_

#include <nitro.h>
#include "dwc_http.h"
#include "ac/dwc_ac.h"

#ifdef __cplusplus
extern "C" {
#endif

#define DWCAUTH_INGAMESN_LEN (25 + 1)
#define DWCAUTH_GSBRCDBYTES (11 + 1)

typedef struct {
    int returncode;
    char retcode[3 + 1];
    char datetime[14 + 1];
    char locator[50 + 1];
    char token[300 + 1];
    char challenge[8 + 1];
    char cookie[64 + 1];
} DWCAuthResult;

typedef enum {
    DWCAUTH_E_NOERR, DWCAUTH_E_BMINITERR, DWCAUTH_E_MEMERR, DWCAUTH_E_ACERR, DWCAUTH_E_HTTPINITERR, DWCAUTH_E_CALERR, DWCAUTH_E_INVALIDPARAM, DWCAUTH_E_CANTADDHTTPHEADER, DWCAUTH_E_CANTADDPOSTITEM, DWCAUTH_E_DNSERR, DWCAUTH_E_CANTSTARTHTTPTHREAD, DWCAUTH_E_HTTPCONERR, DWCAUTH_E_HTTPPARSEERR, DWCAUTH_E_HTTPERR, DWCAUTH_E_NASPARSEERR, DWCAUTH_E_BMERR, DWCAUTH_E_NASALREADYEXIST, DWCAUTH_E_NASACCTEXPIRE, DWCAUTH_E_NASERR, DWCAUTH_E_TOOMANYRETRY, DWCAUTH_E_ABORT, DWCAUTH_E_FINISH, DWCAUTH_E_NOTINITIALIZED, DWCAUTH_E_MAX
} DWCAuthError;

typedef struct {
    unsigned short ingamesn[DWCAUTH_INGAMESN_LEN];
    char gsbrcd[DWCAUTH_GSBRCDBYTES];
    DWCAuthAlloc alloc;
    DWCAuthFree free;
} DWCAuthParam;

typedef enum {
    DWC_AUTH_INGAMESN_NOT_CHECKED = 0, DWC_AUTH_INGAMESN_VALID         = 1, DWC_AUTH_INGAMESN_INVALID       = 2
} DWCAuthIngamesnCheckResult;

extern DWCAuthIngamesnCheckResult DWCauthingamesncheckresult;

void DWC_Auth_SetCustomNas(const char * nasaddr);
DWCAuthError DWC_Auth_Create(DWCAuthParam * param, void * http);
DWCAuthError DWC_Auth_Create_WFCUtil(DWCAuthParam * param, void * http);
void DWC_Auth_Abort(void);
void DWC_Auth_Destroy(void);
void DWC_Auth_Join(void);
DWCAuthError DWC_Auth_GetError(void);
void DWC_Auth_GetResult(DWCAuthResult * result);

#ifdef __cplusplus
}
#endif

#endif
