
#include <nnsys/gfd/gfd_common.h>
#include <nnsys/gfd/VramManager/gfd_LinkedListTexVramMan.h>

#include "include/gfdi_LinkedListVramMan_Common.h"

#define GFD_SLOT_SIZE 0x20000
#define GFD_SLOT0_BASEADDR 0x00000
#define GFD_SLOT1_BASEADDR 0x20000
#define GFD_SLOT2_BASEADDR 0x40000
#define GFD_SLOT3_BASEADDR 0x60000

#define NNS_GFD_LNK_FREE_ERROR_INVALID_SIZE 2

typedef struct NNS_GfdLnkTexVramManager {
    NNSiGfdLnkVramMan mgrNrm;
    NNSiGfdLnkVramMan mgr4x4;
    NNSiGfdLnkVramBlock * pBlockPoolList;
    u32 szByte;
    u32 szByteFor4x4;
    NNSiGfdLnkVramBlock * pWorkHead;
    u32 szByteManagementWork;
} NNS_GfdLnkTexVramManager;

typedef struct SlotData {
    u32 szFree;
    u32 szNrm;
    u32 sz4x4;
} SlotData;

static NNS_GfdLnkTexVramManager mgr_;

static u32 Dbg_GetVramManTotalFreeBlockSize_ (const NNSiGfdLnkVramMan * pMgr) {
    u32 total = 0;
    const NNSiGfdLnkVramBlock * pBlk = pMgr->pFreeList;
    while (pBlk) {
        total += pBlk->szByte;
        pBlk = pBlk->pBlkNext;
    }
    return total;
}

static BOOL Dbg_IsInitializeSizeParamsValid_ (u32 szByte, u32 szByteFor4x4) {
    if (szByte > 0 && szByteFor4x4 <= GFD_SLOT_SIZE * 2) {
        if (szByteFor4x4 > 0) {
            if (szByteFor4x4 <= GFD_SLOT_SIZE) {
                return (BOOL)(szByte >= GFD_SLOT1_BASEADDR + szByteFor4x4 / 2);
            } else {
                return (BOOL)(szByte >= szByteFor4x4 + GFD_SLOT_SIZE);
            }
        } else {
            return (BOOL)(szByte <= GFD_SLOT_SIZE * 4);
        }
    } else {
        return FALSE;
    }
}

static NNS_GFD_INLINE BOOL InitSlotFreeBlock_ (NNSiGfdLnkVramMan * pMgr, NNSiGfdLnkVramBlock * * pPoolList, u32 baseAddr, u32 size) {
    NNS_GFD_NULL_ASSERT(pMgr);
    NNS_GFD_NULL_ASSERT(pPoolList);

    NNS_GFD_ASSERT(GFD_SLOT_SIZE >= size);

    {
        BOOL result = TRUE;

        if (size > 0) {
            result &= NNSi_GfdAddNewFreeBlock(pMgr, pPoolList, baseAddr, size);
        }
        return result;
    }
}

void NNS_GfdDumpLnkTexVramManager () {
    OS_Printf("=== NNS_Gfd LnkTexVramManager Dump ====\n");
    OS_Printf("   address:        size    \n");
    OS_Printf("=======================================\n");

    OS_Printf("------ Normal Texture Free Blocks -----\n");
    NNSi_GfdDumpLnkVramManFreeListInfo(mgr_.mgrNrm.pFreeList, mgr_.szByte);

    OS_Printf("------ 4x4    Texture Free Blocks -----\n");
    if (mgr_.szByteFor4x4 != 0) {
        NNSi_GfdDumpLnkVramManFreeListInfo(mgr_.mgr4x4.pFreeList, mgr_.szByteFor4x4);
    }
    OS_Printf("=======================================\n");
}

