#ifndef NNSG3D_BINRES_RES_PRINT_INTERNAL_H_
#define NNSG3D_BINRES_RES_PRINT_INTERNAL_H_

#ifdef __cplusplus
extern "C" {
#endif

#ifdef NNS_FROM_TOOL

#include <nitro_win32.h>
#include <stdio.h>
#define RES_PRINTF printf
#define FX_MUL_ CvtrFX_Mul
#else

#include <nitro.h>
#define RES_PRINTF OS_Printf
#define FX_MUL_ FX_Mul
#endif

#include <nnsys/g3d/binres/res_print.h>

#if defined(SDK_DEBUG) || defined(NNS_FROM_TOOL)

NNS_RES_PRINT void tabPlus_ (void) NNS_RES_PRINT_END
NNS_RES_PRINT void tabMinus_ (void) NNS_RES_PRINT_END
NNS_RES_PRINT void tabPrint_ (void) NNS_RES_PRINT_END
NNS_RES_PRINT void printFx32_ (fx32 v) NNS_RES_PRINT_END
NNS_RES_PRINT f32 fx32Tof32_ (fx32 v) NNS_RES_PRINT_END
NNS_RES_PRINT void chkDict_ (const NNSG3dResDict * dict,
                             const NNSG3dResName * name,
                             u32 idx) NNS_RES_PRINT_END

#endif

#ifdef __cplusplus
}
#endif

#endif
