#ifndef _MB_CHILD_H_
#define _MB_CHILD_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/types.h>
#include <nitro/memorymap.h>
#include <nitro/mb.h>
#include "mb_fileinfo.h"
#include "mb_gameinfo.h"

#define MB_CHILD_SYSTEM_BUF_SIZE (0x6000)

#define MB_MAX_SEND_BUFFER_SIZE (0x400)
#define MB_MAX_RECV_BUFFER_SIZE (0x80)

#define MB_LOAD_AREA_LO (HW_MAIN_MEM)
#define MB_LOAD_AREA_HI (HW_MAIN_MEM + 0x002c0000)
#define MB_LOAD_MAX_SIZE (MB_LOAD_AREA_HI - MB_LOAD_AREA_LO)

#define MB_ARM7_STATIC_RECV_BUFFER MB_LOAD_AREA_HI
#define MB_ARM7_STATIC_RECV_BUFFER_END (HW_MAIN_MEM + 0x00300000)
#define MB_ARM7_STATIC_RECV_BUFFER_SIZE (MB_ARM7_STATIC_RECV_BUFFER_END - MB_LOAD_AREA_HI)
#define MB_ARM7_STATIC_LOAD_AREA_HI (MB_LOAD_AREA_HI + MB_ARM7_STATIC_RECV_BUFFER_SIZE)
#define MB_ARM7_STATIC_LOAD_WRAM_MAX_SIZE (0x18000 - 0x1000)

#define MB_BSSDESC_ADDRESS (HW_MAIN_MEM + 0x003fe800)

#define MB_DOWNLOAD_FILEINFO_ADDRESS (MB_BSSDESC_ADDRESS + ((( MB_BSSDESC_SIZE )+(32) - 1) & ~((32) - 1)))

#define MB_CARD_ROM_HEADER_ADDRESS (MB_DOWNLOAD_FILEINFO_ADDRESS + ((( MB_DOWNLOAD_FILEINFO_SIZE )+(32) - 1) & ~((32) - 1)))

#define MB_ROM_HEADER_ADDRESS HW_ROM_HEADER_BUF

int MB_StartChild(void);
int MB_GetChildSystemBufSize(void);
void MB_CommSetChildStateCallback(MBCommCStateCallbackFunc callback);
int MB_CommGetChildState(void);
BOOL MB_CommStartDownload(void);
u16 MB_GetChildProgressPercentage(void);
int MB_CommDownloadRequest(int index);

#ifdef __cplusplus
}
#endif

#endif
