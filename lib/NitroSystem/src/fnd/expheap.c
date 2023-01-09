
#include <nitro.h>
#include <nnsys/misc.h>
#include <nnsys/fnd/expheap.h>
#include <nnsys/fnd/config.h>

#include "include/heapcommoni.h"

#define MBLOCK_FREE_SIGNATURE ('FR')
#define MBLOCK_USED_SIGNATURE ('UD')
#define MAX_GROUPID 0xff
#define DEFAULT_GROUPID 0
#define MIN_ALIGNMENT 4
#define DEFAULT_ALLOC_MODE NNS_FND_EXPHEAP_ALLOC_MODE_FIRST
#define MIN_FREE_BLOCK_SIZE 4

typedef struct NNSiMemRegion NNSiMemRegion;

struct NNSiMemRegion {
    void * start;
    void * end;
};

#if !defined(NNS_FINALROM)

    #define HEAP_WARNING(exp, ...) \
    (void)((exp) && (OS_Printf(__VA_ARGS__), 0))

#endif

static NNS_FND_INLINE void * MaxPtr (void * a, void * b) {
    return NNSiGetUIntPtr(a) > NNSiGetUIntPtr(b) ? a: b;
}

static NNS_FND_INLINE BOOL IsValidExpHeapHandle (NNSFndHeapHandle handle) {
    if (handle == NNS_FND_HEAP_INVALID_HANDLE) {
        return FALSE;
    }

    {
        NNSiFndHeapHead * pHeapHd = handle;
        return pHeapHd->signature == NNSI_EXPHEAP_SIGNATURE;
    }
}

static NNS_FND_INLINE NNSiFndExpHeapHead * GetExpHeapHeadPtrFromHeapHead (NNSiFndHeapHead * pHHead) {
    return AddU32ToPtr(pHHead, sizeof(NNSiFndHeapHead));
}

static NNS_FND_INLINE NNSiFndHeapHead * GetHeapHeadPtrFromExpHeapHead (NNSiFndExpHeapHead * pEHHead) {
    return SubU32ToPtr(pEHHead, sizeof(NNSiFndHeapHead));
}

static NNS_FND_INLINE NNSiFndExpHeapHead * GetExpHeapHeadPtrFromHandle (NNSFndHeapHandle heap) {
    return GetExpHeapHeadPtrFromHeapHead(heap);
}

static NNS_FND_INLINE void * GetMemPtrForMBlock (NNSiFndExpHeapMBlockHead * pMBlkHd) {
    return AddU32ToPtr(pMBlkHd, sizeof(NNSiFndExpHeapMBlockHead));
}

static NNS_FND_INLINE const void * GetMemCPtrForMBlock (const NNSiFndExpHeapMBlockHead * pMBlkHd) {
    return AddU32ToCPtr(pMBlkHd, sizeof(NNSiFndExpHeapMBlockHead));
}

static NNS_FND_INLINE NNSiFndExpHeapMBlockHead * GetMBlockHeadPtr (void * memBlock) {
    return SubU32ToPtr(memBlock, sizeof(NNSiFndExpHeapMBlockHead));
}

static NNS_FND_INLINE const NNSiFndExpHeapMBlockHead * GetMBlockHeadCPtr (const void * memBlock) {
    return SubU32ToCPtr(memBlock, sizeof(NNSiFndExpHeapMBlockHead));
}

static NNS_FND_INLINE void * GetMBlockEndAddr (NNSiFndExpHeapMBlockHead * pMBHead) {
    return AddU32ToPtr(GetMemPtrForMBlock(pMBHead), pMBHead->blockSize);
}

static NNS_FND_INLINE u16 GetAlignmentForMBlock (const NNSiFndExpHeapMBlockHead * pMBlkHd) {
    return (u16)NNSi_FndGetBitValue(pMBlkHd->attribute, 8, 7);
}

static NNS_FND_INLINE void SetAlignmentForMBlock (NNSiFndExpHeapMBlockHead * pMBlkHd, u16 alignment) {
    NNSi_FndSetBitValue(pMBlkHd->attribute, 8, 7, alignment);
}

static NNS_FND_INLINE u16 GetGroupIDForMBlock (const NNSiFndExpHeapMBlockHead * pMBHead) {
    return (u16)NNSi_FndGetBitValue(pMBHead->attribute, 0, 8);
}

static NNS_FND_INLINE void SetGroupIDForMBlock (NNSiFndExpHeapMBlockHead * pMBHead, u16 id) {
    NNSi_FndSetBitValue(pMBHead->attribute, 0, 8, id);
}

static NNS_FND_INLINE u16 GetAllocDirForMBlock (const NNSiFndExpHeapMBlockHead * pMBHead) {
    return (u16)NNSi_FndGetBitValue(pMBHead->attribute, 15, 1);
}

static NNS_FND_INLINE void SetAllocDirForMBlock (NNSiFndExpHeapMBlockHead * pMBHead, u16 mode) {
    NNSi_FndSetBitValue(pMBHead->attribute, 15, 1, mode);
}

static NNS_FND_INLINE u16 GetAllocMode (NNSiFndExpHeapHead * pEHHead) {
    return (u16)NNSi_FndGetBitValue(pEHHead->feature, 0, 1);
}

