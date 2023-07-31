#ifndef NNS_G2D_OAM_TYPES_H_
#define NNS_G2D_OAM_TYPES_H_
#include <nitro.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct NNSG2dOamAffineParams {
    s16 PA;
    s16 PB;
    s16 PC;
    s16 PD;
} NNSG2dOamAffineParams;

typedef struct NNSG2dOamDataChunk {
    u16 attr0;
    u16 attr1;
    u16 attr2;
} NNSG2dOamDataChunk;

#ifdef __cplusplus
}
#endif

#endif
