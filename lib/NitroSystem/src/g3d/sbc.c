#include <nnsys/g3d/sbc.h>
#include <nnsys/g3d/kernel.h>
#include <nnsys/g3d/binres/res_struct.h>
#include <nnsys/g3d/glbstate.h>
#include <nnsys/g3d/gecom.h>
#include <nnsys/g3d/binres/res_struct_accessor.h>
#include <nnsys/g3d/util.h>

static void G3dDrawInternal_Loop_ (NNSG3dRS * pRS) {
    do{
        pRS->flag &= ~NNS_G3D_RSFLAG_SKIP;
        NNS_G3D_ASSERTMSG(
            NNS_G3dFuncSbcTable[NNS_G3D_GET_SBCCMD(*pRS->c)],
            "SBC command not found / disabled."
        );

        (*NNS_G3dFuncSbcTable[NNS_G3D_GET_SBCCMD(*pRS->c)])
            (pRS, NNS_G3D_GET_SBCFLG(*pRS->c));
    }while (!(pRS->flag & NNS_G3D_RSFLAG_RETURN));
}

static void G3dDrawInternal_ (NNSG3dRS * pRS, NNSG3dRenderObj * pRenderObj) {
    NNS_G3D_NULL_ASSERT(pRS);
    NNS_G3D_NULL_ASSERT(pRenderObj);

    MI_CpuClearFast(pRS, sizeof(*pRS));
    pRS->isScaleCacheOne[0] = 1;

    pRS->flag = NNS_G3D_RSFLAG_NODE_VISIBLE;

    if (pRenderObj->ptrUserSbc) {
        pRS->c = pRenderObj->ptrUserSbc;
    } else {
        pRS->c = (u8 *)pRenderObj->resMdl + pRenderObj->resMdl->ofsSbc;
    }

    pRS->pRenderObj = pRenderObj;

    pRS->pResNodeInfo = NNS_G3dGetNodeInfo(pRenderObj->resMdl);
    pRS->pResMat = NNS_G3dGetMat(pRenderObj->resMdl);
    pRS->pResShp = NNS_G3dGetShp(pRenderObj->resMdl);
    pRS->funcJntScale = NNS_G3dGetJointScale_FuncArray[pRenderObj->resMdl->info.scalingRule];
    pRS->funcJntMtx = NNS_G3dSendJointSRT_FuncArray[pRenderObj->resMdl->info.scalingRule];
    pRS->funcTexMtx = NNS_G3dSendTexSRT_FuncArray[pRenderObj->resMdl->info.texMtxMode];
    pRS->posScale = pRenderObj->resMdl->info.posScale;
    pRS->invPosScale = pRenderObj->resMdl->info.invPosScale;

    if (pRenderObj->cbFunc && pRenderObj->cbCmd < NNS_G3D_SBC_COMMAND_NUM) {
        NNS_G3D_SBC_CALLBACK_TIMING_ASSERT(pRenderObj->cbTiming);
        pRS->cbVecFunc[pRenderObj->cbCmd] = pRenderObj->cbFunc;
        pRS->cbVecTiming[pRenderObj->cbCmd] = pRenderObj->cbTiming;
    }

    if (pRenderObj->flag & NNS_G3D_RENDEROBJ_FLAG_RECORD) {
        pRS->flag |= NNS_G3D_RSFLAG_OPT_RECORD;
    }

    if (pRenderObj->flag & NNS_G3D_RENDEROBJ_FLAG_NOGECMD) {
        pRS->flag |= NNS_G3D_RSFLAG_OPT_NOGECMD;
    }

    if (pRenderObj->flag & NNS_G3D_RENDEROBJ_FLAG_SKIP_SBC_DRAW) {
        pRS->flag |= NNS_G3D_RSFLAG_OPT_SKIP_SBCDRAW;
    }

    if (pRenderObj->flag & NNS_G3D_RENDEROBJ_FLAG_SKIP_SBC_MTXCALC) {
        pRS->flag |= NNS_G3D_RSFLAG_OPT_SKIP_SBCMTXCALC;
    }

    if (pRenderObj->cbInitFunc) {
        (*pRenderObj->cbInitFunc)(pRS);
    }

    G3dDrawInternal_Loop_(pRS);

    NNS_G3D_ASSERT(pRS->pRenderObj == pRenderObj);
    NNS_G3D_ASSERT(pRS == NNS_G3dRS);

    pRenderObj->flag &= ~NNS_G3D_RENDEROBJ_FLAG_RECORD;
}

static void updateHintVec_ (u32 * pVec, const NNSG3dAnmObj * pAnmObj) {
    const NNSG3dAnmObj * p = pAnmObj;
    while (p) {
        int i;
        for (i = 0; i < p->numMapData; ++i) {
            if (p->mapData[i] & NNS_G3D_ANMOBJ_MAPDATA_EXIST) {
                pVec[i >> 5] |= 1 << (i & 31);
            }
        }
        p = p->next;
    }
}

void NNS_G3dDraw (NNSG3dRenderObj * pRenderObj) {
    NNS_G3D_NULL_ASSERT(pRenderObj);
    NNS_G3D_NULL_ASSERT(pRenderObj->resMdl);
    NNS_G3D_ASSERTMSG(
        pRenderObj->resMdl->info.numMat <= NNS_G3D_SIZE_MAT_MAX,
        "numMaterial exceeds NNS_G3D_SIZE_MAT_MAX"
    );
    NNS_G3D_ASSERTMSG(
        pRenderObj->resMdl->info.numNode <= NNS_G3D_SIZE_JNT_MAX,
        "numNode exceeds NNS_G3D_SIZE_JNT_MAX"
    );
    NNS_G3D_ASSERTMSG(
        pRenderObj->resMdl->info.numShp <= NNS_G3D_SIZE_SHP_MAX,
        "numShape exceeds NNS_G3D_SIZE_SHP_MAX"
    );

    if (NNS_G3dRenderObjTestFlag(pRenderObj, NNS_G3D_RENDEROBJ_FLAG_HINT_OBSOLETE)) {
        MI_CpuClear32(&pRenderObj->hintMatAnmExist[0], sizeof(u32) * (NNS_G3D_SIZE_MAT_MAX / 32));
        MI_CpuClear32(&pRenderObj->hintJntAnmExist[0], sizeof(u32) * (NNS_G3D_SIZE_JNT_MAX / 32));
        MI_CpuClear32(&pRenderObj->hintVisAnmExist[0], sizeof(u32) * (NNS_G3D_SIZE_JNT_MAX / 32));

        if (pRenderObj->anmMat) {
            updateHintVec_(&pRenderObj->hintMatAnmExist[0], pRenderObj->anmMat);
        }
        if (pRenderObj->anmJnt) {
            updateHintVec_(&pRenderObj->hintJntAnmExist[0], pRenderObj->anmJnt);
        }
        if (pRenderObj->anmVis) {
            updateHintVec_(&pRenderObj->hintVisAnmExist[0], pRenderObj->anmVis);
        }

        NNS_G3dRenderObjResetFlag(pRenderObj, NNS_G3D_RENDEROBJ_FLAG_HINT_OBSOLETE);
    }

    if (NNS_G3dRS) {
        G3dDrawInternal_(NNS_G3dRS, pRenderObj);
    } else {
        NNSG3dRS rs;
        NNS_G3dRS = &rs;
        G3dDrawInternal_(&rs, pRenderObj);
        NNS_G3dRS = NULL;
    }
}

void NNSi_G3dFuncSbc_NOP (NNSG3dRS * rs, u32) {
    NNS_G3D_NULL_ASSERT(rs);

#if !defined(NNS_G3D_SBC_CALLBACK_TIMING_A_DISABLE) || \
    !defined(NNS_G3D_SBC_CALLBACK_TIMING_B_DISABLE) || \
    !defined(NNS_G3D_SBC_CALLBACK_TIMING_C_DISABLE)

    if (rs->cbVecFunc[NNS_G3D_SBC_NOP]) {
        (*rs->cbVecFunc[NNS_G3D_SBC_NOP])(rs);
    }
#endif

    rs->c++;
}

void NNSi_G3dFuncSbc_RET (NNSG3dRS * rs, u32) {
    NNS_G3D_NULL_ASSERT(rs);

#if !defined(NNS_G3D_SBC_CALLBACK_TIMING_A_DISABLE) || \
    !defined(NNS_G3D_SBC_CALLBACK_TIMING_B_DISABLE) || \
    !defined(NNS_G3D_SBC_CALLBACK_TIMING_C_DISABLE)

    if (rs->cbVecFunc[NNS_G3D_SBC_RET]) {
        (*rs->cbVecFunc[NNS_G3D_SBC_RET])(rs);
    }
#endif

    rs->flag |= NNS_G3D_RSFLAG_RETURN;
}

