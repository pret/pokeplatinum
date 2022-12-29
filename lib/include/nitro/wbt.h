#ifndef NITRO_WBT_H__
#define NITRO_WBT_H__

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/types.h>
#include <nitro/os.h>

typedef void (* WBTCallback) (void *);

#define WBT_NUM_MAX_BLOCK_INFO_ID 1000

#define WBT_BLOCK_ID_MIN WBT_NUM_MAX_BLOCK_INFO_ID

#define WBT_PACKET_SIZE_MIN 14

#define WBT_USER_ID_LEN 32

#define WBT_SIZE_USER_DATA 9

typedef s16 WBTResult;
#define WBT_RESULT_SUCCESS 0
#define WBT_RESULT_ERROR_TIMEOUT 1
#define WBT_RESULT_ERROR_UNKNOWN_USER_COMMAND 2
#define WBT_RESULT_ERROR_UNKNOWN_PACKET_COMMAND 3
#define WBT_RESULT_ERROR_PARSE_INVALID 4
#define WBT_RESULT_ERROR_RECV_BUFFER_OVERFLOW 5
#define WBT_RESULT_ERROR_SAVE_FAILURE 6

typedef enum {
    WBT_CMD_REQ_NONE = 0,
    WBT_CMD_REQ_WAIT,
    WBT_CMD_REQ_SYNC,
    WBT_CMD_RES_SYNC,
    WBT_CMD_REQ_GET_BLOCK,
    WBT_CMD_RES_GET_BLOCK,
    WBT_CMD_REQ_GET_BLOCKINFO,
    WBT_CMD_RES_GET_BLOCKINFO,
    WBT_CMD_REQ_GET_BLOCK_DONE,
    WBT_CMD_RES_GET_BLOCK_DONE,
    WBT_CMD_REQ_USER_DATA,
    WBT_CMD_RES_USER_DATA,
    WBT_CMD_SYSTEM_CALLBACK,
    WBT_CMD_PREPARE_SEND_DATA,
    WBT_CMD_REQ_ERROR,
    WBT_CMD_RES_ERROR,
    WBT_CMD_CANCEL
} WBTCommandType;

#define WBT_PACKET_BITMAP_SIZE(block_size, packet_size) \
    (((((block_size) + ((packet_size) - WBT_PACKET_SIZE_MIN) - 1) / ((packet_size) - WBT_PACKET_SIZE_MIN)) + 31) / sizeof(u32)) * sizeof(u32)

#define WBT_NUM_OF_AID (WBT_AID_CHILD_LAST + 1)
#define WBT_AID_PARENT 0
#define WBT_AID_CHILD_FIRST 1
#define WBT_AID_CHILD_LAST (WBT_AID_CHILD_FIRST + 15 - 1)
#define WBT_AIDBIT_ALL ((WBTAidBitmap)0xffff)
#define WBT_AIDBIT_PARENT ((WBTAidBitmap)1)
#define WBT_AIDBIT_CHILD_ALL ((WBTAidBitmap)0xfffe)
#define WBT_AIDBIT_CHILD_1 ((WBTAidBitmap)(1 << 1))
#define WBT_AIDBIT_CHILD_2 ((WBTAidBitmap)(1 << 2))
#define WBT_AIDBIT_CHILD_3 ((WBTAidBitmap)(1 << 3))
#define WBT_AIDBIT_CHILD_4 ((WBTAidBitmap)(1 << 4))
#define WBT_AIDBIT_CHILD_5 ((WBTAidBitmap)(1 << 5))
#define WBT_AIDBIT_CHILD_6 ((WBTAidBitmap)(1 << 6))
#define WBT_AIDBIT_CHILD_7 ((WBTAidBitmap)(1 << 7))
#define WBT_AIDBIT_CHILD_8 ((WBTAidBitmap)(1 << 8))
#define WBT_AIDBIT_CHILD_9 ((WBTAidBitmap)(1 << 9))
#define WBT_AIDBIT_CHILD_10 ((WBTAidBitmap)(1 << 10))
#define WBT_AIDBIT_CHILD_11 ((WBTAidBitmap)(1 << 11))
#define WBT_AIDBIT_CHILD_12 ((WBTAidBitmap)(1 << 12))
#define WBT_AIDBIT_CHILD_13 ((WBTAidBitmap)(1 << 13))
#define WBT_AIDBIT_CHILD_14 ((WBTAidBitmap)(1 << 14))
#define WBT_AIDBIT_CHILD_15 ((WBTAidBitmap)(1 << 15))

