#ifndef NITRO_WFS_CLIENT_H_
#define NITRO_WFS_CLIENT_H_

#include <nitro/wfs/format.h>
#include <nitro/fs.h>

#ifdef __cplusplus
extern "C"
{
#endif

#define WFS_FILE_SIZE_MAX (4 * 1024 * 1024)

struct WFSClientContext;
typedef void (* WFSRequestClientReadDoneCallback)(struct WFSClientContext * context, BOOL succeeded, void * arg);

typedef struct WFSClientContext {
    void * userdata;
    WFSEventCallback callback;
    MIAllocator * allocator;
    u32 fat_ready : 1;
    u32 flags : 31;

    WBTContext wbt[1];
    WBTCommandList wbt_list[2];
    WBTRecvBufTable recv_buf_table;
    WBTPacketBitmapTable recv_buf_packet_bmp_table;
    WBTBlockInfoTable block_info_table;
    WBTBlockInfo block_info[16];

    u32 * recv_pkt_bmp_buf;
    u32 max_file_size;

    WFSTableFormat table[1];

    u32 block_id;
    CARDRomRegion request_region;
    void * request_buffer;
    WFSRequestClientReadDoneCallback request_callback;
    void * request_argument;
    u8 padding[12];
} WFSClientContext;

void WFS_InitClient(WFSClientContext * context,
                    void * userdata, WFSEventCallback callback,
                    MIAllocator * allocator);

void WFS_StartClient(WFSClientContext * context, const WFSPeerInfo * peer);

void WFS_EndClient(WFSClientContext * context);

void WFS_CallClientConnectHook(WFSClientContext * context, const WFSPeerInfo * peer);

void WFS_CallClientDisconnectHook(WFSClientContext * context, const WFSPeerInfo * peer);

void WFS_CallClientPacketSendHook(WFSClientContext * context, WFSPacketBuffer * packet);

void WFS_CallClientPacketRecvHook(WFSClientContext * context, const WFSPacketBuffer * packet);

PLATFORM_ATTRIBUTE_INLINE
BOOL WFS_IsClientReady (const WFSClientContext * context)
{
    return context->fat_ready ? TRUE : FALSE;
}

PLATFORM_ATTRIBUTE_INLINE
const WFSTableFormat * WFS_GetTableFormat (const WFSClientContext * context)
{
    return WFS_IsClientReady(context) ? context->table : NULL;
}

void WFS_RequestClientRead(WFSClientContext * context, void * buffer, u32 offset,
                           u32 length, WFSRequestClientReadDoneCallback callback,
                           void * arg);

void WFS_GetClientReadProgress(WFSClientContext * context, int * current, int * total);

void WFS_ReplaceRomArchive(WFSClientContext * context);

#ifdef __cplusplus
}
#endif

#endif
