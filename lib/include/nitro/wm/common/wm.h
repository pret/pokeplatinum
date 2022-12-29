#ifndef NITRO_WM_COMMON_WM_H_
#define NITRO_WM_COMMON_WM_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/types.h>
#include <nitro/os.h>
#include <nitro_wl/common/version_wl.h>

#undef WM_GAMEINFO_TYPE_OLD

#if (SDK_VERSION_WL >= 15600)
#ifdef SDK_TEG
#undef WM_PRECALC_ALLOWEDCHANNEL
#else
#define WM_PRECALC_ALLOWEDCHANNEL
#endif
#else
#undef WM_PRECALC_ALLOWEDCHANNEL
#endif

#define WM_SSID_MASK_CUSTOMIZE 1

typedef enum WMApiid {
    WM_APIID_INITIALIZE = 0,
    WM_APIID_RESET,
    WM_APIID_END,

    WM_APIID_ENABLE,
    WM_APIID_DISABLE,
    WM_APIID_POWER_ON,
    WM_APIID_POWER_OFF,

    WM_APIID_SET_P_PARAM,
    WM_APIID_START_PARENT,
    WM_APIID_END_PARENT,
    WM_APIID_START_SCAN,
    WM_APIID_END_SCAN,
    WM_APIID_START_CONNECT,
    WM_APIID_DISCONNECT,
    WM_APIID_START_MP,
    WM_APIID_SET_MP_DATA,
    WM_APIID_END_MP,
    WM_APIID_START_DCF,
    WM_APIID_SET_DCF_DATA,
    WM_APIID_END_DCF,
    WM_APIID_SET_WEPKEY,
    WM_APIID_START_KS,
    WM_APIID_END_KS,
    WM_APIID_GET_KEYSET,
    WM_APIID_SET_GAMEINFO,
    WM_APIID_SET_BEACON_IND,
    WM_APIID_START_TESTMODE,
    WM_APIID_STOP_TESTMODE,
    WM_APIID_VALARM_MP,
    WM_APIID_SET_LIFETIME,
    WM_APIID_MEASURE_CHANNEL,
    WM_APIID_INIT_W_COUNTER,
    WM_APIID_GET_W_COUNTER,
    WM_APIID_SET_ENTRY,
    WM_APIID_AUTO_DEAUTH,
    WM_APIID_SET_MP_PARAMETER,
    WM_APIID_SET_BEACON_PERIOD,
    WM_APIID_AUTO_DISCONNECT,
    WM_APIID_START_SCAN_EX,
    WM_APIID_SET_WEPKEY_EX,
    WM_APIID_SET_PS_MODE,
    WM_APIID_START_TESTRXMODE,
    WM_APIID_STOP_TESTRXMODE,

    WM_APIID_KICK_MP_PARENT,
    WM_APIID_KICK_MP_CHILD,
    WM_APIID_KICK_MP_RESUME,

    WM_APIID_ASYNC_KIND_MAX,

    WM_APIID_INDICATION = 128,
    WM_APIID_PORT_SEND,
    WM_APIID_PORT_RECV,
    WM_APIID_READ_STATUS,

    WM_APIID_UNKNOWN = 255
} WMApiid;

#define WM_API_REQUEST_ACCEPTED 0x8000

#define WM_WEPMODE_NO 0
#define WM_WEPMODE_40BIT 1
#define WM_WEPMODE_104BIT 2
#define WM_WEPMODE_128BIT 3

#define WM_AUTHMODE_OPEN_SYSTEM 0
#define WM_AUTHMODE_SHARED_KEY 1

#define WM_SCANTYPE_ACTIVE 0
#define WM_SCANTYPE_PASSIVE 1

#if WM_SSID_MASK_CUSTOMIZE
#define WM_SCANTYPE_ACTIVE_CUSTOM 2
#define WM_SCANTYPE_PASSIVE_CUSTOM 3
#endif

#define WM_NUM_MAX_CHILD 15
#define WM_NUM_MAX_AP_AID 2007

#define WM_NUM_OF_PORT 16
#define WM_NUM_OF_SEQ_PORT 8
typedef enum WMPort {
    WM_PORT_RAWDATA = 0,
    WM_PORT_BT = 1,
    WM_PORT_RESERVE_02 = 2,
    WM_PORT_RESERVE_03 = 3,

    WM_PORT_RESERVE_10 = 8,
    WM_PORT_RESERVE_11 = 9,
    WM_PORT_RESERVE_12 = 10,
    WM_PORT_RESERVE_13 = 11
} WMPort;

#define WM_SEND_QUEUE_NUM 32
#define WM_SEND_QUEUE_END ((u16)0xffff)
#define WM_PRIORITY_LEVEL 4
typedef enum WMPriorityLevel {
    WM_PRIORITY_URGENT = 0,
    WM_PRIORITY_HIGH,
    WM_PRIORITY_NORMAL,
    WM_PRIORITY_LOW
} WMPriorityLevel;