typedef u8 WBTPacketCommand;
typedef u8 WBTCommandCounter;
typedef u32 WBTBlockId;
typedef u16 WBTAidBitmap;
typedef s8 WBTPermission;
typedef s32 WBTBlockSeqNo;
typedef s16 WBTBlockNumEntry;
typedef s16 WBTPacketSize;
typedef s32 WBTBlockSize;
#define WBT_BLOCK_LIST_TYPE_COMMON 0
#define WBT_BLOCK_LIST_TYPE_USER 1
#define WBT_SIZE_COMMAND sizeof(WBTPacketCommand)
#define WBT_SIZE_TARGET_BITMAP sizeof(WBTAidBitmap)
#define WBT_SIZE_BLOCK_ID sizeof(WBTBlockId)
#define WBT_SIZE_BLOCK_SEQ_NO sizeof(WBTBlockseqNo)
#define WBT_SIZE_BLOCK_NUM_ENTRY sizeof(WBTBlockNumEntry)
#define WBT_SIZE_PERMISSION sizeof(WBTPermission)

typedef struct {
    u32 id;
    s32 block_size;
    u8 user_id[WBT_USER_ID_LEN];
} WBTBlockInfo;

typedef struct WBTBlockInfoList {
    WBTBlockInfo data_info;
    struct WBTBlockInfoList * next;
    void * data_ptr;
    WBTAidBitmap permission_bmp;
    u16 block_type;
} WBTBlockInfoList;

typedef struct {
    WBTBlockInfo * block_info[WBT_NUM_OF_AID];
} WBTBlockInfoTable;

typedef struct {
    u32 * packet_bitmap[WBT_NUM_OF_AID];
} WBTPacketBitmapTable;

typedef struct {
    u8 * recv_buf[WBT_NUM_OF_AID];
} WBTRecvBufTable;

typedef struct {
    WBTBlockNumEntry num_of_list;
    s16 peer_packet_size;
    s16 my_packet_size;
    u16 pad1;
    u32 padd2[2];
} WBTRequestSyncCallback;

typedef struct {
    u32 block_id;
} WBTGetBlockDoneCallback;

typedef struct {
    u32 block_id;
    s32 block_seq_no;
    void * data_ptr;
    s16 own_packet_size;
    u16 padd;
} WBTPrepareSendDataCallback;

typedef struct {
    u8 data[WBT_SIZE_USER_DATA];
    u8 size;
    u8 padd[3];
} WBTRecvUserDataCallback;

typedef struct {
    u32 block_id;
    u32 recv_data_size;
    WBTRecvBufTable recv_buf_table;
    WBTPacketBitmapTable pkt_bmp_table;
} WBTGetBlockCallback;

typedef struct {
    WBTCommandType command;
    WBTCommandType event;
    u16 target_bmp;
    u16 peer_bmp;
    WBTCommandCounter my_cmd_counter;
    WBTCommandCounter peer_cmd_counter;
    WBTResult result;
    WBTCallback callback;
    union {
        WBTRequestSyncCallback sync;
        WBTGetBlockDoneCallback blockdone;
        WBTPrepareSendDataCallback prepare_send_data;
        WBTRecvUserDataCallback user_data;
        WBTGetBlockCallback get;
    };
} WBTCommand;

void WBT_InitParent(int send_packet_size, int recv_packet_size, WBTCallback callback);

void WBT_InitChild(WBTCallback callback);

void WBT_End(void);

int WBT_AidbitmapToAid(u16 abmp);

static inline u16 WBT_AidToAidbitmap (int aid)
{
    return (u16)(1 << aid);
}

int WBT_GetOwnAid(void);

int WBT_CalcPacketbitmapSize(int block_size);

BOOL WBT_GetCurrentDownloadProgress(u32 block_id, int aid, int * current_count, int * total_count);

int WBT_NumOfRegisteredBlock(void);

BOOL WBT_RegisterBlock(WBTBlockInfoList * block_info_list, u32 block_id,
                       const void * user_id, const void * data_ptr, int data_size,
                       u16 permission_bmp);

WBTBlockInfoList * WBT_UnregisterBlock(u32 block_id);

void WBT_PrintBTList(void);

BOOL WBT_SetPacketSize(int send_packet_size, int recv_packet_size);

int WBT_MpParentSendHook(void * sendbuf, int send_size);

void WBT_MpParentRecvHook(const void * recv_buf, int recv_size, int aid);

void WBT_SetOwnAid(int aid);

int WBT_MpChildSendHook(void * sendbuf, int send_size);

void WBT_MpChildRecvHook(const void * recv_buf, int recv_size);

BOOL WBT_RequestSync(u16 target, WBTCallback callback);

BOOL WBT_GetBlockInfo(u16 target, int index,
                      WBTBlockInfoTable * block_info_table, WBTCallback callback);

BOOL WBT_GetBlock(u16 target, u32 block_id,
                  WBTRecvBufTable * recv_buf_table, u32 recv_size,
                  WBTPacketBitmapTable * p_bmp_table, WBTCallback callback);

BOOL WBT_PutUserData(u16 target, const void * user_data, int size, WBTCallback callback);

BOOL WBT_CancelCurrentCommand(u16 target);

#ifdef __cplusplus
}
#endif

#endif
