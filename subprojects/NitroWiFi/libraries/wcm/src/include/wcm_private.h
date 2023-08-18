#ifndef NITROWIFI_WCM_PRIVATE_H_
#define NITROWIFI_WCM_PRIVATE_H_

#ifdef __cplusplus

extern "C" {
#endif

#include <nitroWiFi/wcm.h>
#include <nitro/os.h>

#define WCM_RESETTING_OFF 0
#define WCM_RESETTING_ON 1

#define WCM_APLIST_BLOCK_EMPTY 0
#define WCM_APLIST_BLOCK_OCCUPY 1

#define WCM_KEEP_ALIVE_SPAN ((OSTick)70)

#ifdef SDK_FINALROM
#define WCM_DEBUG 0
#else
#define WCM_DEBUG 1
#endif

#define WCM_CONNECT_STATUSCODE_ILLEGAL_RATESET 18

#if WCM_DEBUG
#define WCMi_Printf OS_TPrintf("[WCM] %s(%d) Report: ", __FILE__, __LINE__); \
    OS_TPrintf
#define WCMi_Warning OS_TPrintf("[WCM] %s(%d) Warning: ", __FILE__, __LINE__); \
    OS_TPrintf
#else
#define WCMi_Printf(...) ((void)0)
#define WCMi_Warning(...) ((void)0)
#endif

typedef struct WCMWork {
    u8 wmWork[WCM_ROUNDUP32(WM_SYSTEM_BUF_SIZE)];
    u8 sendBuf[WCM_DCF_SEND_BUF_SIZE];
    u8 recvBuf[WCM_DCF_RECV_BUF_SIZE * 2];
    WMBssDesc bssDesc;
    struct {
        u8 key[WM_SIZE_WEPKEY];
        u8 mode;
        u8 keyId;
        u8 reserved[WCM_ROUNDUP32(WM_SIZE_WEPKEY + 2) - (WM_SIZE_WEPKEY + 2)];
    } wepDesc;
    u32 phase;
    u32 option;
    u16 maxScanTime;
    u8 apListLock;
    u8 resetting;
    WCMConfig config;
    WCMNotify notify;
    s16 notifyId;
    u16 authId;
    u32 scanCount;
    WMScanExParam scanExParam;
    OSAlarm keepAliveAlarm;
    u16 wlStatusOnConnectFail;
    u8 reserved[6];
} WCMWork;

typedef struct WCMApList {
    u8 state;
    u8 reserved;
    u16 linkLevel;
    u32 index;
    void * previous;
    void * next;
    u32 data[WCM_ROUNDUP4(WCM_APLIST_SIZE) / sizeof(u32)];
} WCMApList;

typedef struct WCMApListHeader {
    u32 count;
    WCMApList * head;
    WCMApList * tail;
} WCMApListHeader;

WCMWork * WCMi_GetSystemWork(void);

void WCMi_EntryApList(WMBssDesc * bssDesc, u16 linkLevel);
void WCMi_InitCpsif(void);
void WCMi_CpsifRecvCallback(WMDcfRecvBuf * recv);
void WCMi_CpsifSendNullPacket(void);
void WCMi_ResetKeepAliveAlarm(void);
void WCMi_ShelterRssi(u8 rssi);
u8 WCMi_GetRssiAverage(void);

#ifdef __cplusplus
}
#endif

#endif