#define WM_VALARM_COUNT_CHILD_MP 240
#define WM_VALARM_COUNT_PARENT_MP 260
#define WM_VALARM_COUNT_RANGE_TOP 220
#define WM_VALARM_COUNT_RANGE_BOTTOM 190

#define WM_MP_FREQ_CONT 16
#define WM_MP_COUNT_LIMIT 256
#define WM_DEFAULT_MP_FREQ_LIMIT 6
#define WM_DEFAULT_MP_PARENT_INTERVAL 1000
#define WM_DEFAULT_MP_CHILD_INTERVAL 0

#define WM_SIZE_BSSID 6
#define WM_SIZE_SSID 32

#define WM_SIZE_GAMEINFO 128

#define WM_SIZE_SCAN_EX_BUF 1024

#define WM_GAMEINFO_LENGTH_MIN 16
#define WM_GAMEINFO_MAGIC_NUMBER 0x0001
#define WM_GAMEINFO_VERSION_NUMBER 1
#define WM_GAMEINFO_PLATFORM_ID_NITRO 0
#define WM_GAMEINFO_PLATFORM_ID_REVOLUTION 8
#define WM_SIZE_SYSTEM_GAMEINFO 16
#define WM_SIZE_USER_GAMEINFO 112

#define WM_SIZE_SCAN_PARAM 32

#define WM_PARENT_PARAM_SIZE 64
#define WM_SIZE_USERNAME 8
#define WM_SIZE_GAMENAME 16
#define WM_SIZE_GGID 4

#define WM_SIZE_WL_VERSION 8
#define WM_SIZE_BBP_VERSION 4
#define WM_SIZE_MACADDR 6
#define WM_SIZE_WEPKEY 80

#define WM_SIZE_CHILD_SSID 24

#if (SDK_VERSION_WL >= 21100)
#define WM_SIZE_MP_DATA_MAX 512
#else
#define WM_SIZE_MP_DATA_MAX 508
#endif

#define WM_SIZE_MADATA_HEADER 44

#define WM_SIZE_MP_PARENT_PADDING (WM_HEADER_SIZE + WM_HEADER_PARENT_MAX_SIZE)

#define WM_SIZE_MP_CHILD_PADDING (WM_HEADER_SIZE + WM_HEADER_CHILD_MAX_SIZE)

#define WM_SIZE_DS_PARENT_HEADER 4
#define WM_SIZE_KS_PARENT_DATA (2 * 16 + WM_SIZE_DS_PARENT_HEADER)
#define WM_SIZE_KS_CHILD_DATA 2

#define WM_ATTR_ENTRY_SHIFT 0
#define WM_ATTR_MB_SHIFT 1
#define WM_ATTR_KS_SHIFT 2
#define WM_ATTR_CS_SHIFT 3

#define WM_ATTR_FLAG_ENTRY (1 << WM_ATTR_ENTRY_SHIFT)
#define WM_ATTR_FLAG_MB (1 << WM_ATTR_MB_SHIFT)
#define WM_ATTR_FLAG_KS (1 << WM_ATTR_KS_SHIFT)
#define WM_ATTR_FLAG_CS (1 << WM_ATTR_CS_SHIFT)

#define WM_EXCEPTION_CB_MASK 0x0001

#define WM_HEADER_SIZE 2

#define WM_HEADER_KS 0x4000
#define WM_HEADER_VSYNC 0x8000

#define WM_HEADER_PARENT_MAX_SIZE 4

#define WM_HEADER_CHILD_MAX_SIZE 2

#define WM_HEADER_PORT_MASK 0x0f00
#define WM_HEADER_PORT_SHIFT 8
#define WM_HEADER_SEQ_FLAG 0x0800
#define WM_HEADER_DEST_BITMAP 0x1000
#define WM_HEADER_LENGTH_MASK 0x00ff
#define WM_HEADER_LENGTH_SCALE 2

#define WM_SEQ_PORT_FLAG 0x0008
#define WM_SEQ_PORT_MASK 0x0007

#define WM_HEADER_SEQ_RETRY 0x8000
#define WM_HEADER_SEQ_NUM_MASK 0x7fff

#define WM_PACKED_PACKET_MAX 128

typedef enum WMErrCode {
    WM_ERRCODE_SUCCESS = 0,
    WM_ERRCODE_FAILED = 1,
    WM_ERRCODE_OPERATING = 2,
    WM_ERRCODE_ILLEGAL_STATE = 3,
    WM_ERRCODE_WM_DISABLE = 4,
    WM_ERRCODE_NO_KEYSET = 5,
    WM_ERRCODE_NO_DATASET = 5,
    WM_ERRCODE_INVALID_PARAM = 6,
    WM_ERRCODE_NO_CHILD = 7,
    WM_ERRCODE_FIFO_ERROR = 8,
    WM_ERRCODE_TIMEOUT = 9,
    WM_ERRCODE_SEND_QUEUE_FULL = 10,
    WM_ERRCODE_NO_ENTRY = 11,
    WM_ERRCODE_OVER_MAX_ENTRY = 12,
    WM_ERRCODE_INVALID_POLLBITMAP = 13,
    WM_ERRCODE_NO_DATA = 14,
    WM_ERRCODE_SEND_FAILED = 15,

    WM_ERRCODE_DCF_TEST,
    WM_ERRCODE_WL_INVALID_PARAM,
    WM_ERRCODE_WL_LENGTH_ERR,

    WM_ERRCODE_FLASH_ERROR,
    WM_ERRCODE_MAX
} WMErrCode;

