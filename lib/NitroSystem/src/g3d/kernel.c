#include <nnsys/g3d/kernel.h>
#include <nnsys/g3d/anm.h>
#include <nnsys/g3d/binres/res_struct.h>
#include <nnsys/g3d/binres/res_struct_accessor.h>

u32 NNS_G3dAnmObjCalcSizeRequired (const void * pAnm, const NNSG3dResMdl * pMdl) {
    const NNSG3dResAnmHeader * hdr;
    NNS_G3D_NULL_ASSERT(pAnm);
    NNS_G3D_NULL_ASSERT(pMdl);
    if (!pAnm || !pMdl) {
        return 0;
    }

    hdr = (const NNSG3dResAnmHeader *)pAnm;
    switch (hdr->category0) {
    case 'M':
        return NNS_G3D_ANMOBJ_SIZE_MATANM(pMdl);
        break;
    case 'J':
    case 'V':
        return NNS_G3D_ANMOBJ_SIZE_JNTANM(pMdl);
        break;
    default:
        NNS_G3D_ASSERT(0);
        return 0;
        break;
    }
}

void NNS_G3dAnmObjInit (NNSG3dAnmObj * pAnmObj, void * pResAnm, const NNSG3dResMdl * pResMdl, const NNSG3dResTex * pResTex) {
    const NNSG3dResAnmHeader * hdr;
    u32 i;
    NNS_G3D_NULL_ASSERT(pAnmObj);
    NNS_G3D_NULL_ASSERT(pResAnm);
    NNS_G3D_NULL_ASSERT(pResMdl);

    NNS_G3D_ASSERT(NNS_G3dAnmFmtNum <= NNS_G3D_ANMFMT_MAX);

    pAnmObj->frame = 0;
    pAnmObj->resAnm = (void *)pResAnm;

    pAnmObj->next = NULL;
    pAnmObj->priority = 127;
    pAnmObj->ratio = FX32_ONE;
    pAnmObj->resTex = pResTex;
    pAnmObj->numMapData = 0;
    pAnmObj->funcAnm = NULL;

    hdr = (const NNSG3dResAnmHeader *)pResAnm;

    for (i = 0; i < NNS_G3dAnmFmtNum; ++i) {
        if (NNS_G3dAnmObjInitFuncArray[i].category0 == hdr->category0 &&
            NNS_G3dAnmObjInitFuncArray[i].category1 == hdr->category1) {
            if (NNS_G3dAnmObjInitFuncArray[i].func) {
                (*NNS_G3dAnmObjInitFuncArray[i].func)(pAnmObj, pResAnm, pResMdl);
            }
            break;
        }
    }
    NNS_G3D_ASSERT(i != NNS_G3dAnmFmtNum);
}

void NNS_G3dAnmObjEnableID (NNSG3dAnmObj * pAnmObj, int id) {
    NNS_G3D_NULL_ASSERT(pAnmObj);

    if (id >= 0 && id < pAnmObj->numMapData &&
        (pAnmObj->mapData[id] & NNS_G3D_ANMOBJ_MAPDATA_EXIST)) {
        pAnmObj->mapData[id] &= ~NNS_G3D_ANMOBJ_MAPDATA_DISABLED;
    }
}

void NNS_G3dAnmObjDisableID (NNSG3dAnmObj * pAnmObj, int id) {
    NNS_G3D_NULL_ASSERT(pAnmObj);

    if (id >= 0 && id < pAnmObj->numMapData &&
        (pAnmObj->mapData[id] & NNS_G3D_ANMOBJ_MAPDATA_EXIST)) {
        pAnmObj->mapData[id] |= NNS_G3D_ANMOBJ_MAPDATA_DISABLED;
    }
}

void NNS_G3dRenderObjInit (NNSG3dRenderObj * pRenderObj, NNSG3dResMdl * pResMdl) {
    NNS_G3D_NULL_ASSERT(pRenderObj);

    MI_CpuClear32(pRenderObj, sizeof(NNSG3dRenderObj));

    pRenderObj->funcBlendMat = NNS_G3dFuncBlendMatDefault;
    pRenderObj->funcBlendJnt = NNS_G3dFuncBlendJntDefault;
    pRenderObj->funcBlendVis = NNS_G3dFuncBlendVisDefault;

    pRenderObj->resMdl = pResMdl;
}

