#ifndef NITRO_OS_ALLOC_H_
#define NITRO_OS_ALLOC_H_

#include <nitro/misc.h>
#include <nitro/types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef int OSHeapHandle;
typedef void (* OSAllocVisitor) (void * obj, u32 size);

#define OS_CURRENT_HEAP_HANDLE ((OSHeapHandle) - 1)

extern void * OS_InitAlloc(OSArenaId id, void * arenaStart, void * arenaEnd, int maxHeaps);

extern void OS_ClearAlloc(OSArenaId id);

extern OSHeapHandle OS_CreateHeap(OSArenaId id, void * start, void * end);

extern void OS_DestroyHeap(OSArenaId id, OSHeapHandle heap);

extern void OS_AddToHeap(OSArenaId id, OSHeapHandle heap, void * start, void * end);

extern OSHeapHandle OS_SetCurrentHeap(OSArenaId id, OSHeapHandle heap);

extern void * OS_AllocFromHeap(OSArenaId id, OSHeapHandle heap, u32 size);

extern void * OS_AllocFixed(OSArenaId id, void ** rstart, void ** rend);

extern void OS_FreeToHeap(OSArenaId id, OSHeapHandle heap, void * ptr);

extern void OS_FreeAllToHeap(OSArenaId id, OSHeapHandle heap);

extern s32 OS_CheckHeap(OSArenaId id, OSHeapHandle heap);

extern void OS_DumpHeap(OSArenaId id, OSHeapHandle heap);

extern u32 OS_ReferentSize(OSArenaId id, void * ptr);

extern void OS_VisitAllocated(OSArenaId id, OSAllocVisitor visitor);

extern u32 OSi_GetTotalAllocSize(OSArenaId id, OSHeapHandle heap, BOOL isHeadInclude);
static inline u32 OS_GetTotalAllocSize (OSArenaId id, OSHeapHandle heap)
{
    return OSi_GetTotalAllocSize(id, heap, FALSE);
}

static inline u32 OS_GetTotalOccupiedSize (OSArenaId id, OSHeapHandle heap)
{
    return OSi_GetTotalAllocSize(id, heap, TRUE);
}

extern u32 OS_GetTotalFreeSize(OSArenaId id, OSHeapHandle heap);

extern u32 OS_GetMaxFreeSize(OSArenaId id, OSHeapHandle heap);

extern void OS_ClearHeap(OSArenaId id, OSHeapHandle heap, void * start, void * end);

static inline void * OS_AllocFromMain (u32 size)
{
    return OS_AllocFromHeap(OS_ARENA_MAIN, OS_CURRENT_HEAP_HANDLE, size);
}
static inline void OS_FreeToMain (void * ptr)
{
    OS_FreeToHeap(OS_ARENA_MAIN, OS_CURRENT_HEAP_HANDLE, ptr);
}
static inline void OS_FreeAllToMain (void)
{
    OS_FreeAllToHeap(OS_ARENA_MAIN, OS_CURRENT_HEAP_HANDLE);
}

static inline void * OS_AllocFromSubPriv (u32 size)
{
    return OS_AllocFromHeap(OS_ARENA_MAIN_SUBPRIV, OS_CURRENT_HEAP_HANDLE, size);
}
static inline void OS_FreeToSubPriv (void * ptr)
{
    OS_FreeToHeap(OS_ARENA_MAIN_SUBPRIV, OS_CURRENT_HEAP_HANDLE, ptr);
}
static inline void OS_FreeAllToSubPriv (void)
{
    OS_FreeAllToHeap(OS_ARENA_MAIN_SUBPRIV, OS_CURRENT_HEAP_HANDLE);
}

static inline void * OS_AllocFromMainEx (u32 size)
{
    return OS_AllocFromHeap(OS_ARENA_MAINEX, OS_CURRENT_HEAP_HANDLE, size);
}
static inline void OS_FreeToMainEx (void * ptr)
{
    OS_FreeToHeap(OS_ARENA_MAINEX, OS_CURRENT_HEAP_HANDLE, ptr);
}
static inline void OS_FreeAllToMainEx (void)
{
    OS_FreeAllToHeap(OS_ARENA_MAINEX, OS_CURRENT_HEAP_HANDLE);
}

