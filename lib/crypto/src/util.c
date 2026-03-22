#include "crypto/util.h"

#include <nitro/os.h>
#include <nitro/types.h>

#include "crypto_internal.h"

static void (*sFreeFunc)(void *ptr);
static void *(*sAllocFunc)(u32 size);

void *CRYPTOi_MyAlloc(u32 size)
{
    if (sAllocFunc) {
        return sAllocFunc(size);
    } else {
        return OS_AllocFromHeap(OS_ARENA_MAIN, OS_CURRENT_HEAP_HANDLE, size);
    }
}

void CRYPTOi_MyFree(void *ptr)
{
    if (sFreeFunc) {
        sFreeFunc(ptr);
    } else {
        OS_FreeToHeap(OS_ARENA_MAIN, OS_CURRENT_HEAP_HANDLE, ptr);
    }
}

void CRYPTO_SetAllocator(void *(*allocFunc)(u32), void (*freeFunc)(void *))
{
    sAllocFunc = allocFunc;
    sFreeFunc = freeFunc;
}
