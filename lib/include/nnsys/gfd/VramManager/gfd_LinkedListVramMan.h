#ifndef NNS_GFD_LINKEDLISTVRAMMAN_H_
#define NNS_GFD_LINKEDLISTVRAMMAN_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro.h>

typedef void (* NNSGfdLnkDumpCallBack)(
    u32 addr,
    u32 szByte,
    void * pUserData);

#ifdef __cplusplus
}
#endif

#endif
