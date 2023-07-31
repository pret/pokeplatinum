#ifndef NITRO_OS_CACHE_H_
#define NITRO_OS_CACHE_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/misc.h>
#include <nitro/types.h>

BOOL DC_Enable();

BOOL DC_Disable();

BOOL DC_Restore(BOOL enable);

void DC_InvalidateAll(void);

void DC_StoreAll(void);

void DC_FlushAll(void);

void DC_InvalidateRange(void * startAddr, u32 nBytes);

void DC_StoreRange(const void * startAddr, u32 nBytes);

void DC_FlushRange(const void * startAddr, u32 nBytes);

void DC_TouchRange(const void * startAddr, u32 nBytes);

void DC_LockdownRange(const void * startAddr, u32 nBytes);

void DC_UnlockdownAll(void);

void DC_Unlockdown(u32 num);

void DC_WaitWriteBufferEmpty(void);

static inline void DC_CleanAll (void)
{
    DC_StoreAll();
}

static inline void DC_CleanAndInvalidateAll (void)
{
    DC_FlushAll();
}

static inline void DC_CleanRange (const void * startAddr, u32 nBytes)
{
    DC_StoreRange(startAddr, nBytes);
}

static inline void DC_CleanAndInvalidateRange (const void * startAddr, u32 nBytes)
{
    DC_FlushRange(startAddr, nBytes);
}

BOOL IC_Enable();

BOOL IC_Disable();

BOOL IC_Restore(BOOL enable);

void IC_InvalidateAll(void);

void IC_InvalidateRange(void * startAddr, u32 nBytes);

void IC_PrefetchRange(const void * startAddr, u32 nBytes);

void IC_LockdownRange(const void * startAddr, u32 nBytes);

void IC_Unlockdown(u32 num);

void IC_UnlockdownAll(void);

#ifdef __cplusplus
}
#endif

#endif
