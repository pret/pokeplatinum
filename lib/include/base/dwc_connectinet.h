#ifndef DWC_CONNECTINET_H_
#define DWC_CONNECTINET_H_

#include <ac/dwc_ac.h>

#ifdef __cplusplus
extern "C" {
#endif

#define DWC_SIZE_SPOTINFO 9

typedef struct DWCstInetControl {
    volatile int ac_state;
    u16 state;
    u16 online;
    u16 dmaNo;
    u16 powerMode;
    u8 wontExecuteWDS;
    DWCWDSState processWDSstate;
    DWCWDSData nspotInfo;
#ifndef SDK_FINALROM
    int connectType;
#endif
} DWCInetControl;

typedef enum {
    DWC_CONNECTINET_STATE_NOT_INITIALIZED = 0, DWC_CONNECTINET_STATE_IDLE, DWC_CONNECTINET_STATE_OPERATING, DWC_CONNECTINET_STATE_OPERATED, DWC_CONNECTINET_STATE_CONNECTED, DWC_CONNECTINET_STATE_DISCONNECTING, DWC_CONNECTINET_STATE_DISCONNECTED, DWC_CONNECTINET_STATE_ERROR, DWC_CONNECTINET_STATE_FATAL_ERROR, DWC_CONNECTINET_STATE_LAST
} DWCInetResult;

typedef enum {
    DWC_CONNECTINET_AUTH_TEST, DWC_CONNECTINET_AUTH_DEVELOP, DWC_CONNECTINET_AUTH_RELEASE, DWC_CONNECTINET_AUTH_LAST
} DWCInetAuthType;

typedef enum {
    DWC_APINFO_AREA_JPN = 0, DWC_APINFO_AREA_USA, DWC_APINFO_AREA_EUR, DWC_APINFO_AREA_AUS, DWC_APINFO_AREA_KOR, DWC_APINFO_AREA_UNKNOWN = 0xff
} DWCApInfoArea;

typedef enum {
    DWC_APINFO_TYPE_USER0 = 0, DWC_APINFO_TYPE_USER1, DWC_APINFO_TYPE_USER2, DWC_APINFO_TYPE_USB, DWC_APINFO_TYPE_SHOP, DWC_APINFO_TYPE_FREESPOT, DWC_APINFO_TYPE_WAYPORT, DWC_APINFO_TYPE_OTHER, DWC_APINFO_TYPE_NINTENDOWFC = DWC_APINFO_TYPE_OTHER, DWC_APINFO_TYPE_NINTENDOSPOT, DWC_APINFO_TYPE_UNKNOWN = 99
} DWCApInfoType;

typedef struct DWCstApInfo {
    DWCApInfoType aptype;
    DWCApInfoArea area;
    char spotinfo[DWC_SIZE_SPOTINFO + 1];
    char essid[WM_SIZE_SSID + 1];
    u8 bssid[WM_SIZE_BSSID];
} DWCApInfo;

typedef enum {
    DWC_TESTINET_NOT_INITIALIZED = 0, DWC_TESTINET_OPERATING, DWC_TESTINET_CONNECTED, DWC_TESTINET_DISCONNECTED
} DWCTestInetResult;

typedef void * (* DWCACAlloc )(u32 name, s32 size);
typedef void (* DWCACFree  )(u32 name, void * ptr, s32 size);

BOOL DWC_GetApInfo(DWCApInfo * apinfo);
void DWC_EnableHotspot(void);
BOOL DWC_CheckWiFiStation(const void * ssid, u16 len);
extern void DWC_InitInetEx(DWCInetControl * inetCntl, u16 dmaNo, u16 powerMode, u16 ssl_priority);
extern void DWC_InitInet(DWCInetControl * inetCntl);
extern void DWC_SetAuthServer(DWCInetAuthType type);
extern void DWC_ConnectInetAsync(void);
extern void DWC_DebugConnectInetAsync(const void * ssid, const void * wep, int wepMode);
extern void DWC_DebugConnectInetExAsync(const void * ssid, const void * wep, int wepMode, const char * apSpotInfo, int overrideType);
extern BOOL DWC_CheckInet(void);
extern void DWC_ProcessInet(void);
extern DWCInetResult DWC_GetInetStatus(void);
extern void DWC_CleanupInet(void);
extern BOOL DWC_CleanupInetAsync(void);
extern BOOL DWCi_CheckDisconnected(void);
extern WMLinkLevel DWC_GetLinkLevel(void);
extern int DWC_GetUdpPacketDropNum(void);
extern void DWC_ForceShutdown(void);
extern BOOL DWC_UpdateConnection(void);
BOOL DWC_TestInetAsync(int timeout);
DWCTestInetResult DWC_TestInetProcess(void);
#ifndef SDK_FINALROM
void DWC_SetConnectApType(DWCApInfoType type);
#else
#define DWC_SetConnectApType(type) ((void)0)
#endif

#ifdef __cplusplus
}
#endif

#endif
