#ifndef NNS_FND_HEAPCOMMONI_H_
#define NNS_FND_HEAPCOMMONI_H_

#include <nitro/types.h>
#include <nnsys/fnd/config.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef s32 NNSiIntPtr;
typedef u32 NNSiUIntPtr;

#define NNSi_FndRoundUp(value, alignment) \
    (((value) + (alignment - 1)) & ~(alignment - 1))

#define NNSi_FndRoundUpPtr(ptr, alignment) \
    ((void *)NNSi_FndRoundUp(NNSiGetUIntPtr(ptr), alignment))

#define NNSi_FndRoundDown(value, alignment) \
    ((value) & ~(alignment - 1))

#define NNSi_FndRoundDownPtr(ptr, alignment) \
    ((void *)NNSi_FndRoundDown(NNSiGetUIntPtr(ptr), alignment))

#define NNSi_FndGetBitValue(data, st, bits) \
    (((data) >> (st)) & ((1 << (bits)) - 1))

#define NNSi_FndSetBitValue(data, st, bits, val)                        \
    do                                                          \
    {                                                           \
        u32 maskBits = (u32)((1 << (bits)) - 1);                   \
        u32 newVal = (val) & maskBits;     \
        (void)(maskBits <<= st);                                 \
        (data) &= ~maskBits;         \
        (data) |= newVal << (st);                                 \
    } while (FALSE);

NNS_FND_INLINE NNSiUIntPtr NNSiGetUIntPtr (const void * ptr)
{
    return (NNSiUIntPtr)ptr;
}

NNS_FND_INLINE u32 GetOffsetFromPtr (const void * start, const void * end)
{
    return NNSiGetUIntPtr(end) - NNSiGetUIntPtr(start);
}

NNS_FND_INLINE void * AddU32ToPtr (void * ptr, u32 val)
{
    return (void *)(NNSiGetUIntPtr(ptr) + val);
}

NNS_FND_INLINE const void * AddU32ToCPtr (const void * ptr, u32 val)
{
    return (const void *)(NNSiGetUIntPtr(ptr) + val);
}

NNS_FND_INLINE void * SubU32ToPtr (void * ptr, u32 val)
{
    return (void *)(NNSiGetUIntPtr(ptr) - val);
}

NNS_FND_INLINE const void * SubU32ToCPtr (const void * ptr, u32 val)
{
    return (const void *)(NNSiGetUIntPtr(ptr) - val);
}

NNS_FND_INLINE int ComparePtr (const void * a, const void * b)
{
    const u8 * wa = a;
    const u8 * wb = b;

    return wa - wb;
}

NNS_FND_INLINE u16 GetOptForHeap (const NNSiFndHeapHead * pHeapHd)
{
    return (u16)NNSi_FndGetBitValue(pHeapHd->attribute, 0, 8);
}

NNS_FND_INLINE void SetOptForHeap (
    NNSiFndHeapHead * pHeapHd,
    u16 optFlag
)
{
    NNSi_FndSetBitValue(pHeapHd->attribute, 0, 8, optFlag);
}

NNS_FND_INLINE void FillAllocMemory (
    NNSiFndHeapHead * pHeapHd,
    void * address,
    u32 size
)
{
    if (GetOptForHeap(pHeapHd) & NNS_FND_HEAP_OPT_0_CLEAR) {
        MI_CpuFill32(address, 0, size);
    } else {
        #if !defined(NNS_FINALROM)
        if (GetOptForHeap(pHeapHd) & NNS_FND_HEAP_OPT_DEBUG_FILL) {
            MI_CpuFill32(address, NNS_FndGetFillValForHeap(NNS_FND_HEAP_FILL_ALLOC), size);
        }
        #endif
    }
}

#if defined(NNS_FINALROM)
    #define FillFreeMemory(pHeapHd, address, size) ((void)0)
#else
NNS_FND_INLINE void FillFreeMemory (
    NNSiFndHeapHead * pHeapHd,
    void * address,
    u32 size
)
{
    if (GetOptForHeap(pHeapHd) & NNS_FND_HEAP_OPT_DEBUG_FILL) {
        MI_CpuFill32(address, NNS_FndGetFillValForHeap(NNS_FND_HEAP_FILL_FREE), size);
    }
}
#endif

#if defined(NNS_FINALROM)
    #define FillNoUseMemory(pHeapHd, address, size) ((void)0)
#else
NNS_FND_INLINE void FillNoUseMemory (
    NNSiFndHeapHead * pHeapHd,
    void * address,
    u32 size
)
{
    if (GetOptForHeap(pHeapHd) & NNS_FND_HEAP_OPT_DEBUG_FILL) {
        MI_CpuFill32(address, NNS_FndGetFillValForHeap(NNS_FND_HEAP_FILL_NOUSE), size);
    }
}
#endif

void NNSi_FndInitHeapHead(
    NNSiFndHeapHead * pHeapHd,
    u32 signature,
    void * heapStart,
    void * heapEnd,
    u16 optFlag);

void NNSi_FndFinalizeHeap(
    NNSiFndHeapHead * pHeapHd);

void NNSi_FndDumpHeapHead(
    NNSiFndHeapHead * pHeapHd);

#ifdef __cplusplus
}
#endif

#endif