static NNS_FND_INLINE void SetAllocMode (NNSiFndExpHeapHead * pEHHead, u16 mode) {
    NNSi_FndSetBitValue(pEHHead->feature, 0, 1, mode);
}

static void GetRegionOfMBlock (NNSiMemRegion * region, NNSiFndExpHeapMBlockHead * block) {
    region->start = SubU32ToPtr(block, GetAlignmentForMBlock(block));
    region->end = GetMBlockEndAddr(block);
}

static NNSiFndExpHeapMBlockHead * RemoveMBlock (NNSiFndExpMBlockList * list, NNSiFndExpHeapMBlockHead * block) {
    NNSiFndExpHeapMBlockHead * const prev = block->pMBHeadPrev;
    NNSiFndExpHeapMBlockHead * const next = block->pMBHeadNext;

    if (prev) {
        prev->pMBHeadNext = next;
    } else {
        list->head = next;
    }

    if (next) {
        next->pMBHeadPrev = prev;
    } else {
        list->tail = prev;
    }

    return prev;
}

static NNSiFndExpHeapMBlockHead * InsertMBlock (NNSiFndExpMBlockList * list, NNSiFndExpHeapMBlockHead * target, NNSiFndExpHeapMBlockHead * prev) {
    NNSiFndExpHeapMBlockHead * next;

    target->pMBHeadPrev = prev;
    if (prev) {
        next = prev->pMBHeadNext;
        prev->pMBHeadNext = target;
    } else {
        next = list->head;
        list->head = target;
    }

    target->pMBHeadNext = next;
    if (next) {
        next->pMBHeadPrev = target;
    } else {
        list->tail = target;
    }

    return target;
}

static NNS_FND_INLINE void AppendMBlock (NNSiFndExpMBlockList * list, NNSiFndExpHeapMBlockHead * block) {
    (void)InsertMBlock(list, block, list->tail);
}

static NNSiFndExpHeapMBlockHead * InitMBlock (const NNSiMemRegion * pRegion, u16 signature) {
    NNSiFndExpHeapMBlockHead * block = pRegion->start;

    block->signature = signature;
    block->attribute = 0;
    block->blockSize = GetOffsetFromPtr(GetMemPtrForMBlock(block), pRegion->end);
    block->pMBHeadPrev = NULL;
    block->pMBHeadNext = NULL;

    return block;
}

static NNS_FND_INLINE NNSiFndExpHeapMBlockHead * InitFreeMBlock (const NNSiMemRegion * pRegion) {
    return InitMBlock(pRegion, MBLOCK_FREE_SIGNATURE);
}

static NNSiFndHeapHead * InitExpHeap (void * startAddress, void * endAddress, u16 optFlag) {
    NNSiFndHeapHead * pHeapHd = startAddress;
    NNSiFndExpHeapHead * pExpHeapHd = GetExpHeapHeadPtrFromHeapHead(pHeapHd);

    NNSi_FndInitHeapHead(
        pHeapHd,
        NNSI_EXPHEAP_SIGNATURE,
        AddU32ToPtr(pExpHeapHd, sizeof(NNSiFndExpHeapHead)),
        endAddress,
        optFlag
    );

    pExpHeapHd->groupID = DEFAULT_GROUPID;
    pExpHeapHd->feature = 0;
    SetAllocMode(pExpHeapHd, DEFAULT_ALLOC_MODE);

    {
        NNSiFndExpHeapMBlockHead * pMBHead;
        NNSiMemRegion region;
        region.start = pHeapHd->heapStart;
        region.end = pHeapHd->heapEnd;
        pMBHead = InitFreeMBlock(&region);

        pExpHeapHd->mbFreeList.head = pMBHead;
        pExpHeapHd->mbFreeList.tail = pMBHead;
        pExpHeapHd->mbUsedList.head = NULL;
        pExpHeapHd->mbUsedList.tail = NULL;

        return pHeapHd;
    }
}

static void * AllocUsedBlockFromFreeBlock (NNSiFndExpHeapHead * pEHHead, NNSiFndExpHeapMBlockHead * pMBHeadFree, void * mblock, u32 size, u16 direction) {
    NNSiMemRegion freeRgnT;
    NNSiMemRegion freeRgnB;
    NNSiFndExpHeapMBlockHead * pMBHeadFreePrev;

    GetRegionOfMBlock(&freeRgnT, pMBHeadFree);
    freeRgnB.end = freeRgnT.end;
    freeRgnB.start = AddU32ToPtr(mblock, size);
    freeRgnT.end = SubU32ToPtr(mblock, sizeof(NNSiFndExpHeapMBlockHead));

    pMBHeadFreePrev = RemoveMBlock(&pEHHead->mbFreeList, pMBHeadFree);

    if (GetOffsetFromPtr(freeRgnT.start, freeRgnT.end) < sizeof(NNSiFndExpHeapMBlockHead) + MIN_FREE_BLOCK_SIZE) {
        freeRgnT.end = freeRgnT.start;
    } else {
        pMBHeadFreePrev = InsertMBlock(&pEHHead->mbFreeList, InitFreeMBlock(&freeRgnT), pMBHeadFreePrev);
    }

    if (GetOffsetFromPtr(freeRgnB.start, freeRgnB.end) < sizeof(NNSiFndExpHeapMBlockHead) + MIN_FREE_BLOCK_SIZE) {
        freeRgnB.start = freeRgnB.end;
    } else {
        (void)InsertMBlock(&pEHHead->mbFreeList, InitFreeMBlock(&freeRgnB), pMBHeadFreePrev);
    }

    FillAllocMemory(GetHeapHeadPtrFromExpHeapHead(pEHHead), freeRgnT.end, GetOffsetFromPtr(freeRgnT.end, freeRgnB.start));

    {
        NNSiFndExpHeapMBlockHead * pMBHeadNewUsed;
        NNSiMemRegion region;

        region.start = SubU32ToPtr(mblock, sizeof(NNSiFndExpHeapMBlockHead));
        region.end = freeRgnB.start;

        pMBHeadNewUsed = InitMBlock(&region, MBLOCK_USED_SIGNATURE);
        SetAllocDirForMBlock(pMBHeadNewUsed, direction);
        SetAlignmentForMBlock(pMBHeadNewUsed, (u16)GetOffsetFromPtr(freeRgnT.end, pMBHeadNewUsed));
        SetGroupIDForMBlock(pMBHeadNewUsed, pEHHead->groupID);
        AppendMBlock(&pEHHead->mbUsedList, pMBHeadNewUsed);
    }

    return mblock;
}

