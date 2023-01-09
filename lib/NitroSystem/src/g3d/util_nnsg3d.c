#include <nnsys/g3d/util.h>
#include <nnsys/g3d/gecom.h>
#include <nnsys/g3d/binres/res_struct_accessor.h>
#include <nnsys/g3d/anm.h>
#include <nnsys/g3d/glbstate.h>

void NNS_G3dGetCurrentMtx (MtxFx43 * m, MtxFx33 * n) {
    NNS_G3dGeFlushBuffer();

    G3_MtxMode(GX_MTXMODE_PROJECTION);
    G3_PushMtx();
    G3_Identity();

    if (m) {
        MtxFx44 tmp;
        while (G3X_GetClipMtx(&tmp)) {
            ;
        }
        MTX_Copy44To43(&tmp, m);
    }

    if (n) {
        while (G3X_GetVectorMtx(n)) {
            ;
        }
    }

    G3_PopMtx(1);
    G3_MtxMode(GX_MTXMODE_POSITION_VECTOR);
}

BOOL NNS_G3dGetResultMtx (const NNSG3dRenderObj * pRenderObj, MtxFx43 * pos, MtxFx33 * nrm, u32 nodeID) {
    const NNSG3dResNodeData * nd;
    u32 stackID;

    NNS_G3D_NULL_ASSERT(pRenderObj);

    nd = NNS_G3dGetNodeDataByIdx(&pRenderObj->resMdl->nodeInfo, nodeID);
    stackID = (nd->flag & (u32)NNS_G3D_SRTFLAG_IDXMTXSTACK_MASK)
              >> NNS_G3D_SRTFLAG_IDXMTXSTACK_SHIFT;

    if (stackID != 31) {
        NNS_G3dGeRestoreMtx((int)stackID);
        if (pos || nrm) {
            NNS_G3dGetCurrentMtx(pos, nrm);
        }
        return TRUE;
    } else {
        return FALSE;
    }
}

BOOL NNS_G3dSetResultMtx (const NNSG3dRenderObj * pRenderObj, const MtxFx43 * pos, const MtxFx33 * nrm, u32 nodeID) {
    const NNSG3dResNodeData * nd;
    u32 stackID;

    NNS_G3D_NULL_ASSERT(pRenderObj);
    NNS_G3D_NULL_ASSERT(pos);

    nd = NNS_G3dGetNodeDataByIdx(&pRenderObj->resMdl->nodeInfo, nodeID);
    stackID = (nd->flag & (u32)NNS_G3D_SRTFLAG_IDXMTXSTACK_MASK)
              >> NNS_G3D_SRTFLAG_IDXMTXSTACK_SHIFT;

    if (stackID != 31) {
        NNS_G3dGeFlushBuffer();

        G3_MtxMode(GX_MTXMODE_POSITION_VECTOR);

        if (nrm) {
            reg_G3X_GXFIFO = G3OP_MTX_LOAD_4x3;
            MI_CpuSend32(&nrm->_00, &reg_G3X_GXFIFO, sizeof(*nrm));
            reg_G3X_GXFIFO = 0;
            reg_G3X_GXFIFO = 0;
            reg_G3X_GXFIFO = 0;

            G3_MtxMode(GX_MTXMODE_POSITION);
            G3_LoadMtx43(pos);
            G3_MtxMode(GX_MTXMODE_POSITION_VECTOR);
        } else {
            G3_LoadMtx43(pos);
        }

        G3_StoreMtx((int)stackID);

        return TRUE;
    } else {
        return FALSE;
    }
}

void NNS_G3dInit (void) {
    G3X_Init();

    NNS_G3dGlbInit();

    G3X_SetFifoIntrCond(GX_FIFOINTR_COND_EMPTY);
}

const s8 NNS_G3dSbcCmdLen[256] = {
    1, 1, 3, 2, 2, 2, 4, 2, 2, 0, 9, 1, 3, 3, -1, -1,
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,

    -1, -1, -1, -1, 2, -1, 5, 3, 3, 0, -1, 1, -1, -1, -1, -1,
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,

    -1, -1, -1, -1, 2, -1, 5, 3, 3, -1, -1, -1, -1, -1, -1, -1,
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,

    -1, -1, -1, -1, -1, -1, 6, 4, 4, -1, -1, -1, -1, -1, -1, -1,
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,

    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,

    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,

    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,

    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1
};

