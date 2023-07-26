#ifndef NNS_G2DI_DEBUG_H_
#define NNS_G2DI_DEBUG_H_

#include <nitro.h>

#ifdef NNSI_G2D_DEBUG
    #define NNSI_G2D_DEBUGMSG0(...) OS_Printf(__VA_ARGS__);
#else
    #define NNSI_G2D_DEBUGMSG0(...) ((void)0)
#endif

#define NNSI_G2D_DEBUGMSG1(...) ((void)0)

#endif
