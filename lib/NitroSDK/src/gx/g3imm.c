#include <nitro/gx/g3imm.h>
#include <nitro/mi/dma.h>

#include "include/gxasm.h"

void G3_LoadMtx44 (const MtxFx44 * m) {
    SDK_NULL_ASSERT(m);

    reg_G3X_GXFIFO = G3OP_MTX_LOAD_4x4;
    GX_SendFifo64B(&m->_00, (void *)&reg_G3X_GXFIFO);
}

void G3_LoadMtx43 (const MtxFx43 * m) {
    SDK_NULL_ASSERT(m);

    reg_G3X_GXFIFO = G3OP_MTX_LOAD_4x3;
    GX_SendFifo48B(&m->_00, (void *)&reg_G3X_GXFIFO);
}

void G3_MultMtx44 (const MtxFx44 * m) {
    SDK_NULL_ASSERT(m);

    reg_G3X_GXFIFO = G3OP_MTX_MULT_4x4;
    GX_SendFifo64B(&m->_00, (void *)&reg_G3X_GXFIFO);
}

void G3_MultMtx43 (const MtxFx43 * m) {
    SDK_NULL_ASSERT(m);

    reg_G3X_GXFIFO = G3OP_MTX_MULT_4x3;
    GX_SendFifo48B(&m->_00, (void *)&reg_G3X_GXFIFO);
}

void G3_MultMtx33 (const MtxFx33 * m) {
    SDK_NULL_ASSERT(m);

    reg_G3X_GXFIFO = G3OP_MTX_MULT_3x3;
    GX_SendFifo36B(&m->_00, (void *)&reg_G3X_GXFIFO);
}

void G3_Shininess (const u32 * table) {
    SDK_NULL_ASSERT(table);

    reg_G3X_GXFIFO = G3OP_SHININESS;
    GX_SendFifo128B(&table[0], (void *)&reg_G3X_GXFIFO);
}

void G3_MultTransMtx33 (const MtxFx33 * mtx, const VecFx32 * trans) {
    SDK_NULL_ASSERT(mtx);
    SDK_NULL_ASSERT(trans);

    reg_G3X_GXFIFO = G3OP_MTX_MULT_4x3;
    GX_SendFifo36B(&mtx->_00, (void *)&reg_G3X_GXFIFO);
    reg_G3X_GXFIFO = (u32)trans->x;
    reg_G3X_GXFIFO = (u32)trans->y;
    reg_G3X_GXFIFO = (u32)trans->z;
}
