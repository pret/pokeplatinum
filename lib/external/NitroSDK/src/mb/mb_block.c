
#include <nitro.h>

#include "include/mb_common.h"
#include "include/mb_block.h"
#include "include/mb_private.h"

static u8 * MBi_ReceiveRequestDataPiece(const MBCommChildBlockHeader * hdr, u16 child);
static BOOL IsGetAllRequestData(u16 child);

static struct {
    int size;
    int num;
    int bufSize;
} req_data_piece;

static u8 req_data_piece_idx = 0;

static MbRequestPieceBuf * req_buf;

void MBi_SetChildMPMaxSize (u16 childMaxSize) {
    req_data_piece.size = MB_COMM_CALC_REQ_DATA_PIECE_SIZE(childMaxSize);
    req_data_piece.num = MB_COMM_CALC_REQ_DATA_PIECE_NUM(childMaxSize);
    req_data_piece.bufSize = MB_COMM_CALC_REQ_DATA_BUF_SIZE(childMaxSize);
}

void MBi_SetParentPieceBuffer (MbRequestPieceBuf * buf) {
    req_buf = buf;
    MI_CpuClear8(req_buf, sizeof(MbRequestPieceBuf));
}

void MBi_ClearParentPieceBuffer (u16 child_aid) {
    if (req_buf == NULL) {
        return;
    }

    MI_CpuClear8(
        req_buf->data_buf[child_aid - 1],
        MB_COMM_CALC_REQ_DATA_BUF_SIZE(req_data_piece.bufSize)
    );
    req_buf->data_bmp[child_aid - 1] = 0;
}

u8 * MBi_MakeParentSendBuffer (const MBCommParentBlockHeader * hdr, u8 * sendbuf) {
    u8 * ptr = sendbuf;

    *ptr++ = hdr->type;

    switch (hdr->type) {
    case MB_COMM_TYPE_PARENT_SENDSTART:
        break;
    case MB_COMM_TYPE_PARENT_KICKREQ:
        break;
    case MB_COMM_TYPE_PARENT_DL_FILEINFO:
        break;
    case MB_COMM_TYPE_PARENT_DATA:
        *ptr++ = (u8)(0x00ff & hdr->fid);
        *ptr++ = (u8)((0xff00 & hdr->fid) >> 8);
        *ptr++ = (u8)(0x00ff & hdr->seqno);
        *ptr++ = (u8)((0xff00 & hdr->seqno) >> 8);
        break;
    case MB_COMM_TYPE_PARENT_BOOTREQ:
        break;
    case MB_COMM_TYPE_PARENT_MEMBER_FULL:
        break;
    default:
        return NULL;
    }

    return ptr;
}

u8 * MBi_SetRecvBufferFromChild (const u8 * recvbuf, MBCommChildBlockHeader * hdr, u16 child_id) {
    u8 * ptr = (u8 *)recvbuf;

    hdr->type = *ptr++;

    switch (hdr->type) {
    case MB_COMM_TYPE_CHILD_FILEREQ:

        if (IsGetAllRequestData(child_id)) {
            return (u8 *)req_buf->data_buf[child_id - 1];
        }

        hdr->req_data.piece = *ptr++;
        if (hdr->req_data.piece > req_data_piece.num) {
            return NULL;
        }
        MI_CpuCopy8(ptr, hdr->req_data.data, (u32)req_data_piece.size);
        ptr = MBi_ReceiveRequestDataPiece(hdr, child_id);
        break;
    case MB_COMM_TYPE_CHILD_ACCEPT_FILEINFO:
        hdr->data.req = (u16)(0x00ff & (*ptr++));
        hdr->data.req |= (((u16)(*ptr++) << 8) & 0xff00);
        break;
    case MB_COMM_TYPE_CHILD_CONTINUE:
        hdr->data.req = (u16)(0x00ff & (*ptr++));
        hdr->data.req |= (((u16)(*ptr++) << 8) & 0xff00);
        MI_CpuCopy8(ptr, hdr->data.reserved, (u32)req_data_piece.size);
        ptr += req_data_piece.size;
        break;
    default:
        return NULL;
    }

    return ptr;
}

