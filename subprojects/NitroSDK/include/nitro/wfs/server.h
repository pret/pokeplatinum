#ifndef NITRO_WFS_SERVER_H_
#define NITRO_WFS_SERVER_H_

#include <nitro/wfs/format.h>
#include <nitro/mi/device.h>
#include <nitro/fs.h>

#ifdef __cplusplus
extern "C"
{
#endif

#define WFS_LOCK_HANDLE_MAX 15

typedef struct WFSSegmentBuffer {
    u32 offset;
    u32 length;
    void * buffer;
} WFSSegmentBuffer;

typedef struct WFSLockInfo {
    WBTBlockInfoList info;
    int ref;
    u32 offset;
    u32 length;
    u32 ack_seq;
} WFSLockInfo;

typedef struct WFSServerContext {
    void * userdata;
    WFSEventCallback callback;

    void * thread_work;
    void (* thread_hook)(void * thread, void * argument);

    int use_bitmap;
    WFSLockInfo list[WFS_LOCK_HANDLE_MAX];

    WFSTableFormat table[1];
    WBTBlockInfoList table_info[1];
    MIAllocator * allocator;

    int all_bitmap;
    int busy_bitmap;
    int sync_bitmap;
    int ack_bitmap;
    WFSMessageFormat recv_msg[16];

    BOOL is_changing;
    int new_packet;
    int deny_bitmap;

    u8 cache_hit_buf[512];
    WBTContext wbt[1];
    WBTCommandList wbt_list[2];
    BOOL msg_busy;
} WFSServerContext;

void WFS_InitServer(WFSServerContext * context,
                    void * userdata, WFSEventCallback callback,
                    MIAllocator * allocator, int packet);

void WFS_EndServer(WFSServerContext * context);

BOOL WFS_RegisterServerTable(WFSServerContext * context,
                             MIDevice * device, u32 fatbase, u32 overlay);

void WFS_CallServerConnectHook(WFSServerContext * context, const WFSPeerInfo * peer);

void WFS_CallServerDisconnectHook(WFSServerContext * context, const WFSPeerInfo * peer);

void WFS_CallServerPacketSendHook(WFSServerContext * context, WFSPacketBuffer * packet);

void WFS_CallServerPacketRecvHook(WFSServerContext * context, const WFSPacketBuffer * packet);

PLATFORM_ATTRIBUTE_INLINE
int WFS_GetServerConnectedBitmap (const WFSServerContext * context)
{
    return context->all_bitmap;
}

PLATFORM_ATTRIBUTE_INLINE
int WFS_GetServerBusyBitmap (const WFSServerContext * context)
{
    return context->busy_bitmap;
}

PLATFORM_ATTRIBUTE_INLINE
int WFS_GetServerSyncBitmap (const WFSServerContext * context)
{
    return context->sync_bitmap;
}

int WFS_GetServerPacketLength(const WFSServerContext * context);

void WFS_SetServerPacketLength(WFSServerContext * context, int length);

void WFS_SetServerSync(WFSServerContext * context, int bitmap);

BOOL WFS_ExecuteRomServerThread(WFSServerContext * context, FSFile * file, BOOL sharedFS);

#ifdef __cplusplus
}
#endif

#endif
