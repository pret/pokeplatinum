#ifndef NITRO_GXASM_H_
#define NITRO_GXASM_H_

#include <nitro/mi/memory.h>

#ifdef __cplusplus
extern "C" {
#endif

void GX_SendFifo36B(register const void * pSrc, register void * pDest);
void GX_SendFifo48B(register const void * pSrc, register void * pDest);
void GX_SendFifo64B(register const void * pSrc, register void * pDest);
void GX_SendFifo128B(register const void * pSrc, register void * pDest);

static inline void GX_SendFifo36B (register const void * pSrc, register void * pDest) {
    MI_Copy36B(pSrc, pDest);
}

#ifdef __cplusplus
}
#endif

#endif