static u8 * MBi_ReceiveRequestDataPiece (const MBCommChildBlockHeader * hdr, u16 child) {
    u8 piece;
    u8 * ptr;

    if (req_buf == NULL) {
        return NULL;
    }

    piece = hdr->req_data.piece;

    if (piece > req_data_piece.num) {
        return NULL;
    }

    ptr = ((u8 *)req_buf->data_buf[child - 1]) + (piece * req_data_piece.size);

    MI_CpuCopy8(&hdr->req_data.data[0], ptr, (u32)req_data_piece.size);

    req_buf->data_bmp[child - 1] |= (1 << piece);

    MB_DEBUG_OUTPUT(
        " %02x %02x %02x %02x %02x %02x\n", ptr[0], ptr[1], ptr[2], ptr[3], ptr[4],
        ptr[5]
    );

    if (IsGetAllRequestData(child)) {
        return (u8 *)req_buf->data_buf[child - 1];
    }

    return NULL;
}

static BOOL IsGetAllRequestData (u16 child) {
    u16 i;

    for (i = 0; i < req_data_piece.num; i++) {
        if ((req_buf->data_bmp[child - 1] & (1 << i)) == 0) {
            return FALSE;
        }
    }

    return TRUE;
}

u8 * MBi_MakeChildSendBuffer (const MBCommChildBlockHeader * hdr, u8 * sendbuf) {
    u8 * pbuf = sendbuf;

    *pbuf++ = hdr->type;
    switch (hdr->type) {
    case MB_COMM_TYPE_CHILD_FILEREQ:
        *pbuf++ = hdr->req_data.piece;
        if (hdr->req_data.piece > req_data_piece.num) {
            return NULL;
        }

        MI_CpuCopy8((void *)(hdr->req_data.data), (void *)pbuf, (u32)req_data_piece.size);
        pbuf += req_data_piece.size;
        break;
    case MB_COMM_TYPE_CHILD_ACCEPT_FILEINFO:
        break;
    case MB_COMM_TYPE_CHILD_CONTINUE:
        *pbuf++ = (u8)(0x00ff & hdr->data.req);
        *pbuf++ = (u8)((0xff00 & hdr->data.req) >> 8);
        MI_CpuCopy8((void *)(hdr->data.reserved), (void *)pbuf, (u32)req_data_piece.size);
        pbuf += req_data_piece.size;
        break;
    case MB_COMM_TYPE_CHILD_STOPREQ:
        break;
    case MB_COMM_TYPE_CHILD_BOOTREQ_ACCEPTED:
        break;
    default:
        return NULL;
    }

    return pbuf;
}

u8 MBi_SendRequestDataPiece (u8 * pData, const MBCommRequestData * pReq) {
    const u8 * ptr = (u8 *)pReq;

    req_data_piece_idx = (u8)((req_data_piece_idx + 1) % req_data_piece.num);
    MB_DEBUG_OUTPUT("req_data piece : %d\n", req_data_piece_idx);

    MI_CpuCopy8(
        (void *)&ptr[req_data_piece_idx * req_data_piece.size],
        pData, (u32)req_data_piece.size
    );

    MB_DEBUG_OUTPUT(
        " %02x %02x %02x %02x %02x %02x\n", pData[0], pData[1], pData[2], pData[3],
        pData[4], pData[5]
    );

    return req_data_piece_idx;
}

u8 * MBi_SetRecvBufferFromParent (MBCommParentBlockHeader * hdr, const u8 * recvbuf) {
    hdr->type = *recvbuf++;

    switch (hdr->type) {
    case MB_COMM_TYPE_PARENT_SENDSTART:
        break;
    case MB_COMM_TYPE_PARENT_KICKREQ:
        break;
    case MB_COMM_TYPE_PARENT_DL_FILEINFO:
        break;
    case MB_COMM_TYPE_PARENT_DATA:
        hdr->fid = (u16)(*recvbuf++);
        hdr->fid |= ((u16)(*recvbuf++) << 8);
        hdr->seqno = (u16)(*recvbuf++);
        hdr->seqno |= ((u16)(*recvbuf++) << 8);
        break;
    case MB_COMM_TYPE_PARENT_BOOTREQ:
        break;
    case MB_COMM_TYPE_PARENT_MEMBER_FULL:
        break;
    default:
        return NULL;
    }
    return (u8 *)recvbuf;
}
