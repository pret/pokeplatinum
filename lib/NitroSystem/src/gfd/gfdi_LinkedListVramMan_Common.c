
#include <nnsys/gfd/gfd_common.h>

#include "include/gfdi_LinkedListVramMan_Common.h"

static NNS_GFD_INLINE void GetRegionOfMemBlock_ (NNSiGfdLnkMemRegion * pRegion, const NNSiGfdLnkVramBlock * pBlk) {
    NNS_GFD_NULL_ASSERT(pBlk);
    NNS_GFD_NON_ZERO_ASSERT(pBlk->szByte);

    pRegion->start = pBlk->addr;
    pRegion->end = pBlk->addr + pBlk->szByte;

    NNS_GFD_ASSERT(pRegion->end > pRegion->start);
}

static NNS_GFD_INLINE void InitBlockFromRegion_ (NNSiGfdLnkVramBlock * pBlk, const NNSiGfdLnkMemRegion * pRegion) {
    NNS_GFD_NULL_ASSERT(pBlk);
    NNS_GFD_ASSERT(pRegion->end > pRegion->start);

    pBlk->addr = pRegion->start;
    pBlk->szByte = (u32)(pRegion->end - pRegion->start);
    pBlk->pBlkPrev = NULL;
    pBlk->pBlkNext = NULL;
}

static NNS_GFD_INLINE void InitBlockFromPrams_ (NNSiGfdLnkVramBlock * pBlk, u32 addr, u32 szByte) {
    NNS_GFD_NULL_ASSERT(pBlk);
    NNS_GFD_NON_ZERO_ASSERT(szByte);

    pBlk->addr = addr;
    pBlk->szByte = szByte;
    pBlk->pBlkPrev = NULL;
    pBlk->pBlkNext = NULL;
}

static NNS_GFD_INLINE void InsertBlock_ (NNSiGfdLnkVramBlock * * pListHead, NNSiGfdLnkVramBlock * prev) {
    NNS_GFD_NULL_ASSERT(prev);

    if ((*pListHead) != NULL) {
        (*pListHead)->pBlkPrev = prev;
    }

    prev->pBlkNext = *pListHead;
    prev->pBlkPrev = NULL;
    *pListHead = prev;
}

static NNS_GFD_INLINE void RemoveBlock_ (NNSiGfdLnkVramBlock * * pListHead, NNSiGfdLnkVramBlock * pBlk) {
    NNS_GFD_NULL_ASSERT(pBlk);
    {
        NNSiGfdLnkVramBlock * const pPrev = pBlk->pBlkPrev;
        NNSiGfdLnkVramBlock * const pNext = pBlk->pBlkNext;

        if (pPrev) {
            pPrev->pBlkNext = pNext;
        } else {
            *pListHead = pNext;
        }

        if (pNext) {
            pNext->pBlkPrev = pPrev;
        }
    }
}

static NNS_GFD_INLINE NNSiGfdLnkVramBlock * GetNewBlock_ (NNSiGfdLnkVramBlock * * ppBlockPoolList) {
    NNS_GFD_NULL_ASSERT(ppBlockPoolList);
    {
        NNSiGfdLnkVramBlock * pNew = *ppBlockPoolList;
        if (pNew) {
            *ppBlockPoolList = pNew->pBlkNext;
        }

        return pNew;
    }
}

static NNS_GFD_INLINE u32 GetBlockEndAddr_ (NNSiGfdLnkVramBlock * pBlk) {
    NNS_GFD_NULL_ASSERT(pBlk);

    return (u32)(pBlk->addr + pBlk->szByte);
}

static void DefaultDumpCallBack_ (u32 addr, u32 szByte, void * pUserData) {
#ifdef SDK_FINALROM
    #pragma unused(addr)
#endif

    if (szByte != 0) {
        u32 * pszFreeTotal = (u32 *)pUserData;

        OS_Printf("0x%08x:  0x%08x    \n", addr, szByte);
        (*pszFreeTotal) += szByte;
    }
}