void NNSi_G3dFuncSbc_NODE (NNSG3dRS * rs, u32) {
    NNS_G3D_NULL_ASSERT(rs);

    if (!(rs->flag & NNS_G3D_RSFLAG_OPT_SKIP_SBCDRAW)) {
        BOOL cbFlag;
        NNSG3dSbcCallBackTiming cbTiming;
        u32 curNode;

        curNode = rs->currentNode = *(rs->c + 1);
        rs->flag |= NNS_G3D_RSFLAG_CURRENT_NODE_VALID;
        rs->pVisAnmResult = &rs->tmpVisAnmResult;

        cbFlag = NNSi_G3dCallBackCheck_A(rs, NNS_G3D_SBC_NODE, &cbTiming);

        if (!cbFlag) {
            NNS_G3D_NULL_ASSERT(rs->pRenderObj->funcBlendVis);

            if (rs->pRenderObj->anmVis &&
                NNSi_G3dBitVecCheck(&rs->pRenderObj->hintVisAnmExist[0], curNode) &&
                (*rs->pRenderObj->funcBlendVis)(rs->pVisAnmResult, rs->pRenderObj->anmVis, curNode)) {
                ;
            } else {
                rs->pVisAnmResult->isVisible = *(rs->c + 2) & 1;
            }
        }

        cbFlag = NNSi_G3dCallBackCheck_B(rs, NNS_G3D_SBC_NODE, &cbTiming);

        if (!cbFlag) {
            if (rs->pVisAnmResult->isVisible) {
                rs->flag |= NNS_G3D_RSFLAG_NODE_VISIBLE;
            } else {
                rs->flag &= ~NNS_G3D_RSFLAG_NODE_VISIBLE;
            }
        }

        (void)NNSi_G3dCallBackCheck_C(rs, NNS_G3D_SBC_NODE, cbTiming);
    }

    rs->c += 3;
}

void NNSi_G3dFuncSbc_MTX (NNSG3dRS * rs, u32) {
    NNS_G3D_NULL_ASSERT(rs);

    if (!(rs->flag & NNS_G3D_RSFLAG_OPT_SKIP_SBCDRAW) &&
        (rs->flag & NNS_G3D_RSFLAG_NODE_VISIBLE)) {
        BOOL cbFlag;
        NNSG3dSbcCallBackTiming cbTiming;

        cbFlag = NNSi_G3dCallBackCheck_A(rs, NNS_G3D_SBC_MTX, &cbTiming);

        if (!cbFlag) {
            u32 arg = *(rs->c + 1);
            NNS_G3D_ASSERT(arg < 31);

            if (!(rs->flag & NNS_G3D_RSFLAG_OPT_NOGECMD)) {
                NNS_G3dGeBufferOP_N(
                    G3OP_MTX_RESTORE,
                    &arg,
                    G3OP_MTX_RESTORE_NPARAMS
                );
            }
        }

        (void)NNSi_G3dCallBackCheck_C(rs, NNS_G3D_SBC_MTX, cbTiming);
    }

    rs->c += 2;
}

void NNSi_G3dFuncSbc_MAT_InternalDefault (NNSG3dRS * rs, u32 opt, const NNSG3dResMatData * mat, u32 idxMat) {
    static const u32 matColorMask_[8] = {
        0x00000000,
        0x00007fff,
        0x7fff0000,
        0x7fff7fff,
        0x00008000,
        0x0000ffff,
        0x7fff8000,
        0x7fffffff
    };
    BOOL cbFlag;
    NNSG3dSbcCallBackTiming cbTiming;

    NNS_G3D_NULL_ASSERT(rs);
    NNS_G3D_NULL_ASSERT(mat);

    rs->currentMat = (u8)idxMat;
    rs->flag |= NNS_G3D_RSFLAG_CURRENT_MAT_VALID;

    rs->pMatAnmResult = &rs->tmpMatAnmResult;

    cbFlag = NNSi_G3dCallBackCheck_A(rs, NNS_G3D_SBC_MAT, &cbTiming);

    if (!cbFlag) {
        NNSG3dMatAnmResult * pResult;

        if (rs->pRenderObj->recMatAnm &&
            !(rs->flag & NNS_G3D_RSFLAG_OPT_RECORD)) {
            pResult = (rs->pRenderObj->recMatAnm + idxMat);
        } else {
            if ((opt == NNS_G3D_SBCFLG_001 || opt == NNS_G3D_SBCFLG_010) &&
                NNSi_G3dBitVecCheck(&rs->isMatCached[0], idxMat)) {
                if (rs->pRenderObj->recMatAnm) {
                    pResult = (rs->pRenderObj->recMatAnm + idxMat);
                } else {
                    pResult = &NNS_G3dRSOnGlb.matCache[idxMat];
                }
            } else {
                if (rs->pRenderObj->recMatAnm) {
                    NNSi_G3dBitVecSet(&rs->isMatCached[0], idxMat);

                    pResult = (rs->pRenderObj->recMatAnm + idxMat);
                } else if (opt == NNS_G3D_SBCFLG_010) {
                    NNSi_G3dBitVecSet(&rs->isMatCached[0], idxMat);

                    pResult = &NNS_G3dRSOnGlb.matCache[idxMat];
                } else {
                    pResult = &rs->tmpMatAnmResult;
                }

                {
                    pResult->flag = (NNSG3dMatAnmResultFlag)0;
                    if (NNS_G3dGetMatDataByIdx(rs->pResMat, idxMat)->flag & NNS_G3D_MATFLAG_WIREFRAME) {
                        pResult->flag |= NNS_G3D_MATANM_RESULTFLAG_WIREFRAME;
                    }
                }
                {
                    u32 mask = matColorMask_[(mat->flag >> 6) & 7];
                    pResult->prmMatColor0 = (NNS_G3dGlb.prmMatColor0 & ~mask) |
                                            (mat->diffAmb & mask);
                }

                {
                    u32 mask = matColorMask_[(mat->flag >> 9) & 7];
                    pResult->prmMatColor1 = (NNS_G3dGlb.prmMatColor1 & ~mask) |
                                            (mat->specEmi & mask);
                }

                pResult->prmPolygonAttr = (NNS_G3dGlb.prmPolygonAttr & ~mat->polyAttrMask) |
                                          (mat->polyAttr & mat->polyAttrMask);

                pResult->prmTexImage = mat->texImageParam;
                pResult->prmTexPltt = mat->texPlttBase;

                if (mat->flag & NNS_G3D_MATFLAG_TEXMTX_USE) {
                    const u8 * p = (const u8 *)mat + sizeof(NNSG3dResMatData);

                    if (!(mat->flag & NNS_G3D_MATFLAG_TEXMTX_SCALEONE)) {
                        const fx32 * p_fx32 = (const fx32 *)p;

                        pResult->scaleS = *(p_fx32 + 0);
                        pResult->scaleT = *(p_fx32 + 1);
                        p += 2 * sizeof(fx32);
                    } else {
                        pResult->flag |= NNS_G3D_MATANM_RESULTFLAG_TEXMTX_SCALEONE;
                    }

                    if (!(mat->flag & NNS_G3D_MATFLAG_TEXMTX_ROTZERO)) {
                        const fx16 * p_fx16 = (const fx16 *)p;

                        pResult->sinR = *(p_fx16 + 0);
                        pResult->cosR = *(p_fx16 + 1);
                        p += 2 * sizeof(fx16);
                    } else {
                        pResult->flag |= NNS_G3D_MATANM_RESULTFLAG_TEXMTX_ROTZERO;
                    }

                    if (!(mat->flag & NNS_G3D_MATFLAG_TEXMTX_TRANSZERO)) {
                        const fx32 * p_fx32 = (const fx32 *)p;

                        pResult->transS = *(p_fx32 + 0);
                        pResult->transT = *(p_fx32 + 1);
                    } else {
                        pResult->flag |= NNS_G3D_MATANM_RESULTFLAG_TEXMTX_TRANSZERO;
                    }

                    pResult->flag |= NNS_G3D_MATANM_RESULTFLAG_TEXMTX_SET;
                }

                NNS_G3D_NULL_ASSERT(rs->pRenderObj->funcBlendMat);

                if (rs->pRenderObj->anmMat &&
                    NNSi_G3dBitVecCheck(&rs->pRenderObj->hintMatAnmExist[0], idxMat)) {
                    (void)(*rs->pRenderObj->funcBlendMat)(pResult, rs->pRenderObj->anmMat, idxMat);
                }

                if (pResult->flag & (NNS_G3D_MATANM_RESULTFLAG_TEXMTX_SET |
                                     NNS_G3D_MATANM_RESULTFLAG_TEXMTX_MULT)) {
                    pResult->origWidth = mat->origWidth;
                    pResult->origHeight = mat->origHeight;
                    pResult->magW = mat->magW;
                    pResult->magH = mat->magH;
                }
            }
        }
        rs->pMatAnmResult = pResult;
    }

    cbFlag = NNSi_G3dCallBackCheck_B(rs, NNS_G3D_SBC_MAT, &cbTiming);

    if (!cbFlag) {
        NNSG3dMatAnmResult * pResult;

        NNS_G3D_NULL_ASSERT(rs->pMatAnmResult);
        pResult = rs->pMatAnmResult;

        if (pResult->prmPolygonAttr & REG_G3_POLYGON_ATTR_ALPHA_MASK) {
            if (pResult->flag & NNS_G3D_MATANM_RESULTFLAG_WIREFRAME) {
                pResult->prmPolygonAttr &= ~REG_G3_POLYGON_ATTR_ALPHA_MASK;
            }

            rs->flag &= ~NNS_G3D_RSFLAG_MAT_TRANSPARENT;

            if (!(rs->flag & NNS_G3D_RSFLAG_OPT_NOGECMD)) {
                u32 cmd[7];

                cmd[0] = GX_PACK_OP(G3OP_DIF_AMB, G3OP_SPE_EMI, G3OP_POLYGON_ATTR, G3OP_NOP);
                cmd[1] = pResult->prmMatColor0;
                cmd[2] = pResult->prmMatColor1;
                cmd[3] = pResult->prmPolygonAttr;
                cmd[4] = GX_PACK_OP(G3OP_TEXIMAGE_PARAM, G3OP_TEXPLTT_BASE, G3OP_NOP, G3OP_NOP);
                cmd[5] = pResult->prmTexImage;
                cmd[6] = pResult->prmTexPltt;

                NNS_G3dGeBufferData_N(&cmd[0], 7);

                if (pResult->flag & (NNS_G3D_MATANM_RESULTFLAG_TEXMTX_SET |
                                     NNS_G3D_MATANM_RESULTFLAG_TEXMTX_MULT)) {
                    NNS_G3D_NULL_ASSERT(rs->funcTexMtx);
                    (*rs->funcTexMtx)(pResult);
                }
            }
        } else {
            rs->flag |= NNS_G3D_RSFLAG_MAT_TRANSPARENT;
        }
    }

    (void)NNSi_G3dCallBackCheck_C(rs, NNS_G3D_SBC_MAT, cbTiming);
}