static void * AllocFromHead (NNSiFndHeapHead * pHeapHd, u32 size, int alignment) {
    NNSiFndExpHeapHead * pExpHeapHd = GetExpHeapHeadPtrFromHeapHead(pHeapHd);

    const BOOL bAllocFirst = GetAllocMode(pExpHeapHd) == NNS_FND_EXPHEAP_ALLOC_MODE_FIRST;

    NNSiFndExpHeapMBlockHead * pMBlkHd = NULL;
    NNSiFndExpHeapMBlockHead * pMBlkHdFound = NULL;
    u32 foundSize = 0xffffffff;
    void * foundMBlock = NULL;

    for (pMBlkHd = pExpHeapHd->mbFreeList.head; pMBlkHd; pMBlkHd = pMBlkHd->pMBHeadNext) {
        void * const mblock = GetMemPtrForMBlock(pMBlkHd);
        void * const reqMBlock = NNSi_FndRoundUpPtr(mblock, alignment);
        const u32 offset = GetOffsetFromPtr(mblock, reqMBlock);

        if (pMBlkHd->blockSize >= size + offset
            && foundSize > pMBlkHd->blockSize) {
            pMBlkHdFound = pMBlkHd;
            foundSize = pMBlkHd->blockSize;
            foundMBlock = reqMBlock;

            if (bAllocFirst || foundSize == size) {
                break;
            }
        }
    }

    if (!pMBlkHdFound) {
        return NULL;
    }

    return AllocUsedBlockFromFreeBlock(
        pExpHeapHd,
        pMBlkHdFound,
        foundMBlock,
        size,
        NNS_FND_EXPHEAP_ALLOC_DIR_FRONT
    );
}

static void * AllocFromTail (NNSiFndHeapHead * pHeapHd, u32 size, int alignment) {
    NNSiFndExpHeapHead * pExpHeapHd = GetExpHeapHeadPtrFromHeapHead(pHeapHd);

    const BOOL bAllocFirst = GetAllocMode(pExpHeapHd) == NNS_FND_EXPHEAP_ALLOC_MODE_FIRST;

    NNSiFndExpHeapMBlockHead * pMBlkHd = NULL;
    NNSiFndExpHeapMBlockHead * pMBlkHdFound = NULL;
    u32 foundSize = 0xffffffff;
    void * foundMBlock = NULL;

    for (pMBlkHd = pExpHeapHd->mbFreeList.tail; pMBlkHd; pMBlkHd = pMBlkHd->pMBHeadPrev) {
        void * const mblock = GetMemPtrForMBlock(pMBlkHd);
        void * const mblockEnd = AddU32ToPtr(mblock, pMBlkHd->blockSize);
        void * const reqMBlock = NNSi_FndRoundDownPtr(SubU32ToPtr(mblockEnd, size), alignment);

        if (ComparePtr(reqMBlock, mblock) >= 0
            && foundSize > pMBlkHd->blockSize) {
            pMBlkHdFound = pMBlkHd;
            foundSize = pMBlkHd->blockSize;
            foundMBlock = reqMBlock;

            if (bAllocFirst || foundSize == size) {
                break;
            }
        }
    }

    if (!pMBlkHdFound) {
        return NULL;
    }

    return AllocUsedBlockFromFreeBlock(
        pExpHeapHd,
        pMBlkHdFound,
        foundMBlock,
        size,
        NNS_FND_EXPHEAP_ALLOC_DIR_REAR
    );
}

