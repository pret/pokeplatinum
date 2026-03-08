#include "crypto/util.h"

#include <nitro/types.h>
#include <nitro/os.h>

static void(* sFreeFunc)(void *ptr);
static void *(* sAllocFunc)(u32 size);

void *CRYPTOi_MyAlloc(u32 size) {
    if (sAllocFunc) {
        return sAllocFunc(size);
    } else {
        return OS_AllocFromHeap(OS_ARENA_MAIN, -1, size);
    }
}

void CRYPTOi_MyFree(void *ptr){
    if (sFreeFunc) {
        sFreeFunc(ptr);
    } else {
        OS_FreeToHeap(OS_ARENA_MAIN, -1, ptr);
    }
}

void CRYPTO_SetAllocator(void *(* allocFunc)(u32), void (* freeFunc)(void *)) {
    sAllocFunc = allocFunc;
    sFreeFunc = freeFunc;
}
