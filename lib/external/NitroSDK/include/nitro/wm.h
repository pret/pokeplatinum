#ifndef NITRO_WM_H_
#define NITRO_WM_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/wm/common/wm.h>

#ifdef SDK_ARM7

#include <nitro/wm/ARM7/wm_sp.h>

#else

#include <nitro/wm/ARM9/wm_api.h>

#endif

#ifdef __cplusplus
}
#endif

#endif
