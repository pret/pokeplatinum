#include <nnsys/g3d/1mat1shp.h>
#include <nnsys/g3d/binres/res_struct_accessor.h>
#include <nnsys/g3d/gecom.h>
#include <nnsys/g3d/cgtool.h>

void NNS_G3dDraw1Mat1Shp (const NNSG3dResMdl * pResMdl, u32 matID, u32 shpID, BOOL sendMat) {
    NNS_G3D_NULL_ASSERT(pResMdl);

    if (pResMdl->info.posScale != FX32_ONE) {
        NNS_G3dGeScale(
            pResMdl->info.posScale,
            pResMdl->info.posScale,
            pResMdl->info.posScale
        );
    }

    if (sendMat) {
        NNS_G3D_ASSERT(matID < pResMdl->info.numMat);
        if (matID < pResMdl->info.numMat) {
            const NNSG3dResMatData * mat;
            u32 cmd[7];

            {
                const NNSG3dResMat * p = NNS_G3dGetMat(pResMdl);
                NNS_G3D_NULL_ASSERT(p);
                mat = NNS_G3dGetMatDataByIdx(p, matID);
                NNS_G3D_NULL_ASSERT(mat);
            }

            if (!(mat->polyAttr & REG_G3_POLYGON_ATTR_ALPHA_MASK)) {
                return;
            }

            cmd[0] = GX_PACK_OP(G3OP_DIF_AMB, G3OP_SPE_EMI, G3OP_POLYGON_ATTR, G3OP_NOP);
            cmd[1] = mat->diffAmb;
            cmd[2] = mat->specEmi;
            cmd[3] = mat->polyAttr;

            if (mat->flag & NNS_G3D_MATFLAG_WIREFRAME) {
                cmd[3] &= ~REG_G3_POLYGON_ATTR_ALPHA_MASK;
            }

            cmd[4] = GX_PACK_OP(G3OP_TEXIMAGE_PARAM, G3OP_TEXPLTT_BASE, G3OP_NOP, G3OP_NOP);
            cmd[5] = mat->texImageParam;
            cmd[6] = mat->texPlttBase;

            NNS_G3dGeBufferData_N(&cmd[0], 7);

            if (mat->flag & NNS_G3D_MATFLAG_TEXMTX_USE) {
                NNSG3dSendTexSRT func;
                NNSG3dMatAnmResult dummy;

                const u8 * p = (const u8 *)mat + sizeof(NNSG3dResMatData);

                dummy.flag = NNS_G3D_MATANM_RESULTFLAG_TEXMTX_SET;
                dummy.origWidth = mat->origWidth;
                dummy.origHeight = mat->origHeight;
                dummy.magW = mat->magW;
                dummy.magH = mat->magH;

                if (!(mat->flag & NNS_G3D_MATFLAG_TEXMTX_SCALEONE)) {
                    const fx32 * p_fx32 = (const fx32 *)p;

                    dummy.scaleS = *(p_fx32 + 0);
                    dummy.scaleT = *(p_fx32 + 1);
                    p += 2 * sizeof(fx32);
                } else {
                    dummy.flag |= NNS_G3D_MATANM_RESULTFLAG_TEXMTX_SCALEONE;
                }

                if (!(mat->flag & NNS_G3D_MATFLAG_TEXMTX_ROTZERO)) {
                    const fx16 * p_fx16 = (const fx16 *)p;

                    dummy.sinR = *(p_fx16 + 0);
                    dummy.cosR = *(p_fx16 + 1);
                    p += 2 * sizeof(fx16);
                } else {
                    dummy.flag |= NNS_G3D_MATANM_RESULTFLAG_TEXMTX_ROTZERO;
                }

                if (!(mat->flag & NNS_G3D_MATFLAG_TEXMTX_TRANSZERO)) {
                    const fx32 * p_fx32 = (const fx32 *)p;

                    dummy.transS = *(p_fx32 + 0);
                    dummy.transT = *(p_fx32 + 1);
                } else {
                    dummy.flag |= NNS_G3D_MATANM_RESULTFLAG_TEXMTX_TRANSZERO;
                }

                func = NNS_G3dSendTexSRT_FuncArray[pResMdl->info.texMtxMode];
                NNS_G3D_NULL_ASSERT(func);
                if (func) {
                    (*func)(&dummy);
                }
            }
        }
    }

    NNS_G3D_ASSERT(shpID < pResMdl->info.numShp);
    if (shpID < pResMdl->info.numShp) {
        const NNSG3dResShp * p;
        const NNSG3dResShpData * shp;

        p = NNS_G3dGetShp(pResMdl);
        NNS_G3D_NULL_ASSERT(p);
        shp = NNS_G3dGetShpDataByIdx(p, shpID);
        NNS_G3D_NULL_ASSERT(shp);

        NNS_G3dGeSendDL(NNS_G3dGetShpDLPtr(shp), NNS_G3dGetShpDLSize(shp));
    }

    if (pResMdl->info.invPosScale != FX32_ONE) {
        NNS_G3dGeScale(
            pResMdl->info.invPosScale,
            pResMdl->info.invPosScale,
            pResMdl->info.invPosScale
        );
    }
}
