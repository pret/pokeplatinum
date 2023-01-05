#ifndef NITRO_MI_ALLOCATOR_H_
#define NITRO_MI_ALLOCATOR_H_

#include <nitro/misc.h>
#include <nitro/types.h>
#include <nitro/platform.h>

#ifdef __cplusplus
extern "C"
{
#endif

typedef void * (* MIAllocatorAllocFunction)(void * userdata, u32 length, u32 alignment);
typedef void (* MIAllocatorFreeFunction)(void * userdata, void * buffer);

typedef struct MIAllocator {
    void * userdata;
    MIAllocatorAllocFunction Alloc;
    MIAllocatorFreeFunction Free;
} MIAllocator;

PLATFORM_ATTRIBUTE_INLINE
void MI_InitAllocator (MIAllocator * allocator, void * userdata,
                       MIAllocatorAllocFunction alloc,
                       MIAllocatorFreeFunction free)
{
    allocator->userdata = userdata;
    allocator->Alloc = alloc;
    allocator->Free = free;
}

PLATFORM_ATTRIBUTE_INLINE
void * MI_CallAlloc (MIAllocator * allocator, u32 length, u32 alignment)
{
    return allocator->Alloc(allocator->userdata, length, alignment);
}

PLATFORM_ATTRIBUTE_INLINE
void MI_CallFree (MIAllocator * allocator, void * buffer)
{
    allocator->Free(allocator->userdata, buffer);
}

#ifdef __cplusplus
}
#endif

#endif
