#ifndef NITRO_WBT_CONTEXT_H_
#define NITRO_WBT_CONTEXT_H_

#include <nitro/platform.h>
#include <nitro/misc.h>
#include <nitro/math/math.h>
#include <nitro/wbt.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct WBTPacketRequestSyncFormat {
    PLATFORM_LE16 peer_packet;
    PLATFORM_LE16 own_packet;
} PLATFORM_STRUCT_PADDING_FOOTER WBTPacketRequestSyncFormat;

typedef struct WBTPacketResponseSyncFormat {
    PLATFORM_LE16 block_total;
    PLATFORM_LE16 peer_packet;
    PLATFORM_LE16 own_packet;
} PLATFORM_STRUCT_PADDING_FOOTER WBTPacketResponseSyncFormat;

typedef struct WBTPacketRequestUserDataFormat {
    PLATFORM_LE8 length;
    PLATFORM_LE8 buffer[WBT_SIZE_USER_DATA];
} WBTPacketRequestUserDataFormat;

typedef struct WBTPacketRequestGetBlockDoneFormat {
    PLATFORM_LE32 id;
} WBTPacketRequestGetBlockDoneFormat;

typedef struct WBTPacketResponseGetBlockDoneFormat {
    PLATFORM_LE32 id;
} WBTPacketResponseGetBlockDoneFormat;

typedef struct WBTPacketRequestGetBlockFormat {
    PLATFORM_LE32 id;
    PLATFORM_LE32 index;
} WBTPacketRequestGetBlockFormat;

typedef struct WBTPacketResponseGetBlockFormat {
    PLATFORM_LE32 id;
    PLATFORM_LE32 index;
} WBTPacketResponseGetBlockFormat;

typedef struct WBTPacketHeaderFormat {
    PLATFORM_LE8 command;
    PLATFORM_LE16 bitmap;
    PLATFORM_LE8 counter;
} PLATFORM_STRUCT_PADDING_FOOTER WBTPacketHeaderFormat;

typedef struct WBTPacketFormat {
    WBTPacketHeaderFormat header;

    union {
        u8 argument[10];
        WBTPacketRequestSyncFormat req_sync;
        WBTPacketResponseSyncFormat res_sync;
        WBTPacketRequestUserDataFormat req_userdata;
        WBTPacketRequestGetBlockDoneFormat req_getblock_done;
        WBTPacketResponseGetBlockDoneFormat res_getblock_done;
        WBTPacketRequestGetBlockFormat req_getblock;
        WBTPacketResponseGetBlockFormat res_getblock;
        u8 for_compiler[10];
    } PLATFORM_STRUCT_PADDING_FOOTER;
} PLATFORM_STRUCT_PADDING_FOOTER WBTPacketFormat;

PLATFORM_COMPILER_ASSERT(sizeof(WBTPacketHeaderFormat) == 4);
PLATFORM_COMPILER_ASSERT(sizeof(WBTPacketRequestSyncFormat) == 4);
PLATFORM_COMPILER_ASSERT(sizeof(WBTPacketResponseSyncFormat) == 6);
PLATFORM_COMPILER_ASSERT(sizeof(WBTPacketRequestUserDataFormat) == 10);
PLATFORM_COMPILER_ASSERT(sizeof(WBTPacketRequestGetBlockDoneFormat) == 4);
PLATFORM_COMPILER_ASSERT(sizeof(WBTPacketResponseGetBlockDoneFormat) == 4);
PLATFORM_COMPILER_ASSERT(sizeof(WBTPacketRequestGetBlockFormat) == 8);
PLATFORM_COMPILER_ASSERT(sizeof(WBTPacketResponseGetBlockFormat) == 8);
PLATFORM_COMPILER_ASSERT(sizeof(WBTPacketFormat) == 14);

struct WBTContext;
struct WBTCommandList;

typedef void (* WBTEventCallback)(void *, WBTCommand *);

typedef struct WBTCommandList {
    struct WBTCommandList * next;
    WBTCommand command;
    WBTEventCallback callback;
} WBTCommandList;

typedef struct WBTRecvToken {
    u8 token_command;
    u8 token_peer_cmd_counter;
    u8 last_peer_cmd_counter;

    u8 dummy[1];

    u32 token_block_id;
    s32 token_block_seq_no;
} WBTRecvToken;