static BOOL TryToMergeBlockRegion_ (NNSiGfdLnkVramMan * pMan, NNSiGfdLnkVramBlock * * ppBlockPoolList, NNSiGfdLnkMemRegion * pRegion) {
    NNS_GFD_NULL_ASSERT(pMan);
    NNS_GFD_NULL_ASSERT(ppBlockPoolList);
    NNS_GFD_NULL_ASSERT(pRegion);

    {
        NNSiGfdLnkVramBlock * pCursor = pMan->pFreeList;
        NNSiGfdLnkVramBlock * pNext = NULL;
        BOOL bMerged = FALSE;

        while (pCursor) {
            pNext = pCursor->pBlkNext;

            if (pCursor->addr == pRegion->end) {
                pRegion->end = GetBlockEndAddr_(pCursor);

                RemoveBlock_(&pMan->pFreeList, pCursor);
                InsertBlock_(ppBlockPoolList, pCursor);
                bMerged |= TRUE;
            }

            if (GetBlockEndAddr_(pCursor) == pRegion->start) {
                pRegion->start = pCursor->addr;

                RemoveBlock_(&pMan->pFreeList, pCursor);
                InsertBlock_(ppBlockPoolList, pCursor);
                bMerged |= TRUE;
            }

            pCursor = pNext;
        }

        return bMerged;
    }
}

void NNSi_GfdDumpLnkVramManFreeListInfo (const NNSiGfdLnkVramBlock * pFreeListHead, u32 szReserved) {
    u32 szFreeTotal = 0;
    const NNSiGfdLnkVramBlock * pBlk = pFreeListHead;

    NNSi_GfdDumpLnkVramManFreeListInfoEx(pBlk, DefaultDumpCallBack_, &szFreeTotal);

    if (szFreeTotal == 0) {
        OS_Printf("0x--------:  0x--------    \n");
    }

    {
        const u32 szUsedTotal = (szReserved - szFreeTotal);
        OS_Printf(
            "    %08d / %08d bytes (%6.2f%%) used \n",
            szUsedTotal, szReserved, 100.f * szUsedTotal / szReserved
        );
    }
}

void NNSi_GfdDumpLnkVramManFreeListInfoEx (const NNSiGfdLnkVramBlock * pFreeListHead, NNSGfdLnkDumpCallBack pFunc, void * pUserData) {
    const NNSiGfdLnkVramBlock * pBlk = pFreeListHead;

    NNS_GFD_NULL_ASSERT(pFunc);

    while (pBlk) {
        (*pFunc)(pBlk->addr, pBlk->szByte, pUserData);
        pBlk = pBlk->pBlkNext;
    }
}

void NNSi_GfdInitLnkVramMan (NNSiGfdLnkVramMan * pMgr) {
    NNS_GFD_NULL_ASSERT(pMgr);
    pMgr->pFreeList = NULL;
}

NNSiGfdLnkVramBlock * NNSi_GfdInitLnkVramBlockPool (NNSiGfdLnkVramBlock * pArrayHead, u32 lengthOfArray) {
    NNS_GFD_NULL_ASSERT(pArrayHead);
    NNS_GFD_NON_ZERO_ASSERT(lengthOfArray);

    {
        int i;
        for ( i = 0; i < lengthOfArray - 1; i++ ) {
            pArrayHead[i].pBlkNext = &pArrayHead[i + 1];
            pArrayHead[i + 1].pBlkPrev = &pArrayHead[i];
        }

        pArrayHead[0].pBlkPrev = NULL;
        pArrayHead[lengthOfArray - 1].pBlkNext = NULL;
    }

    return &pArrayHead[0];
}

BOOL NNSi_GfdAddNewFreeBlock (NNSiGfdLnkVramMan * pMan, NNSiGfdLnkVramBlock * * ppBlockPoolList, u32 baseAddr, u32 szByte) {
    NNS_GFD_NULL_ASSERT(pMan);
    NNS_GFD_NULL_ASSERT(ppBlockPoolList);
    NNS_GFD_NON_ZERO_ASSERT(szByte);

    {
        NNSiGfdLnkVramBlock * pNew = GetNewBlock_(ppBlockPoolList);
        if (pNew) {
            InitBlockFromPrams_(pNew, baseAddr, szByte);
            InsertBlock_(&pMan->pFreeList, pNew);

            return TRUE;
        } else {
            return FALSE;
        }
    }
}

