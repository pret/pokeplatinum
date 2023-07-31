#ifndef NNSG3D_CONFIG_H_
#define NNSG3D_CONFIG_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nnsys/inline.h>
#define NNS_G3D_INLINE NNS_INLINE

#ifndef NNS_G3D_ANMFMT_MAX
#define NNS_G3D_ANMFMT_MAX 10
#endif

#ifndef NNS_G3D_SIZE_JNT_MAX
#define NNS_G3D_SIZE_JNT_MAX 64
#endif

#ifndef NNS_G3D_SIZE_MAT_MAX
#define NNS_G3D_SIZE_MAT_MAX 64
#endif

#ifndef NNS_G3D_SIZE_SHP_MAX
#define NNS_G3D_SIZE_SHP_MAX 64
#endif

#ifndef NNS_G3D_SIZE_COMBUFFER
#define NNS_G3D_SIZE_COMBUFFER 192
#endif

#ifndef NNS_G3D_SIZE_SHP_VTBL_NUM
#define NNS_G3D_SIZE_SHP_VTBL_NUM 4
#endif

#ifndef NNS_G3D_SIZE_MAT_VTBL_NUM
#define NNS_G3D_SIZE_MAT_VTBL_NUM 4
#endif

#ifndef NNS_G3D_FUNC_SENDJOINTSRT_MAX
#define NNS_G3D_FUNC_SENDJOINTSRT_MAX 3
#endif

#ifndef NNS_G3D_FUNC_SENDTEXSRT_MAX
#define NNS_G3D_FUNC_SENDTEXSRT_MAX 4
#endif

#ifndef NNS_G3D_USE_EVPCACHE
#define NNS_G3D_USE_EVPCACHE 1
#endif

#if defined(NNS_G3D_MAYA_DISABLE) && defined(NNS_G3D_SI3D_DISABLE) && \
    defined(NNS_G3D_3DSMAX_DISABLE) && defined(NNS_G3D_XSI_DISABLE)
#error You cannot disable all of the CG tools for G3D.
#endif

#if (NNS_G3D_FUNC_SENDJOINTSRT_MAX < 3)
#error NNS_G3D_FUNC_SENDJOINTSRT_MAX must be 3 or above.
#endif

#if (NNS_G3D_FUNC_SENDTEXSRT_MAX < 2)
#error NNS_G3D_FUNC_SENDTEXSRT_MAX must be 2 or above.
#endif

#if !defined(NNS_FROM_TOOL)
#include <nitro.h>
#define NNS_G3D_ASSERTMSG SDK_ASSERTMSG
#define NNS_G3D_ASSERT SDK_ASSERT
#define NNS_G3D_NULL_ASSERT SDK_NULL_ASSERT
#define NNS_G3D_WARNING SDK_WARNING

#else

#include <nitro_win32.h>
#include <assert.h>
#define NNS_G3D_ASSERTMSG(x, y) assert((x))
#define NNS_G3D_ASSERT(x) assert((x))
#define NNS_G3D_NULL_ASSERT(x) assert(NULL != (x))

#endif

#ifdef __cplusplus
}
#endif

#endif