void NNS_GfdDumpLnkTexVramManagerEx (NNSGfdLnkDumpCallBack pFuncForNrm, NNSGfdLnkDumpCallBack pFuncFor4x4, void * pUserData) {
    NNS_GFD_ASSERT(pFuncForNrm != NULL || pFuncFor4x4 != NULL);

    if (pFuncForNrm != NULL) {
        NNSi_GfdDumpLnkVramManFreeListInfoEx(mgr_.mgrNrm.pFreeList, pFuncForNrm, pUserData);
    }

    if (mgr_.szByteFor4x4 != 0 && pFuncFor4x4 != NULL) {
        NNSi_GfdDumpLnkVramManFreeListInfoEx(mgr_.mgr4x4.pFreeList, pFuncFor4x4, pUserData);
    }
}

u32 NNS_GfdGetLnkTexVramManagerWorkSize (u32 numMemBlk) {
    return numMemBlk * sizeof(NNSiGfdLnkVramBlock);
}

void NNS_GfdInitLnkTexVramManager (u32 szByte, u32 szByteFor4x4, void * pManagementWork, u32 szByteManagementWork, BOOL useAsDefault) {
    NNS_GFD_ASSERT(Dbg_IsInitializeSizeParamsValid_(szByte, szByteFor4x4));

    NNS_GFD_NULL_ASSERT(pManagementWork);
    NNS_GFD_ASSERT(szByteManagementWork != 0);

    {
        mgr_.szByte = szByte;
        mgr_.szByteFor4x4 = szByteFor4x4;
        mgr_.pWorkHead = pManagementWork;
        mgr_.szByteManagementWork = szByteManagementWork;

        NNS_GfdResetLnkTexVramState();

        NNS_GFD_ASSERT(
            mgr_.szByte - (mgr_.szByteFor4x4 + mgr_.szByteFor4x4 / 2)
            == Dbg_GetVramManTotalFreeBlockSize_(&mgr_.mgrNrm)
        );
        NNS_GFD_ASSERT(
            mgr_.szByteFor4x4
            == Dbg_GetVramManTotalFreeBlockSize_(&mgr_.mgr4x4)
        );

        if (useAsDefault) {
            NNS_GfdDefaultFuncAllocTexVram = NNS_GfdAllocLnkTexVram;
            NNS_GfdDefaultFuncFreeTexVram = NNS_GfdFreeLnkTexVram;
        }
    }
}

NNSGfdTexKey NNS_GfdAllocLnkTexVram (u32 szByte, BOOL is4x4comp, u32 opt) {
#pragma unused(opt)
    u32 addr;
    BOOL result;

    {
        szByte = NNSi_GfdGetTexKeyRoundupSize(szByte);

        if (szByte >= NNS_GFD_TEXSIZE_MAX) {
            NNS_GFD_WARNING("Allocation size is too big. : NNS_GfdAllocLnkTexVram()");
            return NNS_GFD_ALLOC_ERROR_TEXKEY;
        }

        NNS_GFD_MINMAX_ASSERT(szByte, NNS_GFD_TEXSIZE_MIN, NNS_GFD_TEXSIZE_MAX);
    }

    if (is4x4comp) {
        result = NNSi_GfdAllocLnkVram(&mgr_.mgr4x4, &mgr_.pBlockPoolList, &addr, szByte);
    } else {
        result = NNSi_GfdAllocLnkVram(&mgr_.mgrNrm, &mgr_.pBlockPoolList, &addr, szByte);
    }

    if (result) {
        return NNS_GfdMakeTexKey(addr, szByte, is4x4comp);
    } else {
        NNS_GFD_WARNING("failure in Vram Allocation. : NNS_GfdAllocLnkTexVram()");
        return NNS_GFD_ALLOC_ERROR_TEXKEY;
    }
}

int NNS_GfdFreeLnkTexVram (NNSGfdTexKey memKey) {
    BOOL result;
    const u32 addr = NNS_GfdGetTexKeyAddr(memKey);
    const u32 szByte = NNS_GfdGetTexKeySize(memKey);
    const BOOL b4x4 = NNS_GfdGetTexKey4x4Flag(memKey);

    if (szByte != 0) {
        if (b4x4) {
            result = NNSi_GfdFreeLnkVram(&mgr_.mgr4x4, &mgr_.pBlockPoolList, addr, szByte);
        } else {
            result = NNSi_GfdFreeLnkVram(&mgr_.mgrNrm, &mgr_.pBlockPoolList, addr, szByte);
        }

        if (result) {
            return 0;
        } else {
            return 1;
        }
    } else {
        return NNS_GFD_LNK_FREE_ERROR_INVALID_SIZE;
    }
}

