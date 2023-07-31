#ifndef __MB_FILEINFO_H__
#define __MB_FILEINFO_H__

#include <nitro.h>
#include <nitro/mb.h>

#define MB_DL_SEGMENT_NUM (3)
#define MB_DOWNLOAD_FILEINFO_SIZE (sizeof(MBDownloadFileInfo))

#define MB_AUTHCODE_SIZE (136)

#define ROM_HEADER_SIZE_FULL (0x160)

typedef enum MbSegmentType {
    MB_SEG_ARM9STATIC = 0,
    MB_SEG_ARM7STATIC,
    MB_SEG_ROMHEADER
} MbSegmentType;

typedef struct MbDownloadFileInfoHeader {
    u32 arm9EntryAddr;
    u32 arm7EntryAddr;
    u32 padding;
} MbDownloadFileInfoHeader;

typedef struct MbSegmentInfo {
    u32 recv_addr;
    u32 load_addr;
    u32 size;
    u32 target : 1;
    u32 rsv : 31;
} MbSegmentInfo;

typedef struct {
    MbDownloadFileInfoHeader header;
    MbSegmentInfo seg[MB_DL_SEGMENT_NUM];
    u32 auth_code[MB_AUTHCODE_SIZE / sizeof(u32)];
    u32 reserved[32 / sizeof(u32)];
} MBDownloadFileInfo;

typedef struct {
    u32 seg_src_offset[MB_DL_SEGMENT_NUM];
    u16 seg_head_blockno[MB_DL_SEGMENT_NUM];
    u16 block_num;
} MB_BlockInfoTable;

typedef struct {
    u32 child_address;
    u32 size;
    u32 offset;
    u8 segment_no;
    u8 pad[3];
} MB_BlockInfo;

extern const MbSegmentType MBi_defaultLoadSegList[MB_DL_SEGMENT_NUM];

static inline MbSegmentInfo * MBi_GetSegmentInfo (MbDownloadFileInfoHeader * mdfi, int i) {
    return ((MbSegmentInfo *)(mdfi + 1)) + i;
}

BOOL MBi_MakeBlockInfoTable(MB_BlockInfoTable * table, MbDownloadFileInfoHeader * mdfi);
BOOL MBi_get_blockinfo(MB_BlockInfo * bi, MB_BlockInfoTable * table, u32 block, MbDownloadFileInfoHeader * mdfi);
u16 MBi_get_blocknum(MB_BlockInfoTable * table);
BOOL MBi_IsAbleToRecv(u8 segment_no, u32 address, u32 size);

#endif
