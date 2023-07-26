
#include <nnsys/gfd/gfd_common.h>
#include <nnsys/gfd/VramManager/gfd_LinkedListPlttVramMan.h>

#include "include/gfdi_LinkedListVramMan_Common.h"

#define GFD_SLOT_SIZE 0x18000

#define NNS_GFD_BARPLTT_FREE_ERROR_INVALID_SIZE 1

typedef struct NNS_GfdLnkPlttVramManager {
    NNSiGfdLnkVramMan mgr;
    NNSiGfdLnkVramBlock * pBlockPoolList;

    u32 szByte;
    NNSiGfdLnkVramBlock * pWorkHead;
    u32 szByteManagementWork;
} NNS_GfdLnkPlttVramManager;

static NNS_GfdLnkPlttVramManager mgr_;

void NNS_GfdDumpLnkPlttVramManager () {
    OS_Printf("=== NNS_Gfd LnkPlttVramManager Dump ===\n");
    OS_Printf("   address:        size    \n");
    OS_Printf("=======================================\n");

    OS_Printf("------ Free Blocks                -----\n");

    NNSi_GfdDumpLnkVramManFreeListInfo(mgr_.mgr.pFreeList, mgr_.szByte);

    OS_Printf("=======================================\n");
}

void NNS_GfdDumpLnkPlttVramManagerEx (NNSGfdLnkDumpCallBack pFunc, void * pUserData) {
    NNS_GFD_NULL_ASSERT(pFunc);
    NNSi_GfdDumpLnkVramManFreeListInfoEx(mgr_.mgr.pFreeList, pFunc, pUserData);
}

u32 NNS_GfdGetLnkPlttVramManagerWorkSize (u32 numMemBlk) {
    return numMemBlk * sizeof(NNSiGfdLnkVramBlock);
}

void NNS_GfdInitLnkPlttVramManager (u32 szByte, void * pManagementWork, u32 szByteManagementWork, BOOL useAsDefault) {
    NNS_GFD_ASSERT(szByte <= GFD_SLOT_SIZE);
    NNS_GFD_NULL_ASSERT(pManagementWork);
    NNS_GFD_ASSERT(szByteManagementWork != 0);

    {
        mgr_.szByte = szByte;
        mgr_.pWorkHead = pManagementWork;
        mgr_.szByteManagementWork = szByteManagementWork;

        NNS_GfdResetLnkPlttVramState();

        if (useAsDefault) {
            NNS_GfdDefaultFuncAllocPlttVram = NNS_GfdAllocLnkPlttVram;
            NNS_GfdDefaultFuncFreePlttVram = NNS_GfdFreeLnkPlttVram;
        }
    }
}

NNSGfdPlttKey NNS_GfdAllocLnkPlttVram (u32 szByte, BOOL b4Pltt, u32 opt) {
#pragma unused(opt)
    u32 addr;
    BOOL result;

    {
        szByte = NNSi_GfdGetPlttKeyRoundupSize(szByte);

        if (szByte >= NNS_GFD_PLTTSIZE_MAX) {
            NNS_GFD_WARNING("Allocation size is too big. : NNS_GfdAllocLnkPlttVram()");
            return NNS_GFD_ALLOC_ERROR_PLTTKEY;
        }

        NNS_GFD_MINMAX_ASSERT(szByte, NNS_GFD_PLTTSIZE_MIN, NNS_GFD_PLTTSIZE_MAX);
    }

    if (b4Pltt) {
        result = NNSi_GfdAllocLnkVramAligned(
            &mgr_.mgr,
            &mgr_.pBlockPoolList,
            &addr,
            szByte,
            0x08
        );

        if (addr + szByte > NNS_GFD_4PLTT_MAX_ADDR) {
            if (!NNSi_GfdFreeLnkVram(
                    &mgr_.mgr,
                    &mgr_.pBlockPoolList,
                    addr,
                    szByte
                )) {
            }

            return NNS_GFD_ALLOC_ERROR_PLTTKEY;
        }
    } else {
        result = NNSi_GfdAllocLnkVramAligned(
            &mgr_.mgr,
            &mgr_.pBlockPoolList,
            &addr,
            szByte,
            0x10
        );
    }

    if (result) {
        return NNS_GfdMakePlttKey(addr, szByte);
    } else {
        NNS_GFD_WARNING("failure in Vram Allocation. : NNS_GfdAllocLnkPlttVram()");
        return NNS_GFD_ALLOC_ERROR_PLTTKEY;
    }
}

int NNS_GfdFreeLnkPlttVram (NNSGfdPlttKey plttKey) {
    const u32 addr = NNS_GfdGetPlttKeyAddr(plttKey);
    const u32 szByte = NNS_GfdGetPlttKeySize(plttKey);

    const BOOL result = NNSi_GfdFreeLnkVram(
        &mgr_.mgr,
        &mgr_.pBlockPoolList,
        addr,
        szByte
    );

    if (result) {
        return 0;
    } else {
        return NNS_GFD_BARPLTT_FREE_ERROR_INVALID_SIZE;
    }
}

void NNS_GfdResetLnkPlttVramState (void) {
    mgr_.pBlockPoolList
        = NNSi_GfdInitLnkVramBlockPool(
              (NNSiGfdLnkVramBlock *)mgr_.pWorkHead,
              mgr_.szByteManagementWork / sizeof(NNSiGfdLnkVramBlock)
        );

    {
        BOOL result;
        NNSi_GfdInitLnkVramMan(&mgr_.mgr);

        result = NNSi_GfdAddNewFreeBlock(
            &mgr_.mgr,
            &mgr_.pBlockPoolList,
            0,
            mgr_.szByte
        );
        NNS_GFD_ASSERT(result);
    }

    NNSi_GfdMergeAllFreeBlocks(&mgr_.mgr, &mgr_.pBlockPoolList);
}