typedef enum WMStateCode {
    WM_STATECODE_PARENT_START = 0,
    WM_STATECODE_BEACON_SENT = 2,

    WM_STATECODE_SCAN_START = 3,
    WM_STATECODE_PARENT_NOT_FOUND = 4,
    WM_STATECODE_PARENT_FOUND = 5,

    WM_STATECODE_CONNECT_START = 6,
    WM_STATECODE_BEACON_LOST = 8,

    WM_STATECODE_CONNECTED = 7,
    WM_STATECODE_CHILD_CONNECTED = 7,
    WM_STATECODE_DISCONNECTED = 9,
    WM_STATECODE_DISCONNECTED_FROM_MYSELF = 26,

    WM_STATECODE_MP_START = 10,
    WM_STATECODE_MPEND_IND = 11,
    WM_STATECODE_MP_IND = 12,
    WM_STATECODE_MPACK_IND = 13,

    WM_STATECODE_DCF_START = 14,
    WM_STATECODE_DCF_IND = 15,

    WM_STATECODE_BEACON_RECV = 16,
    WM_STATECODE_DISASSOCIATE = 17,
    WM_STATECODE_REASSOCIATE = 18,
    WM_STATECODE_AUTHENTICATE = 19,

    WM_STATECODE_PORT_INIT = 25,
    WM_STATECODE_PORT_SEND = 20,
    WM_STATECODE_PORT_RECV = 21,

    WM_STATECODE_FIFO_ERROR = 22,
    WM_STATECODE_INFORMATION = 23,
    WM_STATECODE_UNKNOWN = 24,

    WM_STATECODE_MAX = 27
} WMStateCode;

typedef enum WMState {
    WM_STATE_READY = 0,
    WM_STATE_STOP,
    WM_STATE_IDLE,
    WM_STATE_CLASS1,
    WM_STATE_TESTMODE,
    WM_STATE_SCAN,
    WM_STATE_CONNECT,
    WM_STATE_PARENT,
    WM_STATE_CHILD,
    WM_STATE_MP_PARENT,
    WM_STATE_MP_CHILD,
    WM_STATE_DCF_CHILD,
    WM_STATE_TESTMODE_RX,
    WM_STATE_MAX
} WMState;

typedef enum WMLinkLevel {
    WM_LINK_LEVEL_0 = 0,
    WM_LINK_LEVEL_1,
    WM_LINK_LEVEL_2,
    WM_LINK_LEVEL_3,
    WM_LINK_LEVEL_MAX
} WMLinkLevel;

typedef enum WMDataSharingState {
    WM_DS_STATE_READY = 0,
    WM_DS_STATE_START,
    WM_DS_STATE_PAUSING,
    WM_DS_STATE_PAUSED,
    WM_DS_STATE_RETRY_SEND,
    WM_DS_STATE_ERROR
} WMDataSharingState;

typedef enum WMDisconnectReason {
    WM_DISCONNECT_REASON_RESERVED = 0,
    WM_DISCONNECT_REASON_UNSPECIFIED = 1,
    WM_DISCONNECT_REASON_PREV_AUTH_INVALID = 2,
    WM_DISCONNECT_REASON_DEAUTH_LEAVING = 3,
    WM_DISCONNECT_REASON_INACTIVE = 4,
    WM_DISCONNECT_REASON_UNABLE_HANDLE = 5,
    WM_DISCONNECT_REASON_RX_CLASS2_FROM_NONAUTH_STA = 6,
    WM_DISCONNECT_REASON_RX_CLASS3_FROM_NONASSOC_STA = 7,
    WM_DISCONNECT_REASON_DISASSOC_LEAVING = 8,
    WM_DISCONNECT_REASON_ASSOC_STA_NOTAUTHED = 9,

    WM_DISCONNECT_REASON_NO_ENTRY = 19,

    WM_DISCONNECT_REASON_MP_LIFETIME = 0x8001,
    WM_DISCONNECT_REASON_TGID_CHANGED = 0x8002,
    WM_DISCONNECT_REASON_FATAL_ERROR = 0x8003,

    WM_DISCONNECT_REASON_FROM_MYSELF = 0xf001
} WMDisconnectReason;

typedef enum WMInfoCode {
    WM_INFOCODE_NONE = 0,
    WM_INFOCODE_FATAL_ERROR
} WMInfoCode;

