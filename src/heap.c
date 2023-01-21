#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_02017E74.h"

#include "heap.h"
#include "unk_020366A0.h"
#include "unk_0209B47C.h"

typedef struct {
    NNSFndHeapHandle * heapHandles;
    NNSFndHeapHandle * parentHeapHandles;
    void ** subHeapRawPtrs;
    u16 * numMemBlocks;
    u8 * heapIdxs;
    u16 totalNumHeaps;
    u16 nTemplates;
    u16 maxHeaps;
    u16 unallocatedHeapID;
} HeapInfo;

typedef struct {
    char filler_00[12];
    u32 heapID : 8;
    u32 filler_0D : 24;
} MemoryBlock;

static int FindFirstAvailableHeapHandle(void);
static BOOL CreateHeapInternal(u32 parent, u32 child, u32 size, s32 alignment);
static void * AllocFromHeapInternal(NNSFndHeapHandle heap, u32 size, s32 alignment, u32 heapID);

static HeapInfo sHeapInfo = { 0 };

void InitHeapSystem (const UnkStruct_02017E74 * templates, u32 nTemplates, u32 totalNumHeaps, u32 pre_size)
{
    void * ptr;
    u32 unk_size, i;

    unk_size = nTemplates + 24;

    if (totalNumHeaps < unk_size) {
        totalNumHeaps = unk_size;
    }

    if (pre_size) {
        while (pre_size & 3) {
            pre_size++;
        }

        OS_AllocFromMainArenaLo(pre_size, 4);
    }

    sHeapInfo.heapHandles = OS_AllocFromMainArenaLo(sizeof(NNSFndHeapHandle) * (unk_size + 1) + sizeof(NNSFndHeapHandle) * (unk_size) + sizeof(void *) * (unk_size) + sizeof(u16) * (totalNumHeaps) + totalNumHeaps, 4);
    sHeapInfo.parentHeapHandles = sHeapInfo.heapHandles + (unk_size + 1);
    sHeapInfo.subHeapRawPtrs = (void **)((u8 *)(sHeapInfo.parentHeapHandles) + (sizeof(NNSFndHeapHandle) * unk_size));
    sHeapInfo.numMemBlocks = (u16 *)((u8 *)(sHeapInfo.subHeapRawPtrs) + (sizeof(void *) * unk_size));
    sHeapInfo.heapIdxs = (u8 *)(sHeapInfo.numMemBlocks) + (sizeof(u16) * (totalNumHeaps));
    sHeapInfo.totalNumHeaps = totalNumHeaps;
    sHeapInfo.nTemplates = nTemplates;
    sHeapInfo.unallocatedHeapID = unk_size;
    sHeapInfo.maxHeaps = unk_size;

    for (i = 0; i < nTemplates; i++) {
        switch (templates[i].unk_04) {
        case OS_ARENA_MAIN:
        default:
            ptr = OS_AllocFromMainArenaLo(templates[i].unk_00, 4);
            break;
        case OS_ARENA_MAINEX:
            ptr = OS_AllocFromMainExArenaHi(templates[i].unk_00, 4);
            break;
        }

        if (ptr != NULL) {
            sHeapInfo.heapHandles[i] = NNS_FndCreateExpHeap(ptr, templates[i].unk_00);
            sHeapInfo.heapIdxs[i] = i;
        } else {
            GF_ASSERT(0);
        }
    }

    for (i = nTemplates; i < (unk_size + 1); i++) {
        sHeapInfo.heapHandles[i] = NNS_FND_HEAP_INVALID_HANDLE;
        sHeapInfo.heapIdxs[i] = sHeapInfo.unallocatedHeapID;
    }

    while (i < totalNumHeaps) {
        sHeapInfo.heapIdxs[i++] = sHeapInfo.unallocatedHeapID;
    }

    for (i = 0; i < totalNumHeaps; i++) {
        sHeapInfo.numMemBlocks[i] = 0;
    }
}

static int FindFirstAvailableHeapHandle (void)
{
    int i;

    for (i = sHeapInfo.nTemplates; i < sHeapInfo.maxHeaps; i++) {
        if (sHeapInfo.heapHandles[i] == NNS_FND_HEAP_INVALID_HANDLE) {
            return i;
        }
    }

    return -1;
}

BOOL CreateHeap (u32 parent, u32 child, u32 size)
{
    return CreateHeapInternal(parent, child, size, 4);
}

