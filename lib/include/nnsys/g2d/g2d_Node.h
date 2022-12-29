#ifndef NNS_G2D_NODE_H_
#define NNS_G2D_NODE_H_

#include <nitro.h>
#include <nnsys/g2d/g2d_config.h>
#include <nnsys/g2d/fmt/g2d_SRTControl_data.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef enum NNSG2dNodeType {
    NNS_G2D_NODETYPE_INVALID       = 0,
    NNS_G2D_NODETYPE_CELL,
    NNS_G2D_NODETYPE_MULTICELL,
    NNS_G2D_NODETYPE_MAX
} NNSG2dNodeType;

#define NNS_G2D_ASSERT_NODETYPE_VALID(val)     \
    NNS_G2D_MINMAX_ASSERT(val, NNS_G2D_NODETYPE_CELL, NNS_G2D_NODETYPE_MULTICELL)

#define NNS_G2D_NODE_AFFINE_IDX_NONE 0xFFFF

typedef struct NNSG2dNode {
    void * pContent;
    NNSG2dNodeType type;
    BOOL bVisible;
    NNSG2dSRTControl srtCtrl;
} NNSG2dNode;

void NNSi_G2dInitializeNode(NNSG2dNode * pNode, NNSG2dNodeType type);

NNS_G2D_INLINE void NNSi_G2dSetNodeVisibleFlag (NNSG2dNode * pNode, BOOL bVisible)
{
    NNS_G2D_NULL_ASSERT(pNode);
    pNode->bVisible = bVisible;
}

NNS_G2D_INLINE BOOL NNSi_G2dGetNodeVisibleFlag (NNSG2dNode * pNode)
{
    NNS_G2D_NULL_ASSERT(pNode);
    return pNode->bVisible;
}

#ifdef __cplusplus
}
#endif

#endif