void NNSi_G3dFuncSbc_MAT (NNSG3dRS * rs, u32 opt) {
    NNS_G3D_NULL_ASSERT(rs);

    if (!(rs->flag & NNS_G3D_RSFLAG_OPT_SKIP_SBCDRAW)) {
        u32 idxMat;
        idxMat = *(rs->c + 1);

        if ((rs->flag & NNS_G3D_RSFLAG_NODE_VISIBLE) ||
            !((rs->flag & NNS_G3D_RSFLAG_CURRENT_MAT_VALID) &&
              (idxMat == rs->currentMat))) {
            const NNSG3dResMatData * mat =
                NNS_G3dGetMatDataByIdx(rs->pResMat, idxMat);

            NNS_G3D_NULL_ASSERT(NNS_G3dFuncSbcMatTable[mat->itemTag]);
            (*NNS_G3dFuncSbcMatTable[mat->itemTag])(rs, opt, mat, idxMat);
        }
    }
    rs->c += 2;
}

void NNSi_G3dFuncSbc_SHP_InternalDefault (NNSG3dRS * rs, u32, const NNSG3dResShpData * shp, u32) {
    BOOL cbFlag;
    NNSG3dSbcCallBackTiming cbTiming;
    NNS_G3D_NULL_ASSERT(rs);
    NNS_G3D_NULL_ASSERT(shp);

    cbFlag = NNSi_G3dCallBackCheck_A(rs, NNS_G3D_SBC_SHP, &cbTiming);

    if (!cbFlag) {
        if (!(rs->flag & NNS_G3D_RSFLAG_OPT_NOGECMD)) {
            NNS_G3dGeSendDL(NNS_G3dGetShpDLPtr(shp), NNS_G3dGetShpDLSize(shp));
        }
    }

    (void)NNSi_G3dCallBackCheck_B(rs, NNS_G3D_SBC_SHP, &cbTiming);

    (void)NNSi_G3dCallBackCheck_C(rs, NNS_G3D_SBC_SHP, cbTiming);
}

void NNSi_G3dFuncSbc_SHP (NNSG3dRS * rs, u32 opt) {
    NNS_G3D_NULL_ASSERT(rs);

    if (!(rs->flag & NNS_G3D_RSFLAG_OPT_SKIP_SBCDRAW)) {
        if ((rs->flag & NNS_G3D_RSFLAG_NODE_VISIBLE) &&
            !(rs->flag & NNS_G3D_RSFLAG_MAT_TRANSPARENT)) {
            u32 idxShp = *(rs->c + 1);
            const NNSG3dResShpData * shp =
                NNS_G3dGetShpDataByIdx(rs->pResShp, idxShp);

            NNS_G3D_NULL_ASSERT(NNS_G3dFuncSbcShpTable[shp->itemTag]);
            (*NNS_G3dFuncSbcShpTable[shp->itemTag])(rs, opt, shp, idxShp);
        }
    }
    rs->c += 2;
}

