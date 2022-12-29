#ifndef NITRO_WFS_FORMAT_H_
#define NITRO_WFS_FORMAT_H_

#include <nitro/misc.h>
#include <nitro/types.h>
#include <nitro/platform.h>

#include <nitro/wbt/context.h>

#include <nitro/mi/allocator.h>
#include <nitro/mi/device.h>
#include <nitro/mi/endian.h>
#include <nitro/card.h>

#ifdef __cplusplus
extern "C"
{
#endif

#if defined(WFS_DEBUG_OUTPUT_ON) && !defined(SDK_FINALROM)
#define WFS_DEBUG_OUTPUT(formats)   \
    OS_TPrintf("WFS| ");            \
    OS_TPrintf formats;            \
    OS_TPrintf("\n")
#else
#define WFS_DEBUG_OUTPUT(...) (void)0
#endif

#define WFS_MSG_LOCK_REQ 0
#define WFS_MSG_LOCK_ACK 1

#define WFS_MSG_UNLOCK_REQ 2
#define WFS_MSG_UNLOCK_ACK 3

#define WFS_LOCKED_BLOCK_INDEX 0x10001U
#define WFS_TABLE_BLOCK_INDEX 0x20000U

typedef enum WFSTableRegionType {
    WFS_TABLE_REGION_FAT,
    WFS_TABLE_REGION_FNT,
    WFS_TABLE_REGION_OV9,
    WFS_TABLE_REGION_OV7,
    WFS_TABLE_REGION_MAX
} WFSTableRegionType;

typedef enum WFSEventType {
    WFS_EVENT_SERVER_SEGMENT_REQUEST,
    WFS_EVENT_CLIENT_READY
} WFSEventType;

#if (PLATFORM_BYTES_ENDIAN == PLATFORM_ENDIAN_LITTLE)
#define MI_LEToH32_BITFIELD(width, value) MI_LEToH32(value)
#define MI_HToLE32_BITFIELD(width, value) MI_HToLE32(value)
#else
#define MI_LEToH32_BITFIELD(width, value) (u32)(MI_LEToH32(value << (32 - width)))
#define MI_HToLE32_BITFIELD(width, value) (u32)(MI_HToLE32(value) >> (32 - width))
#endif

typedef struct WFSFATFormat {
    u32 top;
    u32 bottom;
} PLATFORM_STRUCT_PADDING_FOOTER
WFSFATFormat;

typedef struct WFSOVLFormat {
    u32 id;
    u8 * ram_address;
    u32 ram_size;
    u32 bss_size;
    void (*sinit_init);
    void (*sinit_init_end);
    u32 file_id;
#if (PLATFORM_BITFIELDS_ENDIAN == PLATFORM_ENDIAN_LITTLE)
    u32 compressed : 24;
    u32 flag : 8;
#else
    u32 flag : 8;
    u32 compressed : 24;
#endif
} PLATFORM_STRUCT_PADDING_FOOTER
WFSOVLFormat;

typedef struct WFSTableFormat {
    u32 origin;
    u8 * buffer;
    u32 length;
    CARDRomRegion region[WFS_TABLE_REGION_MAX];
} PLATFORM_STRUCT_PADDING_FOOTER
WFSTableFormat;

typedef struct WFSMessageFormat {
#if (PLATFORM_BITFIELDS_ENDIAN == PLATFORM_ENDIAN_LITTLE)
    u32 type : 4;
    u32 packet_hi : 4;
#else
    u32 packet_hi : 4;
    u32 type : 4;
#endif
    u32 arg2 : 24;
    u32 arg1;
    u8 packet_lo;
    u8 reserved[3];
} PLATFORM_STRUCT_PADDING_FOOTER
WFSMessageFormat;

PLATFORM_COMPILER_ASSERT(sizeof(WFSFATFormat) == 8);
PLATFORM_COMPILER_ASSERT(sizeof(WFSOVLFormat) == 32);
PLATFORM_COMPILER_ASSERT(sizeof(WFSMessageFormat) == 12);

typedef void (* WFSEventCallback)(void * context, WFSEventType, void * argument);

typedef struct WFSPacketBuffer {
    u8 * buffer;
    int length;
    int bitmap;
} WFSPacketBuffer;

typedef struct WFSPeerInfo {
    int aid;
    u8 mac[6];
    u8 padding[2];
} WFSPeerInfo;

BOOL WFS_LoadTable(WFSTableFormat * table, MIAllocator * allocator,
                   MIDevice * device, u32 fatbase, u32 overlay);

void WFS_ParseTable(WFSTableFormat * table);

PLATFORM_ATTRIBUTE_INLINE
BOOL WFS_SendMessage (WBTContext * context, WBTEventCallback callback, int bitmap,
                      int type, u32 arg1, u32 arg2)
{
    WFSMessageFormat message;
    int packet = WBT_GetParentPacketLength(context) + WBT_PACKET_SIZE_MIN;
    message.type = (u8)type;
    message.arg1 = MI_HToLE32(arg1);
    message.arg2 = MI_HToLE32_BITFIELD(24, arg2);
    message.packet_hi = (u8)(packet >> 8);
    message.packet_lo = (u8)(packet >> 0);
    return WBT_PostCommandMSG(context, (u16)bitmap, callback, &message, WBT_SIZE_USER_DATA);
}
PLATFORM_ATTRIBUTE_INLINE
BOOL WFS_SendMessageLOCK_REQ (WBTContext * context, WBTEventCallback callback, int bitmap,
                              u32 offset, u32 length)
{
    return WFS_SendMessage(context, callback, bitmap, WFS_MSG_LOCK_REQ, offset, length);
}
PLATFORM_ATTRIBUTE_INLINE
BOOL WFS_SendMessageLOCK_ACK (WBTContext * context, WBTEventCallback callback, int bitmap,
                              u32 id)
{
    return WFS_SendMessage(context, callback, bitmap, WFS_MSG_LOCK_ACK, id, (u32)(id != 0));
}
PLATFORM_ATTRIBUTE_INLINE
BOOL WFS_SendMessageUNLOCK_REQ (WBTContext * context, WBTEventCallback callback, int bitmap,
                                u32 id)
{
    return WFS_SendMessage(context, callback, bitmap, WFS_MSG_UNLOCK_REQ, id, TRUE);
}
PLATFORM_ATTRIBUTE_INLINE
BOOL WFS_SendMessageUNLOCK_ACK (WBTContext * context, WBTEventCallback callback, int bitmap,
                                u32 id)
{
    return WFS_SendMessage(context, callback, bitmap, WFS_MSG_UNLOCK_ACK, id, (u32)(id != 0));
}

#ifdef __cplusplus
}
#endif

#endif