int NNS_G3dGetSbcCmdLen (const u8 * c) {
    int cmdLen;
    NNS_G3D_NULL_ASSERT(c);

    cmdLen = NNS_G3dSbcCmdLen[*c];

    if (cmdLen < 0) {
        return -1;
    } else if (cmdLen == 0) {
        if (*c == NNS_G3D_SBC_NODEMIX) {
            return *(c + 2) * 3 + 3;
        } else {
            return -1;
        }
    } else {
        return cmdLen;
    }
}

const u8 * NNS_G3dSearchSbcCmd (const u8 * c, u8 cmd) {
    int x;
    NNS_G3D_NULL_ASSERT(c);
    NNS_G3D_ASSERTMSG(NNS_G3dSbcCmdLen[cmd] >= 0, "unknown command");

    cmd &= NNS_G3D_SBCCMD_MASK;
    while ((x = (*c & NNS_G3D_SBCCMD_MASK)) != NNS_G3D_SBC_RET) {
        if (cmd == x) {
            return c;
        } else {
            int cmdLen = NNS_G3dGetSbcCmdLen(c);
            NNS_G3D_ASSERTMSG(cmdLen > 0, "unknown command");
            c += cmdLen;
        }
    }
    return NULL;
}

const u8 * NNS_G3dGetParentNodeID (int * parentID, const u8 * sbc, u32 nodeID) {
    const u8 * tmp = sbc;

    NNS_G3D_NULL_ASSERT(parentID);
    NNS_G3D_NULL_ASSERT(sbc);
    NNS_G3D_ASSERTMSG(
        nodeID < NNS_G3D_SIZE_JNT_MAX,
        "specified nodeID is illegal"
    );

    while ((tmp = NNS_G3dSearchSbcCmd(tmp, NNS_G3D_SBC_NODEDESC)) != 0) {
        if (*(tmp + 1) == nodeID) {
            *parentID = *(tmp + 2);
            return tmp;
        }

        {
            int cmdLen = NNS_G3dGetSbcCmdLen(tmp);
            NNS_G3D_ASSERTMSG(cmdLen > 0, "unknown command");
            tmp += cmdLen;
        }
    }
    return NULL;
}

int NNS_G3dGetChildNodeIDList (u8 * idList, const u8 * sbc, u32 nodeID) {
    const u8 * tmp = sbc;
    int num = 0;

    NNS_G3D_NULL_ASSERT(idList);
    NNS_G3D_ASSERTMSG(
        nodeID < NNS_G3D_SIZE_JNT_MAX,
        "specified nodeID is illegal"
    );

    while ((tmp = NNS_G3dSearchSbcCmd(tmp, NNS_G3D_SBC_NODEDESC)) != 0) {
        if (*(tmp + 2) == nodeID && *(tmp + 2) != *(tmp + 1)) {
            *(idList + num++) = *(tmp + 1);
        }

        {
            int cmdLen = NNS_G3dGetSbcCmdLen(tmp);
            NNS_G3D_ASSERTMSG(cmdLen > 0, "unknown command");
            tmp += cmdLen;
        }
    }

    return num;
}