void NNSi_G3dFuncSbc_NODEDESC (NNSG3dRS * rs, u32 opt) {
    u32 cmdLen = 4;
    static const u8 pivotUtil_[9][4] = {
        {4, 5, 7, 8},
        {3, 5, 6, 8},
        {3, 4, 6, 7},

        {1, 2, 7, 8},
        {0, 2, 6, 8},
        {0, 1, 6, 7},

        {1, 2, 4, 5},
        {0, 2, 3, 5},
        {0, 1, 3, 4}
    };
    BOOL cbFlag;
    NNSG3dSbcCallBackTiming cbTiming;
    u32 idxNode = *(rs->c + 1);
    rs->currentNodeDesc = (u8)idxNode;
    rs->flag |= NNS_G3D_RSFLAG_CURRENT_NODEDESC_VALID;

    NNS_G3D_NULL_ASSERT(rs);

    if (rs->flag & NNS_G3D_RSFLAG_OPT_SKIP_SBCMTXCALC) {
        if (opt == NNS_G3D_SBCFLG_010 ||
            opt == NNS_G3D_SBCFLG_011) {
            ++cmdLen;
        }

        if (opt == NNS_G3D_SBCFLG_001 ||
            opt == NNS_G3D_SBCFLG_011) {
            ++cmdLen;
#if 1

            if (!(rs->flag & NNS_G3D_RSFLAG_OPT_NOGECMD)) {
                u32 idxMtxDest = *(rs->c + 4);
                NNS_G3D_ASSERT(idxMtxDest < 31);

                NNS_G3dGeBufferOP_N(
                    G3OP_MTX_RESTORE,
                    &idxMtxDest,
                    G3OP_MTX_RESTORE_NPARAMS
                );
            }
#endif
        }
        rs->c += cmdLen;
        return;
    }

    {
        if (opt == NNS_G3D_SBCFLG_010 ||
            opt == NNS_G3D_SBCFLG_011) {
            u32 idxMtxSrc;

            ++cmdLen;
            if (opt == NNS_G3D_SBCFLG_010) {
                idxMtxSrc = *(rs->c + 4);
            } else {
                idxMtxSrc = *(rs->c + 5);
            }
            NNS_G3D_ASSERT(idxMtxSrc < 31);

            if (!(rs->flag & NNS_G3D_RSFLAG_OPT_NOGECMD)) {
                NNS_G3dGeBufferOP_N(
                    G3OP_MTX_RESTORE,
                    &idxMtxSrc,
                    G3OP_MTX_RESTORE_NPARAMS
                );
            }
        }
    }

    rs->pJntAnmResult = &rs->tmpJntAnmResult;

    cbFlag = NNSi_G3dCallBackCheck_A(rs, NNS_G3D_SBC_NODEDESC, &cbTiming);

    if (!cbFlag) {
        NNSG3dJntAnmResult * pAnmResult;
        BOOL isUseRecordData;

        if (rs->pRenderObj->recJntAnm) {
            pAnmResult = (rs->pRenderObj->recJntAnm + idxNode);
            if (!(rs->flag & NNS_G3D_RSFLAG_OPT_RECORD)) {
                isUseRecordData = TRUE;
            } else {
                isUseRecordData = FALSE;
            }
        } else {
            isUseRecordData = FALSE;
            pAnmResult = &rs->tmpJntAnmResult;
        }

        if (!isUseRecordData) {
            pAnmResult->flag = (NNSG3dJntAnmResultFlag)0;

            NNS_G3D_NULL_ASSERT(rs->pRenderObj->funcBlendJnt);
            if (rs->pRenderObj->anmJnt &&
                (*rs->pRenderObj->funcBlendJnt)(pAnmResult, rs->pRenderObj->anmJnt, idxNode)) {
                ;
            } else {
                const NNSG3dResNodeData * pNd =
                    NNS_G3dGetNodeDataByIdx(rs->pResNodeInfo, idxNode);
                const u8 * p = (const u8 *)pNd + sizeof(NNSG3dResNodeData);

                if (pNd->flag & NNS_G3D_SRTFLAG_TRANS_ZERO) {
                    pAnmResult->flag |= NNS_G3D_JNTANM_RESULTFLAG_TRANS_ZERO;
                } else {
                    const fx32 * p_fx32 = (const fx32 *)p;

                    pAnmResult->trans.x = *(p_fx32 + 0);
                    pAnmResult->trans.y = *(p_fx32 + 1);
                    pAnmResult->trans.z = *(p_fx32 + 2);
                    p += 3 * sizeof(fx32);
                }

                if (pNd->flag & NNS_G3D_SRTFLAG_ROT_ZERO) {
                    pAnmResult->flag |= NNS_G3D_JNTANM_RESULTFLAG_ROT_ZERO;
                } else {
                    if (pNd->flag & NNS_G3D_SRTFLAG_PIVOT_EXIST) {
                        fx32 A = *(fx16 *)(p + 0);
                        fx32 B = *(fx16 *)(p + 2);
                        u32 idxPivot = (u32)((pNd->flag & NNS_G3D_SRTFLAG_IDXPIVOT_MASK) >>
                                             NNS_G3D_SRTFLAG_IDXPIVOT_SHIFT);

                        MI_Zero36B(&pAnmResult->rot);

                        pAnmResult->rot.a[idxPivot] =
                            (pNd->flag & NNS_G3D_SRTFLAG_PIVOT_MINUS) ?
                            -FX32_ONE :
                            FX32_ONE;

                        pAnmResult->rot.a[pivotUtil_[idxPivot][0]] = A;
                        pAnmResult->rot.a[pivotUtil_[idxPivot][1]] = B;

                        pAnmResult->rot.a[pivotUtil_[idxPivot][2]] =
                            (pNd->flag & NNS_G3D_SRTFLAG_SIGN_REVC) ? -B : B;

                        pAnmResult->rot.a[pivotUtil_[idxPivot][3]] =
                            (pNd->flag & NNS_G3D_SRTFLAG_SIGN_REVD) ? -A : A;

                        p += 2 * sizeof(fx16);
                    } else {
                        const fx16 * pp = (const fx16 *)p;
                        pAnmResult->rot.a[0] = pNd->_00;
                        pAnmResult->rot.a[1] = *(pp + 0);
                        pAnmResult->rot.a[2] = *(pp + 1);
                        pAnmResult->rot.a[3] = *(pp + 2);
                        pAnmResult->rot.a[4] = *(pp + 3);
                        pAnmResult->rot.a[5] = *(pp + 4);
                        pAnmResult->rot.a[6] = *(pp + 5);
                        pAnmResult->rot.a[7] = *(pp + 6);
                        pAnmResult->rot.a[8] = *(pp + 7);

                        p += 8 * sizeof(fx16);
                    }
                }

                NNS_G3D_NULL_ASSERT(rs->funcJntScale);
                (*rs->funcJntScale)(pAnmResult, (fx32 *)p, rs->c, pNd->flag);
            }
        }
        rs->pJntAnmResult = pAnmResult;
    }

    cbFlag = NNSi_G3dCallBackCheck_B(rs, NNS_G3D_SBC_NODEDESC, &cbTiming);

    if (!cbFlag) {
        if (!(rs->flag & NNS_G3D_RSFLAG_OPT_NOGECMD)) {
            NNS_G3D_NULL_ASSERT(rs->pJntAnmResult);
            NNS_G3D_NULL_ASSERT(rs->funcJntMtx);

            (*rs->funcJntMtx)(rs->pJntAnmResult);
        }
    }

    rs->pJntAnmResult = NULL;

    cbFlag = NNSi_G3dCallBackCheck_C(rs, NNS_G3D_SBC_NODEDESC, cbTiming);

    if (opt == NNS_G3D_SBCFLG_001 ||
        opt == NNS_G3D_SBCFLG_011) {
        ++cmdLen;

        if (!cbFlag) {
            if (!(rs->flag & NNS_G3D_RSFLAG_OPT_NOGECMD)) {
                u32 idxMtxDest = *(rs->c + 4);
                NNS_G3D_ASSERT(idxMtxDest < 31);

                NNS_G3dGeBufferOP_N(
                    G3OP_MTX_STORE,
                    &idxMtxDest,
                    G3OP_MTX_STORE_NPARAMS
                );
            }
        }
    }

    rs->c += cmdLen;
}