static BOOL RecycleRegion (NNSiFndExpHeapHead * pEHHead, const NNSiMemRegion * pRegion) {
    NNSiFndExpHeapMBlockHead * pBlkPrFree = NULL;
    NNSiMemRegion freeRgn = *pRegion;

    {
        NNSiFndExpHeapMBlockHead * pBlk;

        for (pBlk = pEHHead->mbFreeList.head; pBlk; pBlk = pBlk->pMBHeadNext) {
            if (pBlk < pRegion->start) {
                pBlkPrFree = pBlk;
                continue;
            }

            if (pBlk == pRegion->end) {
                freeRgn.end = GetMBlockEndAddr(pBlk);
                (void)RemoveMBlock(&pEHHead->mbFreeList, pBlk);

                FillNoUseMemory(GetHeapHeadPtrFromExpHeapHead(pEHHead), pBlk, sizeof(NNSiFndExpHeapMBlockHead));
            }
            break;
        }
    }

    if (pBlkPrFree && GetMBlockEndAddr(pBlkPrFree) == pRegion->start) {
        freeRgn.start = pBlkPrFree;
        pBlkPrFree = RemoveMBlock(&pEHHead->mbFreeList, pBlkPrFree);
    }

    if (GetOffsetFromPtr(freeRgn.start, freeRgn.end) < sizeof(NNSiFndExpHeapMBlockHead)) {
        return FALSE;
    }

    FillFreeMemory(GetHeapHeadPtrFromExpHeapHead(pEHHead), pRegion->start, GetOffsetFromPtr(pRegion->start, pRegion->end));

    (void)InsertMBlock(
        &pEHHead->mbFreeList,
        InitFreeMBlock(&freeRgn),
        pBlkPrFree
    );

    return TRUE;
}

#if !defined(NNS_FINALROM)

static BOOL CheckMBlock (const NNSiFndExpHeapMBlockHead * pMBHead, NNSiFndHeapHead * pHeapHd, u16 signature, const char * heapType, u32 flag) {
    const BOOL bPrint = 0 != (flag & NNS_FND_HEAP_ERROR_PRINT);
    const void * const memBlock = GetMemCPtrForMBlock(pMBHead);

    if (pHeapHd) {
        if (NNSiGetUIntPtr(pMBHead) < NNSiGetUIntPtr(pHeapHd->heapStart)
            || NNSiGetUIntPtr(memBlock) > NNSiGetUIntPtr(pHeapHd->heapEnd)
        ) {
            HEAP_WARNING(
                bPrint, "[NNS Foundation " "Exp" " Heap]" " Bad %s memory block address. - address %08X, heap area [%08X - %08X)\n",
                heapType, memBlock, pHeapHd->heapStart, pHeapHd->heapEnd
            );
            return FALSE;
        }
    } else {
        if (NNSiGetUIntPtr(pMBHead) >= 0x11000000) {
            HEAP_WARNING(
                bPrint, "[NNS Foundation " "Exp" " Heap]" " Bad %s memory block address. - address %08X\n",
                heapType, memBlock
            );
            return FALSE;
        }
    }

    if (pMBHead->signature != signature) {
        HEAP_WARNING(
            bPrint, "[NNS Foundation " "Exp" " Heap]" " Bad %s memory block signature. - address %08X, signature %04X\n",
            heapType, memBlock, pMBHead->signature
        );
        return FALSE;
    }

    if (pMBHead->blockSize >= 0x01000000) {
        HEAP_WARNING(
            bPrint, "[NNS Foundation " "Exp" " Heap]" " Too large %s memory block. - address %08X, block size %08X\n",
            heapType, memBlock, pMBHead->blockSize
        );
        return FALSE;
    }

    if (pHeapHd) {
        if (NNSiGetUIntPtr(memBlock) + pMBHead->blockSize > NNSiGetUIntPtr(pHeapHd->heapEnd)) {
            HEAP_WARNING(
                bPrint, "[NNS Foundation " "Exp" " Heap]" " wrong size %s memory block. - address %08X, block size %08X\n",
                heapType, memBlock, pMBHead->blockSize
            );
            return FALSE;
        }
    }

    return TRUE;
}

#endif

#if !defined(NNS_FINALROM)

static NNS_FND_INLINE BOOL CheckUsedMBlock (const NNSiFndExpHeapMBlockHead * pMBHead, NNSiFndHeapHead * pHeapHd, u32 flag) {
    return CheckMBlock(pMBHead, pHeapHd, MBLOCK_USED_SIGNATURE, "used", flag);
}

#endif

#if !defined(NNS_FINALROM)

static NNS_FND_INLINE BOOL CheckFreeMBlock (const NNSiFndExpHeapMBlockHead * pMBHead, NNSiFndHeapHead * pHeapHd, u32 flag) {
    return CheckMBlock(pMBHead, pHeapHd, MBLOCK_FREE_SIGNATURE, "free", flag);
}

#endif

#if !defined(NNS_FINALROM)

static BOOL CheckMBlockPrevPtr (const NNSiFndExpHeapMBlockHead * pMBHead, const NNSiFndExpHeapMBlockHead * pMBHeadPrev, u32 flag) {
    const BOOL bPrint = 0 != (flag & NNS_FND_HEAP_ERROR_PRINT);

    if (pMBHead->pMBHeadPrev != pMBHeadPrev) {
        HEAP_WARNING(
            bPrint, "[NNS Foundation " "Exp" " Heap]" " Wrong link memory block. - address %08X, previous address %08X != %08X\n",
            GetMemCPtrForMBlock(pMBHead), pMBHead->pMBHeadPrev, pMBHeadPrev
        );
        return FALSE;
    }

    return TRUE;
}

#endif

#if !defined(NNS_FINALROM)