BOOL CreateHeapAtEnd (u32 parent, u32 child, u32 size)
{
    return CreateHeapInternal(parent, child, size, -4);
}

static BOOL CreateHeapInternal (u32 parent, u32 child, u32 size, s32 alignment)
{
    GF_ASSERT(OS_GetProcMode() != OS_PROCMODE_IRQ);

    if (sHeapInfo.heapIdxs[child] == sHeapInfo.unallocatedHeapID) {
        NNSFndHeapHandle parentHeap = sHeapInfo.heapHandles[sHeapInfo.heapIdxs[parent]];

        if (parentHeap != NNS_FND_HEAP_INVALID_HANDLE) {
            void * newHeapAddr = NNS_FndAllocFromExpHeapEx(parentHeap, size, alignment);

            if (newHeapAddr != NULL) {
                int i = FindFirstAvailableHeapHandle();

                if (i >= 0) {
                    sHeapInfo.heapHandles[i] = NNS_FndCreateExpHeap(newHeapAddr, size);

                    if (sHeapInfo.heapHandles[i] != NNS_FND_HEAP_INVALID_HANDLE) {
                        sHeapInfo.parentHeapHandles[i] = parentHeap;
                        sHeapInfo.subHeapRawPtrs[i] = newHeapAddr;
                        sHeapInfo.heapIdxs[child] = i;

                        return TRUE;
                    } else {
                        GF_ASSERT(0);
                    }
                } else {
                    GF_ASSERT(0);
                }
            } else {
                GF_ASSERT(0);
            }
        } else {
            GF_ASSERT(0);
        }
    } else {
        GF_ASSERT(0);
    }

    return FALSE;
}

void DestroyHeap (u32 heapID)
{
    GF_ASSERT(OS_GetProcMode() != OS_PROCMODE_IRQ);

    {
        u8 index = sHeapInfo.heapIdxs[heapID];
        NNSFndHeapHandle handle = sHeapInfo.heapHandles[index];

        if (handle != NNS_FND_HEAP_INVALID_HANDLE) {
            NNSFndHeapHandle parentHeap;
            void * childRaw;

            NNS_FndDestroyExpHeap(handle);

            parentHeap = sHeapInfo.parentHeapHandles[sHeapInfo.heapIdxs[heapID]];
            childRaw = sHeapInfo.subHeapRawPtrs[sHeapInfo.heapIdxs[heapID]];

            if ((parentHeap != NNS_FND_HEAP_INVALID_HANDLE) && (childRaw != NULL)) {
                NNS_FndFreeToExpHeap(parentHeap, childRaw);
            } else {
                GF_ASSERT(0);
            }

            sHeapInfo.heapHandles[sHeapInfo.heapIdxs[heapID]] = (void *)0;
            sHeapInfo.parentHeapHandles[sHeapInfo.heapIdxs[heapID]] = (void *)0;
            sHeapInfo.subHeapRawPtrs[sHeapInfo.heapIdxs[heapID]] = (void *)0;

            sHeapInfo.heapIdxs[heapID] = sHeapInfo.unallocatedHeapID;
        }
    }
}

static void * AllocFromHeapInternal (NNSFndHeapHandle heap, u32 size, s32 alignment, u32 heapID)
{
    void * ptr;
    OSIntrMode intr_mode;

    GF_ASSERT(heap != NNS_FND_HEAP_INVALID_HANDLE);

    intr_mode = OS_DisableInterrupts();
    ptr = NNS_FndAllocFromExpHeapEx(heap, size + sizeof(MemoryBlock), alignment);

    OS_RestoreInterrupts(intr_mode);

    if (ptr != NULL) {
        ((MemoryBlock *)ptr)->heapID = heapID;
        (u8 *)ptr += sizeof(MemoryBlock);
    }

    return ptr;
}

static void AllocFail (void)
{
    if (sub_02036780()) {
        sub_0209B49C();
    }
}

void * AllocFromHeap (u32 heapID, u32 size)
{
    void * ptr = NULL;

    if (heapID < sHeapInfo.totalNumHeaps) {
        u8 index = sHeapInfo.heapIdxs[heapID];
        NNSFndHeapHandle heap = sHeapInfo.heapHandles[index];
        ptr = AllocFromHeapInternal(heap, size, 4, heapID);
    }

    if (ptr != NULL) {
        sHeapInfo.numMemBlocks[heapID]++;
    } else {
        AllocFail();
    }

    return ptr;
}