void NNSi_G3dFuncSbc_BB (NNSG3dRS * rs, u32 opt) {
    u32 cmdLen = 2;

    static u32 bbcmd1[] = {
        GX_PACK_OP(G3OP_MTX_POP, G3OP_MTX_MODE, G3OP_MTX_LOAD_4x3, G3OP_MTX_SCALE),
        1,
        GX_MTXMODE_POSITION_VECTOR,
        FX32_ONE, 0, 0,
        0, FX32_ONE, 0,
        0, 0, FX32_ONE,
        0, 0, 0,
        0, 0, 0
    };

    VecFx32 * trans = (VecFx32 *)&bbcmd1[12];
    VecFx32 * scale = (VecFx32 *)&bbcmd1[15];
    MtxFx44 m;
    BOOL cbFlag;
    NNSG3dSbcCallBackTiming cbTiming;

    NNS_G3D_NULL_ASSERT(rs);

    if (rs->flag & NNS_G3D_RSFLAG_OPT_SKIP_SBCDRAW) {
        if (opt == NNS_G3D_SBCFLG_010 ||
            opt == NNS_G3D_SBCFLG_011) {
            ++cmdLen;
        }
        if (opt == NNS_G3D_SBCFLG_001 ||
            opt == NNS_G3D_SBCFLG_011) {
            ++cmdLen;
        }
        rs->c += cmdLen;
        return;
    }

    {
        if (opt == NNS_G3D_SBCFLG_010 ||
            opt == NNS_G3D_SBCFLG_011) {
            ++cmdLen;

            if (!(rs->flag & NNS_G3D_RSFLAG_OPT_NOGECMD)) {
                u32 idxMtxSrc;
                if (opt == NNS_G3D_SBCFLG_010) {
                    idxMtxSrc = *(rs->c + 2);
                } else {
                    idxMtxSrc = *(rs->c + 3);
                }
                NNS_G3D_ASSERT(idxMtxSrc < 31);

                NNS_G3dGeBufferOP_N(
                    G3OP_MTX_RESTORE,
                    &idxMtxSrc,
                    1
                );
            }
        }
    }

    cbFlag = NNSi_G3dCallBackCheck_A(rs, NNS_G3D_SBC_BB, &cbTiming);

    if (!(rs->flag & NNS_G3D_RSFLAG_OPT_NOGECMD) &&
        (!cbFlag)) {
        NNS_G3dGeFlushBuffer();

        reg_G3X_GXFIFO = GX_PACK_OP(G3OP_MTX_MODE, G3OP_MTX_PUSH, G3OP_MTX_IDENTITY, G3OP_NOP);
        reg_G3X_GXFIFO = (u32)GX_MTXMODE_PROJECTION;
        reg_G3X_GXFIFO = 0;

        while (G3X_GetClipMtx(&m)) {
            ;
        }

        if (NNS_G3dGlb.flag & NNS_G3D_GLB_FLAG_FLUSH_WVP) {
            const MtxFx43 * cam = NNS_G3dGlbGetSrtCameraMtx();
            MtxFx44 tmp;

            MTX_Copy43To44(cam, &tmp);
            MTX_Concat44(&m, &tmp, &m);
        } else if (NNS_G3dGlb.flag & NNS_G3D_GLB_FLAG_FLUSH_VP) {
            const MtxFx43 * cam = NNS_G3dGlbGetCameraMtx();
            MtxFx44 tmp;

            MTX_Copy43To44(cam, &tmp);
            MTX_Concat44(&m, &tmp, &m);
        }

        trans->x = m._30;
        trans->y = m._31;
        trans->z = m._32;

        scale->x = VEC_Mag((VecFx32 *)&m._00);
        scale->y = VEC_Mag((VecFx32 *)&m._10);
        scale->z = VEC_Mag((VecFx32 *)&m._20);

        if (NNS_G3dGlb.flag & NNS_G3D_GLB_FLAG_FLUSH_WVP) {
            reg_G3X_GXFIFO = GX_PACK_OP(G3OP_MTX_POP, G3OP_MTX_MODE, G3OP_MTX_LOAD_4x3, G3OP_NOP);
            MI_CpuSend32(
                &bbcmd1[1],
                &reg_G3X_GXFIFO,
                2 * sizeof(u32)
            );
            MI_CpuSend32(
                NNS_G3dGlbGetInvSrtCameraMtx(),
                &reg_G3X_GXFIFO,
                G3OP_MTX_LOAD_4x3_NPARAMS * sizeof(u32)
            );

            reg_G3X_GXFIFO = GX_PACK_OP(G3OP_MTX_MULT_4x3, G3OP_MTX_SCALE, G3OP_NOP, G3OP_NOP);
            MI_CpuSend32(
                &bbcmd1[3],
                &reg_G3X_GXFIFO,
                sizeof(MtxFx43) + sizeof(VecFx32)
            );
        } else if (NNS_G3dGlb.flag & NNS_G3D_GLB_FLAG_FLUSH_VP) {
            reg_G3X_GXFIFO = GX_PACK_OP(G3OP_MTX_POP, G3OP_MTX_MODE, G3OP_MTX_LOAD_4x3, G3OP_NOP);
            MI_CpuSend32(
                &bbcmd1[1],
                &reg_G3X_GXFIFO,
                2 * sizeof(u32)
            );
            MI_CpuSend32(
                NNS_G3dGlbGetInvCameraMtx(),
                &reg_G3X_GXFIFO,
                G3OP_MTX_LOAD_4x3_NPARAMS * sizeof(u32)
            );

            reg_G3X_GXFIFO = GX_PACK_OP(G3OP_MTX_MULT_4x3, G3OP_MTX_SCALE, G3OP_NOP, G3OP_NOP);
            MI_CpuSend32(
                &bbcmd1[3],
                &reg_G3X_GXFIFO,
                sizeof(MtxFx43) + sizeof(VecFx32)
            );
        } else {
            MI_CpuSend32(
                &bbcmd1[0],
                &reg_G3X_GXFIFO,
                18 * sizeof(u32)
            );
        }
    }

    cbFlag = NNSi_G3dCallBackCheck_C(rs, NNS_G3D_SBC_BB, cbTiming);

    if (opt == NNS_G3D_SBCFLG_001 ||
        opt == NNS_G3D_SBCFLG_011) {
        ++cmdLen;

        if (!cbFlag) {
            if (!(rs->flag & NNS_G3D_RSFLAG_OPT_NOGECMD)) {
                u32 idxMtxDest;
                idxMtxDest = *(rs->c + 2);

                NNS_G3D_ASSERT(idxMtxDest < 31);

                NNS_G3dGeBufferOP_N(
                    G3OP_MTX_STORE,
                    &idxMtxDest,
                    G3OP_MTX_STORE_NPARAMS
                );
            }
        }
    }

    rs->c += cmdLen;
}

void NNSi_G3dFuncSbc_BBY (NNSG3dRS * rs, u32 opt) {
    u32 cmdLen = 2;
    MtxFx44 m;

    static u32 bbcmd1[] = {
        GX_PACK_OP(G3OP_MTX_POP, G3OP_MTX_MODE, G3OP_MTX_LOAD_4x3, G3OP_MTX_SCALE),
        1,
        GX_MTXMODE_POSITION_VECTOR,
        FX32_ONE, 0, 0,
        0, FX32_ONE, 0,
        0, 0, FX32_ONE,
        0, 0, 0,
        0, 0, 0
    };
    VecFx32 * trans = (VecFx32 *)&bbcmd1[12];
    VecFx32 * scale = (VecFx32 *)&bbcmd1[15];
    MtxFx43 * mtx = (MtxFx43 *)&bbcmd1[3];
    BOOL cbFlag;
    NNSG3dSbcCallBackTiming cbTiming;

    NNS_G3D_NULL_ASSERT(rs);

    if (rs->flag & NNS_G3D_RSFLAG_OPT_SKIP_SBCDRAW) {
        if (opt == NNS_G3D_SBCFLG_010 ||
            opt == NNS_G3D_SBCFLG_011) {
            ++cmdLen;
        }
        if (opt == NNS_G3D_SBCFLG_001 ||
            opt == NNS_G3D_SBCFLG_011) {
            ++cmdLen;
        }
        rs->c += cmdLen;
        return;
    }

    {
        if (opt == NNS_G3D_SBCFLG_010 ||
            opt == NNS_G3D_SBCFLG_011) {
            ++cmdLen;
            if (!(rs->flag & NNS_G3D_RSFLAG_OPT_NOGECMD)) {
                u32 idxMtxSrc;
                if (opt == NNS_G3D_SBCFLG_010) {
                    idxMtxSrc = *(rs->c + 2);
                } else {
                    idxMtxSrc = *(rs->c + 3);
                }
                NNS_G3D_ASSERT(idxMtxSrc < 31);
                NNS_G3dGeBufferOP_N(
                    G3OP_MTX_RESTORE,
                    &idxMtxSrc,
                    1
                );
            }
        }
    }

    cbFlag = NNSi_G3dCallBackCheck_A(rs, NNS_G3D_SBC_BBY, &cbTiming);

    if (!(rs->flag & NNS_G3D_RSFLAG_OPT_NOGECMD) &&
        (!cbFlag)) {
        NNS_G3dGeFlushBuffer();

        reg_G3X_GXFIFO = GX_PACK_OP(G3OP_MTX_MODE, G3OP_MTX_PUSH, G3OP_MTX_IDENTITY, G3OP_NOP);
        reg_G3X_GXFIFO = (u32)GX_MTXMODE_PROJECTION;
        reg_G3X_GXFIFO = 0;

        while (G3X_GetClipMtx(&m)) {
            ;
        }

        if (NNS_G3dGlb.flag & NNS_G3D_GLB_FLAG_FLUSH_WVP) {
            const MtxFx43 * cam = NNS_G3dGlbGetSrtCameraMtx();
            MtxFx44 tmp;

            MTX_Copy43To44(cam, &tmp);
            MTX_Concat44(&m, &tmp, &m);
        } else if (NNS_G3dGlb.flag & NNS_G3D_GLB_FLAG_FLUSH_VP) {
            const MtxFx43 * cam = NNS_G3dGlbGetCameraMtx();
            MtxFx44 tmp;

            MTX_Copy43To44(cam, &tmp);
            MTX_Concat44(&m, &tmp, &m);
        }

        trans->x = m._30;
        trans->y = m._31;
        trans->z = m._32;

        scale->x = VEC_Mag((VecFx32 *)&m._00);
        scale->y = VEC_Mag((VecFx32 *)&m._10);
        scale->z = VEC_Mag((VecFx32 *)&m._20);

        if (m._11 != 0 || m._12 != 0) {
            VEC_Normalize((VecFx32 *)&m._10, (VecFx32 *)&mtx->_10);

            mtx->_21 = -mtx->_12;
            mtx->_22 = mtx->_11;
        } else {
            VEC_Normalize((VecFx32 *)&m._20, (VecFx32 *)&mtx->_20);

            mtx->_12 = -mtx->_21;
            mtx->_11 = mtx->_22;
        }

        if (NNS_G3dGlb.flag & NNS_G3D_GLB_FLAG_FLUSH_WVP) {
            reg_G3X_GXFIFO = GX_PACK_OP(G3OP_MTX_POP, G3OP_MTX_MODE, G3OP_MTX_LOAD_4x3, G3OP_NOP);
            MI_CpuSend32(
                &bbcmd1[1],
                &reg_G3X_GXFIFO,
                2 * sizeof(u32)
            );
            MI_CpuSend32(
                NNS_G3dGlbGetInvSrtCameraMtx(),
                &reg_G3X_GXFIFO,
                G3OP_MTX_LOAD_4x3_NPARAMS * sizeof(u32)
            );

            reg_G3X_GXFIFO = GX_PACK_OP(G3OP_MTX_MULT_4x3, G3OP_MTX_SCALE, G3OP_NOP, G3OP_NOP);
            MI_CpuSend32(
                &bbcmd1[3],
                &reg_G3X_GXFIFO,
                sizeof(MtxFx43) + sizeof(VecFx32)
            );
        } else if (NNS_G3dGlb.flag & NNS_G3D_GLB_FLAG_FLUSH_VP) {
            reg_G3X_GXFIFO = GX_PACK_OP(G3OP_MTX_POP, G3OP_MTX_MODE, G3OP_MTX_LOAD_4x3, G3OP_NOP);
            MI_CpuSend32(
                &bbcmd1[1],
                &reg_G3X_GXFIFO,
                2 * sizeof(u32)
            );
            MI_CpuSend32(
                NNS_G3dGlbGetInvCameraMtx(),
                &reg_G3X_GXFIFO,
                G3OP_MTX_LOAD_4x3_NPARAMS * sizeof(u32)
            );

            reg_G3X_GXFIFO = GX_PACK_OP(G3OP_MTX_MULT_4x3, G3OP_MTX_SCALE, G3OP_NOP, G3OP_NOP);
            MI_CpuSend32(
                &bbcmd1[3],
                &reg_G3X_GXFIFO,
                sizeof(MtxFx43) + sizeof(VecFx32)
            );
        } else {
            MI_CpuSend32(&bbcmd1[0], &reg_G3X_GXFIFO, 18 * sizeof(u32));
        }
    }

    cbFlag = NNSi_G3dCallBackCheck_C(rs, NNS_G3D_SBC_BBY, cbTiming);

    if (opt == NNS_G3D_SBCFLG_001 ||
        opt == NNS_G3D_SBCFLG_011) {
        ++cmdLen;

        if (!cbFlag) {
            if (!(rs->flag & NNS_G3D_RSFLAG_OPT_NOGECMD)) {
                u32 idxMtxDest;
                idxMtxDest = *(rs->c + 2);

                NNS_G3D_ASSERT(idxMtxDest < 31);

                NNS_G3dGeBufferOP_N(
                    G3OP_MTX_STORE,
                    &idxMtxDest,
                    G3OP_MTX_STORE_NPARAMS
                );
            }
        }
    }

    rs->c += cmdLen;
}

