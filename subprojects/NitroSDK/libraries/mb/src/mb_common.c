#include "mb_private.h"

#define MY_ROUND(n, a) (((u32)(n) + (a) - 1) & ~((a) - 1))

#define MB_PARENT_WORK_SIZE_MIN (32 + sizeof(MBiParam) + 32 + sizeof(MB_CommPWork) + 32 + WM_SYSTEM_BUF_SIZE)
#define MB_CHILD_WORK_SIZE_MIN (32 + sizeof(MBiParam) + 32 + sizeof(MB_CommCWork) + 32 + WM_SYSTEM_BUF_SIZE)

SDK_COMPILER_ASSERT(MB_PARENT_WORK_SIZE_MIN <= MB_SYSTEM_BUF_SIZE);
SDK_COMPILER_ASSERT(MB_CHILD_WORK_SIZE_MIN <= MB_CHILD_SYSTEM_BUF_SIZE);

void MBi_BlockHeaderBegin (u8 type, u32 * sendbuf) {
    u8 * p = (u8 *)sendbuf;
    p[0] = type;
}

int MBi_BlockHeaderEnd (int body_len, u16 pollbmp, u32 * sendbuf) {
    DC_FlushRange(sendbuf, MY_ROUND(body_len, 32));
    DC_WaitWriteBufferEmpty();

    MB_DEBUG_OUTPUT("SEND (BMP:%04x)", pollbmp);
    MB_COMM_TYPE_OUTPUT(((u8 *)sendbuf)[0]);

    return MBi_SendMP(sendbuf, body_len, pollbmp);
}

int MB_GetParentSystemBufSize (void) {
    return MB_PARENT_WORK_SIZE_MIN;
}

int MB_GetChildSystemBufSize (void) {
    return MB_CHILD_WORK_SIZE_MIN;
}

u16 MBi_calc_cksum (const u16 * buf, int length) {
    u32 sum;
    int nwords = length >> 1;
    for (sum = 0; nwords > 0; nwords--) {
        sum += *buf++;
    }

    sum = (sum >> 16) + (sum & 0xffff);
    sum += (sum >> 16);
    return (u16)(sum ^ 0xffff);
}

#ifdef  PRINT_DEBUG

void MBi_DebugPrint (const char * file, int line, const char * func, const char * fmt, ...) {
    va_list vlist;

    OS_TPrintf("func: %s [%s:%d]:\n", func, file, line);

    va_start(vlist, fmt);
    OS_TVPrintf(fmt, vlist);
    va_end(vlist);

    OS_TPrintf("\n");
}

void MBi_comm_type_output (u16 type) {
    enum
    { MB_TYPE_STRING_NUM = 12 };
    static const char * const mb_type_string[MB_TYPE_STRING_NUM] = {
        "MB_COMM_TYPE_DUMMY",

        "MB_COMM_TYPE_PARENT_SENDSTART",
        "MB_COMM_TYPE_PARENT_KICKREQ",
        "MB_COMM_TYPE_PARENT_DL_FILEINFO",
        "MB_COMM_TYPE_PARENT_DATA",
        "MB_COMM_TYPE_PARENT_BOOTREQ",
        "MB_COMM_TYPE_PARENT_MEMBER_FULL",

        "MB_COMM_TYPE_CHILD_FILEREQ",
        "MB_COMM_TYPE_CHILD_ACCEPT_FILEINFO",
        "MB_COMM_TYPE_CHILD_CONTINUE",
        "MB_COMM_TYPE_CHILD_STOPREQ",
        "MB_COMM_TYPE_CHILD_BOOTREQ_ACCEPTED",
    };
    if (type >= MB_TYPE_STRING_NUM) {
        MB_OUTPUT("TYPE: unknown\n");
        return;
    }
    MB_OUTPUT("TYPE: %s\n", mb_type_string[type]);
}

void MBi_comm_wmevent_output (u16 type, void * arg) {
    enum
    { MB_CB_STRING_NUM = 43 };
    static const char * const mb_cb_string[MB_CB_STRING_NUM + 2] = {
        "MB_CALLBACK_CHILD_CONNECTED",
        "MB_CALLBACK_CHILD_DISCONNECTED",
        "MB_CALLBACK_MP_PARENT_SENT",
        "MB_CALLBACK_MP_PARENT_RECV",
        "MB_CALLBACK_PARENT_FOUND",
        "MB_CALLBACK_PARENT_NOT_FOUND",
        "MB_CALLBACK_CONNECTED_TO_PARENT",
        "MB_CALLBACK_DISCONNECTED",
        "MB_CALLBACK_MP_CHILD_SENT",
        "MB_CALLBACK_MP_CHILD_RECV",
        "MB_CALLBACK_DISCONNECTED_FROM_PARENT",
        "MB_CALLBACK_CONNECT_FAILED",
        "MB_CALLBACK_DCF_CHILD_SENT",
        "MB_CALLBACK_DCF_CHILD_SENT_ERR",
        "MB_CALLBACK_DCF_CHILD_RECV",
        "MB_CALLBACK_DISCONNECT_COMPLETE",
        "MB_CALLBACK_DISCONNECT_FAILED",
        "MB_CALLBACK_END_COMPLETE",
        "MB_CALLBACK_MP_CHILD_SENT_ERR",
        "MB_CALLBACK_MP_PARENT_SENT_ERR",
        "MB_CALLBACK_MP_STARTED",
        "MB_CALLBACK_INIT_COMPLETE",
        "MB_CALLBACK_END_MP_COMPLETE",
        "MB_CALLBACK_SET_GAMEINFO_COMPLETE",
        "MB_CALLBACK_SET_GAMEINFO_FAILED",
        "MB_CALLBACK_MP_SEND_ENABLE",
        "MB_CALLBACK_PARENT_STARTED",
        "MB_CALLBACK_BEACON_LOST",
        "MB_CALLBACK_BEACON_SENT",
        "MB_CALLBACK_BEACON_RECV",
        "MB_CALLBACK_MP_SEND_DISABLE",
        "MB_CALLBACK_DISASSOCIATE",
        "MB_CALLBACK_REASSOCIATE",
        "MB_CALLBACK_AUTHENTICATE",
        "MB_CALLBACK_SET_LIFETIME",
        "MB_CALLBACK_DCF_STARTED",
        "MB_CALLBACK_DCF_SENT",
        "MB_CALLBACK_DCF_SENT_ERR",
        "MB_CALLBACK_DCF_RECV",
        "MB_CALLBACK_DCF_END",
        "MB_CALLBACK_MPACK_IND",
        "MB_CALLBACK_MP_CHILD_SENT_TIMEOUT",
        "MB_CALLBACK_SEND_QUEUE_FULL_ERR",
        "MB_CALLBACK_API_ERROR",
        "MB_CALLBACK_ERROR",
    };

    if (type == MB_CALLBACK_API_ERROR) {
        type = MB_CB_STRING_NUM;
    } else if (type == MB_CALLBACK_ERROR) {
        type = MB_CB_STRING_NUM + 1;
    } else if (type >= MB_CB_STRING_NUM) {
        MB_OUTPUT("EVENTTYPE: unknown\n");
        return;
    }

    MB_OUTPUT("EVENTTYPE:%s\n", mb_cb_string[type]);
    if (arg) {
        MB_OUTPUT("\tAPPID:%04x ERRCODE:%04x\n", ((u16 *)arg)[0], ((u16 *)arg)[1]);
        MB_OUTPUT("\twlCmd:%04x wlResult:%04x\n", ((u16 *)arg)[2], ((u16 *)arg)[3]);
    }
}

#endif
