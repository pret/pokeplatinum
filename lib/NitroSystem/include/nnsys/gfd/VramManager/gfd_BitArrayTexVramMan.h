#ifndef NNS_GFD_BITARRAYVRAMMAN_H_
#define NNS_GFD_BITARRAYVRAMMAN_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro.h>
#include <nnsys/gfd/VramManager/gfd_TexVramMan_Types.h>

void NNS_GfdInitBarTexVramManager
(
    u32 numSlot,
    u32 bytePerOneBlock,
    u32 * pBitTbl,
    u32 lengthOfBitTbl,
    BOOL useAsDefault
);

NNSGfdTexKey NNS_GfdAllocBarTexVram(u32 szByte, BOOL is4x4comp, u32 opt);
int NNS_GfdFreeBarTexVram(NNSGfdTexKey memKey);
void NNS_GfdResetBarTexVramState(void);

#ifdef __cplusplus
}
#endif

#endif
