#ifndef NITRO_GX_H_
#define NITRO_GX_H_

#ifdef __cplusplus
extern "C" {
#endif

#ifdef SDK_ARM9

#include <nitro/gx/g3.h>
#include <nitro/gx/g3x.h>
#include <nitro/gx/g2.h>
#include <nitro/gx/gx.h>
#include <nitro/gx/gx_vramcnt.h>
#include <nitro/gx/gx_bgcnt.h>
#include <nitro/gx/gx_capture.h>
#include <nitro/gx/g2_oam.h>
#include <nitro/gx/struct_2d.h>
#include <nitro/gx/g3b.h>
#include <nitro/gx/g3c.h>

#if !(defined(SDK_WIN32) || defined(SDK_FROM_TOOL))

#include <nitro/gx/g3imm.h>
#include <nitro/gx/g3_util.h>
#include <nitro/gx/gx_load.h>

#endif

#else

#if !(defined(SDK_WIN32) || defined(SDK_FROM_TOOL))

#include <nitro/gx/gx_sp.h>

#endif

#endif

#ifdef __cplusplus
}
#endif

#endif
