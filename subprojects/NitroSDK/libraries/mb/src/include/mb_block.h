#ifndef _MB_BLOCK_H_
#define _MB_BLOCK_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/types.h>
#include <nitro/mb.h>
#include <nitro/wm.h>

#include "mb_common.h"

typedef struct {
    u8 type;
    u8 pad1[1];
    u16 fid;
    u16 seqno;
} MBCommParentBlockHeader;

typedef struct {
    u8 type;
    u8 pad1[1];
    union {
        struct {
            u16 req;
            u8 reserved[MB_COMM_CALC_REQ_DATA_PIECE_SIZE(MB_COMM_P_RECVLEN_MAX)];
        } data;

        struct {
            u8 piece;

            u8 data[MB_COMM_CALC_REQ_DATA_PIECE_SIZE(MB_COMM_P_RECVLEN_MAX)];
            u8 pad2[1];
        } req_data;
    };
} MBCommChildBlockHeader;

typedef struct {
    u32 data_buf[MB_MAX_CHILD][MB_COMM_CALC_REQ_DATA_BUF_SIZE(MB_COMM_P_RECVLEN_MAX) /
                               sizeof(u32) + 1];
    u32 data_bmp[MB_MAX_CHILD];
} MbRequestPieceBuf;

void MBi_SetChildMPMaxSize(u16 childMaxSize);
void MBi_SetParentPieceBuffer(MbRequestPieceBuf * buf);
void MBi_ClearParentPieceBuffer(u16 child_aid);
u8 * MBi_MakeParentSendBuffer(const MBCommParentBlockHeader * hdr, u8 * sendbuf);
u8 * MBi_SetRecvBufferFromChild(const u8 * recvbuf, MBCommChildBlockHeader * hdr, u16 child_id);
u8 * MBi_MakeChildSendBuffer(const MBCommChildBlockHeader * hdr, u8 * sendbuf);
u8 MBi_SendRequestDataPiece(u8 * pData, const MBCommRequestData * pReq);
u8 * MBi_SetRecvBufferFromParent(MBCommParentBlockHeader * hdr, const u8 * recvbuf);

#ifdef __cplusplus
}
#endif

#endif