typedef struct WBTPacketBitmap {
    s32 length;
    void * buffer;
    s32 count;
    s32 total;
    u32 * bitmap;
    s32 current;
} WBTPacketBitmap;

typedef struct WBTContext {
    WBTCommandList * command;
    WBTCommandList * command_pool;

    void * userdata;
    WBTEventCallback callback;

    WBTCommand system_cmd;

    struct {
        WBTRecvToken recv_token;
        WBTPacketBitmap pkt_bmp;
    } peer_param[16];

    int my_aid;
    s16 peer_data_packet_size;
    s16 my_data_packet_size;
    WBTBlockInfoList * list;
    u8 my_command_counter;
    u8 padding[3];
    int last_target_aid;

    u32 last_block_id;
    s32 last_seq_no_1;
    s32 last_seq_no_2;

    int req_bitmap;

    u32 binfo_bitmap[16][MATH_ROUNDUP(sizeof(WBTBlockInfo), sizeof(u32)) / sizeof(u32)];
} WBTContext;

void WBT_InitContext(WBTContext * work, void * userdata, WBTEventCallback callback);

PLATFORM_ATTRIBUTE_INLINE
void WBT_StartParent (WBTContext * work, int own, int peer)
{
    SDK_MIN_ASSERT(own, WBT_PACKET_SIZE_MIN);
    SDK_MIN_ASSERT(peer, WBT_PACKET_SIZE_MIN);
    work->my_aid = 0;
    work->my_data_packet_size = (s16)(own - WBT_PACKET_SIZE_MIN);
    work->peer_data_packet_size = (s16)(peer - WBT_PACKET_SIZE_MIN);
}

PLATFORM_ATTRIBUTE_INLINE
void WBT_StartChild (WBTContext * work, int aid)
{
    work->my_data_packet_size = 0;
    work->peer_data_packet_size = 0;
    work->my_aid = aid;
}

void WBT_ResetContext(WBTContext * work, WBTEventCallback callback);

int WBT_CallPacketSendHook(WBTContext * work, void * buffer, int length, BOOL is_parent);

void WBT_CallPacketRecvHook(WBTContext * work, int aid, const void * buffer, int length);

PLATFORM_ATTRIBUTE_INLINE
void * WBT_GetUserData (const WBTContext * work)
{
    return work->userdata;
}

PLATFORM_ATTRIBUTE_INLINE
int WBT_GetAid (const WBTContext * work)
{
    return work->my_aid;
}

PLATFORM_ATTRIBUTE_INLINE
int WBT_GetOwnPacketLength (const WBTContext * work)
{
    return work->my_data_packet_size;
}

PLATFORM_ATTRIBUTE_INLINE
int WBT_GetPeerPacketLength (const WBTContext * work)
{
    return work->peer_data_packet_size;
}

PLATFORM_ATTRIBUTE_INLINE
int WBT_GetParentPacketLength (const WBTContext * work)
{
    return (work->my_aid == 0) ? work->my_data_packet_size : work->peer_data_packet_size;
}

int WBT_GetRegisteredCount(const WBTContext * work);

PLATFORM_ATTRIBUTE_INLINE
WBTCommandList * WBT_GetCurrentCommandList (const WBTContext * work)
{
    return work->command;
}

PLATFORM_ATTRIBUTE_INLINE
WBTCommand * WBT_GetCurrentCommand (const WBTContext * work)
{
    WBTCommandList * list = work->command;
    return list ? &list->command : NULL;
}

int WBT_GetBitmapLength(const WBTContext * work, int length);

PLATFORM_ATTRIBUTE_INLINE
void WBT_AddCommandPool (WBTContext * work, WBTCommandList * list, int count)
{
    while (--count >= 0) {
        list->next = work->command_pool;
        work->command_pool = list++;
    }
}

PLATFORM_ATTRIBUTE_INLINE
WBTCommandList * WBT_AllocCommandList (WBTContext * work)
{
    WBTCommandList * list = work->command_pool;
    if (list) {
        work->command_pool = list->next;
        list->next = NULL;
    }
    return list;
}

BOOL WBT_SetPacketLength(WBTContext * work, int own, int peer);

PLATFORM_ATTRIBUTE_INLINE
void WBT_CreateCommandSYNC (WBTContext * work, WBTCommandList * list)
{
    (void)work;
    list->command.command = WBT_CMD_REQ_SYNC;
}