#define WM_MP_PARAM_MIN_FREQUENCY 0x0001
#define WM_MP_PARAM_FREQUENCY 0x0002
#define WM_MP_PARAM_MAX_FREQUENCY 0x0004
#define WM_MP_PARAM_PARENT_SIZE 0x0008
#define WM_MP_PARAM_CHILD_SIZE 0x0010
#define WM_MP_PARAM_PARENT_INTERVAL 0x0020
#define WM_MP_PARAM_CHILD_INTERVAL 0x0040
#define WM_MP_PARAM_PARENT_VCOUNT 0x0080
#define WM_MP_PARAM_CHILD_VCOUNT 0x0100
#define WM_MP_PARAM_DEFAULT_RETRY_COUNT 0x0200
#define WM_MP_PARAM_MIN_POLL_BMP_MODE 0x0400
#define WM_MP_PARAM_SINGLE_PACKET_MODE 0x0800
#define WM_MP_PARAM_IGNORE_FATAL_ERROR_MODE 0x1000
#define WM_MP_PARAM_IGNORE_SIZE_PRECHECK_MODE 0x2000

#define WM_MP_PARAM_MUST_SET_BEFORE_MP (WM_MP_PARAM_MIN_POLL_BMP_MODE | WM_MP_PARAM_SINGLE_PACKET_MODE | WM_MP_PARAM_IGNORE_SIZE_PRECHECK_MODE)

#define WM_MP_TMP_PARAM_MIN_FREQUENCY 0x0001
#define WM_MP_TMP_PARAM_FREQUENCY 0x0002
#define WM_MP_TMP_PARAM_MAX_FREQUENCY 0x0004
#define WM_MP_TMP_PARAM_DEFAULT_RETRY_COUNT 0x0200
#define WM_MP_TMP_PARAM_MIN_POLL_BMP_MODE 0x0400
#define WM_MP_TMP_PARAM_SINGLE_PACKET_MODE 0x0800
#define WM_MP_TMP_PARAM_IGNORE_FATAL_ERROR_MODE 0x1000

#define WM_MP_PARAM_INTERVAL_MAX 10000

#define WM_MISC_FLAG_LISTEN_ONLY 0x0001
#define WM_MISC_FLAG_NO_BLINK 0x0002

typedef void (* WMcallbackFunc) (void * arg);
typedef void (* WMCallbackFunc) (void * arg);

#define WM_ARM9WM_BUF_SIZE 512
#define WM_ARM7WM_BUF_SIZE (256 + 512)
#define WM_STATUS_BUF_SIZE 2048
#define WM_FIFO_BUF_SIZE 256

#define WM_SYSTEM_BUF_SIZE (WM_ARM9WM_BUF_SIZE + WM_ARM7WM_BUF_SIZE + WM_STATUS_BUF_SIZE + WM_FIFO_BUF_SIZE + WM_FIFO_BUF_SIZE)
#define WM_BSS_DESC_SIZE 192

#define WM_DCF_MAX_SIZE 1508
#define WM_KEYSET_SIZE 36
#define WM_KEYDATA_SIZE 2

#define WM_DS_HEADER_SIZE 4

#ifdef WM_DS_DATA_SIZE_252
#define WM_DS_DATA_SIZE 252
#else
#define WM_DS_DATA_SIZE 508

#endif

#define WM_DS_DATASET_NUM 4
#define WM_DS_INFO_SIZE (sizeof(WMDataSharingInfo))

#define WM_SCAN_EX_PARENT_MAX 16
#define WM_SCAN_OTHER_ELEMENT_MAX 16

typedef struct WMDataSet {
    u16 aidBitmap;
    u16 receivedBitmap;
    u16 data[WM_DS_DATA_SIZE / sizeof(u16)];
} WMDataSet;

typedef struct WMDataSharingInfo {
    WMDataSet ds[WM_DS_DATASET_NUM];
    u16 seqNum[WM_DS_DATASET_NUM];
    u16 writeIndex;
    u16 sendIndex;
    u16 readIndex;
    u16 aidBitmap;
    u16 dataLength;
    u16 stationNumber;
    u16 dataSetLength;
    u16 port;
    u16 doubleMode;
    u16 currentSeqNum;
    u16 state;
    u16 reserved[1];
} WMDataSharingInfo;

typedef struct WMKeySet {
    u16 seqNum;
    u16 rsv;
    u16 key[16];
} WMKeySet, WMkeySet;

typedef WMDataSharingInfo WMKeySetBuf, WMkeySetBuf;

typedef struct {
    u16 next;
    u16 port;
    u16 destBitmap;
    u16 restBitmap;
    u16 sentBitmap;
    u16 sendingBitmap;
    u16 padding;
    u16 size;
    u16 seqNo;
    u16 retryCount;
    const u16 * data;
    WMCallbackFunc callback;
    void * arg;
} WMPortSendQueueData;

typedef struct {
    u16 head;
    u16 tail;
} WMPortSendQueue;

typedef struct WMMpRecvBuf {
    u16 rsv1[3];
    u16 length;

    u16 rsv2[1];
    u16 ackTimeStamp;
    u16 timeStamp;
    u16 rate_rssi;
    u16 rsv3[2];

    u16 rsv4[2];
    u8 destAdrs[6];
    u8 srcAdrs[6];
    u16 rsv5[3];
    u16 seqCtrl;

    u16 txop;
    u16 bitmap;
    u16 wmHeader;
    u16 data[2];
} WMMpRecvBuf, WMmpRecvBuf;