void NNSi_G3dFuncSbc_NODEMIX (NNSG3dRS * rs, u32) {
    fx64 w = 0;
    const NNSG3dResEvpMtx * evpMtx =
        (const NNSG3dResEvpMtx *)((u8 *)rs->pRenderObj->resMdl +
                                  rs->pRenderObj->resMdl->ofsEvpMtx);
    u32 numMtx = *(rs->c + 2);
    u8 * p = rs->c + 3;

    NNS_G3D_ASSERT(numMtx >= 2);

#if (NNS_G3D_USE_EVPCACHE)
    {
        u32 i;
        struct {
            MtxFx43 M;
            MtxFx33 N;
        } sum;
        MtxFx44 * pX;
        MtxFx33 * pY;

        MI_CpuClearFast(&sum, sizeof(sum));
        NNS_G3dGeFlushBuffer();

        G3_MtxMode(GX_MTXMODE_PROJECTION);
        G3_StoreMtx(1);
        G3_Identity();
        G3_MtxMode(GX_MTXMODE_POSITION_VECTOR);

        for (i = 0; i < numMtx; ++i) {
            u32 idxJnt = *(p + 1);
            BOOL evpCached = NNSi_G3dBitVecCheck(&rs->isEvpCached[0], idxJnt);

            pX = &NNS_G3dRSOnGlb.evpCache[idxJnt].M;
            if (!evpCached) {
                NNSi_G3dBitVecSet(&rs->isEvpCached[0], idxJnt);

                G3_RestoreMtx(*p);
                G3_MtxMode(GX_MTXMODE_POSITION);
                G3_MultMtx43(&evpMtx[idxJnt].invM);
            }

            if (i != 0) {
                sum.N.m[0][0] += (w * pY->m[0][0]) >> FX32_SHIFT;
                sum.N.m[0][1] += (w * pY->m[0][1]) >> FX32_SHIFT;
                sum.N.m[0][2] += (w * pY->m[0][2]) >> FX32_SHIFT;

                sum.N.m[1][0] += (w * pY->m[1][0]) >> FX32_SHIFT;
                sum.N.m[1][1] += (w * pY->m[1][1]) >> FX32_SHIFT;
                sum.N.m[1][2] += (w * pY->m[1][2]) >> FX32_SHIFT;

                sum.N.m[2][0] += (w * pY->m[2][0]) >> FX32_SHIFT;
                sum.N.m[2][1] += (w * pY->m[2][1]) >> FX32_SHIFT;
                sum.N.m[2][2] += (w * pY->m[2][2]) >> FX32_SHIFT;
            }

            if (!evpCached) {
                while (G3X_GetClipMtx(pX)) {
                    ;
                }
                G3_MtxMode(GX_MTXMODE_POSITION_VECTOR);
                G3_MultMtx33(&evpMtx[idxJnt].invN);
            }

            w = *(p + 2) << 4;

            sum.M.m[0][0] += (w * pX->m[0][0]) >> FX32_SHIFT;
            sum.M.m[0][1] += (w * pX->m[0][1]) >> FX32_SHIFT;
            sum.M.m[0][2] += (w * pX->m[0][2]) >> FX32_SHIFT;

            sum.M.m[1][0] += (w * pX->m[1][0]) >> FX32_SHIFT;
            sum.M.m[1][1] += (w * pX->m[1][1]) >> FX32_SHIFT;
            sum.M.m[1][2] += (w * pX->m[1][2]) >> FX32_SHIFT;

            sum.M.m[2][0] += (w * pX->m[2][0]) >> FX32_SHIFT;
            sum.M.m[2][1] += (w * pX->m[2][1]) >> FX32_SHIFT;
            sum.M.m[2][2] += (w * pX->m[2][2]) >> FX32_SHIFT;

            sum.M.m[3][0] += (w * pX->m[3][0]) >> FX32_SHIFT;
            sum.M.m[3][1] += (w * pX->m[3][1]) >> FX32_SHIFT;
            sum.M.m[3][2] += (w * pX->m[3][2]) >> FX32_SHIFT;

            p += 3;
            pY = &NNS_G3dRSOnGlb.evpCache[idxJnt].N;

            if (!evpCached) {
                while (G3X_GetVectorMtx(pY)) {
                    ;
                }
            }
        }
        sum.N.m[0][0] += (w * pY->m[0][0]) >> FX32_SHIFT;
        sum.N.m[0][1] += (w * pY->m[0][1]) >> FX32_SHIFT;
        sum.N.m[0][2] += (w * pY->m[0][2]) >> FX32_SHIFT;

        sum.N.m[1][0] += (w * pY->m[1][0]) >> FX32_SHIFT;
        sum.N.m[1][1] += (w * pY->m[1][1]) >> FX32_SHIFT;
        sum.N.m[1][2] += (w * pY->m[1][2]) >> FX32_SHIFT;

        sum.N.m[2][0] += (w * pY->m[2][0]) >> FX32_SHIFT;
        sum.N.m[2][1] += (w * pY->m[2][1]) >> FX32_SHIFT;
        sum.N.m[2][2] += (w * pY->m[2][2]) >> FX32_SHIFT;

        G3_LoadMtx43((const MtxFx43 *)&sum.N);
        G3_MtxMode(GX_MTXMODE_POSITION);
        G3_LoadMtx43(&sum.M);
        G3_MtxMode(GX_MTXMODE_PROJECTION);
        G3_RestoreMtx(1);
        G3_MtxMode(GX_MTXMODE_POSITION_VECTOR);
    }
#else
    {
        u32 i;
        struct {
            MtxFx43 M;
            MtxFx33 N;
        } sum;
        MtxFx44 X;
        MtxFx33 Y;

        MI_CpuClearFast(&sum, sizeof(sum));
        NNS_G3dGeFlushBuffer();

        G3_MtxMode(GX_MTXMODE_PROJECTION);
        G3_StoreMtx(1);
        G3_Identity();
        G3_MtxMode(GX_MTXMODE_POSITION_VECTOR);

        for (i = 0; i < numMtx; ++i) {
            u32 idxJnt = *(p + 1);

            G3_RestoreMtx(*p);
            G3_MtxMode(GX_MTXMODE_POSITION);
            G3_MultMtx43(&evpMtx[idxJnt].invM);

            if (i != 0) {
                sum.N.m[0][0] += (w * Y.m[0][0]) >> FX32_SHIFT;
                sum.N.m[0][1] += (w * Y.m[0][1]) >> FX32_SHIFT;
                sum.N.m[0][2] += (w * Y.m[0][2]) >> FX32_SHIFT;

                sum.N.m[1][0] += (w * Y.m[1][0]) >> FX32_SHIFT;
                sum.N.m[1][1] += (w * Y.m[1][1]) >> FX32_SHIFT;
                sum.N.m[1][2] += (w * Y.m[1][2]) >> FX32_SHIFT;

                sum.N.m[2][0] += (w * Y.m[2][0]) >> FX32_SHIFT;
                sum.N.m[2][1] += (w * Y.m[2][1]) >> FX32_SHIFT;
                sum.N.m[2][2] += (w * Y.m[2][2]) >> FX32_SHIFT;
            }

            while (G3X_GetClipMtx(&X)) {
                ;
            }
            G3_MtxMode(GX_MTXMODE_POSITION_VECTOR);
            G3_MultMtx33(&evpMtx[idxJnt].invN);

            w = *(p + 2) << 4;
            sum.M.m[0][0] += (w * X.m[0][0]) >> FX32_SHIFT;
            sum.M.m[0][1] += (w * X.m[0][1]) >> FX32_SHIFT;
            sum.M.m[0][2] += (w * X.m[0][2]) >> FX32_SHIFT;

            sum.M.m[1][0] += (w * X.m[1][0]) >> FX32_SHIFT;
            sum.M.m[1][1] += (w * X.m[1][1]) >> FX32_SHIFT;
            sum.M.m[1][2] += (w * X.m[1][2]) >> FX32_SHIFT;

            sum.M.m[2][0] += (w * X.m[2][0]) >> FX32_SHIFT;
            sum.M.m[2][1] += (w * X.m[2][1]) >> FX32_SHIFT;
            sum.M.m[2][2] += (w * X.m[2][2]) >> FX32_SHIFT;

            sum.M.m[3][0] += (w * X.m[3][0]) >> FX32_SHIFT;
            sum.M.m[3][1] += (w * X.m[3][1]) >> FX32_SHIFT;
            sum.M.m[3][2] += (w * X.m[3][2]) >> FX32_SHIFT;
            p += 3;

            while (G3X_GetVectorMtx(&Y)) {
                ;
            }
        }
        sum.N.m[0][0] += (w * Y.m[0][0]) >> FX32_SHIFT;
        sum.N.m[0][1] += (w * Y.m[0][1]) >> FX32_SHIFT;
        sum.N.m[0][2] += (w * Y.m[0][2]) >> FX32_SHIFT;

        sum.N.m[1][0] += (w * Y.m[1][0]) >> FX32_SHIFT;
        sum.N.m[1][1] += (w * Y.m[1][1]) >> FX32_SHIFT;
        sum.N.m[1][2] += (w * Y.m[1][2]) >> FX32_SHIFT;

        sum.N.m[2][0] += (w * Y.m[2][0]) >> FX32_SHIFT;
        sum.N.m[2][1] += (w * Y.m[2][1]) >> FX32_SHIFT;
        sum.N.m[2][2] += (w * Y.m[2][2]) >> FX32_SHIFT;

        G3_LoadMtx43((const MtxFx43 *)&sum.N);
        G3_MtxMode(GX_MTXMODE_POSITION);
        G3_LoadMtx43(&sum.M);
        G3_MtxMode(GX_MTXMODE_PROJECTION);
        G3_RestoreMtx(1);
        G3_MtxMode(GX_MTXMODE_POSITION_VECTOR);
    }
#endif
    G3_StoreMtx(*(rs->c + 1));
    rs->c += 3 + *(rs->c + 2) * 3;
}

