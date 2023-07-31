#ifndef NNS_G2D_VEC_DATA_H_
#define NNS_G2D_VEC_DATA_H_

#include <nitro/types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct NNSG2dSVec2 {
    s16 x;
    s16 y;
} NNSG2dSVec2;

typedef struct NNSG2dFVec2 {
    fx32 x;
    fx32 y;
} NNSG2dFVec2;

#ifdef SDK_ADS
typedef struct {
    fx32 _00, _01;
    fx32 _10, _11;
    fx32 _20, _21;
} MtxFx32;
#else
typedef union {
    struct {
        fx32 _00, _01;
        fx32 _10, _11;
        fx32 _20, _21;
    };
    fx32 m[3][2];
    fx32 a[6];
} MtxFx32;
#endif

#ifdef __cplusplus
}
#endif

#endif
