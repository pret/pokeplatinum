#ifndef DWC_ENCSESSION_H_
#define DWC_ENCSESSION_H_

#ifdef __cplusplus
extern "C" {
#endif

typedef enum {
    DWCi_ENC_SESSION_STATE_CANCELED,
    DWCi_ENC_SESSION_STATE_ERROR,
    DWCi_ENC_SESSION_STATE_INITIAL,
    DWCi_ENC_SESSION_STATE_INITIALIZED,
    DWCi_ENC_SESSION_STATE_REQUEST,
    DWCi_ENC_SESSION_STATE_GETTING_TOKEN,
    DWCi_ENC_SESSION_STATE_GOT_TOKEN,
    DWCi_ENC_SESSION_STATE_SENDING_DATA,
    DWCi_ENC_SESSION_STATE_COMPLETED
} DWCiEncSessionState;

typedef enum {
    DWCi_ENC_SESSION_SUCCESS,
    DWCi_ENC_SESSION_ERROR_NOTINITIALIZED,
    DWCi_ENC_SESSION_ERROR_NOMEMORY,
    DWCi_ENC_SESSION_ERROR_INVALID_KEY
} DWCiEncSessionResult;

typedef enum {
    DWCi_ENC_SERVER_RELEASE,
    DWCi_ENC_SERVER_DEBUG,
    DWCi_ENC_SERVER_TEST
} DWCiEncServer;

typedef BOOL (* DWCiEncSessionVaridateCallback)(u32 * buf, int len);

void DWCi_EncSessionInitialize(DWCiEncServer server, const char * initdata);
void DWCi_EncSessionShutdown(void);
DWCiEncSessionResult DWCi_EncSessionGetAsync(const char * url, s32 pid, void * data, u32 size, DWCiEncSessionVaridateCallback cb);
DWCiEncSessionResult DWCi_EncSessionGetReuseHashAsync(const char * url, s32 pid, void * data, u32 size, DWCiEncSessionVaridateCallback cb);
DWCiEncSessionState DWCi_EncSessionProcess(void);
void * DWCi_EncSessionGetResponse(u32 * size);
void DWCi_EncSessionCancel(void);

#ifdef __cplusplus
}
#endif

#endif