static BOOL CheckMBlockNextPtr (const NNSiFndExpHeapMBlockHead * pMBHead, const NNSiFndExpHeapMBlockHead * pMBHeadNext, u32 flag) {
    const BOOL bPrint = 0 != (flag & NNS_FND_HEAP_ERROR_PRINT);

    if (pMBHead->pMBHeadNext != pMBHeadNext) {
        HEAP_WARNING(
            bPrint, "[NNS Foundation " "Exp" " Heap]" " Wrong link memory block. - address %08X, next address %08X != %08X\n",
            GetMemCPtrForMBlock(pMBHead), pMBHead->pMBHeadNext, pMBHeadNext
        );
        return FALSE;
    }

    return TRUE;
}

#endif

#if !defined(NNS_FINALROM)

static BOOL CheckMBlockLinkTail (const NNSiFndExpHeapMBlockHead * pMBHead, const NNSiFndExpHeapMBlockHead * pMBHeadTail, const char * heapType, u32 flag) {
    const BOOL bPrint = 0 != (flag & NNS_FND_HEAP_ERROR_PRINT);

    if (pMBHead != pMBHeadTail) {
        HEAP_WARNING(
            bPrint, "[NNS Foundation " "Exp" " Heap]" " Wrong memory brock list %s pointer. - address %08X, %s address %08X != %08X\n",
            heapType, GetMemCPtrForMBlock(pMBHead), heapType, pMBHead, pMBHeadTail
        );
        return FALSE;
    }

    return TRUE;
}

#endif

#if !defined(NNS_FINALROM)

static BOOL IsValidUsedMBlock (const void * memBlock, NNSFndHeapHandle heap) {
    NNSiFndHeapHead * pHeapHd = heap;

    if (!memBlock) {
        return FALSE;
    }

    return CheckUsedMBlock(GetMBlockHeadCPtr(memBlock), pHeapHd, 0);
}

#endif

#if !defined(NNS_FINALROM)

void NNSi_FndDumpExpHeap (NNSFndHeapHandle heap) {
    NNS_ASSERT(IsValidExpHeapHandle(heap));

    {
        u32 usedSize = 0;
        u32 usedCnt = 0;
        u32 freeSize = 0;
        u32 freeCnt = 0;

        NNSiFndHeapHead * pHeapHd = heap;
        NNSiFndExpHeapHead * pExpHeapHd = GetExpHeapHeadPtrFromHandle(pHeapHd);

        NNSi_FndDumpHeapHead(pHeapHd);

        OS_Printf("     attr  address:   size    gid aln   prev_ptr next_ptr\n");

        OS_Printf("    (Used Blocks)\n");

        if (pExpHeapHd->mbUsedList.head == NULL) {
            OS_Printf("     NONE\n");
        } else {
            NNSiFndExpHeapMBlockHead * pMBHead;

            for (pMBHead = pExpHeapHd->mbUsedList.head; pMBHead; pMBHead = pMBHead->pMBHeadNext) {
                if (pMBHead->signature != MBLOCK_USED_SIGNATURE) {
                    OS_Printf("    xxxxx %08x: --------  --- ---  (-------- --------)\nabort\n", pMBHead);
                    break;
                }

                OS_Printf(
                    "    %s %08x: %8d  %3d %3d  (%08x %08x)\n",
                    GetAllocDirForMBlock(pMBHead) == NNS_FND_EXPHEAP_ALLOC_DIR_REAR ? " rear" : "front",
                    GetMemPtrForMBlock(pMBHead),
                    pMBHead->blockSize,
                    GetGroupIDForMBlock(pMBHead),
                    GetAlignmentForMBlock(pMBHead),
                    pMBHead->pMBHeadPrev ? GetMemPtrForMBlock(pMBHead->pMBHeadPrev): NULL,
                    pMBHead->pMBHeadNext ? GetMemPtrForMBlock(pMBHead->pMBHeadNext): NULL
                );

                usedSize += sizeof(NNSiFndExpHeapMBlockHead) + pMBHead->blockSize + GetAlignmentForMBlock(pMBHead);

                usedCnt++;
            }
        }

        OS_Printf("    (Free Blocks)\n");

        if (pExpHeapHd->mbFreeList.head == NULL) {
            OS_Printf("     NONE\n");
        } else {
            NNSiFndExpHeapMBlockHead * pMBHead;

            for (pMBHead = pExpHeapHd->mbFreeList.head; pMBHead; pMBHead = pMBHead->pMBHeadNext) {
                if (pMBHead->signature != MBLOCK_FREE_SIGNATURE) {
                    OS_Printf("    xxxxx %08x: --------  --- ---  (-------- --------)\nabort\n", pMBHead);
                    break;
                }

                OS_Printf(
                    "    %s %08x: %8d  %3d %3d  (%08x %08x)\n",
                    " free",
                    GetMemPtrForMBlock(pMBHead),
                    pMBHead->blockSize,
                    GetGroupIDForMBlock(pMBHead),
                    GetAlignmentForMBlock(pMBHead),
                    pMBHead->pMBHeadPrev ? GetMemPtrForMBlock(pMBHead->pMBHeadPrev): NULL,
                    pMBHead->pMBHeadNext ? GetMemPtrForMBlock(pMBHead->pMBHeadNext): NULL
                );

                freeCnt++;
            }
        }

        OS_Printf("\n");

        {
            u32 heapSize = GetOffsetFromPtr(pHeapHd->heapStart, pHeapHd->heapEnd);
            OS_Printf(
                "    %d / %d bytes (%6.2f%%) used (U:%d F:%d)\n",
                usedSize, heapSize, 100.0 * usedSize / heapSize, usedCnt, freeCnt
            );
        }

        OS_Printf("\n");
    }
}

