#ifndef MB_WM_BASE_H_
#define MB_WM_BASE_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro.h>
#include <nitro/wm.h>

#define MB_NUM_PARENT_INFORMATIONS 16

#define MB_MAX_SEND_BUFFER_SIZE (0x400)

#define MB_MODE_PARENT 1
#define MB_MODE_CHILD 2

#define MB_CALLBACK_CHILD_CONNECTED 0
#define MB_CALLBACK_CHILD_DISCONNECTED 1
#define MB_CALLBACK_MP_PARENT_SENT 2
#define MB_CALLBACK_MP_PARENT_RECV 3
#define MB_CALLBACK_PARENT_FOUND 4
#define MB_CALLBACK_PARENT_NOT_FOUND 5
#define MB_CALLBACK_CONNECTED_TO_PARENT 6
#define MB_CALLBACK_DISCONNECTED 7
#define MB_CALLBACK_MP_CHILD_SENT 8
#define MB_CALLBACK_MP_CHILD_RECV 9
#define MB_CALLBACK_DISCONNECTED_FROM_PARENT 10
#define MB_CALLBACK_CONNECT_FAILED 11
#define MB_CALLBACK_DCF_CHILD_SENT 12
#define MB_CALLBACK_DCF_CHILD_SENT_ERR 13
#define MB_CALLBACK_DCF_CHILD_RECV 14
#define MB_CALLBACK_DISCONNECT_COMPLETE 15
#define MB_CALLBACK_DISCONNECT_FAILED 16
#define MB_CALLBACK_END_COMPLETE 17
#define MB_CALLBACK_MP_CHILD_SENT_ERR 18
#define MB_CALLBACK_MP_PARENT_SENT_ERR 19
#define MB_CALLBACK_MP_STARTED 20
#define MB_CALLBACK_INIT_COMPLETE 21
#define MB_CALLBACK_END_MP_COMPLETE 22
#define MB_CALLBACK_SET_GAMEINFO_COMPLETE 23
#define MB_CALLBACK_SET_GAMEINFO_FAILED 24
#define MB_CALLBACK_MP_SEND_ENABLE 25
#define MB_CALLBACK_PARENT_STARTED 26
#define MB_CALLBACK_BEACON_LOST 27
#define MB_CALLBACK_BEACON_SENT 28
#define MB_CALLBACK_BEACON_RECV 29
#define MB_CALLBACK_MP_SEND_DISABLE 30
#define MB_CALLBACK_DISASSOCIATE 31
#define MB_CALLBACK_REASSOCIATE 32
#define MB_CALLBACK_AUTHENTICATE 33
#define MB_CALLBACK_SET_LIFETIME 34
#define MB_CALLBACK_DCF_STARTED 35
#define MB_CALLBACK_DCF_SENT 36
#define MB_CALLBACK_DCF_SENT_ERR 37
#define MB_CALLBACK_DCF_RECV 38
#define MB_CALLBACK_DCF_END 39
#define MB_CALLBACK_MPACK_IND 40
#define MB_CALLBACK_MP_CHILD_SENT_TIMEOUT 41
#define MB_CALLBACK_SEND_QUEUE_FULL_ERR 42

#define MB_CALLBACK_API_ERROR 255
#define MB_CALLBACK_ERROR 256

typedef struct ParentInfo {
    union {
        WMBssDesc parentInfo[1];
        u8 parentInfo_area[WM_BSS_DESC_SIZE] ATTRIBUTE_ALIGN(32);
    };
    WMStartScanCallback scan_data;
    u8 reserved1[8];
} ParentInfo;

typedef void (* MBCallbackFunc) (u16 type, void * arg);

typedef struct {
    union {
        WMParentParam parentParam;
        u8 parentParam_area[WM_PARENT_PARAM_SIZE] ATTRIBUTE_ALIGN(32);
    };
    u16 sendBuf[MB_MAX_SEND_BUFFER_SIZE / sizeof(u16)] ATTRIBUTE_ALIGN(32);
    union {
        WMBssDesc parentInfoBuf;
        u8 parentInfoBuf_area[WM_BSS_DESC_SIZE] ATTRIBUTE_ALIGN(32);
    };
    u16 p_sendlen;
    u16 p_recvlen;
    WMMpRecvBuf * recvBuf;
    void (* callback_ptr) (void * arg);
    u8 mpBusy;
    u8 mbIsStarted;
    u8 reserved0[10];
    u16 sendBufSize;
    u16 recvBufSize;
    MBCallbackFunc callback;
    const WMBssDesc * pInfo;
    u16 mode;
    u16 endReq;
    u16 mpStarted;
    u16 child_bitmap;
    u16 contSend;
    u8 reserved1[2];
    u8 uname[WM_SIZE_USERNAME] ATTRIBUTE_ALIGN(4);
    u8 gname[WM_SIZE_GAMENAME] ATTRIBUTE_ALIGN(4);
    u16 currentTgid;
    u8 reserved2[22];
    u16 userGameInfo[((WM_SIZE_USER_GAMEINFO + 32) & ~(32 - 1)) /
                     sizeof(u16)] ATTRIBUTE_ALIGN(32);
    struct {
        u16 found_parent_count;
        u16 my_aid;
        BOOL scanning_flag;
        BOOL scan_channel_flag;
        int last_found_parent_no;
        u8 reserved8[16];
        ParentInfo parent_info[MB_NUM_PARENT_INFORMATIONS];
    };
} MBiParam;

int MBi_GetLastFountParent(void);
WMBssDesc * MBi_GetParentBssDesc(int parent);
void MBi_SetMaxScanTime(u16 time);
int MBi_SendMP(const void * buf, int len, int pollbmp);
int MBi_GetSendBufSize(void);
int MBi_GetRecvBufSize(void);
int MBi_CommConnectToParent(const WMBssDesc * bssDescp);
u32 MBi_GetGgid(void);
u16 MBi_GetTgid(void);
u8 MBi_GetAttribute(void);
int MBi_RestartScan(void);
int MBi_GetScanChannel(void);
u16 MBi_GetAid(void);
BOOL MBi_IsStarted(void);
int MBi_CommEnd(void);
void MBi_CommParentCallback(u16 type, void * arg);
void MBi_CommChildCallback(u16 type, void * arg);

#ifdef __cplusplus
}
#endif

#endif