typedef struct WMMpRecvData {
    u16 length;
    u16 rate_rssi;
    u16 aid;
    u16 noResponse;
    u16 wmHeader;
    u16 cdata[1];
} WMMpRecvData, WMmpRecvData;

typedef struct WMMpRecvHeader {
    u16 bitmap;
#if SDK_VERSION_WL >= 20500
    u16 errBitmap;
#endif
    u16 count;
    u16 length;
    u16 txCount;
    WMMpRecvData data[1];
} WMMpRecvHeader, WMmpRecvHeader;

typedef struct WMDcfRecvBuf {
    u16 frameID;
    u16 rsv1[2];
    u16 length;

    u16 rsv2[3];
    u16 rate_rssi;
    u16 rsv3[4];
    u8 destAdrs[6];
    u8 srcAdrs[6];
    u16 rsv4[4];

    u16 data[2];
} WMDcfRecvBuf, WMdcfRecvBuf;

typedef struct WMParentParam {
    u16 * userGameInfo;
    u16 userGameInfoLength;
    u16 padding;

    u32 ggid;
    u16 tgid;
    u16 entryFlag;
    u16 maxEntry;
    u16 multiBootFlag;
    u16 KS_Flag;
    u16 CS_Flag;
    u16 beaconPeriod;
    u16 rsv1[WM_SIZE_USERNAME / sizeof(u16)];
    u16 rsv2[WM_SIZE_GAMENAME / sizeof(u16)];
    u16 channel;
    u16 parentMaxSize;
    u16 childMaxSize;

    u16 rsv[4];
} WMParentParam, WMpparam;

typedef struct WMGameInfo {
    u16 magicNumber;
    u8 ver;
    u8 platform;
    u32 ggid;
    u16 tgid;
    u8 userGameInfoLength;
    union {
        u8 gameNameCount_attribute;
        u8 attribute;
    };
    u16 parentMaxSize;
    u16 childMaxSize;
    union {
        u16 userGameInfo[WM_SIZE_USER_GAMEINFO / sizeof(u16)];
        struct {
            u16 userName[WM_SIZE_USERNAME / sizeof(u16)];
            u16 gameName[WM_SIZE_GAMENAME / sizeof(u16)];
            u16 padd1[44];
        } old_type;
    };
} WMGameInfo, WMgameInfo;

#if SDK_VERSION_WL < 17100
typedef struct WMBssDesc {
    u16 length;
    u16 rssi;
    u8 bssid[WM_SIZE_BSSID];
    u16 ssidLength;
    u8 ssid[WM_SIZE_SSID];
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
    u16 gameInfoLength;
    WMGameInfo gameInfo;
    u16 rsv;
} WMBssDesc, WMbssDesc;
#else
typedef struct WMBssDesc {
    u16 length;
    u16 rssi;
    u8 bssid[WM_SIZE_BSSID];
    u16 ssidLength;
    u8 ssid[WM_SIZE_SSID];
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
    u16 gameInfoLength;
    u16 otherElementCount;
    WMGameInfo gameInfo;
} WMBssDesc, WMbssDesc;
#endif

typedef struct WMOtherElements {
    u8 count;
    u8 rsv[3];
    struct {
        u8 id;
        u8 length;
        u8 rsv[2];
        u8 * body;
    } element[WM_SCAN_OTHER_ELEMENT_MAX];
} WMOtherElements;

typedef struct WMScanParam {
    WMBssDesc * scanBuf;
    u16 channel;
    u16 maxChannelTime;
    u8 bssid[WM_SIZE_BSSID];
    u16 rsv[9];
} WMScanParam, WMscanParam;

typedef struct WMScanExParam {
    WMBssDesc * scanBuf;
    u16 scanBufSize;
    u16 channelList;
    u16 maxChannelTime;
    u8 bssid[WM_SIZE_BSSID];
    u16 scanType;
    u16 ssidLength;
    u8 ssid[WM_SIZE_SSID];
#if WM_SSID_MASK_CUSTOMIZE
    u16 ssidMatchLength;
    u16 rsv2[7];
#else
    u16 rsv2[8];
#endif
} WMScanExParam, WMscanExParam;

typedef struct WMMPParam {
    u32 mask;

    u16 minFrequency;
    u16 frequency;
    u16 maxFrequency;
    u16 parentSize;
    u16 childSize;
    u16 parentInterval;
    u16 childInterval;
    u16 parentVCount;
    u16 childVCount;
    u16 defaultRetryCount;
    u8 minPollBmpMode;
    u8 singlePacketMode;
    u8 ignoreFatalErrorMode;
    u8 ignoreSizePrecheckMode;
} WMMPParam;

typedef struct WMMPTmpParam {
    u32 mask;

    u16 minFrequency;
    u16 frequency;
    u16 maxFrequency;
    u16 defaultRetryCount;
    u8 minPollBmpMode;
    u8 singlePacketMode;
    u8 ignoreFatalErrorMode;
    u8 reserved[1];
} WMMPTmpParam;