void NNSi_G3dFuncSbc_CALLDL (NNSG3dRS * rs, u32) {
    BOOL cbFlag;
    NNSG3dSbcCallBackTiming cbTiming;

    NNS_G3D_NULL_ASSERT(rs);

    cbFlag = NNSi_G3dCallBackCheck_A(rs, NNS_G3D_SBC_CALLDL, &cbTiming);

    if (!(rs->flag & NNS_G3D_RSFLAG_OPT_NOGECMD) &&
        (!cbFlag)) {
        u32 rel_addr;
        u32 size;
        rel_addr = (u32)((*(rs->c + 1) << 0) |
                         (*(rs->c + 2) << 8) |
                         (*(rs->c + 3) << 16) |
                         (*(rs->c + 4) << 24));

        size = (u32)((*(rs->c + 5) << 0) |
                     (*(rs->c + 6) << 8) |
                     (*(rs->c + 7) << 16) |
                     (*(rs->c + 8) << 24));

        NNS_G3dGeSendDL(rs->c + rel_addr, size);
    }

    (void)NNSi_G3dCallBackCheck_C(rs, NNS_G3D_SBC_CALLDL, cbTiming);

    rs->c += 1 + sizeof(u32) + sizeof(u32);
}

void NNSi_G3dFuncSbc_POSSCALE (NNSG3dRS * rs, u32 opt) {
    VecFx32 s;
    NNS_G3D_NULL_ASSERT(rs);
    NNS_G3D_ASSERT(
        opt == NNS_G3D_SBCFLG_000 ||
        opt == NNS_G3D_SBCFLG_001
    );

    if (!(rs->flag & NNS_G3D_RSFLAG_OPT_NOGECMD) &&
        !(rs->flag & NNS_G3D_RSFLAG_OPT_SKIP_SBCDRAW)) {
        if (opt == NNS_G3D_SBCFLG_000) {
            s.x = s.y = s.z = rs->posScale;
        } else {
            s.x = s.y = s.z = rs->invPosScale;
        }
        NNS_G3dGeBufferOP_N(
            G3OP_MTX_SCALE,
            (u32 *)&s.x,
            G3OP_MTX_SCALE_NPARAMS
        );
    }

    rs->c += 1;
}

void NNSi_G3dFuncSbc_ENVMAP (NNSG3dRS * rs, u32) {
    NNS_G3D_NULL_ASSERT(rs);

    if (!(rs->flag & NNS_G3D_RSFLAG_OPT_SKIP_SBCDRAW) &&
        (rs->flag & NNS_G3D_RSFLAG_NODE_VISIBLE)) {
        BOOL cbFlag;
        NNSG3dSbcCallBackTiming cbTiming;

        if ((rs->pMatAnmResult->prmTexImage & REG_G3_TEXIMAGE_PARAM_TGEN_MASK) !=
            (GX_TEXGEN_NORMAL << REG_G3_TEXIMAGE_PARAM_TGEN_SHIFT)) {
            static u32 cmd[] = {
                G3OP_TEXIMAGE_PARAM,
                0
            };
            rs->pMatAnmResult->prmTexImage &= ~REG_G3_TEXIMAGE_PARAM_TGEN_MASK;
            rs->pMatAnmResult->prmTexImage |= GX_TEXGEN_NORMAL << REG_G3_TEXIMAGE_PARAM_TGEN_SHIFT;

            cmd[1] = rs->pMatAnmResult->prmTexImage;
            NNS_G3dGeBufferData_N(&cmd[0], 2);
        }

        NNS_G3dGeMtxMode(GX_MTXMODE_TEXTURE);

        cbFlag = NNSi_G3dCallBackCheck_A(rs, NNS_G3D_SBC_ENVMAP, &cbTiming);
        if (!cbFlag) {
            s32 width, height;
            width = (s32)rs->pMatAnmResult->origWidth;
            height = (s32)rs->pMatAnmResult->origHeight;

            {
                NNS_G3dGeScale(width << (FX32_SHIFT + 3), -height << (FX32_SHIFT + 3), FX32_ONE << 4);
                NNS_G3dGeTexCoord(width << (FX32_SHIFT - 1), height << (FX32_SHIFT - 1));
            }
        }

        cbFlag = NNSi_G3dCallBackCheck_B(rs, NNS_G3D_SBC_ENVMAP, &cbTiming);
        if (!cbFlag) {
            u32 idxMat = *(rs->c + 1);
            const NNSG3dResMatData * mat =
                NNS_G3dGetMatDataByIdx(rs->pResMat, idxMat);

            if (mat->flag & NNS_G3D_MATFLAG_EFFECTMTX) {
                const MtxFx44 * effect_mtx;
                const u8 * p = (const u8 *)mat + sizeof(NNSG3dResMatData);

                if (!(mat->flag & NNS_G3D_MATFLAG_TEXMTX_SCALEONE)) {
                    p += sizeof(fx32) + sizeof(fx32);
                }

                if (!(mat->flag & NNS_G3D_MATFLAG_TEXMTX_ROTZERO)) {
                    p += sizeof(fx16) + sizeof(fx16);
                }

                if (!(mat->flag & NNS_G3D_MATFLAG_TEXMTX_TRANSZERO)) {
                    p += sizeof(fx32) + sizeof(fx32);
                }

                effect_mtx = (const MtxFx44 *)p;
                NNS_G3dGeMultMtx44(effect_mtx);
            }
        }

        cbFlag = NNSi_G3dCallBackCheck_C(rs, NNS_G3D_SBC_ENVMAP, cbTiming);
        if (!cbFlag) {
            MtxFx33 n;
            NNS_G3dGeMtxMode(GX_MTXMODE_POSITION_VECTOR);
            NNS_G3dGetCurrentMtx(NULL, &n);
            NNS_G3dGeMtxMode(GX_MTXMODE_TEXTURE);

            if (NNS_G3dGlb.flag & NNS_G3D_GLB_FLAG_FLUSH_WVP) {
                NNS_G3dGeMultMtx33((const MtxFx33 *)NNS_G3dGlbGetCameraMtx());
                NNS_G3dGeMultMtx33(NNS_G3dGlbGetBaseRot());
                NNS_G3dGeMultMtx33(&n);
            } else if (NNS_G3dGlb.flag & NNS_G3D_GLB_FLAG_FLUSH_VP) {
                NNS_G3dGeMultMtx33((const MtxFx33 *)NNS_G3dGlbGetCameraMtx());
                NNS_G3dGeMultMtx33(&n);
            } else {
                NNS_G3dGeMultMtx33(&n);
            }
        }

        NNS_G3dGeMtxMode(GX_MTXMODE_POSITION_VECTOR);
    }
    rs->c += 3;
}

