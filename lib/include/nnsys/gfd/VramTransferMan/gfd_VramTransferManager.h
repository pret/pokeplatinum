#ifndef NNS_GFD_VRAM_TRANSFER_MANAGER_H_
#define NNS_GFD_VRAM_TRANSFER_MANAGER_H_

#include <nitro.h>
#include <nnsys/gfd/gfd_common.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef enum NNS_GFD_DST_TYPE {
    NNS_GFD_DST_3D_TEX_VRAM = 0,
    NNS_GFD_DST_3D_TEX_PLTT,
    NNS_GFD_DST_3D_CLRIMG_COLOR,
    NNS_GFD_DST_3D_CLRIMG_DEPTH,

    NNS_GFD_DST_2D_BG0_CHAR_MAIN,
    NNS_GFD_DST_2D_BG1_CHAR_MAIN,
    NNS_GFD_DST_2D_BG2_CHAR_MAIN,
    NNS_GFD_DST_2D_BG3_CHAR_MAIN,
    NNS_GFD_DST_2D_BG0_SCR_MAIN,
    NNS_GFD_DST_2D_BG1_SCR_MAIN,
    NNS_GFD_DST_2D_BG2_SCR_MAIN,
    NNS_GFD_DST_2D_BG3_SCR_MAIN,
    NNS_GFD_DST_2D_BG2_BMP_MAIN,
    NNS_GFD_DST_2D_BG3_BMP_MAIN,
    NNS_GFD_DST_2D_OBJ_PLTT_MAIN,
    NNS_GFD_DST_2D_BG_PLTT_MAIN,
    NNS_GFD_DST_2D_OBJ_EXTPLTT_MAIN,
    NNS_GFD_DST_2D_BG_EXTPLTT_MAIN,
    NNS_GFD_DST_2D_OBJ_OAM_MAIN,
    NNS_GFD_DST_2D_OBJ_CHAR_MAIN,

    NNS_GFD_DST_2D_BG0_CHAR_SUB,
    NNS_GFD_DST_2D_BG1_CHAR_SUB,
    NNS_GFD_DST_2D_BG2_CHAR_SUB,
    NNS_GFD_DST_2D_BG3_CHAR_SUB,
    NNS_GFD_DST_2D_BG0_SCR_SUB,
    NNS_GFD_DST_2D_BG1_SCR_SUB,
    NNS_GFD_DST_2D_BG2_SCR_SUB,
    NNS_GFD_DST_2D_BG3_SCR_SUB,
    NNS_GFD_DST_2D_BG2_BMP_SUB,
    NNS_GFD_DST_2D_BG3_BMP_SUB,
    NNS_GFD_DST_2D_OBJ_PLTT_SUB,
    NNS_GFD_DST_2D_BG_PLTT_SUB,
    NNS_GFD_DST_2D_OBJ_EXTPLTT_SUB,
    NNS_GFD_DST_2D_BG_EXTPLTT_SUB,
    NNS_GFD_DST_2D_OBJ_OAM_SUB,
    NNS_GFD_DST_2D_OBJ_CHAR_SUB,

    NNS_GFD_DST_MAX
} NNS_GFD_DST_TYPE;

typedef struct NNSGfdVramTransferTask {
    NNS_GFD_DST_TYPE type;
    void * pSrc;
    u32 dstAddr;
    u32 szByte;
} NNSGfdVramTransferTask;

typedef struct NNSGfdVramTransferTaskQueue {
    NNSGfdVramTransferTask * pTaskArray;
    u32 lengthOfArray;

    u16 idxFront;
    u16 idxRear;
    u16 numTasks;
    u16 pad16_;
    u32 totalSize;
} NNSGfdVramTransferTaskQueue;

typedef struct NNSGfdVramTransferManager {
    NNSGfdVramTransferTaskQueue taskQueue;
} NNSGfdVramTransferManager;

BOOL
NNSi_GfdPushVramTransferTaskQueue
(
    NNSGfdVramTransferTaskQueue * pQueue
);

NNSGfdVramTransferTask *
NNSi_GfdGetFrontVramTransferTaskQueue
(
    NNSGfdVramTransferTaskQueue * pQueue
);

NNSGfdVramTransferTask *
NNSi_GfdGetEndVramTransferTaskQueue
(
    NNSGfdVramTransferTaskQueue * pQueue
);

BOOL
NNSi_GfdPopVramTransferTaskQueue
(
    NNSGfdVramTransferTaskQueue * pQueue
);

void
NNS_GfdInitVramTransferManager
(
    NNSGfdVramTransferTask * pTaskArray,
    u32 lengthOfArray
);

void
NNS_GfdClearVramTransferManagerTask( );

void
NNS_GfdDoVramTransfer(void);

BOOL
NNS_GfdRegisterNewVramTransferTask
(
    NNS_GFD_DST_TYPE type,
    u32 dstAddr,
    void * pSrc,
    u32 szByte
);

u32
NNS_GfdGetVramTransferTaskTotalSize(void);

#ifdef __cplusplus
}
#endif

#endif
