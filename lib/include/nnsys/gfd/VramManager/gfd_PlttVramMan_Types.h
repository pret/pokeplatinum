#ifndef NNS_GFD_PLTTVRAMMAN_TYPES_H_
#define NNS_GFD_PLTTVRAMMAN_TYPES_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro.h>
#include <nnsys/gfd/gfd_common.h>

#define NNS_GFD_PLTTMASK_16BIT 0xFFFF

#define NNS_GFD_PLTTKEY_SIZE_SHIFT 3
#define NNS_GFD_PLTTKEY_ADDR_SHIFT 3

#define NNS_GFD_PLTTSIZE_MIN (0x1 << NNS_GFD_PLTTKEY_SIZE_SHIFT)
#define NNS_GFD_PLTTSIZE_MAX (NNS_GFD_PLTTMASK_16BIT << NNS_GFD_PLTTKEY_SIZE_SHIFT)

#define NNS_GFD_ALLOC_ERROR_PLTTKEY (u32)0x0
#define NNS_GFD_4PLTT_MAX_ADDR 0x10000

typedef u32 NNSGfdPlttKey;

typedef NNSGfdPlttKey (* NNSGfdFuncAllocPlttVram)(u32 szByte, BOOL is4pltt, u32 opt);

typedef int (* NNSGfdFuncFreePlttVram)(NNSGfdPlttKey plttKey);

extern NNSGfdFuncAllocPlttVram NNS_GfdDefaultFuncAllocPlttVram;
extern NNSGfdFuncFreePlttVram NNS_GfdDefaultFuncFreePlttVram;

NNS_GFD_INLINE NNSGfdPlttKey NNS_GfdAllocPlttVram (u32 szByte, BOOL is4pltt, u32 opt)
{
    return (*NNS_GfdDefaultFuncAllocPlttVram)(szByte, is4pltt, opt);
}

NNS_GFD_INLINE int NNS_GfdFreePlttVram (NNSGfdPlttKey plttKey)
{
    return (*NNS_GfdDefaultFuncFreePlttVram)(plttKey);
}

NNS_GFD_INLINE u32 NNSi_GfdGetPlttKeyRoundupSize (u32 size)
{
    if (size == 0) {
        return NNS_GFD_PLTTSIZE_MIN;
    } else {
        return (((u32)(size) + (NNS_GFD_PLTTSIZE_MIN - 1)) & ~(NNS_GFD_PLTTSIZE_MIN - 1));
    }
}

NNS_GFD_INLINE NNSGfdPlttKey NNS_GfdMakePlttKey (u32 addr, u32 size)
{
    SDK_ASSERT((addr & (u32)((0x1 << NNS_GFD_PLTTKEY_ADDR_SHIFT) - 1)) == 0);
    SDK_ASSERT((size & (u32)((0x1 << NNS_GFD_PLTTKEY_SIZE_SHIFT) - 1)) == 0);

    SDK_ASSERT(((size >> NNS_GFD_PLTTKEY_SIZE_SHIFT) & ~NNS_GFD_PLTTMASK_16BIT) == 0);
    SDK_ASSERT(((addr >> NNS_GFD_PLTTKEY_ADDR_SHIFT) & ~NNS_GFD_PLTTMASK_16BIT) == 0);

    return ((size >> NNS_GFD_PLTTKEY_SIZE_SHIFT) << 16)
           | (0xFFFF & (addr >> NNS_GFD_PLTTKEY_ADDR_SHIFT));
}

NNS_GFD_INLINE u32 NNS_GfdGetPlttKeyAddr (NNSGfdPlttKey plttKey)
{
    return (u32)((0x0000FFFF & plttKey) << NNS_GFD_PLTTKEY_ADDR_SHIFT);
}

NNS_GFD_INLINE u32 NNS_GfdGetPlttKeySize (NNSGfdPlttKey plttKey)
{
    return (u32)(((0xFFFF0000 & plttKey) >> 16) << NNS_GFD_PLTTKEY_SIZE_SHIFT);
}

#ifdef __cplusplus
}
#endif

#endif
