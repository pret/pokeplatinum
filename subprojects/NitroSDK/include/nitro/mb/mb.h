#ifndef NITRO_MB_MB_H_
#define NITRO_MB_MB_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/types.h>
#include <nitro/misc.h>
#include <nitro/fs/file.h>
#include <nitro/wm.h>

#define MB_MAX_CHILD WM_NUM_MAX_CHILD

#define MB_FILENAME_SIZE_MAX (10)

#define MB_MAX_FILE (16)

#define MB_SYSTEM_BUF_SIZE (0xC000)

#define MB_COMM_PARENT_SEND_MIN 256
#define MB_COMM_PARENT_SEND_MAX 510

#define MB_COMM_PARENT_RECV_MIN 8
#define MB_COMM_PARENT_RECV_MAX 16

#define MB_SEGMENT_BUFFER_MIN 0x10000

#define MB_SUCCESS MB_ERRCODE_SUCCESS

#define MB_TGID_AUTO 0x10000

#define MB_ICON_COLOR_NUM 16
#define MB_ICON_PALETTE_SIZE (MB_ICON_COLOR_NUM * 2)
#define MB_ICON_DATA_SIZE 512
#define MB_GAME_NAME_LENGTH 48
#define MB_GAME_INTRO_LENGTH 96
#define MB_USER_NAME_LENGTH 10
#define MB_MEMBER_MAX_NUM 15
#define MB_FILE_NO_MAX_NUM 64
#define MB_GAME_INFO_RECV_LIST_NUM 16

#define MB_TYPE_ILLEGAL 0
#define MB_TYPE_NORMAL 1
#define MB_TYPE_MULTIBOOT 2

#define MB_BSSDESC_SIZE (sizeof(MBParentBssDesc))
#define MB_DOWNLOAD_PARAMETER_SIZE HW_DOWNLOAD_PARAMETER_SIZE

typedef enum {
    MB_COMM_PSTATE_NONE,
    MB_COMM_PSTATE_INIT_COMPLETE,
    MB_COMM_PSTATE_CONNECTED,
    MB_COMM_PSTATE_DISCONNECTED,
    MB_COMM_PSTATE_KICKED,
    MB_COMM_PSTATE_REQ_ACCEPTED,
    MB_COMM_PSTATE_SEND_PROCEED,
    MB_COMM_PSTATE_SEND_COMPLETE,
    MB_COMM_PSTATE_BOOT_REQUEST,
    MB_COMM_PSTATE_BOOT_STARTABLE,
    MB_COMM_PSTATE_REQUESTED,
    MB_COMM_PSTATE_MEMBER_FULL,
    MB_COMM_PSTATE_END,
    MB_COMM_PSTATE_ERROR,
    MB_COMM_PSTATE_WAIT_TO_SEND,

    MB_COMM_PSTATE_WM_EVENT = 0x80000000
} MBCommPState;

typedef enum {
    MB_COMM_RESPONSE_REQUEST_KICK,
    MB_COMM_RESPONSE_REQUEST_ACCEPT,
    MB_COMM_RESPONSE_REQUEST_DOWNLOAD,
    MB_COMM_RESPONSE_REQUEST_BOOT
} MBCommResponseRequestType;

typedef void (* MBCommPStateCallback) (u16 child_aid, u32 status, void * arg);

typedef struct {
    u16 errcode;
} MBErrorStatus;

typedef enum {
    MB_ERRCODE_SUCCESS = 0,

    MB_ERRCODE_INVALID_PARAM,
    MB_ERRCODE_INVALID_STATE,

    MB_ERRCODE_INVALID_DLFILEINFO,
    MB_ERRCODE_INVALID_BLOCK_NO,
    MB_ERRCODE_INVALID_BLOCK_NUM,
    MB_ERRCODE_INVALID_FILE,
    MB_ERRCODE_INVALID_RECV_ADDR,

    MB_ERRCODE_WM_FAILURE,

    MB_ERRCODE_FATAL,

    MB_ERRCODE_MAX
} MBErrCode;

typedef struct {
    const char * romFilePathp;

    u16 * gameNamep;

    u16 * gameIntroductionp;

    const char * iconCharPathp;

    const char * iconPalettePathp;

    u32 ggid;

    u8 maxPlayerNum;
    u8 pad[3];

    u8 userParam[MB_DOWNLOAD_PARAMETER_SIZE];
} MBGameRegistry;

typedef struct {
    u16 palette[MB_ICON_COLOR_NUM];
    u16 data[MB_ICON_DATA_SIZE / 2];
} MBIconInfo;