typedef struct WMStatus {
    u16 state;
    u16 BusyApiid;

    BOOL apiBusy;
    BOOL scan_continue;
    BOOL mp_flag;
    BOOL dcf_flag;
    BOOL ks_flag;
    BOOL dcf_sendFlag;
    BOOL VSyncFlag;

    u8 wlVersion[WM_SIZE_WL_VERSION];
    u16 macVersion;
    u16 rfVersion;
    u16 bbpVersion[WM_SIZE_BBP_VERSION / sizeof(u16)];

    u16 mp_parentSize;
    u16 mp_childSize;
    u16 mp_parentMaxSize;
    u16 mp_childMaxSize;
    u16 mp_sendSize;
    u16 mp_recvSize;
    u16 mp_maxSendSize;
    u16 mp_maxRecvSize;
    u16 mp_parentVCount;
    u16 mp_childVCount;
    u16 mp_parentInterval;
    u16 mp_childInterval;

    OSTick mp_parentIntervalTick;
    OSTick mp_childIntervalTick;

    u16 mp_minFreq;
    u16 mp_freq;
    u16 mp_maxFreq;

    u16 mp_vsyncOrderedFlag;
    u16 mp_vsyncFlag;
    s16 mp_count;
    s16 mp_limitCount;
    u16 mp_resumeFlag;
    u16 mp_prevPollBitmap;
    u16 mp_prevWmHeader;
    u16 mp_prevTxop;
    u16 mp_prevDataLength;
    u16 mp_recvBufSel;
    u16 mp_recvBufSize;
    WMMpRecvBuf * mp_recvBuf[2];
    u32 * mp_sendBuf;
    u16 mp_sendBufSize;

    u16 mp_ackTime;
    u16 mp_waitAckFlag;

    u16 mp_readyBitmap;

    u16 mp_newFrameFlag;
    u16 mp_setDataFlag;
    u16 mp_sentDataFlag;
    u16 mp_bufferEmptyFlag;
    u16 mp_isPolledFlag;

    u16 mp_minPollBmpMode;
    u16 mp_singlePacketMode;
    u8 reserved_c[2];
    u16 mp_defaultRetryCount;
    u16 mp_ignoreFatalErrorMode;
    u16 mp_ignoreSizePrecheckMode;

    u16 mp_pingFlag;
    u16 mp_pingCounter;

    u8 dcf_destAdr[WM_SIZE_MACADDR];
    u16 * dcf_sendData;
    u16 dcf_sendSize;
    u16 dcf_recvBufSel;
    WMDcfRecvBuf * dcf_recvBuf[2];
    u16 dcf_recvBufSize;

    u16 curr_tgid;

    u16 linkLevel;
    u16 minRssi;
    u16 rssiCounter;

    u16 beaconIndicateFlag;
    u16 wepKeyId;
    u16 pwrMgtMode;
    u32 miscFlags;

    u16 VSyncBitmap;
    u16 valarm_queuedFlag;

    u32 v_tsf;
    u32 v_tsf_bak;
    u32 v_remain;
    u16 valarm_counter;

    u8 reserved_e[2];

    u8 MacAddress[WM_SIZE_MACADDR];
    u16 mode;

    WMParentParam pparam;
    u8 childMacAddress[WM_NUM_MAX_CHILD][WM_SIZE_MACADDR];
    u16 child_bitmap;

    WMBssDesc * pInfoBuf;
    u16 aid;
    u8 parentMacAddress[WM_SIZE_MACADDR];
    u16 scan_channel;

    u8 reserved_f[4];

    u16 wepMode;
    BOOL wep_flag;
    u16 wepKey[WM_SIZE_WEPKEY / sizeof(u16)];

    u16 rate;
    u16 preamble;

    u16 tmptt;
    u16 retryLimit;

    u16 enableChannel;

    u16 allowedChannel;

    u16 portSeqNo[WM_NUM_MAX_CHILD + 1][WM_NUM_OF_SEQ_PORT];

    WMPortSendQueueData sendQueueData[WM_SEND_QUEUE_NUM];
    WMPortSendQueue sendQueueFreeList;
    WMPortSendQueue sendQueue[WM_PRIORITY_LEVEL];
    WMPortSendQueue readyQueue[WM_PRIORITY_LEVEL];
    OSMutex sendQueueMutex;
    BOOL sendQueueInUse;

    OSTick mp_lastRecvTick[1 + WM_NUM_MAX_CHILD];
    OSTick mp_lifeTimeTick;

    u16 mp_current_minFreq;
    u16 mp_current_freq;
    u16 mp_current_maxFreq;
    u16 mp_current_minPollBmpMode;
    u16 mp_current_singlePacketMode;
    u16 mp_current_defaultRetryCount;
    u16 mp_current_ignoreFatalErrorMode;
    u8 reserved_g[2];
} WMStatus, WMstatus;

