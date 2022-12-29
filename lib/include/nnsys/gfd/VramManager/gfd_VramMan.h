#ifndef NNS_GFD_VRAMMAN_H_
#define NNS_GFD_VRAMMAN_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro.h>

#ifdef SDK_DEBUG

    #define NNS_GFD_PRINTF(...) OS_Printf(__VA_ARGS__)
    #define NNS_GFD_WARNING(...) OS_Warning(__VA_ARGS__)

#else

    #define NNS_GFD_PRINTF(...) ((void)0)
    #define NNS_GFD_WARNING(...) ((void)0)

#endif

#ifdef NNS_GFD_DEBUG
    #define NNS_GFD_DBGMSG(...) OS_Printf(__VA_ARGS__)
#else
    #define NNS_GFD_DBGMSG(...) ((void)0)
#endif

enum {
    NNS_GFD_ALLOC_FROM_HIGH     = 0,
    NNS_GFD_ALLOC_FROM_LOW      = 1
};

#ifdef __cplusplus
}
#endif

#endif
