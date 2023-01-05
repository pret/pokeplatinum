#ifdef GSI_MEM_MANAGED

#ifndef __GSIMEMORY_H__
#define __GSIMEMORY_H__

#include "gs/nonport.h"

#define BlockFlag_Used (1 << 0)
#define BlockFlag_Final (1 << 1)

typedef struct GSIMemoryBlock {
    gsi_u32 mObjectSize;
    gsi_u32 mFlags;
    struct GSIMemoryBlock * mNext;
    struct GSIMemoryBlock * mPrev;
} GSIMemoryBlock;

typedef struct GSIMemoryMgr {
    void * mPoolStart;
    gsi_i32 mPoolSize;
    struct GSIMemoryBlock * mFirstUsedBlock;
    struct GSIMemoryBlock * mLastUsedBlock;
    struct GSIMemoryBlock * mFirstFreeBlock;
    struct GSIMemoryBlock * mLastFreeBlock;
    gsi_i32 mMemUsed;
    gsi_i32 mPeakMemoryUsage;
} GSIMemoryMgr;

static struct GSIMemoryMgr * gMemoryMgr;
static GSICriticalSection gMemCrit;

void gsiMemBlockSetPrev(struct GSIMemoryBlock * pThis, struct GSIMemoryBlock * theBlock);
void gsiMemBlockSetNext(struct GSIMemoryBlock * pThis, struct GSIMemoryBlock * theBlock);
struct GSIMemoryBlock * gsiMemBlockGetPrev(struct GSIMemoryBlock * pThis);
struct GSIMemoryBlock * gsiMemBlockGetNext(struct GSIMemoryBlock * pThis);
gsi_i32 gsiMemBlockGetObjectSize(struct GSIMemoryBlock * pThis);
void gsiMemBlockSetObjectSize(struct GSIMemoryBlock * pThis, gsi_i32 theSize);
void * gsiMemBlockGetObjectPtr(struct GSIMemoryBlock * pThis);
int gsiMemBlockIsFlagged(struct GSIMemoryBlock * pThis, gsi_u32 theFlag);
void gsiMemBlockSetFlag(struct GSIMemoryBlock * pThis, gsi_u32 theFlag);
void gsiMemBlockClearFlag(struct GSIMemoryBlock * pThis, gsi_u32 theFlag);
gsi_i32 gsiMemBlockGetTotalSize(struct GSIMemoryBlock * pThis);
struct GSIMemoryBlock * gsiMemBlockGetLinearNext(struct GSIMemoryBlock * pThis);
void gsiMemBlockAddToList(struct GSIMemoryBlock * pThis, struct GSIMemoryBlock ** theListHead, struct GSIMemoryBlock ** theListTail);
void gsiMemBlockRemoveFromList(struct GSIMemoryBlock * pThis, struct GSIMemoryBlock ** theListHead, struct GSIMemoryBlock ** theListTail);
void gsiMemBlockAssertValid(struct GSIMemoryBlock * pThis);
struct GSIMemoryBlock * gsiMemMgrGetFreeBlock(struct GSIMemoryMgr * theMemMgr, gsi_i32 theDesiredSize);
void * gsiManagedMalloc(size_t size);
void * gsiManagedRealloc(void * ptr, size_t size);
void gsiManagedFree(void * ptr);
void * gsiManagedMemAlign(size_t boundary, size_t size);
#endif

#endif
