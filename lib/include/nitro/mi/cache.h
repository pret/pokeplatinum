#ifndef NITRO_MI_CACHE_H_
#define NITRO_MI_CACHE_H_

#include <nitro/misc.h>
#include <nitro/types.h>
#include <nitro/platform.h>
#include <nitro/mi/device.h>

#ifdef __cplusplus
extern "C"
{
#endif

typedef struct MICachePage {
    struct MICachePage * next;
    u32 offset;
    u8 * buffer;
} MICachePage;

typedef struct MICache {
    u32 pagewidth;
    MICachePage * valid;
    MICachePage * invalid;
    MICachePage * loading;
    int valid_total;
    int invalid_total;
    int loading_total;
} MICache;

#define MI_CACHE_BUFFER_WORKSIZE(page, total) \
    ((sizeof(MICachePage) + (page)) * (total))

void MI_InitCache(MICache * cache, u32 page, void * buffer, u32 length);

BOOL MI_ReadCache(MICache * cache, void * buffer, u32 offset, u32 length);

void MI_LoadCache(MICache * cache, MIDevice * device);

PLATFORM_ATTRIBUTE_INLINE
BOOL MI_IsCacheLoading (const MICache * cache)
{
    return (cache->loading != NULL);
}

#ifdef __cplusplus
}
#endif

#endif
