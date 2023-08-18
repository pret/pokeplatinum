#ifndef _MB_PRIVATE_H_
#define _MB_PRIVATE_H_

#ifdef __cplusplus
extern "C" {
#endif

#if !defined(NITRO_FINALROM)

#endif

#define CALLBACK_WM_STATE 0

#include <nitro/types.h>
#include <nitro/wm.h>
#include <nitro/mb.h>

#include "mb_wm_base.h"
#include "mb_common.h"
#include "mb_block.h"
#include "mb_rom_header.h"
#include "mb_gameinfo.h"
#include "mb_fileinfo.h"
#include "mb_child.h"
#include "mb_cache.h"
#include "mb_task.h"

#ifdef  PRINT_DEBUG
#define MB_OUTPUT(...) OS_TPrintf(__VA_ARGS__)
#define MB_DEBUG_OUTPUT(...) MBi_DebugPrint(__FILE__, __LINE__, __FUNCTION__, __VA_ARGS__)

#else
#define MB_OUTPUT(...) ((void)0)
#define MB_DEBUG_OUTPUT(...) ((void)0)
#endif

#define MB_IPL_VERSION (0x0001)
#define MB_MAX_BLOCK 12288

#define MB_NUM_PARENT_INFORMATIONS 16

#define MB_SCAN_TIME_NORMAL 10
#define MB_SCAN_TIME_LOCKING 220

typedef struct MB_CommCommonWork {
    u32 sendbuf[MB_MAX_SEND_BUFFER_SIZE / sizeof(u32)] ATTRIBUTE_ALIGN(32);
    u32 recvbuf[MB_MAX_RECV_BUFFER_SIZE * MB_MAX_CHILD * 2 / sizeof(u32)] ATTRIBUTE_ALIGN(32);
    MBUserInfo user;
    u16 isMbInitialized;
    int block_size_max;
    BOOL start_mp_busy;
    BOOL is_started_ex;
    u8 padding[28];
} MB_CommCommonWork;

typedef struct MB_CommPWork {
    MB_CommCommonWork common;

    MBUserInfo childUser[MB_MAX_CHILD] ATTRIBUTE_ALIGN(4);
    u16 childversion[MB_MAX_CHILD];
    u32 childggid[MB_MAX_CHILD];
    MBCommPStateCallback parent_callback;
    int p_comm_state[MB_MAX_CHILD];
    u8 file_num;
    u8 cur_fileid;
    s8 fileid_of_child[MB_MAX_CHILD];
    u8 child_num;
    u16 child_entry_bmp;
    MbRequestPieceBuf req_data_buf;
    u16 req2child[MB_MAX_CHILD];
    MBUserInfo childUserBuf;

    struct {
        MBDownloadFileInfo dl_fileinfo;
        MBGameInfo game_info;
        MB_BlockInfoTable blockinfo_table;
        MBGameRegistry * game_reg;
        void * src_adr;
        u16 currentb;
        u16 nextb;
        u16 pollbmp;
        u16 gameinfo_child_bmp;
        u16 gameinfo_changed_bmp;
        u8 active;
        u8 update;

        MBiCacheList * cache_list;
        u32 * card_mapping;
    } fileinfo[MB_MAX_FILE];

    BOOL useWvrFlag;
    u8 padding2[20];

    u8 task_work[2 * 1024];
    MBiTaskInfo cur_task;
} MB_CommPWork;

typedef struct MB_CommCWork {
    MB_CommCommonWork common;

    WMBssDesc bssDescbuf ATTRIBUTE_ALIGN(32);
    MBDownloadFileInfo dl_fileinfo;
    MBCommCStateCallbackFunc child_callback;
    int c_comm_state;
    int connectTargetNo;
    u8 fileid;
    u8 _padding1[1];
    u16 user_req;
    u16 got_block;
    u16 total_block;
    u8 recvflag[MB_MAX_BLOCK / 8];
    MB_BlockInfoTable blockinfo_table;
    int last_recv_seq_no;
    u8 boot_end_flag;
    u8 _padding2[15];
} MB_CommCWork;

extern MB_CommCommonWork * mbc;

#define pPwork ((MB_CommPWork *)mbc)

#define pCwork ((MB_CommCWork *)mbc)

#ifdef __cplusplus
}
#endif

#endif
