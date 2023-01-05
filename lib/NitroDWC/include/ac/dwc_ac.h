#ifndef DWC_AC_H_
#define DWC_AC_H_

#ifdef __cplusplus
extern "C" {
#endif

#define DWC_WDS_SSID_BUF_SIZE 32
#define DWC_WDS_WEPKEY_BUF_SIZE 32

enum {
    DWC_AC_STATE_ERROR_FATAL = -10, DWC_AC_STATE_ERROR_START_UP, DWC_AC_STATE_ERROR_SOCKET_START, DWC_AC_STATE_ERROR_NETCHECK_CREATE, DWC_AC_STATE_ERROR_IRREGULAR, DWC_AC_STATE_NULL                   = 0, DWC_AC_STATE_SEARCH, DWC_AC_STATE_CONNECT, DWC_AC_STATE_TEST, DWC_AC_STATE_RETRY, DWC_AC_STATE_COMPLETE
};

enum {
    DWC_AC_AP_TYPE_USER1, DWC_AC_AP_TYPE_USER2, DWC_AC_AP_TYPE_USER3, DWC_AC_AP_TYPE_USB, DWC_AC_AP_TYPE_SHOP, DWC_AC_AP_TYPE_FREESPOT, DWC_AC_AP_TYPE_WAYPORT, DWC_AC_AP_TYPE_NINTENDOWFC, DWC_AC_AP_TYPE_NINTENDOSPOT, DWC_AC_AP_TYPE_UNKNOWN = 99, DWC_AC_AP_TYPE_FALSE = 0xff
};

typedef enum {
    DWC_WDS_STATE_IDLE = 0, DWC_WDS_STATE_PROCESS   = 1, DWC_WDS_STATE_COMPLETED = 2, DWC_WDS_STATE_FAILED    = 3, DWC_WDS_STATE_ERROR     = 4
} DWCWDSState;

typedef struct tagDWCACOption {
    u8 connectType;
    u8 skipNetCheck;
} DWCACOption;

typedef struct tagDWCACConfig {
    void *(*alloc)(u32 name, s32 size);
    void (* free)(u32 name, void * ptr, s32 size);
    u8 dmaNo;
    u8 powerMode;
    DWCACOption option;
} DWCACConfig;

typedef struct tagDWCWDSData {
    u8 ssid[DWC_WDS_SSID_BUF_SIZE];
    u8 wep[DWC_WDS_WEPKEY_BUF_SIZE];
    int wepMode;
    char apnum[10];
} DWCWDSData;

BOOL DWC_AC_Create(DWCACConfig * config);
int DWC_AC_Process(void);
int DWC_AC_GetStatus(void);
u8 DWC_AC_GetApType(void);
BOOL DWC_AC_GetApSpotInfo(u8 * apSpotInfo);
BOOL DWC_AC_Destroy(void);
void DWC_AC_SetSpecifyAp(const void * ssid, const void * wep, int wepMode);
void DWC_AC_SetSpecifyApEx(const void * ssid, const void * wep, int wepMode, const char * apSpotInfo, int overrideType);
BOOL DWC_AC_CheckWiFiStation(const void * ssid, u16 len);
BOOL DWC_AC_StartupGetWDSInfo(DWCWDSData * nspotInfo);
DWCWDSState DWC_AC_ProcessGetWDSInfo(void);
void DWC_AC_CleanupGetWDSInfo(void);

#ifdef __cplusplus
}
#endif

#endif