void NNSi_G3dFuncSbc_PRJMAP (NNSG3dRS * rs, u32) {
    NNS_G3D_NULL_ASSERT(rs);

    if (!(rs->flag & NNS_G3D_RSFLAG_OPT_SKIP_SBCDRAW) &&
        (rs->flag & NNS_G3D_RSFLAG_NODE_VISIBLE)) {
        BOOL cbFlag;
        NNSG3dSbcCallBackTiming cbTiming;

        MtxFx43 m;
        NNS_G3dGetCurrentMtx(&m, NULL);
        NNS_G3dGeStoreMtx(NNS_G3D_MTXSTACK_SYS);

        if ((rs->pMatAnmResult->prmTexImage & REG_G3_TEXIMAGE_PARAM_TGEN_MASK) !=
            (GX_TEXGEN_VERTEX << REG_G3_TEXIMAGE_PARAM_TGEN_SHIFT)) {
            static u32 cmd[] = {
                G3OP_TEXIMAGE_PARAM,
                0
            };
            rs->pMatAnmResult->prmTexImage &= ~REG_G3_TEXIMAGE_PARAM_TGEN_MASK;
            rs->pMatAnmResult->prmTexImage |= GX_TEXGEN_VERTEX << REG_G3_TEXIMAGE_PARAM_TGEN_SHIFT;

            cmd[1] = rs->pMatAnmResult->prmTexImage;
            NNS_G3dGeBufferData_N(&cmd[0], 2);
        }

        cbFlag = NNSi_G3dCallBackCheck_A(rs, NNS_G3D_SBC_PRJMAP, &cbTiming);
        if (!cbFlag) {
            s32 width, height;
            width = (s32)rs->pMatAnmResult->origWidth;
            height = (s32)rs->pMatAnmResult->origHeight;

            {
                static MtxFx44 mtx = {
                    0, 0, 0, 0,
                    0, 0, 0, 0,
                    0, 0, FX32_ONE << 4, 0,
                        0, 0, 0, FX32_ONE << 4
                };

                mtx._00 = width << (FX32_SHIFT + 3);
                mtx._11 = -height << (FX32_SHIFT + 3);
                mtx._30 = width << (FX32_SHIFT + 3);
                mtx._31 = height << (FX32_SHIFT + 3);

                NNS_G3dGeLoadMtx44(&mtx);
            }
        }

        cbFlag = NNSi_G3dCallBackCheck_B(rs, NNS_G3D_SBC_PRJMAP, &cbTiming);
        if (!cbFlag) {
            u32 idxMat = *(rs->c + 1);
            const NNSG3dResMatData * mat =
                NNS_G3dGetMatDataByIdx(rs->pResMat, idxMat);

            if (mat->flag & NNS_G3D_MATFLAG_EFFECTMTX) {
                const MtxFx44 * effect_mtx;
                const u8 * p = (const u8 *)mat + sizeof(NNSG3dResMatData);

                if (!(mat->flag & NNS_G3D_MATFLAG_TEXMTX_SCALEONE)) {
                    p += sizeof(fx32) + sizeof(fx32);
                }

                if (!(mat->flag & NNS_G3D_MATFLAG_TEXMTX_ROTZERO)) {
                    p += sizeof(fx16) + sizeof(fx16);
                }

                if (!(mat->flag & NNS_G3D_MATFLAG_TEXMTX_TRANSZERO)) {
                    p += sizeof(fx32) + sizeof(fx32);
                }

                effect_mtx = (const MtxFx44 *)p;
                NNS_G3dGeMultMtx44(effect_mtx);
            }
        }

        cbFlag = NNSi_G3dCallBackCheck_C(rs, NNS_G3D_SBC_PRJMAP, cbTiming);
        if (!cbFlag) {
            MtxFx44 tex_mtx;

            if (NNS_G3dGlb.flag & NNS_G3D_GLB_FLAG_FLUSH_WVP) {
                NNS_G3dGeTranslateVec(NNS_G3dGlbGetBaseTrans());
                NNS_G3dGeMultMtx33(NNS_G3dGlbGetBaseRot());
                NNS_G3dGeMultMtx43(&m);
            } else if (NNS_G3dGlb.flag & NNS_G3D_GLB_FLAG_FLUSH_VP) {
                NNS_G3dGeMultMtx43(&m);
            } else {
                NNS_G3dGeMultMtx43(NNS_G3dGlbGetInvV());
                NNS_G3dGeMultMtx43(&m);
            }

            {
                NNS_G3dGeFlushBuffer();

                G3_MtxMode(GX_MTXMODE_PROJECTION);
                G3_PushMtx();
                G3_Identity();

                while (G3X_GetClipMtx(&tex_mtx)) {
                    ;
                }

                G3_PopMtx(1);
                G3_MtxMode(GX_MTXMODE_TEXTURE);
            }

            NNS_G3dGeLoadMtx44(&tex_mtx);
            NNS_G3dGeTexCoord(tex_mtx._30 >> 4, tex_mtx._31 >> 4);
        }

        NNS_G3dGeMtxMode(GX_MTXMODE_POSITION_VECTOR);
        NNS_G3dGeRestoreMtx(NNS_G3D_MTXSTACK_SYS);
    }
    rs->c += 3;
}

NNSG3dRS * NNS_G3dRS = NULL;

NNSG3dRSOnGlb NNS_G3dRSOnGlb;

NNSG3dFuncSbc NNS_G3dFuncSbcTable[NNS_G3D_SBC_COMMAND_NUM] = {
    &NNSi_G3dFuncSbc_NOP,
    &NNSi_G3dFuncSbc_RET,
    &NNSi_G3dFuncSbc_NODE,
    &NNSi_G3dFuncSbc_MTX,
    &NNSi_G3dFuncSbc_MAT,
    &NNSi_G3dFuncSbc_SHP,
    &NNSi_G3dFuncSbc_NODEDESC,
    &NNSi_G3dFuncSbc_BB,

    &NNSi_G3dFuncSbc_BBY,
    &NNSi_G3dFuncSbc_NODEMIX,
    &NNSi_G3dFuncSbc_CALLDL,
    &NNSi_G3dFuncSbc_POSSCALE,
    &NNSi_G3dFuncSbc_ENVMAP,
    &NNSi_G3dFuncSbc_PRJMAP
};

NNSG3dFuncSbc_ShpInternal NNS_G3dFuncSbcShpTable[NNS_G3D_SIZE_SHP_VTBL_NUM] = {
    &NNSi_G3dFuncSbc_SHP_InternalDefault
};

NNSG3dFuncSbc_MatInternal NNS_G3dFuncSbcMatTable[NNS_G3D_SIZE_MAT_VTBL_NUM] = {
    &NNSi_G3dFuncSbc_MAT_InternalDefault
};
