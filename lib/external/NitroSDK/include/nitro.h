#ifndef NITRO_H_
#define NITRO_H_

#ifdef SDK_ASM
#include <nitro/spec.h>
#include <nitro/types.h>
#include <nitro/memorymap.h>
#include <nitro/hw/common/armArch.h>
#else
#ifdef __MWERKS__
#  ifdef __cplusplus
#    ifndef __embedded_cplusplus
#      define __embedded_cplusplus 0
#    endif
#    ifndef __VEC__
#      define __VEC__ 0
#    endif
#  endif
#  if !defined(_MSL_USE_INLINE) && __option(dont_inline)
#  define _MSL_USE_INLINE 0
#  endif
#endif

#include <nitro/spec.h>
#include <nitro/misc.h>
#include <nitro/init/crt0.h>

#include <nitro/types.h>
#include <nitro/memorymap.h>
#include <nitro/hw/common/armArch.h>
#include <nitro/hw/common/lcd.h>

#include <nitro/os.h>
#include <nitro/mi.h>
#include <nitro/pxi.h>
#include <nitro/snd.h>
#include <nitro/pad.h>
#include <nitro/spi.h>
#include <nitro/card.h>
#include <nitro/fs.h>
#include <nitro/rtc.h>
#include <nitro/gx.h>
#include <nitro/wm.h>
#include <nitro/ctrdg.h>
#include <nitro/math.h>
#include <nitro/utest.h>
#include <nitro/std.h>

#ifdef SDK_ARM9
#include <nitro/fx/fx.h>
#include <nitro/fx/fx_const.h>
#include <nitro/fx/fx_trig.h>
#include <nitro/fx/fx_cp.h>
#include <nitro/fx/fx_vec.h>
#include <nitro/fx/fx_mtx.h>
#include <nitro/cp.h>
#include <nitro/ext.h>
#include <nitro/mb.h>
#include <nitro/wbt.h>
#include <nitro/wfs.h>
#include <nitro/env.h>
#include <nitro/vib.h>
#else
#include <nitro/exi.h>
#endif
#endif

#endif // NITRO_H_