BOOL NNSi_GfdAllocLnkVram (NNSiGfdLnkVramMan * pMan, NNSiGfdLnkVramBlock * * ppBlockPoolList, u32 * pRetAddr, u32 szByte) {
    return NNSi_GfdAllocLnkVramAligned(pMan, ppBlockPoolList, pRetAddr, szByte, 0);
}

BOOL NNSi_GfdAllocLnkVramAligned (NNSiGfdLnkVramMan * pMan, NNSiGfdLnkVramBlock * * ppBlockPoolList, u32 * pRetAddr, u32 szByte, u32 alignment) {
    NNS_GFD_NULL_ASSERT(pMan);
    NNS_GFD_NULL_ASSERT(pRetAddr);

    NNS_GFD_NON_ZERO_ASSERT(szByte);
    {
        u32 alignedAddr;
        u32 szNeeded;
        u32 difference;

        NNSiGfdLnkVramBlock * pBlkFound = NULL;
        NNSiGfdLnkVramBlock * pBlk = pMan->pFreeList;

        while (pBlk) {
            if (alignment > 1) {
                alignedAddr = (u32)((pBlk->addr + (alignment - 1)) & ~(alignment - 1));

                difference = (alignedAddr - pBlk->addr);
                szNeeded = szByte + difference;
            } else {
                alignedAddr = pBlk->addr;
                difference = 0;
                szNeeded = szByte;
            }

            if (pBlk->szByte >= szNeeded) {
                pBlkFound = pBlk;
                break;
            }
            pBlk = pBlk->pBlkNext;
        }

        if (pBlkFound) {
            if (difference > 0) {
                NNSiGfdLnkVramBlock * pNewFreeBlk = GetNewBlock_(ppBlockPoolList);
                if (pNewFreeBlk) {
                    InitBlockFromPrams_(pNewFreeBlk, pBlkFound->addr, difference);
                    InsertBlock_(&pMan->pFreeList, pNewFreeBlk);
                } else {
                    goto NG_CASE;
                }
            }

            {
                pBlkFound->szByte -= szNeeded;

                pBlkFound->addr += szNeeded;

                if (pBlkFound->szByte == 0) {
                    RemoveBlock_(&pMan->pFreeList, pBlkFound);
                    InsertBlock_(ppBlockPoolList, pBlkFound);
                }
            }

            *pRetAddr = alignedAddr;
            return TRUE;
        }

 NG_CASE:

        *pRetAddr = 0;
        return FALSE;
    }
}

void NNSi_GfdMergeAllFreeBlocks (NNSiGfdLnkVramMan * pMan, NNSiGfdLnkVramBlock * * ppBlockPoolList) {
    NNSiGfdLnkMemRegion region;

    NNSiGfdLnkVramBlock * pCursor = pMan->pFreeList;
    while (pCursor) {
        region.start = pCursor->addr;
        region.end = pCursor->addr + pCursor->szByte;

        if (TryToMergeBlockRegion_(pMan, ppBlockPoolList, &region)) {
            pCursor->addr = region.start;
            pCursor->szByte = region.end - region.start;

            pCursor = pMan->pFreeList;
        } else {
            pCursor = pCursor->pBlkNext;
        }
    }
}

BOOL NNSi_GfdFreeLnkVram (NNSiGfdLnkVramMan * pMan, NNSiGfdLnkVramBlock * * ppBlockPoolList, u32 addr, u32 szByte) {
    NNS_GFD_NULL_ASSERT(pMan);
    NNS_GFD_NON_ZERO_ASSERT(szByte);

    {
        {
            NNSiGfdLnkMemRegion region;

            region.start = addr;
            region.end = addr + szByte;

            NNS_GFD_NULL_ASSERT(pMan);
            NNS_GFD_NULL_ASSERT(ppBlockPoolList);
            {
                (void)TryToMergeBlockRegion_(pMan, ppBlockPoolList, &region);

                {
                    NNSiGfdLnkVramBlock * pNewFreeBlk = GetNewBlock_(ppBlockPoolList);
                    if (pNewFreeBlk == NULL) {
                        return FALSE;
                    } else {
                        InitBlockFromRegion_(pNewFreeBlk, &region);
                        InsertBlock_(&pMan->pFreeList, pNewFreeBlk);
                    }
                }

                return TRUE;
            }
        }
    }
}