typedef struct {
    u8 favoriteColor : 4;

    u8 playerNo : 4;

    u8 nameLength;

    u16 name[MB_USER_NAME_LENGTH];
} MBUserInfo;

typedef struct {
    u16 length;
    u16 rssi;
    u16 bssid[3];
    u16 ssidLength;
    u8 ssid[32];
    u16 capaInfo;
    struct {
        u16 basic;
        u16 support;
    } rateSet;
    u16 beaconPeriod;
    u16 dtimPeriod;
    u16 channel;
    u16 cfpPeriod;
    u16 cfpMaxDuration;
} MBParentBssDesc;

typedef struct {
    u16 boot_type;
    MBParentBssDesc parent_bss_desc;
} MBParam;

typedef struct {
    u32 ggid;
    MBUserInfo userinfo;
    u16 version;
    u8 fileid;
    u8 pad[3];
} MBCommRequestData;

int MB_Init(void * work, const MBUserInfo * user, u32 ggid, u32 tgid, u32 dma);

int MB_GetParentSystemBufSize(void);

BOOL MB_SetParentCommSize(u16 sendSize);

BOOL MB_SetParentCommParam(u16 sendSize, u16 maxChildren);

u16 MB_GetTgid(void);

void MB_End(void);

void MB_EndToIdle(void);

void MB_DisconnectChild(u16 aid);

int MB_StartParent(int channel);

int MB_StartParentFromIdle(int channel);

u8 MB_CommGetChildrenNumber(void);

const MBUserInfo * MB_CommGetChildUser(u16 child_aid);

int MB_CommGetParentState(u16 child);

void MB_CommSetParentStateCallback(MBCommPStateCallback callback);

u32 MB_GetSegmentLength(FSFile * file);

BOOL MB_ReadSegment(FSFile * file, void * buf, u32 len);

BOOL MB_RegisterFile(const MBGameRegistry * game_reg, const void * buf);

void * MB_UnregisterFile(const MBGameRegistry * game_reg);

BOOL MB_CommResponseRequest(u16 child_aid, MBCommResponseRequestType ack);

static inline BOOL MB_CommStartSending (u16 child_aid)
{
    return MB_CommResponseRequest(child_aid, MB_COMM_RESPONSE_REQUEST_DOWNLOAD);
}

static inline BOOL MB_CommStartSendingAll (void)
{
    u8 child, num;

    for (num = 0, child = 1; child <= WM_NUM_MAX_CHILD; child++) {
        if (TRUE == MB_CommStartSending(child)) {
            num++;
        }
    }

    if (num == 0) {
        return FALSE;
    }

    return TRUE;
}

BOOL MB_CommIsBootable(u16 child_aid);

static inline BOOL MB_CommBootRequest (u16 child_aid)
{
    return MB_CommResponseRequest(child_aid, MB_COMM_RESPONSE_REQUEST_BOOT);
}

static inline BOOL MB_CommBootRequestAll (void)
{
    u8 child, num;

    for (num = 0, child = 1; child <= WM_NUM_MAX_CHILD; child++) {
        if (TRUE == MB_CommBootRequest(child)) {
            num++;
        }
    }

    if (num == 0) {
        return FALSE;
    }

    return TRUE;
}

u16 MB_GetGameEntryBitmap(const MBGameRegistry * game_reg);

static inline const MBParam * MB_GetMultiBootParam (void)
{
    return (const MBParam *)HW_WM_BOOT_BUF;
}

static inline BOOL MB_IsMultiBootChild (void)
{
    return MB_GetMultiBootParam()->boot_type == MB_TYPE_MULTIBOOT;
}

static inline const MBParentBssDesc * MB_GetMultiBootParentBssDesc (void)
{
    return MB_IsMultiBootChild() ? &MB_GetMultiBootParam()->parent_bss_desc : NULL;
}

static inline const u8 * MB_GetMultiBootDownloadParameter (void)
{
    return MB_IsMultiBootChild() ? (const u8 *)HW_DOWNLOAD_PARAMETER : NULL;
}

void MB_ReadMultiBootParentBssDesc(WMBssDesc * p_desc,
                                   u16 parent_max_size, u16 child_max_size, BOOL ks_flag,
                                   BOOL cs_flag);

void MB_SetLifeTime(u16 tableNumber, u16 camLifeTime, u16 frameLifeTime, u16 mpLifeTime);

void MB_SetPowerSaveMode(BOOL enable);

#define MB_StartParentEx(channel) SDK_ERR("MB_StartParentEx() is discontinued. please use MB_StartParentFromIdle()\n")
#define MB_EndEx() SDK_ERR("MB_EndEx() is discontinued. please use MB_EndToIdle()\n")

#ifdef __cplusplus
}
#endif

#endif