#ifdef SDK_ARM9
static inline void * OS_AllocFromITCM (u32 size)
{
    return OS_AllocFromHeap(OS_ARENA_ITCM, OS_CURRENT_HEAP_HANDLE, size);
}
static inline void OS_FreeToITCM (void * ptr)
{
    OS_FreeToHeap(OS_ARENA_ITCM, OS_CURRENT_HEAP_HANDLE, ptr);
}
static inline void OS_FreeAllToITCM (void)
{
    OS_FreeAllToHeap(OS_ARENA_ITCM, OS_CURRENT_HEAP_HANDLE);
}
#endif

#ifdef SDK_ARM9
static inline void * OS_AllocFromDTCM (u32 size)
{
    return OS_AllocFromHeap(OS_ARENA_DTCM, OS_CURRENT_HEAP_HANDLE, size);
}
static inline void OS_FreeToDTCM (void * ptr)
{
    OS_FreeToHeap(OS_ARENA_DTCM, OS_CURRENT_HEAP_HANDLE, ptr);
}
static inline void OS_FreeAllToDTCM (void)
{
    OS_FreeAllToHeap(OS_ARENA_DTCM, OS_CURRENT_HEAP_HANDLE);
}
#endif

static inline void * OS_AllocFromShared (u32 size)
{
    return OS_AllocFromHeap(OS_ARENA_SHARED, OS_CURRENT_HEAP_HANDLE, size);
}
static inline void OS_FreeToShared (void * ptr)
{
    OS_FreeToHeap(OS_ARENA_SHARED, OS_CURRENT_HEAP_HANDLE, ptr);
}
static inline void OS_FreeAllToShared (void)
{
    OS_FreeAllToHeap(OS_ARENA_SHARED, OS_CURRENT_HEAP_HANDLE);
}

static inline void * OS_AllocFromWramMain (u32 size)
{
    return OS_AllocFromHeap(OS_ARENA_WRAM_MAIN, OS_CURRENT_HEAP_HANDLE, size);
}
static inline void OS_FreeToWramMain (void * ptr)
{
    OS_FreeToHeap(OS_ARENA_WRAM_MAIN, OS_CURRENT_HEAP_HANDLE, ptr);
}
static inline void OS_FreeAllToWramMain (void)
{
    OS_FreeAllToHeap(OS_ARENA_WRAM_MAIN, OS_CURRENT_HEAP_HANDLE);
}

static inline void * OS_AllocFromWramSub (u32 size)
{
    return OS_AllocFromHeap(OS_ARENA_WRAM_SUB, OS_CURRENT_HEAP_HANDLE, size);
}
static inline void OS_FreeToWramSub (void * ptr)
{
    OS_FreeToHeap(OS_ARENA_WRAM_SUB, OS_CURRENT_HEAP_HANDLE, ptr);
}
static inline void OS_FreeAllToWramSub (void)
{
    OS_FreeAllToHeap(OS_ARENA_WRAM_SUB, OS_CURRENT_HEAP_HANDLE);
}

static inline void * OS_AllocFromSubPrivWram (u32 size)
{
    return OS_AllocFromHeap(OS_ARENA_WRAM_SUBPRIV, OS_CURRENT_HEAP_HANDLE, size);
}
static inline void OS_FreeToSubPrivWram (void * ptr)
{
    OS_FreeToHeap(OS_ARENA_WRAM_SUBPRIV, OS_CURRENT_HEAP_HANDLE, ptr);
}
static inline void OS_FreeAllToSubPrivWram (void)
{
    OS_FreeAllToHeap(OS_ARENA_WRAM_SUBPRIV, OS_CURRENT_HEAP_HANDLE);
}

#ifdef SDK_ARM9
#  define OS_Alloc(size) OS_AllocFromMain((size))
#else
#  define OS_Alloc(size) OS_AllocFromSubPriv((size))
#endif

#ifdef SDK_ARM9
#  define OS_Free(ptr) OS_FreeToMain((ptr))
#else
#  define OS_Free(ptr) OS_FreeToSubPriv((ptr))
#endif

#ifdef SDK_ARM9
#  define OS_FreeAll() OS_FreeAllToMain()
#else
#  define OS_FreeAll() OS_FreeAllToSubPriv()
#endif

#ifdef __cplusplus
}
#endif

#endif