BOOL NNS_G3dResDefaultSetup (void * pResData) {
    u8 * binFile = (u8 *)pResData;
    BOOL failed = FALSE;

    NNS_G3D_NULL_ASSERT(pResData);

    switch (*(u32 *)&binFile[0]) {
    case NNS_G3D_SIGNATURE_NSBTX:
    case NNS_G3D_SIGNATURE_NSBMD:
    {
        NNSG3dResTex * tex;
        u32 szTex, szTex4x4, szPltt;
        BOOL sucTex = TRUE;
        BOOL sucTex4x4 = TRUE;
        BOOL sucPltt = TRUE;
        NNSG3dTexKey keyTex;
        NNSG3dTexKey keyTex4x4;
        NNSG3dPlttKey keyPltt;

        tex = NNS_G3dGetTex((NNSG3dResFileHeader *)pResData);
        if (tex) {
            szTex = NNS_G3dTexGetRequiredSize(tex);
            szTex4x4 = NNS_G3dTex4x4GetRequiredSize(tex);
            szPltt = NNS_G3dPlttGetRequiredSize(tex);

            if (szTex > 0) {
                keyTex = NNS_GfdAllocTexVram(szTex, FALSE, 0);
                if (keyTex == NNS_GFD_ALLOC_ERROR_TEXKEY) {
                    sucTex = FALSE;
                }
            } else {
                keyTex = 0;
            }

            if (szTex4x4 > 0) {
                keyTex4x4 = NNS_GfdAllocTexVram(szTex4x4, TRUE, 0);
                if (keyTex4x4 == NNS_GFD_ALLOC_ERROR_TEXKEY) {
                    sucTex4x4 = FALSE;
                }
            } else {
                keyTex4x4 = 0;
            }

            if (szPltt > 0) {
                keyPltt =
                    NNS_GfdAllocPlttVram(
                        szPltt,
                        tex->tex4x4Info.flag & NNS_G3D_RESPLTT_USEPLTT4,
                        0
                    );
                if (keyPltt == NNS_GFD_ALLOC_ERROR_PLTTKEY) {
                    sucPltt = FALSE;
                }
            } else {
                keyPltt = 0;
            }

            if (!sucTex || !sucTex4x4 || !sucPltt) {
                int status;

                if (sucPltt) {
                    status = NNS_GfdFreePlttVram(keyPltt);
                    NNS_G3D_ASSERTMSG(!status, "NNS_GfdFreePlttVram failed");
                }

                if (sucTex4x4) {
                    status = NNS_GfdFreeTexVram(keyTex4x4);
                    NNS_G3D_ASSERTMSG(!status, "NNS_GfdFreeTexVram failed");
                }

                if (sucTex) {
                    status = NNS_GfdFreeTexVram(keyTex);
                    NNS_G3D_ASSERTMSG(!status, "NNS_GfdFreeTexVram failed");
                }

                return FALSE;
            }

            NNS_G3dTexSetTexKey(tex, keyTex, keyTex4x4);
            NNS_G3dPlttSetPlttKey(tex, keyPltt);

            NNS_G3dTexLoad(tex, TRUE);
            NNS_G3dPlttLoad(tex, TRUE);
        }

        if (*(u32 *)&binFile[0] == NNS_G3D_SIGNATURE_NSBMD) {
            NNSG3dResMdlSet * mdlSet = NNS_G3dGetMdlSet((NNSG3dResFileHeader *)pResData);
            NNS_G3D_NULL_ASSERT(mdlSet);

            if (tex) {
                (void)NNS_G3dBindMdlSet(mdlSet, tex);
            }
        }
    }
        return TRUE;
        break;
    case NNS_G3D_SIGNATURE_NSBCA:
    case NNS_G3D_SIGNATURE_NSBVA:
    case NNS_G3D_SIGNATURE_NSBMA:
    case NNS_G3D_SIGNATURE_NSBTP:
    case NNS_G3D_SIGNATURE_NSBTA:
        return TRUE;
        break;
    default:
        NNS_G3D_ASSERTMSG(
            1 == 0, "unknown file signature: '%c%c%c%c' found.\n",
            binFile[0], binFile[1], binFile[2], binFile[3]
        );
        return FALSE;
        break;
    }
    ;
}