#endif

NNSFndHeapHandle NNS_FndCreateExpHeapEx (void * startAddress, u32 size, u16 optFlag) {
    void * endAddress;

    SDK_NULL_ASSERT(startAddress);

    endAddress = NNSi_FndRoundDownPtr(AddU32ToPtr(startAddress, size), MIN_ALIGNMENT);
    startAddress = NNSi_FndRoundUpPtr(startAddress, MIN_ALIGNMENT);

    if (NNSiGetUIntPtr(startAddress) > NNSiGetUIntPtr(endAddress)
        || GetOffsetFromPtr(startAddress, endAddress) < sizeof(NNSiFndHeapHead) + sizeof(NNSiFndExpHeapHead)
        + sizeof(NNSiFndExpHeapMBlockHead) + MIN_ALIGNMENT
    ) {
        return NNS_FND_HEAP_INVALID_HANDLE;
    }

    {
        NNSiFndHeapHead * pHeapHd = InitExpHeap(startAddress, endAddress, optFlag);
        return pHeapHd;
    }
}

void NNS_FndDestroyExpHeap (NNSFndHeapHandle heap) {
    NNS_ASSERT(IsValidExpHeapHandle(heap));

    NNSi_FndFinalizeHeap(heap);
}

void * NNS_FndAllocFromExpHeapEx (NNSFndHeapHandle heap, u32 size, int alignment) {
    void * memory = NULL;

    NNS_ASSERT(IsValidExpHeapHandle(heap));

    NNS_ASSERT(alignment % MIN_ALIGNMENT == 0);
    NNS_ASSERT(MIN_ALIGNMENT <= abs(alignment) && abs(alignment) <= 32);

    if (size == 0) {
        size = 1;
    }

    size = NNSi_FndRoundUp(size, MIN_ALIGNMENT);

    if (alignment >= 0) {
        memory = AllocFromHead(heap, size, alignment);
    } else {
        memory = AllocFromTail(heap, size, -alignment);
    }

    return memory;
}

u32 NNS_FndResizeForMBlockExpHeap (NNSFndHeapHandle heap, void * memBlock, u32 size) {
    NNSiFndExpHeapHead * pEHHead;
    NNSiFndExpHeapMBlockHead * pMBHead;

    NNS_ASSERT(IsValidExpHeapHandle(heap));
    NNS_ASSERT(IsValidUsedMBlock(memBlock, heap));

    pEHHead = GetExpHeapHeadPtrFromHandle(heap);
    pMBHead = GetMBlockHeadPtr(memBlock);

    size = NNSi_FndRoundUp(size, MIN_ALIGNMENT);
    if (size == pMBHead->blockSize) {
        return size;
    }

    if (size > pMBHead->blockSize) {
        void * crUsedEnd = GetMBlockEndAddr(pMBHead);
        NNSiFndExpHeapMBlockHead * block;

        for (block = pEHHead->mbFreeList.head; block; block = block->pMBHeadNext) {
            if (block == crUsedEnd) {
                break;
            }
        }

        if (!block || size > pMBHead->blockSize + sizeof(NNSiFndExpHeapMBlockHead) + block->blockSize) {
            return 0;
        }

        {
            NNSiMemRegion rgnNewFree;
            void * oldFreeStart;
            NNSiFndExpHeapMBlockHead * nextBlockPrev;

            GetRegionOfMBlock(&rgnNewFree, block);
            nextBlockPrev = RemoveMBlock(&pEHHead->mbFreeList, block);

            oldFreeStart = rgnNewFree.start;
            rgnNewFree.start = AddU32ToPtr(memBlock, size);

            if (GetOffsetFromPtr(rgnNewFree.start, rgnNewFree.end) < sizeof(NNSiFndExpHeapMBlockHead)) {
                rgnNewFree.start = rgnNewFree.end;
            }

            pMBHead->blockSize = GetOffsetFromPtr(memBlock, rgnNewFree.start);

            if (GetOffsetFromPtr(rgnNewFree.start, rgnNewFree.end) >= sizeof(NNSiFndExpHeapMBlockHead)) {
                (void)InsertMBlock(&pEHHead->mbFreeList, InitFreeMBlock(&rgnNewFree), nextBlockPrev);
            }

            FillAllocMemory(
                heap,
                oldFreeStart,
                GetOffsetFromPtr(oldFreeStart, rgnNewFree.start)
            );
        }
    } else {
        NNSiMemRegion rgnNewFree;
        const u32 oldBlockSize = pMBHead->blockSize;

        rgnNewFree.start = AddU32ToPtr(memBlock, size);
        rgnNewFree.end = GetMBlockEndAddr(pMBHead);

        pMBHead->blockSize = size;

        if (!RecycleRegion(pEHHead, &rgnNewFree)) {
            pMBHead->blockSize = oldBlockSize;
        }
    }

    return pMBHead->blockSize;
}