static void addLink_ (NNSG3dAnmObj * * l, NNSG3dAnmObj * item) {
#ifdef NITRO_DEBUG

    {
        NNSG3dAnmObj * p = *l;
        while (p) {
            NNS_G3D_ASSERT(p != item);
            p = p->next;
        }
    }
#endif
    if (!(*l)) {
        *l = item;
    } else if (!((*l)->next)) {
        if ((*l)->priority > item->priority) {
            NNSG3dAnmObj * p = item;
            while (p->next) {
                p = p->next;
            }
            p->next = (*l);
            *l = item;
        } else {
            (*l)->next = item;
        }
    } else {
        NNSG3dAnmObj * p = *l;
        NNSG3dAnmObj * x = (*l)->next;

        while (x) {
            if (x->priority >= item->priority) {
                NNSG3dAnmObj * pp = item;
                while (pp->next) {
                    pp = pp->next;
                }
                p->next = item;
                pp->next = x;
                return;
            }
            p = x;
            x = x->next;
        }

        p->next = item;
    }
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

void NNS_G3dRenderObjAddAnmObj (NNSG3dRenderObj * pRenderObj, NNSG3dAnmObj * pAnmObj) {
    const NNSG3dResAnmHeader * hdr;
    NNS_G3D_NULL_ASSERT(pRenderObj);
    NNS_G3D_NULL_ASSERT(pAnmObj);
    NNS_G3D_NULL_ASSERT(pAnmObj->resAnm);

    if (pAnmObj && pAnmObj->resAnm) {
        hdr = (const NNSG3dResAnmHeader *)pAnmObj->resAnm;

        switch (hdr->category0) {
        case 'M':
            updateHintVec_(&pRenderObj->hintMatAnmExist[0], pAnmObj);
            addLink_(&pRenderObj->anmMat, pAnmObj);
            break;
        case 'J':
            updateHintVec_(&pRenderObj->hintJntAnmExist[0], pAnmObj);
            addLink_(&pRenderObj->anmJnt, pAnmObj);
            break;
        case 'V':
            updateHintVec_(&pRenderObj->hintVisAnmExist[0], pAnmObj);
            addLink_(&pRenderObj->anmVis, pAnmObj);
            break;
        default:
            NNS_G3D_ASSERT(0);
            break;
        }
    }
}

static BOOL removeLink_ (NNSG3dAnmObj * * l, NNSG3dAnmObj * item) {
    NNSG3dAnmObj * p;
    NNSG3dAnmObj * pp;

    if (!*l) {
        return FALSE;
    }

    if (*l == item) {
        *l = (*l)->next;
        item->next = NULL;
        return TRUE;
    }

    p = (*l)->next;
    pp = (*l);
    while (p) {
        if (p == item) {
            pp->next = p->next;
            p->next = NULL;

            return TRUE;
        }
        pp = p;
        p = p->next;
    }
    return FALSE;
}

void NNS_G3dRenderObjRemoveAnmObj (NNSG3dRenderObj * pRenderObj, NNSG3dAnmObj * pAnmObj) {
    NNS_G3D_NULL_ASSERT(pRenderObj);
    NNS_G3D_NULL_ASSERT(pAnmObj);

    if (removeLink_(&pRenderObj->anmMat, pAnmObj) ||
        removeLink_(&pRenderObj->anmJnt, pAnmObj) ||
        removeLink_(&pRenderObj->anmVis, pAnmObj)) {
        NNS_G3dRenderObjSetFlag(pRenderObj, NNS_G3D_RENDEROBJ_FLAG_HINT_OBSOLETE);
        return;
    }

    NNS_G3D_WARNING(0, "An AnmObj was not removed in NNS_G3dRenderObjRemoveAnmObj");
}

void NNS_G3dRenderObjSetCallBack (NNSG3dRenderObj * pRenderObj, NNSG3dSbcCallBackFunc func, u8 *, u8 cmd, NNSG3dSbcCallBackTiming timing) {
    NNS_G3D_NULL_ASSERT(pRenderObj);

    pRenderObj->cbFunc = func;
    pRenderObj->cbCmd = cmd;
    pRenderObj->cbTiming = (u8)timing;
}

void NNS_G3dRenderObjResetCallBack (NNSG3dRenderObj * pRenderObj) {
    NNS_G3D_NULL_ASSERT(pRenderObj);

    pRenderObj->cbFunc = NULL;
    pRenderObj->cbCmd = 0;
    pRenderObj->cbTiming = 0;
}

void NNS_G3dRenderObjSetInitFunc (NNSG3dRenderObj * pRenderObj, NNSG3dSbcCallBackFunc func) {
    NNS_G3D_NULL_ASSERT(pRenderObj);
    pRenderObj->cbInitFunc = func;
}

u32 NNS_G3dTexGetRequiredSize (const NNSG3dResTex * pTex) {
    NNS_G3D_NULL_ASSERT(pTex);

    if (pTex) {
        return (u32)(pTex->texInfo.sizeTex << 3);
    } else {
        return 0;
    }
}

u32 NNS_G3dTex4x4GetRequiredSize (const NNSG3dResTex * pTex) {
    NNS_G3D_NULL_ASSERT(pTex);

    if (pTex) {
        return (u32)(pTex->tex4x4Info.sizeTex << 3);
    } else {
        return 0;
    }
}

void NNS_G3dTexSetTexKey (NNSG3dResTex * pTex, NNSG3dTexKey texKey, NNSG3dTexKey tex4x4Key) {
    if (texKey > 0) {
        NNS_G3D_NULL_ASSERT(pTex);
        NNS_G3D_ASSERTMSG(
            !(pTex->texInfo.flag & NNS_G3D_RESTEX_LOADED),
            "NNS_G3dTexSetTexKey: Tex already loaded."
        );
        NNS_G3D_ASSERTMSG(
            (pTex->texInfo.sizeTex << 3) <= NNS_GfdGetTexKeySize(texKey),
            "NNS_G3dTexSetTexKey: texKey size not enough, "
            "0x%05x bytes required.", pTex->texInfo.sizeTex << 3
        );
        pTex->texInfo.vramKey = texKey;
    }

    if (tex4x4Key > 0) {
        NNS_G3D_ASSERTMSG(
            !(pTex->tex4x4Info.flag & NNS_G3D_RESTEX4x4_LOADED),
            "NNS_G3dTexSetTexKey(4x4): Tex already loaded."
        );
        NNS_G3D_ASSERTMSG(
            tex4x4Key & 0x80000000,
            "NNS_G3dTexSetTexKey(4x4): texKey is not for 4x4comp textures"
        );
        NNS_G3D_ASSERTMSG(
            (pTex->tex4x4Info.sizeTex << 3) <= NNS_GfdGetTexKeySize(tex4x4Key),
            "NNS_G3dTexSetTexKey(4x4): texKey size not enough, "
            "0x%05x bytes required.", pTex->tex4x4Info.sizeTex << 3
        );
        pTex->tex4x4Info.vramKey = tex4x4Key;
    }
}

void NNS_G3dTexLoad (NNSG3dResTex * pTex, BOOL exec_begin_end) {
    NNS_G3D_NULL_ASSERT(pTex);
    NNS_G3D_WARNING(
        !(pTex->texInfo.flag & NNS_G3D_RESTEX_LOADED),
        "NNS_G3dTexLoad: texture already loaded"
    );
    NNS_G3D_WARNING(
        !(pTex->tex4x4Info.flag & NNS_G3D_RESTEX4x4_LOADED),
        "NNS_G3dTex4x4Load: texture already loaded"
    );

    if (exec_begin_end) {
        GX_BeginLoadTex();
    }

    {
        u32 sz;
        const void * pData;
        u32 from;

        sz = (u32)pTex->texInfo.sizeTex << 3;
        if (sz > 0) {
            NNS_G3D_ASSERT(pTex->texInfo.vramKey != 0);
            NNS_G3D_ASSERTMSG(
                sz <= NNS_GfdGetTexKeySize(pTex->texInfo.vramKey),
                "NNS_G3dTexLoad: texKey size not enough, "
                "0x%05x bytes required.", sz
            );

            pData = NNS_G3dGetTexData(pTex);
            from = NNS_GfdGetTexKeyAddr(pTex->texInfo.vramKey);

            GX_LoadTex(pData, from, sz);

            pTex->texInfo.flag |= NNS_G3D_RESTEX_LOADED;
        }
    }

    {
        u32 sz;
        const void * pData;
        const void * pDataPlttIdx;
        u32 from;

        sz = (u32)pTex->tex4x4Info.sizeTex << 3;

        if (sz > 0) {
            NNS_G3D_ASSERT(pTex->tex4x4Info.sizeTex != 0);
            NNS_G3D_ASSERTMSG(
                NNS_GfdGetTexKey4x4Flag(pTex->tex4x4Info.vramKey),
                "NNS_G3dTexLoad(4x4): texKey is not for 4x4comp textures"
            );
            NNS_G3D_ASSERTMSG(
                sz <= NNS_GfdGetTexKeySize(pTex->tex4x4Info.vramKey),
                "NNS_G3dTexLoad(4x4): texKey size not enough, "
                "0x%05x bytes required.", sz
            );

            pData = NNS_G3dGetTex4x4Data(pTex);
            pDataPlttIdx = NNS_G3dGetTex4x4PlttIdxData(pTex);
            from = NNS_GfdGetTexKeyAddr(pTex->tex4x4Info.vramKey);

            GX_LoadTex(pData, from, sz);
            GX_LoadTex(pDataPlttIdx, GX_COMP4x4_PLTT_IDX(from), sz >> 1);

            pTex->tex4x4Info.flag |= NNS_G3D_RESTEX4x4_LOADED;
        }
    }

    if (exec_begin_end) {
        GX_EndLoadTex();
    }
}

void NNS_G3dTexReleaseTexKey (NNSG3dResTex * pTex, NNSG3dTexKey * texKey, NNSG3dTexKey * tex4x4Key) {
    NNS_G3D_NULL_ASSERT(pTex);
    NNS_G3D_NULL_ASSERT(texKey);
    NNS_G3D_NULL_ASSERT(tex4x4Key);

    if (texKey) {
        pTex->texInfo.flag &= ~NNS_G3D_RESTEX_LOADED;
        *texKey = pTex->texInfo.vramKey;
        pTex->texInfo.vramKey = 0;
    }

    if (tex4x4Key) {
        pTex->tex4x4Info.flag &= ~NNS_G3D_RESTEX4x4_LOADED;
        *tex4x4Key = pTex->tex4x4Info.vramKey;
        pTex->tex4x4Info.vramKey = 0;
    }
}

u32 NNS_G3dPlttGetRequiredSize (const NNSG3dResTex * pTex) {
    NNS_G3D_NULL_ASSERT(pTex);

    if (pTex) {
        return (u32)(pTex->plttInfo.sizePltt << 3);
    } else {
        return 0;
    }
}

void NNS_G3dPlttSetPlttKey (NNSG3dResTex * pTex, NNSG3dPlttKey plttKey) {
    NNS_G3D_NULL_ASSERT(pTex);
    NNS_G3D_ASSERTMSG(
        !(pTex->plttInfo.flag & NNS_G3D_RESPLTT_LOADED),
        "NNS_G3dPlttSetPlttKey: Palette already loaded."
    );
    NNS_G3D_ASSERTMSG(
        !(pTex->plttInfo.sizePltt > (plttKey >> 16)),
        "NNS_G3dPlttSetPlttKey: plttKey size not enough, "
        "0x%05x bytes required.", pTex->plttInfo.sizePltt << 3
    );

    pTex->plttInfo.vramKey = plttKey;
}

void NNS_G3dPlttLoad (NNSG3dResTex * pTex, BOOL exec_begin_end) {
    NNS_G3D_NULL_ASSERT(pTex);
    NNS_G3D_WARNING(
        !(pTex->plttInfo.flag & NNS_G3D_RESPLTT_LOADED),
        "NNS_G3dPlttLoad: texture already loaded"
    );

    if (exec_begin_end) {
        GX_BeginLoadTexPltt();
    }

    {
        u32 sz;
        const void * pData;
        u32 from;

        sz = (u32)pTex->plttInfo.sizePltt << 3;
        pData = NNS_G3dGetPlttData(pTex);
        from = NNS_GfdGetTexKeyAddr(pTex->plttInfo.vramKey);

        GX_LoadTexPltt(pData, from, sz);

        pTex->plttInfo.flag |= NNS_G3D_RESPLTT_LOADED;
    }

    if (exec_begin_end) {
        GX_EndLoadTexPltt();
    }
}

NNSG3dPlttKey NNS_G3dPlttReleasePlttKey (NNSG3dResTex * pTex) {
    u32 rval;
    NNS_G3D_NULL_ASSERT(pTex);

    pTex->plttInfo.flag &= ~NNS_G3D_RESPLTT_LOADED;

    rval = pTex->plttInfo.vramKey;
    pTex->plttInfo.vramKey = 0;
    return rval;
}

static void bindMdlTex_Internal_ (NNSG3dResMat * pMat, NNSG3dResDictTexToMatIdxData * pBindData, const NNSG3dResTex * pTex, const NNSG3dResDictTexData * pTexData) {
    u8 * base = (u8 *)pMat + pBindData->offset;
    u32 vramOffset;
    u32 j;

    NNS_G3D_ASSERTMSG(
        (pTex->texInfo.vramKey != 0 || pTex->texInfo.sizeTex == 0),
        "No texture key assigned"
    );
    NNS_G3D_ASSERTMSG(
        (pTex->tex4x4Info.vramKey != 0 || pTex->tex4x4Info.sizeTex == 0),
        "No texture(4x4) key assigned"
    );

    if ((pTexData->texImageParam & REG_G3_TEXIMAGE_PARAM_TEXFMT_MASK) !=
        (GX_TEXFMT_COMP4x4 << REG_G3_TEXIMAGE_PARAM_TEXFMT_SHIFT)) {
        vramOffset = NNS_GfdGetTexKeyAddr(pTex->texInfo.vramKey)
                     >> NNS_GFD_TEXKEY_ADDR_SHIFT;
    } else {
        vramOffset = NNS_GfdGetTexKeyAddr(pTex->tex4x4Info.vramKey)
                     >> NNS_GFD_TEXKEY_ADDR_SHIFT;
    }

    for (j = 0; j < pBindData->numIdx; ++j) {
        s32 w, h;

        NNSG3dResMatData * matData = NNS_G3dGetMatDataByIdx(pMat, *(base + j));

        matData->texImageParam |= (pTexData->texImageParam + vramOffset);
        w = (s32)(((pTexData->extraParam) & NNS_G3D_TEXIMAGE_PARAMEX_ORIGW_MASK) >> NNS_G3D_TEXIMAGE_PARAMEX_ORIGW_SHIFT);
        h = (s32)(((pTexData->extraParam) & NNS_G3D_TEXIMAGE_PARAMEX_ORIGH_MASK) >> NNS_G3D_TEXIMAGE_PARAMEX_ORIGH_SHIFT);

        matData->magW = (w != matData->origWidth) ?
                        FX_Div(w << FX32_SHIFT, matData->origWidth << FX32_SHIFT) :
                        FX32_ONE;
        matData->magH = (h != matData->origHeight) ?
                        FX_Div(h << FX32_SHIFT, matData->origHeight << FX32_SHIFT) :
                        FX32_ONE;
    }

    pBindData->flag |= 1;
}

static void releaseMdlTex_Internal_ (NNSG3dResMat * pMat, NNSG3dResDictTexToMatIdxData * pData) {
    u8 * base = (u8 *)pMat + pData->offset;
    u32 j;

    for (j = 0; j < pData->numIdx; ++j) {
        NNSG3dResMatData * matData = NNS_G3dGetMatDataByIdx(pMat, *(base + j));

        matData->texImageParam &= REG_G3_TEXIMAGE_PARAM_TGEN_MASK |
                                  REG_G3_TEXIMAGE_PARAM_FT_MASK | REG_G3_TEXIMAGE_PARAM_FS_MASK |
                                  REG_G3_TEXIMAGE_PARAM_RT_MASK | REG_G3_TEXIMAGE_PARAM_RS_MASK;
        matData->magH = matData->magW = FX32_ONE;
    }

    pData->flag &= ~1;
}

BOOL NNS_G3dBindMdlTex (NNSG3dResMdl * pMdl, const NNSG3dResTex * pTex) {
    NNSG3dResMat * mat;
    NNSG3dResDict * dictTex;
    u32 i;
    BOOL result = TRUE;

    NNS_G3D_NULL_ASSERT(pMdl);
    NNS_G3D_NULL_ASSERT(pTex);

    mat = NNS_G3dGetMat(pMdl);
    dictTex = (NNSG3dResDict *)((u8 *)mat + mat->ofsDictTexToMatList);

    for (i = 0; i < dictTex->numEntry; ++i) {
        const NNSG3dResName * name = NNS_G3dGetResNameByIdx(dictTex, i);

        const NNSG3dResDictTexData * texData = NNS_G3dGetTexDataByName(pTex, name);

        if (texData) {
            NNSG3dResDictTexToMatIdxData * data =
                (NNSG3dResDictTexToMatIdxData *)NNS_G3dGetResDataByIdx(dictTex, i);

            if (!(data->flag & 1)) {
                bindMdlTex_Internal_(mat, data, pTex, texData);
            }
        } else {
            result = FALSE;
        }
    }
    return result;
}

BOOL NNS_G3dBindMdlTexEx (NNSG3dResMdl * pMdl, const NNSG3dResTex * pTex, const NNSG3dResName * pResName) {
    NNSG3dResMat * mat;
    NNSG3dResDict * dictTex;
    const NNSG3dResDictTexData * texData;
    NNSG3dResDictTexToMatIdxData * data;

    NNS_G3D_NULL_ASSERT(pMdl);
    NNS_G3D_NULL_ASSERT(pTex);
    NNS_G3D_NULL_ASSERT(pResName);

    mat = NNS_G3dGetMat(pMdl);
    dictTex = (NNSG3dResDict *)((u8 *)mat + mat->ofsDictTexToMatList);

    texData = NNS_G3dGetTexDataByName(pTex, pResName);

    if (texData) {
        data = (NNSG3dResDictTexToMatIdxData *)
               NNS_G3dGetResDataByName(dictTex, pResName);

        if (data && !(data->flag & 1)) {
            bindMdlTex_Internal_(mat, data, pTex, texData);
            return TRUE;
        }
    }
    return FALSE;
}

BOOL NNS_G3dForceBindMdlTex (NNSG3dResMdl * pMdl, const NNSG3dResTex * pTex, u32 texToMatListIdx, u32 texIdx) {
    NNSG3dResMat * mat;
    NNSG3dResDict * dictTex;
    const NNSG3dResDictTexData * texData;
    NNSG3dResDictTexToMatIdxData * data;

    NNS_G3D_NULL_ASSERT(pMdl);
    NNS_G3D_NULL_ASSERT(pTex);

    mat = NNS_G3dGetMat(pMdl);
    dictTex = (NNSG3dResDict *)((u8 *)mat + mat->ofsDictTexToMatList);

    texData = NNS_G3dGetTexDataByIdx(pTex, texIdx);

    data = (NNSG3dResDictTexToMatIdxData *)
           NNS_G3dGetResDataByIdx(dictTex, texToMatListIdx);

    if (data) {
        bindMdlTex_Internal_(mat, data, pTex, texData);
        return TRUE;
    }
    return FALSE;
}

void NNS_G3dReleaseMdlTex (NNSG3dResMdl * pMdl) {
    NNSG3dResMat * mat;
    NNSG3dResDict * dictTex;
    u32 i;

    NNS_G3D_NULL_ASSERT(pMdl);

    mat = NNS_G3dGetMat(pMdl);
    dictTex = (NNSG3dResDict *)((u8 *)mat + mat->ofsDictTexToMatList);

    for (i = 0; i < dictTex->numEntry; ++i) {
        NNSG3dResDictTexToMatIdxData * data =
            (NNSG3dResDictTexToMatIdxData *)NNS_G3dGetResDataByIdx(dictTex, i);

        if (data->flag & 1) {
            releaseMdlTex_Internal_(mat, data);
        }
    }
}

BOOL NNS_G3dReleaseMdlTexEx (NNSG3dResMdl * pMdl, const NNSG3dResName * pResName) {
    NNSG3dResMat * mat;
    NNSG3dResDict * dictTex;
    NNSG3dResDictTexToMatIdxData * data;

    NNS_G3D_NULL_ASSERT(pMdl);
    NNS_G3D_NULL_ASSERT(pResName);

    mat = NNS_G3dGetMat(pMdl);
    dictTex = (NNSG3dResDict *)((u8 *)mat + mat->ofsDictTexToMatList);
    data = (NNSG3dResDictTexToMatIdxData *)NNS_G3dGetResDataByName(dictTex, pResName);

    if (data && (data->flag & 1)) {
        releaseMdlTex_Internal_(mat, data);
        return TRUE;
    }
    return FALSE;
}

static void bindMdlPltt_Internal_ (NNSG3dResMat * pMat, NNSG3dResDictPlttToMatIdxData * pBindData, const NNSG3dResTex * pTex, const NNSG3dResDictPlttData * pPlttData) {
    u8 * base = (u8 *)pMat + pBindData->offset;
    u16 plttBase = pPlttData->offset;
    u16 vramOffset = (u16)(NNS_GfdGetTexKeyAddr(pTex->plttInfo.vramKey) >> NNS_GFD_TEXKEY_ADDR_SHIFT);
    u32 j;

    NNS_G3D_ASSERTMSG(
        (pTex->plttInfo.vramKey != 0 || pTex->plttInfo.sizePltt == 0),
        "No palette key assigned"
    );

    if (!(pPlttData->flag & 1)) {
        plttBase >>= 1;
        vramOffset >>= 1;
    }

    for (j = 0; j < pBindData->numIdx; ++j) {
        NNSG3dResMatData * matData = NNS_G3dGetMatDataByIdx(pMat, *(base + j));
        matData->texPlttBase = (u16)(plttBase + vramOffset);
    }

    pBindData->flag |= 1;
}

BOOL NNS_G3dBindMdlPltt (NNSG3dResMdl * pMdl, const NNSG3dResTex * pTex) {
    NNSG3dResMat * mat;
    NNSG3dResDict * dictPltt;
    u32 i;
    BOOL result = TRUE;

    NNS_G3D_NULL_ASSERT(pMdl);
    NNS_G3D_NULL_ASSERT(pTex);

    mat = NNS_G3dGetMat(pMdl);
    dictPltt = (NNSG3dResDict *)((u8 *)mat + mat->ofsDictPlttToMatList);

    for (i = 0; i < dictPltt->numEntry; ++i) {
        const NNSG3dResName * name = NNS_G3dGetResNameByIdx(dictPltt, i);

        const NNSG3dResDictPlttData * plttData = NNS_G3dGetPlttDataByName(pTex, name);

        if (plttData) {
            NNSG3dResDictPlttToMatIdxData * data;
            data = (NNSG3dResDictPlttToMatIdxData *)NNS_G3dGetResDataByIdx(dictPltt, i);

            if (!(data->flag & 1)) {
                bindMdlPltt_Internal_(mat, data, pTex, plttData);
            }
        } else {
            result = FALSE;
        }
    }
    return result;
}

BOOL NNS_G3dBindMdlPlttEx (NNSG3dResMdl * pMdl, const NNSG3dResTex * pTex, const NNSG3dResName * pResName) {
    NNSG3dResMat * mat;
    NNSG3dResDict * dictPltt;
    const NNSG3dResDictPlttData * plttData;
    NNSG3dResDictPlttToMatIdxData * data;

    NNS_G3D_NULL_ASSERT(pMdl);
    NNS_G3D_NULL_ASSERT(pTex);
    NNS_G3D_NULL_ASSERT(pResName);

    mat = NNS_G3dGetMat(pMdl);
    dictPltt = (NNSG3dResDict *)((u8 *)mat + mat->ofsDictPlttToMatList);

    plttData = NNS_G3dGetPlttDataByName(pTex, pResName);

    if (plttData) {
        data = (NNSG3dResDictPlttToMatIdxData *)
               NNS_G3dGetResDataByName(dictPltt, pResName);

        if (data && !(data->flag & 1)) {
            bindMdlPltt_Internal_(mat, data, pTex, plttData);
            return TRUE;
        }
    }
    return FALSE;
}

BOOL NNS_G3dForceBindMdlPltt (NNSG3dResMdl * pMdl, const NNSG3dResTex * pTex, u32 plttToMatListIdx, u32 plttIdx) {
    NNSG3dResMat * mat;
    NNSG3dResDict * dictPltt;
    const NNSG3dResDictPlttData * plttData;
    NNSG3dResDictPlttToMatIdxData * data;

    NNS_G3D_NULL_ASSERT(pMdl);
    NNS_G3D_NULL_ASSERT(pTex);

    mat = NNS_G3dGetMat(pMdl);
    dictPltt = (NNSG3dResDict *)((u8 *)mat + mat->ofsDictPlttToMatList);
    plttData = NNS_G3dGetPlttDataByIdx(pTex, plttIdx);

    data = (NNSG3dResDictPlttToMatIdxData *)
           NNS_G3dGetResDataByIdx(dictPltt, plttToMatListIdx);

    if (data && !(data->flag & 1)) {
        bindMdlPltt_Internal_(mat, data, pTex, plttData);
        return TRUE;
    }
    return FALSE;
}

void NNS_G3dReleaseMdlPltt (NNSG3dResMdl * pMdl) {
    NNSG3dResMat * mat;
    NNSG3dResDict * dictPltt;
    u32 i;

    NNS_G3D_NULL_ASSERT(pMdl);

    mat = NNS_G3dGetMat(pMdl);
    dictPltt = (NNSG3dResDict *)((u8 *)mat + mat->ofsDictPlttToMatList);
    for (i = 0; i < dictPltt->numEntry; ++i) {
        NNSG3dResDictPlttToMatIdxData * data =
            (NNSG3dResDictPlttToMatIdxData *)NNS_G3dGetResDataByIdx(dictPltt, i);

        if (data->flag & 1) {
#if 0
            u32 j;

            u8 * base = (u8 *)mat + data->offset;

            for (j = 0; j < data->numIdx; ++j) {
                NNSG3dResMatData * matData = NNS_G3dGetMatDataByIdx(mat, *(base + j));
                matData->texPlttBase = 0;
            }
#endif

            data->flag &= ~1;
        }
    }
}

BOOL NNS_G3dReleaseMdlPlttEx (NNSG3dResMdl * pMdl, const NNSG3dResName * pResName) {
    NNSG3dResMat * mat;
    NNSG3dResDict * dictPltt;
    NNSG3dResDictPlttToMatIdxData * data;

    NNS_G3D_NULL_ASSERT(pMdl);
    NNS_G3D_NULL_ASSERT(pResName);

    mat = NNS_G3dGetMat(pMdl);
    dictPltt = (NNSG3dResDict *)((u8 *)mat + mat->ofsDictPlttToMatList);
    data = (NNSG3dResDictPlttToMatIdxData *)
           NNS_G3dGetResDataByName(dictPltt, pResName);

    if (data && (data->flag & 1)) {
        data->flag &= ~1;
        return TRUE;
    }
    return FALSE;
}

BOOL NNS_G3dBindMdlSet (NNSG3dResMdlSet * pMdlSet, const NNSG3dResTex * pTex) {
    u32 i;
    BOOL result = TRUE;

    NNS_G3D_NULL_ASSERT(pMdlSet);
    NNS_G3D_NULL_ASSERT(pTex);

    for (i = 0; i < pMdlSet->dict.numEntry; ++i) {
        NNSG3dResMdl * mdl = NNS_G3dGetMdlByIdx(pMdlSet, i);
        NNS_G3D_NULL_ASSERT(mdl);

        result &= NNS_G3dBindMdlTex(mdl, pTex);
        result &= NNS_G3dBindMdlPltt(mdl, pTex);
    }
    return result;
}

void NNS_G3dReleaseMdlSet (NNSG3dResMdlSet * pMdlSet) {
    u32 i;
    NNS_G3D_NULL_ASSERT(pMdlSet);

    for (i = 0; i < pMdlSet->dict.numEntry; ++i) {
        NNSG3dResMdl * mdl = NNS_G3dGetMdlByIdx(pMdlSet, i);
        NNS_G3D_NULL_ASSERT(mdl);

        NNS_G3dReleaseMdlTex(mdl);
        NNS_G3dReleaseMdlPltt(mdl);
    }
}
