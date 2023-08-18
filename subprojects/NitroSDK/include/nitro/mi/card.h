#ifndef NITRO_MI_CARD_H_
#define NITRO_MI_CARD_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/os.h>
#include <nitro/card.h>

void MIi_LockCard(void);
void MIi_UnlockCard(void);

static inline u32 MI_ReadCardID (void)
{
    u32 ret;
    MIi_LockCard();
    ret = CARDi_ReadRomID();
    MIi_UnlockCard();
    return ret;
}

static inline void MIi_ReadCard (u32 dmaNo, const void * src, void * dst, u32 size)
{
    MIi_LockCard();

    (void)dmaNo;
    CARD_ReadRom((MI_DMA_MAX_NUM + 1), src, dst, size);
    MIi_UnlockCard();
}

void MIi_ReadCardAsync(u32 dmaNo, const void * srcp, void * dstp, u32 size,
                       MIDmaCallback callback, void * arg);

static inline BOOL MIi_TryWaitCard (void)
{
    return CARD_TryWaitRomAsync();
}

static inline void MIi_WaitCard (void)
{
    CARD_WaitRomAsync();
}

#ifdef __cplusplus
}
#endif

#endif