void * AllocFromHeapAtEnd (u32 heapID, u32 size)
{
    void * ptr = NULL;

    if (heapID < sHeapInfo.totalNumHeaps) {
        u8 index = sHeapInfo.heapIdxs[heapID];
        NNSFndHeapHandle heap = sHeapInfo.heapHandles[index];
        ptr = AllocFromHeapInternal(heap, size, -4, heapID);
    }

    if (ptr != NULL) {
        sHeapInfo.numMemBlocks[heapID]++;
    } else {
        AllocFail();
    }

    return ptr;
}

void FreeToHeap (void * ptr)
{
    (u8 *)ptr -= sizeof(MemoryBlock);
    u32 heapID = ((MemoryBlock *)ptr)->heapID;

    if (heapID < sHeapInfo.totalNumHeaps) {
        u8 index = sHeapInfo.heapIdxs[heapID];
        NNSFndHeapHandle heap = sHeapInfo.heapHandles[index];

        GF_ASSERT(heap != NNS_FND_HEAP_INVALID_HANDLE);

        if (sHeapInfo.numMemBlocks[heapID] == 0) {
            GF_heap_c_dummy_return_true(heapID);
        }

        GF_ASSERT(sHeapInfo.numMemBlocks[heapID]);

        sHeapInfo.numMemBlocks[heapID]--;

        {
            OSIntrMode intrMode;

            intrMode = OS_DisableInterrupts();
            NNS_FndFreeToExpHeap(heap, ptr);
            OS_RestoreInterrupts(intrMode);
        }
    } else {
        GF_ASSERT(0);
    }
}

void FreeToHeapExplicit (u32 heapID, void * ptr)
{
    GF_ASSERT(OS_GetProcMode() != OS_PROCMODE_IRQ);

    if (heapID < sHeapInfo.totalNumHeaps) {
        u8 index = sHeapInfo.heapIdxs[heapID];
        NNSFndHeapHandle heap = sHeapInfo.heapHandles[index];

        GF_ASSERT(heap != NNS_FND_HEAP_INVALID_HANDLE);

        (u8 *)ptr -= sizeof(MemoryBlock);

        if (((MemoryBlock *)ptr)->heapID != heapID) {
            GF_ASSERT(0);
        }

        NNS_FndFreeToExpHeap(heap, ptr);

        GF_ASSERT(sHeapInfo.numMemBlocks[heapID]);
        sHeapInfo.numMemBlocks[heapID]--;
    } else {
        GF_ASSERT(0);
    }
}

u32 GF_ExpHeap_FndGetTotalFreeSize (u32 heapID)
{
    if (heapID < sHeapInfo.totalNumHeaps) {
        u8 index = sHeapInfo.heapIdxs[heapID];
        NNSFndHeapHandle heap = sHeapInfo.heapHandles[index];
        return NNS_FndGetTotalFreeSizeForExpHeap(heap);
    }

    GF_ASSERT(0);
    return 0;
}

void GF_ExpHeap_FndInitAllocator (NNSFndAllocator * pAllocator, u32 heapID, int alignment)
{
    if (heapID < sHeapInfo.totalNumHeaps) {
        u8 index = sHeapInfo.heapIdxs[heapID];
        NNSFndHeapHandle heap = sHeapInfo.heapHandles[index];
        NNS_FndInitAllocatorForExpHeap(pAllocator, heap, alignment);
    } else {
        GF_ASSERT(0);
    }
}

void ReallocFromHeap (void * ptr, u32 newSize)
{
    GF_ASSERT(OS_GetProcMode() != OS_PROCMODE_IRQ);

    newSize += sizeof(MemoryBlock);
    (u8 *)ptr -= sizeof(MemoryBlock);

    if (NNS_FndGetSizeForMBlockExpHeap(ptr) >= newSize) {
        u32 heapID = ((MemoryBlock *)ptr)->heapID;
        u8 index = sHeapInfo.heapIdxs[heapID];
        NNSFndHeapHandle heap = sHeapInfo.heapHandles[index];

        NNS_FndResizeForMBlockExpHeap(heap, ptr, newSize);
    } else {
        GF_ASSERT(0);
    }
}

BOOL GF_heap_c_dummy_return_true (u32 heapID)
#pragma unused(heapID)
{
    return 1;
}