void NNS_GfdResetLnkTexVramState (void) {
    SlotData sd[4] = {
        {0x20000, 0, 0},
        {0x20000, 0, 0},
        {0x20000, 0, 0},
        {0x20000, 0, 0}
    };

    const u32 szIndexTbl = mgr_.szByteFor4x4 / 2;

    u32 restNrm = mgr_.szByte - (mgr_.szByteFor4x4 + szIndexTbl);

    u32 rest4x4 = mgr_.szByteFor4x4;
    u32 slotNo;
    u32 val;

    for ( slotNo = 0; slotNo < 4; slotNo++ ) {
        if (slotNo == 0 || slotNo == 2) {
            if (sd[slotNo].szFree > 0 && rest4x4 > 0) {
                if (sd[slotNo].szFree > rest4x4) {
                    val = rest4x4;
                } else {
                    val = sd[slotNo].szFree;
                }

                sd[slotNo].sz4x4 += val;
                sd[slotNo].szFree -= val;
                rest4x4 -= val;
            }
        }
    }

    {
        sd[1].szFree -= szIndexTbl;
    }

    for ( slotNo = 0; slotNo < 4; slotNo++ ) {
        if (sd[slotNo].szFree > 0 && restNrm > 0) {
            if (sd[slotNo].szFree > restNrm) {
                val = restNrm;
            } else {
                val = sd[slotNo].szFree;
            }

            sd[slotNo].szNrm += val;
            sd[slotNo].szFree -= val;
            restNrm -= val;
        }
    }

    {
        BOOL result = TRUE;

        NNSi_GfdInitLnkVramMan(&mgr_.mgrNrm);
        NNSi_GfdInitLnkVramMan(&mgr_.mgr4x4);

        mgr_.pBlockPoolList = NNSi_GfdInitLnkVramBlockPool(
            (NNSiGfdLnkVramBlock *)mgr_.pWorkHead,
            mgr_.szByteManagementWork / sizeof(NNSiGfdLnkVramBlock)
        );

        {
            result &= InitSlotFreeBlock_(&mgr_.mgr4x4, &mgr_.pBlockPoolList, GFD_SLOT0_BASEADDR, sd[0].sz4x4);
            result &= InitSlotFreeBlock_(&mgr_.mgrNrm, &mgr_.pBlockPoolList, GFD_SLOT0_BASEADDR + sd[0].sz4x4, sd[0].szNrm);

            result &= InitSlotFreeBlock_(&mgr_.mgr4x4, &mgr_.pBlockPoolList, GFD_SLOT2_BASEADDR, sd[2].sz4x4);
            result &= InitSlotFreeBlock_(&mgr_.mgrNrm, &mgr_.pBlockPoolList, GFD_SLOT2_BASEADDR + sd[2].sz4x4, sd[2].szNrm);

            NNS_GFD_ASSERT(sd[3].sz4x4 == 0);
            result &= InitSlotFreeBlock_(&mgr_.mgrNrm, &mgr_.pBlockPoolList, GFD_SLOT3_BASEADDR, sd[3].szNrm);

            result &= InitSlotFreeBlock_(&mgr_.mgrNrm, &mgr_.pBlockPoolList, GFD_SLOT1_BASEADDR + szIndexTbl, sd[1].szNrm);
        }
        NNS_GFD_ASSERT(result);
    }

    NNSi_GfdMergeAllFreeBlocks(&mgr_.mgrNrm, &mgr_.pBlockPoolList);
    NNSi_GfdMergeAllFreeBlocks(&mgr_.mgr4x4, &mgr_.pBlockPoolList);
}
