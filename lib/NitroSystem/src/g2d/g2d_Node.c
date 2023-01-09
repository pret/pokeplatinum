#include <nitro.h>
#include <nnsys/g2d/g2d_Node.h>
#include <nnsys/g2d/g2d_SRTControl.h>

void NNSi_G2dInitializeNode (NNSG2dNode * pNode, NNSG2dNodeType type) {
    NNS_G2D_NULL_ASSERT(pNode);
    NNS_G2D_ASSERT_NODETYPE_VALID(type);

    pNode->pContent = NULL;
    pNode->type = type;
    pNode->bVisible = TRUE;

    NNSi_G2dSrtcInitControl(&pNode->srtCtrl, NNS_G2D_SRTCONTROLTYPE_SRT);
}