typedef struct WMArm7Buf {
    WMStatus * status;

    u8 reserved_a[4];
    u32 * fifo7to9;

    u8 reserved_b[4];

    WMBssDesc connectPInfo;

    u32 requestBuf[512 / sizeof(u32)];
} WMArm7Buf, WMarm7Buf;

#define WM_NUM_OF_CALLBACK (WM_APIID_ASYNC_KIND_MAX - 2)

typedef struct WMArm9Buf {
    WMArm7Buf * WM7;
    WMStatus * status;
    u32 * indbuf;
    u32 * fifo9to7;
    u32 * fifo7to9;

    u16 dmaNo;
    u16 scanOnlyFlag;

    WMCallbackFunc CallbackTable[WM_NUM_OF_CALLBACK];
    WMCallbackFunc indCallback;

    WMCallbackFunc portCallbackTable[WM_NUM_OF_PORT];
    void * portCallbackArgument[WM_NUM_OF_PORT];
    u32 connectedAidBitmap;
    u16 myAid;

    u8 reserved1[WM_ARM9WM_BUF_SIZE -
                 (20 + 4 + 4 * WM_NUM_OF_CALLBACK + 4 + (4 + 4) * WM_NUM_OF_PORT + 6)];
} WMArm9Buf, WMarm9Buf;

typedef struct WMStartScanReq {
    u16 apiid;
    u16 channel;
    WMBssDesc * scanBuf;
    u16 maxChannelTime;
    u8 bssid[WM_SIZE_BSSID];
} WMStartScanReq, WMstartScanReq;

typedef struct WMStartScanExReq {
    u16 apiid;
    u16 channelList;
    WMBssDesc * scanBuf;
    u16 scanBufSize;
    u16 maxChannelTime;
    u8 bssid[WM_SIZE_BSSID];
    u16 scanType;
    u16 ssidLength;
    u8 ssid[WM_SIZE_SSID];
#if WM_SSID_MASK_CUSTOMIZE
    u16 ssidMatchLength;
    u16 rsv[2];
#else
    u16 rsv[3];
#endif
} WMStartScanExReq, WMstartScanExReq;

typedef struct WMStartConnectReq {
    u16 apiid;
    u16 reserved;
    WMBssDesc * pInfo;
    u8 ssid[WM_SIZE_CHILD_SSID];
    BOOL powerSave;
    u16 reserved2;
    u16 authMode;
} WMStartConnectReq, WMstartConnectReq;

typedef struct WMMeasureChannelReq {
    u16 apiid;
    u16 ccaMode;
    u16 edThreshold;
    u16 channel;
    u16 measureTime;
} WMMeasureChannelReq, WMmeasureChannelReq;

typedef struct WMSetMPParameterReq {
    u16 apiid;
    u16 reserved;

    WMMPParam param;
} WMSetMPParameterReq;

typedef struct WMStartMPReq {
    u16 apiid;
    u16 rsv1;
    u32 * recvBuf;
    u32 recvBufSize;
    u32 * sendBuf;
    u32 sendBufSize;

    WMMPParam param;
    WMMPTmpParam tmpParam;
} WMStartMPReq;

typedef struct WMStartTestModeReq {
    u16 apiid;
    u16 control;
    u16 signal;
    u16 rate;
    u16 channel;
} WMStartTestModeReq, WMstartTestModeReq;

typedef struct WMStartTestRxModeReq {
    u16 apiid;
    u16 channel;
} WMStartTestRxModeReq, WMstartTestRxModeReq;

typedef struct WMCallback {
    u16 apiid;
    u16 errcode;
    u16 wlCmdID;
    u16 wlResult;
} WMCallback;

typedef struct WMStartParentCallback {
    u16 apiid;
    u16 errcode;
    u16 wlCmdID;
    u16 wlResult;
    u16 state;
    u8 macAddress[WM_SIZE_MACADDR];
    u16 aid;
    u16 reason;
    u8 ssid[WM_SIZE_CHILD_SSID];
    u16 parentSize;
    u16 childSize;
} WMStartParentCallback, WMstartParentCallback;

typedef struct WMStartScanCallback {
    u16 apiid;
    u16 errcode;
    u16 wlCmdID;
    u16 wlResult;
    u16 state;
    u8 macAddress[WM_SIZE_MACADDR];
    u16 channel;
    u16 linkLevel;
    u16 ssidLength;
    u16 ssid[WM_SIZE_SSID / sizeof(u16)];
    u16 gameInfoLength;
    WMGameInfo gameInfo;
} WMStartScanCallback, WMstartScanCallback;

typedef struct WMStartScanExCallback {
    u16 apiid;
    u16 errcode;
    u16 wlCmdID;
    u16 wlResult;
    u16 state;
    u16 channelList;
    u8 reserved[2];
    u16 bssDescCount;
    WMBssDesc * bssDesc[WM_SCAN_EX_PARENT_MAX];
    u16 linkLevel[WM_SCAN_EX_PARENT_MAX];
} WMStartScanExCallback, WMstartScanExCallback;

