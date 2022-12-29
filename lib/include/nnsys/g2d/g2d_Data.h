#ifndef NNS_G2D_DATA_H_
#define NNS_G2D_DATA_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/types.h>
#include <nnsys/g2d/fmt/g2d_Common_data.h>
#include <nnsys/g2d/fmt/g2d_Anim_data.h>
#include <nnsys/g2d/fmt/g2d_Cell_data.h>
#include <nnsys/g2d/fmt/g2d_MultiCell_data.h>
#include <nnsys/g2d/fmt/g2d_Entity_data.h>
#include <nnsys/g2d/fmt/g2d_Character_data.h>
#include <nnsys/g2d/fmt/g2d_Screen_data.h>
#include <nnsys/g2d/fmt/g2d_Oam_data.h>
#include <nnsys/g2d/fmt/g2d_Font_data.h>
#include <nnsys/g2d/g2d_config.h>

#define NNS_G2D_UNPACK_OFFSET_PTR(ptr, baseOffs) (ptr) = (void *)((u32)(ptr) + (u32)baseOffs)

#ifdef SDK_FINALROM

#ifdef __SNC__
#define NNS_G2D_DEBUG_FUNC_DECL_BEGIN static inline
#else
#define NNS_G2D_DEBUG_FUNC_DECL_BEGIN NNS_G2D_INLINE
#endif
#define NNS_G2D_DEBUG_FUNC_DECL_END {}

#else

#define NNS_G2D_DEBUG_FUNC_DECL_BEGIN
#define NNS_G2D_DEBUG_FUNC_DECL_END ;

#endif

#ifdef __cplusplus
}
#endif

#endif