void NNS_G3dResDefaultRelease (void * pResData) {
    u8 * binFile = (u8 *)pResData;
    BOOL failed = FALSE;

    NNS_G3D_NULL_ASSERT(pResData);

    switch (*(u32 *)&binFile[0]) {
    case NNS_G3D_SIGNATURE_NSBMD:
    {
        NNSG3dResTex * tex;
        NNSG3dResMdlSet * mdlSet = NNS_G3dGetMdlSet(pResData);
        NNS_G3D_NULL_ASSERT(mdlSet);
        tex = NNS_G3dGetTex((NNSG3dResFileHeader *)pResData);

        if (tex) {
            NNS_G3dReleaseMdlSet(mdlSet);
        }
    }

    case NNS_G3D_SIGNATURE_NSBTX:
    {
        NNSG3dResTex * tex;
        NNSG3dPlttKey plttKey;
        NNSG3dTexKey texKey, tex4x4Key;
        int status;
        tex = NNS_G3dGetTex((NNSG3dResFileHeader *)pResData);

        if (tex) {
            plttKey = NNS_G3dPlttReleasePlttKey(tex);
            NNS_G3dTexReleaseTexKey(tex, &texKey, &tex4x4Key);

            if (plttKey > 0) {
                status = NNS_GfdFreePlttVram(plttKey);
                NNS_G3D_ASSERTMSG(!status, "NNS_GfdFreePlttVram failed");
            }

            if (tex4x4Key > 0) {
                status = NNS_GfdFreeTexVram(tex4x4Key);
                NNS_G3D_ASSERTMSG(!status, "NNS_GfdFreeTexVram failed");
            }

            if (texKey > 0) {
                status = NNS_GfdFreeTexVram(texKey);
                NNS_G3D_ASSERTMSG(!status, "NNS_GfdFreeTexVram failed");
            }
        }
    }
    break;
    case NNS_G3D_SIGNATURE_NSBCA:
    case NNS_G3D_SIGNATURE_NSBVA:
    case NNS_G3D_SIGNATURE_NSBMA:
    case NNS_G3D_SIGNATURE_NSBTP:
    case NNS_G3D_SIGNATURE_NSBTA:
        break;
    default:
        NNS_G3D_ASSERTMSG(
            1 == 0, "unknown file signature: '%c%c%c%c' found.\n",
            binFile[0], binFile[1], binFile[2], binFile[3]
        );
        break;
    }
    ;
}

int NNS_G3dLocalOriginToScrPos (int * px, int * py) {
    VecFx32 vec;
    fx32 w;
    fx64c invW;
    int x1, y1, x2, y2;
    int dx, dy;
    int rval;

    NNS_G3D_NULL_ASSERT(px);
    NNS_G3D_NULL_ASSERT(py);

    NNS_G3dGePositionTest(0, 0, 0);
    NNS_G3dGeFlushBuffer();
    while (G3X_GetPositionTestResult(&vec, &w)) {
        ;
    }

    invW = FX_InvFx64c(w);

    vec.x = (FX_Mul32x64c(vec.x, invW) + FX32_ONE) / 2;
    vec.y = (FX_Mul32x64c(vec.y, invW) + FX32_ONE) / 2;

    if (vec.x < 0 || vec.y < 0 || vec.x > FX32_ONE || vec.y > FX32_ONE) {
        rval = -1;
    } else {
        rval = 0;
    }

    NNS_G3dGlbGetViewPort(&x1, &y1, &x2, &y2);
    dx = x2 - x1;
    dy = y2 - y1;

    *px = x1 + ((vec.x * dx + FX32_HALF) >> FX32_SHIFT);
    *py = 191 - y1 - ((vec.y * dy + FX32_HALF) >> FX32_SHIFT);

    return rval;
}