typedef struct WMStartConnectCallback {
    u16 apiid;
    u16 errcode;
    u16 wlCmdID;
    u16 wlResult;
    u16 state;
    u16 aid;
    u16 reason;
    u16 wlStatus;
    u8 macAddress[WM_SIZE_MACADDR];
    u16 parentSize;
    u16 childSize;
} WMStartConnectCallback, WMstartConnectCallback;

typedef struct WMDisconnectCallback {
    u16 apiid;
    u16 errcode;
    u16 wlCmdID;
    u16 wlResult;
    u16 tryBitmap;
    u16 disconnectedBitmap;
} WMDisconnectCallback;

typedef struct WMSetMPParameterCallback {
    u16 apiid;
    u16 errcode;
    u32 mask;
    WMMPParam oldParam;
} WMSetMPParameterCallback;

typedef struct WMStartMPCallback {
    u16 apiid;
    u16 errcode;
    u16 state;
    u8 reserved[2];
    WMMpRecvBuf * recvBuf;

    u16 timeStamp;
    u16 rate_rssi;
    u8 destAdrs[6];
    u8 srcAdrs[6];
    u16 seqNum;
    u16 tmptt;
    u16 pollbmp;
    u16 reserved2;
} WMStartMPCallback, WMstartMPCallback;

typedef struct WMStartDCFCallback {
    u16 apiid;
    u16 errcode;
    u16 state;
    u8 reserved[2];
    WMDcfRecvBuf * recvBuf;
} WMStartDCFCallback, WMstartDCFCallback;

typedef struct WMMeasureChannelCallback {
    u16 apiid;
    u16 errcode;
    u16 wlCmdID;
    u16 wlResult;
    u16 channel;
    u16 ccaBusyRatio;
} WMMeasureChannelCallback, WMmeasureChannelCallback;

typedef struct WMGetWirelessCounterCallback {
    u16 apiid;
    u16 errcode;
    u16 wlCmdID;
    u16 wlResult;
    u32 TX_Success;
    u32 TX_Failed;
    u32 TX_Retry;
    u32 TX_AckError;
    u32 TX_Unicast;
    u32 TX_Multicast;
    u32 TX_WEP;
    u32 TX_Beacon;
    u32 RX_RTS;
    u32 RX_Fragment;
    u32 RX_Unicast;
    u32 RX_Multicast;
    u32 RX_WEP;
    u32 RX_Beacon;
    u32 RX_FCSError;
    u32 RX_DuplicateError;
    u32 RX_MPDuplicateError;
    u32 RX_ICVError;
    u32 RX_FrameCtrlError;
    u32 RX_LengthError;
    u32 RX_PLCPError;
    u32 RX_BufferOverflowError;
    u32 RX_PathError;
    u32 RX_RateError;
    u32 RX_FCSOK;
    u32 TX_MP;
    u32 TX_KeyData;
    u32 TX_NullKey;
    u32 RX_MP;
    u32 RX_MPACK;
    u32 MPKeyResponseError[15];
} WMGetWirelessCounterCallback, WMgetWirelessCounterCallback;

typedef struct WMIndCallback {
    u16 apiid;
    u16 errcode;
    u16 state;
    u16 reason;
} WMIndCallback, WMindCallback;

typedef struct WMPortSendCallback {
    u16 apiid;
    u16 errcode;
    u16 wlCmdID;
    u16 wlResult;
    u16 state;
    u16 port;
    u16 destBitmap;
    u16 restBitmap;
    u16 sentBitmap;
    u16 rsv;
    const u16 * data;
    union {
        u16 size;
        u16 length;
    };
    u16 seqNo;
    WMCallbackFunc callback;
    void * arg;
    u16 maxSendDataSize;
    u16 maxRecvDataSize;
} WMPortSendCallback;

typedef struct WMPortRecvCallback {
    u16 apiid;
    u16 errcode;
    u16 state;
    u16 port;
    WMMpRecvBuf * recvBuf;
    u16 * data;
    u16 length;
    u16 aid;
    u8 macAddress[WM_SIZE_MACADDR];
    u16 seqNo;
    void * arg;
    u16 myAid;
    u16 connectedAidBitmap;
    u8 ssid[WM_SIZE_CHILD_SSID];
    u16 reason;
    u16 rsv;
    u16 maxSendDataSize;
    u16 maxRecvDataSize;
} WMPortRecvCallback;

typedef struct WMBeaconRecvIndCallback {
    u16 apiid;
    u16 errcode;
    u16 state;
    u16 tgid;
    u16 wmstate;
    u16 gameInfoLength;
    WMGameInfo gameInfo;
} WMBeaconRecvIndCallback;

typedef struct WMStartTestModeCallback {
    u16 apiid;
    u16 errcode;
    u32 RFadr5;
    u32 RFadr6;
    u16 PllLockCheck;
    u16 RFMDflag;
} WMStartTestModeCallback;

typedef struct WMStopTestRxModeCallback {
    u16 apiid;
    u16 errcode;
    u32 fcsOk;
    u32 fcsErr;
} WMStopTestRxModeCallback;

#ifdef __cplusplus
}
#endif

#endif
