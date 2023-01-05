#ifndef NNS_G2D_ENTITY_DATA_H_
#define NNS_G2D_ENTITY_DATA_H_

#include <nitro/types.h>
#include <nnsys/g2d/fmt/g2d_Common_data.h>
#include <nnsys/g2d/fmt/g2d_Anim_data.h>

#ifdef __cplusplus
extern "C" {
#endif

#define NNS_G2D_BINFILE_SIG_ENTITY (u32)'NENR'
#define NNS_G2D_BLKSIG_ENTITYBANK (u32)'ENBK'

#define NNS_G2D_BINFILE_EXT_ENTITY "NENR"

#define NNS_G2D_NENR_MAJOR_VER 1
#define NNS_G2D_NENR_MINOR_VER 0

typedef enum NNSG2dEntityType {
    NNS_G2D_ENTITYTYPE_INVALID      = 0,
    NNS_G2D_ENTITYTYPE_CELL,
    NNS_G2D_ENTITYTYPE_MULTICELL,
    NNS_G2D_ENTITYTYPE_MAX
} NNSG2dEntityType;

typedef struct NNSG2dEntityAnimData {
    u16 numAnimSequence;
    u16 pad16;
    u16 * pAnimSequenceIdxArray;
} NNSG2dEntityAnimData;

typedef struct NNSG2dEntityData {
    NNSG2dEntityAnimData animData;
    NNSG2dEntityType type;
} NNSG2dEntityData;

typedef struct NNSG2dEntityDataBank {
    u16 numEntityDatas;
    u16 pad16;
    NNSG2dEntityData * pEntityDataArray;
    u16 * pAnimSequenceIdxArray;
    void * pStringBank;
    void * pExtendedData;
} NNSG2dEntityDataBank;

typedef struct NNSG2dEntityDataBankBlock {
    NNSG2dBinaryBlockHeader blockHeader;
    NNSG2dEntityDataBank entityDataBank;
} NNSG2dEntityDataBankBlock;

#ifdef __cplusplus
}
#endif

#endif
