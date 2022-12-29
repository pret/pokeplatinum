#ifndef NNS_G2D_PALETTETABLE_H_
#define NNS_G2D_PALETTETABLE_H_

#include <nitro.h>
#include <nnsys/g2d/g2d_config.h>

#ifdef __cplusplus
extern "C" {
#endif

#define NNS_G2D_NUM_COLOR_PALETTE 16

typedef struct NNSG2dPaletteSwapTable {
    u16 paletteIndex[NNS_G2D_NUM_COLOR_PALETTE];
} NNSG2dPaletteSwapTable;

void NNS_G2dInitializePaletteTable(NNSG2dPaletteSwapTable * pPlttTbl);
void NNS_G2dSetPaletteTableValue(NNSG2dPaletteSwapTable * pPlttTbl, u16 beforeIdx, u16 afterIdx);
u16 NNS_G2dGetPaletteTableValue(const NNSG2dPaletteSwapTable * pPlttTbl, u16 beforeIdx);

#ifdef __cplusplus
}
#endif

#endif
