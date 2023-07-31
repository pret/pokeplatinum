#include <nitro.h>
#include <base/dwc_memfunc.h>


#define DWCi_MEMFUNC_SIGNATURE 'DWCM'


typedef struct _tagDWCiAllocHeader {
    u32 signature;
    u32 size;
    u32 dummy[6];
} DWCiAllocHeader;


static DWCAllocEx s_alloc;
static DWCFreeEx s_free;


static void *DWCi_GetAllocateHeader(void *ptr);
static void *DWCi_SetAllocateHeader(void *ptr, u32 size);
static u32	DWCi_GetAllocateSize(void *ptr);


static void *DWCi_GetAllocateHeader(void *ptr) {
    DWCiAllocHeader *header = (DWCiAllocHeader *)(((u8 *)ptr) - sizeof(DWCiAllocHeader));
    SDK_ASSERT(header->signature == DWCi_MEMFUNC_SIGNATURE);
    return (void *)header;
}

static void *DWCi_SetAllocateHeader(void *ptr, u32 size) {
    DWCiAllocHeader *header = (DWCiAllocHeader *)ptr;

    header->signature = DWCi_MEMFUNC_SIGNATURE;
    header->size = size;

    return (void *)(((u8 *)ptr) + sizeof(DWCiAllocHeader));
}

static u32 DWCi_GetAllocateSize(void *ptr) {
    DWCiAllocHeader *header = DWCi_GetAllocateHeader(ptr);
    SDK_ASSERT(header != NULL);
    return header->size;
}

void DWC_SetMemFunc(DWCAllocEx alloc, DWCFreeEx free) {
    s_alloc = alloc;
    s_free = free;
}

void *DWC_Alloc(DWCAllocType name, u32 size) {
    return DWC_AllocEx(name, size, 32);
}

void*DWC_AllocEx(DWCAllocType name, u32 size, int align) {
    void *ptr;

    SDK_ASSERTMSG(s_alloc, "DWC_MEMFUNC: Allocator function isn't defined.\n");
    SDK_ASSERTMSG((align <= 32) && (align >= -32), "DWC_Alloc() dosen't support to align over 32 bytes order");

    ptr = s_alloc(name, size + sizeof(DWCiAllocHeader), align);

    if (ptr == NULL) {
        return NULL;
    }

    return DWCi_SetAllocateHeader(ptr, size);
}

void DWC_Free(DWCAllocType name, void *ptr, u32 size) {
#pragma unused(size)

    SDK_ASSERTMSG(s_free, "DWC_MEMFUNC: Free function isn't defined.\n");

    if (ptr == NULL) {
        return;
    }

    ptr = DWCi_GetAllocateHeader(ptr);
    s_free(name, ptr, ((DWCiAllocHeader *)ptr)->size + sizeof(DWCiAllocHeader));
}

void *DWC_Realloc(DWCAllocType name, void *ptr, u32 oldsize, u32 newsize) {
    return DWC_ReallocEx(name, ptr, oldsize, newsize, 32);
}

void *DWC_ReallocEx(DWCAllocType name, void *ptr, u32 oldsize, u32 newsize, int align) {
    void *newptr;

    newptr = DWC_AllocEx(name, newsize, align);

    if (newptr == NULL) {
        return NULL;
    }

    if (ptr != NULL) {
        oldsize = DWCi_GetAllocateSize(ptr);

        MI_CpuCopy8(ptr, newptr, (oldsize > newsize) ? newsize : oldsize);
        DWC_Free(name, ptr, oldsize);
    }

    return newptr;
}

void *DWCi_GsMalloc(size_t size) {
    return DWC_Alloc(DWC_ALLOCTYPE_GS, (u32)size);
}

void *DWCi_GsRealloc(void *ptr, size_t size) {
    return DWC_Realloc(DWC_ALLOCTYPE_GS, ptr, (u32)size, (u32)size);
}

void DWCi_GsFree(void *ptr) {
    DWC_Free(DWC_ALLOCTYPE_GS, ptr, 0);
}

void *DWCi_GsMemalign(size_t boundary, size_t size) {
    return DWC_AllocEx(DWC_ALLOCTYPE_GS, (u32)size, (int)boundary);
}
