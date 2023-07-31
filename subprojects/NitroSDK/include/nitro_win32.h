#ifndef NITRO_WIN32_H_
#define NITRO_WIN32_H_

#ifndef SDK_FROM_TOOL
#define SDK_FROM_TOOL
#endif

#ifndef SDK_WIN32
#define SDK_WIN32
#endif

#ifndef SDK_HAS_LONG_LONG_INT
#define SDK_HAS_NO_LONG_LONG_INT_
#endif

#ifndef SDK_ARM7
#define SDK_ARM9
#endif

#ifdef _MSC_VER
#pragma warning(disable:4201)
#endif

#include <nitro/gx.h>

#include <nitro/memorymap.h>
#include <nitro/types.h>

#include <nitro/fx/fx.h>
#include <nitro/fx/fx_const.h>

#include <nitro/os/ARM9/argument.h>

#ifdef _MSC_VER
#pragma warning(default:4201)
#endif

#endif
