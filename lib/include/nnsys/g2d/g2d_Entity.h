#ifndef NNS_G2D_ENTITY2_H_
#define NNS_G2D_ENTITY2_H_

#include <nitro.h>
#include <nnsys/g2d/g2d_config.h>
#include <nnsys/g2d/g2d_Animation.h>
#include <nnsys/g2d/g2d_PaletteTable.h>

#ifdef __cplusplus
extern "C" {
#endif

#define NNS_G2dInitializeEntity NNS_G2dInitEntity
#define NNS_G2dSetCurrentAnimation NNS_G2dSetEntityCurrentAnimation

#define NNS_G2D_ASSERT_ENTITY_VALID(entity)           \
    NNS_G2D_ASSERTMSG(NNS_G2dIsEntityValid((entity)), "A Invalid Entity instance was detected.");

typedef struct NNSG2dEntity {
    void * pDrawStuff;
    const NNSG2dEntityData * pEntityData;
    const NNSG2dAnimBankData * pAnimDataBank;
    u16 currentSequenceIdx;
    u16 pad16_;

    NNSG2dPaletteSwapTable * pPaletteTbl;
} NNSG2dEntity;

void NNS_G2dInitEntity
(
    NNSG2dEntity * pEntity,
    void * pDrawStuff,
    const NNSG2dEntityData * pEntityData,
    const NNSG2dAnimBankData * pAnimDataBank
);
void NNS_G2dSetEntityCurrentAnimation(NNSG2dEntity * pEntity, u16 idx);

void NNS_G2dSetEntityPaletteTable(NNSG2dEntity * pEntity, NNSG2dPaletteSwapTable * pPlttTbl);
void NNS_G2dResetEntityPaletteTable(NNSG2dEntity * pEntity);
BOOL NNS_G2dIsEntityPaletteTblEnable(const NNSG2dEntity * pEntity);

void NNS_G2dTickEntity(NNSG2dEntity * pEntity, fx32 dt);
void NNS_G2dSetEntityCurrentFrame
(
    NNSG2dEntity * pEntity,
    u16 frameIndex
);

void NNS_G2dSetEntitySpeed
(
    NNSG2dEntity * pEntity,
    fx32 speed
);

BOOL NNS_G2dIsEntityValid(NNSG2dEntity * pEntity);

NNSG2dAnimController * NNS_G2dGetEntityAnimCtrl(NNSG2dEntity * pEntity);

#ifdef __cplusplus
}
#endif

#endif