int NNS_G3dWorldPosToScrPos (const VecFx32 * pWorld, int * px, int * py) {
    const MtxFx44 * proj;
    const MtxFx43 * camera;
    VecFx32 tmp;
    VecFx32 vec;
    fx32 w;
    fx64c invW;
    int x1, y1, x2, y2;
    int dx, dy;
    int rval;

    NNS_G3D_NULL_ASSERT(pWorld);
    NNS_G3D_NULL_ASSERT(px);
    NNS_G3D_NULL_ASSERT(py);

    proj = NNS_G3dGlbGetProjectionMtx();
    camera = NNS_G3dGlbGetCameraMtx();

    MTX_MultVec43(pWorld, camera, &tmp);

    w = (fx32)(((fx64)tmp.x * proj->_03 +
                (fx64)tmp.y * proj->_13 +
                (fx64)tmp.z * proj->_23) >> FX32_SHIFT);
    w += proj->_33;

    FX_InvAsync(w);

    vec.x = (fx32)(((fx64)tmp.x * proj->_00 +
                    (fx64)tmp.y * proj->_10 +
                    (fx64)tmp.z * proj->_20) >> FX32_SHIFT);
    vec.x += proj->_30;

    vec.y = (fx32)(((fx64)tmp.x * proj->_01 +
                    (fx64)tmp.y * proj->_11 +
                    (fx64)tmp.z * proj->_21) >> FX32_SHIFT);
    vec.y += proj->_31;

    invW = FX_GetInvResultFx64c();

    vec.x = (FX_Mul32x64c(vec.x, invW) + FX32_ONE) / 2;
    vec.y = (FX_Mul32x64c(vec.y, invW) + FX32_ONE) / 2;

    if (vec.x < 0 || vec.y < 0 || vec.x > FX32_ONE || vec.y > FX32_ONE) {
        rval = -1;
    } else {
        rval = 0;
    }

    NNS_G3dGlbGetViewPort(&x1, &y1, &x2, &y2);
    dx = x2 - x1;
    dy = y2 - y1;

    *px = x1 + ((vec.x * dx + FX32_HALF) >> FX32_SHIFT);
    *py = 191 - y1 - ((vec.y * dy + FX32_HALF) >> FX32_SHIFT);

    return rval;
}

int NNS_G3dScrPosToWorldLine (int px, int py, VecFx32 * pNear, VecFx32 * pFar) {
    int rval;
    int x1, y1, x2, y2;
    int dx, dy;
    fx32 x, y;
    const MtxFx44 * m;
    VecFx32 vNear, vFar;
    fx64c invWNear, invWFar;
    fx32 wNear, wFar;

    NNS_G3D_NULL_ASSERT(pNear);

    NNS_G3dGlbGetViewPort(&x1, &y1, &x2, &y2);
    dx = x2 - x1;
    dy = y2 - y1;

    x = FX_Div((px - x1) << FX32_SHIFT, dx << FX32_SHIFT);
    y = FX_Div((py + y1 - 191) << FX32_SHIFT, -dy << FX32_SHIFT);

    if (x < 0 || y < 0 || x > FX32_ONE || y > FX32_ONE) {
        rval = -1;
    } else {
        rval = 0;
    }

    x = (x - FX32_HALF) * 2;
    y = (y - FX32_HALF) * 2;

    m = NNS_G3dGlbGetInvVP();

    wNear = m->_33 + (fx32)(((fx64)x * m->_03 + (fx64)y * m->_13) >> FX32_SHIFT);
    FX_InvAsync(wNear - m->_23);

    vNear.x = m->_30 + (fx32)(((fx64)x * m->_00 + (fx64)y * m->_10) >> FX32_SHIFT);
    vNear.y = m->_31 + (fx32)(((fx64)x * m->_01 + (fx64)y * m->_11) >> FX32_SHIFT);
    vNear.z = m->_32 + (fx32)(((fx64)x * m->_02 + (fx64)y * m->_12) >> FX32_SHIFT);

    if (pFar) {
        vFar.x = vNear.x + m->_20;
        vFar.y = vNear.y + m->_21;
        vFar.z = vNear.z + m->_22;
        wFar = wNear + m->_23;
    }

    vNear.x -= m->_20;
    vNear.y -= m->_21;
    vNear.z -= m->_22;

    invWNear = FX_GetInvResultFx64c();
    if (pFar) {
        FX_InvAsync(wFar);
    }

    pNear->x = FX_Mul32x64c(vNear.x, invWNear);
    pNear->y = FX_Mul32x64c(vNear.y, invWNear);
    pNear->z = FX_Mul32x64c(vNear.z, invWNear);

    if (pFar) {
        invWFar = FX_GetInvResultFx64c();

        pFar->x = FX_Mul32x64c(vFar.x, invWFar);
        pFar->y = FX_Mul32x64c(vFar.y, invWFar);
        pFar->z = FX_Mul32x64c(vFar.z, invWFar);
    }

    return rval;
}
