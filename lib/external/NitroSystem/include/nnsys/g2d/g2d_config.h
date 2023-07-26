#ifndef NNS_G2D_CONFIG_H_
#define NNS_G2D_CONFIG_H_

#include <nnsys/inline.h>
#define NNS_G2D_INLINE NNS_INLINE

#ifndef NNS_FROM_TOOL
#include <nitro.h>

#ifdef __cplusplus
extern "C" {
#endif

#define NNS_G2D_DMA_NO GX_GetDefaultDMA()

#define NNS_G2D_ASSERTMSG SDK_ASSERTMSG
#define NNS_G2D_ASSERT SDK_ASSERT
#define NNS_G2D_NULL_ASSERT SDK_NULL_ASSERT
#define NNS_G2D_MINMAX_ASSERT SDK_MINMAX_ASSERT
#define NNS_G2D_MIN_ASSERT SDK_MIN_ASSERT
#define NNS_G2D_MAX_ASSERT SDK_MAX_ASSERT
#define NNS_G2D_WARNING SDK_WARNING
#define NNS_G2D_NON_ZERO_ASSERT(val) SDK_ASSERTMSG((val) != 0, "Non zero value is expexted in the context.")

#define NNS_G2D_FONT_USE_OLD_RESOURCE

#define NNS_G2D_FONT_ENABLE_DIRECTION_SUPPORT

#define NNS_G2D_ASSUME_DOUBLEAFFINE_OBJPOS_ADJUSTED

#ifdef __cplusplus
}
#endif
#endif

#endif