void NNS_FndFreeToExpHeap (NNSFndHeapHandle heap, void * memBlock) {
    NNS_ASSERT(IsValidExpHeapHandle(heap));

    {
        NNSiFndHeapHead * pHeapHd = heap;
        NNSiFndExpHeapHead * pExpHeapHd = GetExpHeapHeadPtrFromHandle(pHeapHd);
        NNSiFndExpHeapMBlockHead * pMBHead = GetMBlockHeadPtr(memBlock);
        NNSiMemRegion region;

        NNS_ASSERT(pHeapHd->heapStart <= memBlock && memBlock < pHeapHd->heapEnd);

        GetRegionOfMBlock(&region, pMBHead);
        (void)RemoveMBlock(&pExpHeapHd->mbUsedList, pMBHead);
        (void)RecycleRegion(pExpHeapHd, &region);
    }
}

u32 NNS_FndGetTotalFreeSizeForExpHeap (NNSFndHeapHandle heap) {
    NNS_ASSERT(IsValidExpHeapHandle(heap));

    {
        u32 sumSize = 0;
        NNSiFndExpHeapHead * pEHHead = GetExpHeapHeadPtrFromHandle(heap);
        NNSiFndExpHeapMBlockHead * pMBHead;

        for(pMBHead = pEHHead->mbFreeList.head; pMBHead; pMBHead = pMBHead->pMBHeadNext) {
            sumSize += pMBHead->blockSize;
        }

        return sumSize;
    }
}

u32 NNS_FndGetAllocatableSizeForExpHeapEx (NNSFndHeapHandle heap, int alignment) {
    NNS_ASSERT(IsValidExpHeapHandle(heap));

    NNS_ASSERT(alignment % MIN_ALIGNMENT == 0);
    NNS_ASSERT(MIN_ALIGNMENT <= abs(alignment) && abs(alignment) <= 32);

    alignment = abs(alignment);

    {
        NNSiFndExpHeapHead * pEHHead = GetExpHeapHeadPtrFromHandle(heap);
        u32 maxSize = 0;
        u32 offsetMin = 0xFFFFFFFF;
        NNSiFndExpHeapMBlockHead * pMBlkHd;

        for (pMBlkHd = pEHHead->mbFreeList.head; pMBlkHd; pMBlkHd = pMBlkHd->pMBHeadNext) {
            void * baseAddress = NNSi_FndRoundUpPtr(GetMemPtrForMBlock(pMBlkHd), alignment);

            if (NNSiGetUIntPtr(baseAddress) < NNSiGetUIntPtr(GetMBlockEndAddr(pMBlkHd))) {
                const u32 blockSize = GetOffsetFromPtr(baseAddress, GetMBlockEndAddr(pMBlkHd));

                const u32 offset = GetOffsetFromPtr(GetMemPtrForMBlock(pMBlkHd), baseAddress);

                if (maxSize < blockSize
                    || (maxSize == blockSize && offsetMin > offset)
                ) {
                    maxSize = blockSize;
                    offsetMin = offset;
                }
            }
        }

        return maxSize;
    }
}

u16 NNS_FndSetAllocModeForExpHeap (NNSFndHeapHandle heap, u16 mode) {
    NNS_ASSERT(IsValidExpHeapHandle(heap));

    {
        NNSiFndExpHeapHead * const pEHHead = GetExpHeapHeadPtrFromHandle(heap);
        u16 oldMode = GetAllocMode(pEHHead);
        SetAllocMode(pEHHead, mode);

        return oldMode;
    }
}

u16 NNS_FndGetAllocModeForExpHeap (NNSFndHeapHandle heap) {
    NNS_ASSERT(IsValidExpHeapHandle(heap));
    return GetAllocMode(GetExpHeapHeadPtrFromHandle(heap));
}

u16 NNS_FndSetGroupIDForExpHeap (NNSFndHeapHandle heap, u16 groupID) {
    NNS_ASSERT(IsValidExpHeapHandle(heap));
    NNS_ASSERT(groupID <= MAX_GROUPID);

    {
        NNSiFndExpHeapHead * pEHHead = GetExpHeapHeadPtrFromHandle(heap);
        u16 oldGroupID = pEHHead->groupID;
        pEHHead->groupID = groupID;

        return oldGroupID;
    }
}

u16 NNS_FndGetGroupIDForExpHeap (NNSFndHeapHandle heap) {
    NNS_ASSERT(IsValidExpHeapHandle(heap));

    return GetExpHeapHeadPtrFromHandle(heap)->groupID;
}

void NNS_FndVisitAllocatedForExpHeap (NNSFndHeapHandle heap, NNSFndHeapVisitor visitor, u32 userParam) {
    NNS_ASSERT(IsValidExpHeapHandle(heap));
    SDK_NULL_ASSERT(visitor);

    {
        NNSiFndExpHeapMBlockHead * pMBHead = GetExpHeapHeadPtrFromHandle(heap)->mbUsedList.head;

        while (pMBHead) {
            NNSiFndExpHeapMBlockHead * pMBHeadNext = pMBHead->pMBHeadNext;
            (*visitor)(GetMemPtrForMBlock(pMBHead), heap, userParam);
            pMBHead = pMBHeadNext;
        }
    }
}

u32 NNS_FndGetSizeForMBlockExpHeap (const void * memBlock) {
    NNS_ASSERT(IsValidUsedMBlock(memBlock, NULL));

    return GetMBlockHeadCPtr(memBlock)->blockSize;
}