PLATFORM_ATTRIBUTE_INLINE
void WBT_CreateCommandINFO (WBTContext * work, WBTCommandList * list,
                            int index, const WBTBlockInfoTable * buffer_table)
{
    WBTGetBlockCallback * arg = &list->command.get;
    arg->block_id = (u32)index;
    arg->recv_data_size = sizeof(WBTBlockInfo);
    {
        int i;
        for (i = 0; i < 16; ++i) {
            arg->pkt_bmp_table.packet_bitmap[i] = work->binfo_bitmap[i];
            arg->recv_buf_table.recv_buf[i] = (u8 *)buffer_table->block_info[i];
        }
    }
    list->command.command = WBT_CMD_REQ_GET_BLOCKINFO;
}

PLATFORM_ATTRIBUTE_INLINE
void WBT_CreateCommandGET (WBTContext * work, WBTCommandList * list,
                           u32 id, u32 length,
                           const WBTRecvBufTable * buffer_table,
                           WBTPacketBitmapTable * bitmap_table)
{
    WBTGetBlockCallback * arg = &list->command.get;
    (void)work;
    arg->block_id = id;
    arg->recv_data_size = length;
    arg->recv_buf_table = *buffer_table;
    arg->pkt_bmp_table = *bitmap_table;
    list->command.command = WBT_CMD_REQ_GET_BLOCK;
}

PLATFORM_ATTRIBUTE_INLINE
void WBT_CreateCommandMSG (WBTContext * work, WBTCommandList * list,
                           const void * buffer, u32 length)
{
    WBTRecvUserDataCallback * arg = &list->command.user_data;
    (void)work;
    SDK_MINMAX_ASSERT(length, 0, WBT_SIZE_USER_DATA);
    arg->size = (u8)length;
    MI_CpuCopy8(buffer, arg->data, length);
    list->command.command = WBT_CMD_REQ_USER_DATA;
}

void WBT_PostCommand(WBTContext * work, WBTCommandList * list, u16 bitmap,
                     WBTEventCallback callback);

PLATFORM_ATTRIBUTE_INLINE
BOOL WBT_PostCommandSYNC (WBTContext * context, int bitmap, WBTEventCallback callback)
{
    WBTCommandList * list = WBT_AllocCommandList(context);
    if (list) {
        WBT_CreateCommandSYNC(context, list);
        WBT_PostCommand(context, list, (u16)bitmap, callback);
    }
    return (list != NULL);
}

PLATFORM_ATTRIBUTE_INLINE
BOOL WBT_PostCommandINFO (WBTContext * context, int bitmap, WBTEventCallback callback,
                          int index, const WBTBlockInfoTable * buffer_table)
{
    WBTCommandList * list = WBT_AllocCommandList(context);
    if (list) {
        WBT_CreateCommandINFO(context, list, index, buffer_table);
        WBT_PostCommand(context, list, (u16)bitmap, callback);
    }
    return (list != NULL);
}

PLATFORM_ATTRIBUTE_INLINE
BOOL WBT_PostCommandGET (WBTContext * context, int bitmap, WBTEventCallback callback,
                         u32 id, u32 length, const WBTRecvBufTable * buffer_table,
                         WBTPacketBitmapTable * bitmap_table)
{
    WBTCommandList * list = WBT_AllocCommandList(context);
    if (list) {
        WBT_CreateCommandGET(context, list, id, length, buffer_table, bitmap_table);
        WBT_PostCommand(context, list, (u16)bitmap, callback);
    }
    return (list != NULL);
}

PLATFORM_ATTRIBUTE_INLINE
BOOL WBT_PostCommandMSG (WBTContext * context, int bitmap, WBTEventCallback callback,
                         const void * buffer, u32 length)
{
    WBTCommandList * list = WBT_AllocCommandList(context);
    if (list) {
        WBT_CreateCommandMSG(context, list, buffer, length);
        WBT_PostCommand(context, list, (u16)bitmap, callback);
    }
    return (list != NULL);
}

int WBT_CancelCommand(WBTContext * work, int bitmap);

void WBT_GetDownloadProgress(const WBTContext * work, u32 id, int aid, int * current, int * total);

void WBT_RegisterBlockInfo(WBTContext * work, WBTBlockInfoList * list, u32 id,
                           const void * userinfo, const void * buffer, int length);

WBTBlockInfoList * WBT_UnregisterBlockInfo(WBTContext * work, u32 id);

#ifdef __cplusplus
}
#endif

#endif