u16 NNS_FndGetGroupIDForMBlockExpHeap (const void * memBlock) {
    NNS_ASSERT(IsValidUsedMBlock(memBlock, NULL));

    return GetGroupIDForMBlock(GetMBlockHeadCPtr(memBlock));
}

u16 NNS_FndGetAllocDirForMBlockExpHeap (const void * memBlock) {
    NNS_ASSERT(IsValidUsedMBlock(memBlock, NULL));

    return GetAllocDirForMBlock(GetMBlockHeadCPtr(memBlock));
}

#if !defined(NNS_FINALROM)

BOOL NNS_FndCheckExpHeap (NNSFndHeapHandle heap, u32 optFlag) {
    const BOOL bPrint = 0 != (optFlag & NNS_FND_HEAP_ERROR_PRINT);
    u32 totalBytes = 0;

    if (!IsValidExpHeapHandle(heap)) {
        HEAP_WARNING(bPrint, "[NNS Foundation " "Exp" " Heap]" " Invalid heap handle. - %08X\n", heap);
        return FALSE;
    }

    {
        NNSiFndHeapHead * const pHeapHd = heap;
        NNSiFndExpHeapHead * const pExpHeapHd = GetExpHeapHeadPtrFromHeapHead(pHeapHd);
        NNSiFndExpHeapMBlockHead * pMBHead = NULL;
        NNSiFndExpHeapMBlockHead * pMBHeadPrev = NULL;

        for (pMBHead = pExpHeapHd->mbUsedList.head; pMBHead; pMBHeadPrev = pMBHead, pMBHead = pMBHead->pMBHeadNext) {
            if (!CheckUsedMBlock(pMBHead, pHeapHd, optFlag)
                || !CheckMBlockPrevPtr(pMBHead, pMBHeadPrev, optFlag)
            ) {
                return FALSE;
            }

            totalBytes += sizeof(NNSiFndExpHeapMBlockHead) + pMBHead->blockSize + GetAlignmentForMBlock(pMBHead);
        }

        if (!CheckMBlockLinkTail(pMBHeadPrev, pExpHeapHd->mbUsedList.tail, "tail", optFlag)) {
            return FALSE;
        }

        pMBHead = NULL;
        pMBHeadPrev = NULL;
        for (pMBHead = pExpHeapHd->mbFreeList.head; pMBHead; pMBHeadPrev = pMBHead, pMBHead = pMBHead->pMBHeadNext) {
            if (!CheckFreeMBlock(pMBHead, pHeapHd, optFlag)
                || !CheckMBlockPrevPtr(pMBHead, pMBHeadPrev, optFlag)
            ) {
                return FALSE;
            }

            totalBytes += sizeof(NNSiFndExpHeapMBlockHead) + pMBHead->blockSize;
        }

        if (!CheckMBlockLinkTail(pMBHeadPrev, pExpHeapHd->mbFreeList.tail, "tail", optFlag)) {
            return FALSE;
        }

        if (totalBytes != GetOffsetFromPtr(pHeapHd->heapStart, pHeapHd->heapEnd)) {
            HEAP_WARNING(
                bPrint, "[NNS Foundation " "Exp" " Heap]" " Incorrect total memory block size. - heap size %08X, sum size %08X\n",
                GetOffsetFromPtr(pHeapHd->heapStart, pHeapHd->heapEnd), totalBytes
            );
            return FALSE;
        }

        return TRUE;
    }
}

#endif

#if !defined(NNS_FINALROM)

BOOL NNS_FndCheckForMBlockExpHeap (const void * memBlock, NNSFndHeapHandle heap, u32 optFlag) {
    const NNSiFndExpHeapMBlockHead * pMBHead = NULL;
    NNSiFndHeapHead * const pHeapHd = heap;

    if (!memBlock) {
        return FALSE;
    }

    pMBHead = GetMBlockHeadCPtr(memBlock);

    if (!CheckUsedMBlock(pMBHead, pHeapHd, optFlag)) {
        return FALSE;
    }

    if (pMBHead->pMBHeadPrev) {
        if (!CheckUsedMBlock(pMBHead->pMBHeadPrev, pHeapHd, optFlag)
            || !CheckMBlockNextPtr(pMBHead->pMBHeadPrev, pMBHead, optFlag)
        ) {
            return FALSE;
        }
    } else {
        if (pHeapHd) {
            if (!CheckMBlockLinkTail(pMBHead, GetExpHeapHeadPtrFromHeapHead(pHeapHd)->mbUsedList.head, "head", optFlag)) {
                return FALSE;
            }
        }
    }

    if (pMBHead->pMBHeadNext) {
        if (!CheckUsedMBlock(pMBHead->pMBHeadNext, pHeapHd, optFlag)
            || !CheckMBlockPrevPtr(pMBHead->pMBHeadNext, pMBHead, optFlag)
        ) {
            return FALSE;
        }
    } else {
        if (pHeapHd) {
            if (!CheckMBlockLinkTail(pMBHead, GetExpHeapHeadPtrFromHeapHead(pHeapHd)->mbUsedList.tail, "tail", optFlag)) {
                return FALSE;
            }
        }
    }

    return TRUE;
}

#endif
