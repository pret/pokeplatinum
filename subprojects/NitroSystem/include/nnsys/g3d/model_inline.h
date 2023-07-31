#ifndef NNSG3D_MODEL_INLINE_
#define NNSG3D_MODEL_INLINE_

#ifdef __cplusplus
extern "C" {
#endif

void NNSi_G3dModifyMatFlag(NNSG3dResMdl * pMdl, BOOL isOn, NNSG3dMatFlag flag);
void NNSi_G3dModifyPolygonAttrMask(NNSG3dResMdl * pMdl, BOOL isOn, u32 mask);

NNS_G3D_INLINE void NNS_G3dMdlUseGlbDiff (NNSG3dResMdl * pMdl)
{
    NNSi_G3dModifyMatFlag(pMdl,
                          FALSE,
                          NNS_G3D_MATFLAG_DIFFUSE);
}

NNS_G3D_INLINE void NNS_G3dMdlUseGlbAmb (NNSG3dResMdl * pMdl)
{
    NNSi_G3dModifyMatFlag(pMdl,
                          FALSE,
                          NNS_G3D_MATFLAG_AMBIENT);
}

NNS_G3D_INLINE void NNS_G3dMdlUseGlbSpec (NNSG3dResMdl * pMdl)
{
    NNSi_G3dModifyMatFlag(pMdl,
                          FALSE,
                          NNS_G3D_MATFLAG_SPECULAR);
}

NNS_G3D_INLINE void NNS_G3dMdlUseGlbEmi (NNSG3dResMdl * pMdl)
{
    NNSi_G3dModifyMatFlag(pMdl,
                          FALSE,
                          NNS_G3D_MATFLAG_EMISSION);
}

NNS_G3D_INLINE void NNS_G3dMdlUseGlbLightEnableFlag (NNSG3dResMdl * pMdl)
{
    NNSi_G3dModifyPolygonAttrMask(pMdl,
                                  FALSE,
                                  REG_G3_POLYGON_ATTR_LE_MASK);
}

NNS_G3D_INLINE void NNS_G3dMdlUseGlbPolygonMode (NNSG3dResMdl * pMdl)
{
    NNSi_G3dModifyPolygonAttrMask(pMdl,
                                  FALSE,
                                  REG_G3_POLYGON_ATTR_PM_MASK);
}

NNS_G3D_INLINE void NNS_G3dMdlUseGlbCullMode (NNSG3dResMdl * pMdl)
{
    NNSi_G3dModifyPolygonAttrMask(pMdl,
                                  FALSE,
                                  REG_G3_POLYGON_ATTR_BK_MASK |
                                  REG_G3_POLYGON_ATTR_FR_MASK);
}

NNS_G3D_INLINE void NNS_G3dMdlUseGlbPolygonID (NNSG3dResMdl * pMdl)
{
    NNSi_G3dModifyPolygonAttrMask(pMdl,
                                  FALSE,
                                  REG_G3_POLYGON_ATTR_ID_MASK);
}

NNS_G3D_INLINE void NNS_G3dMdlUseGlbAlpha (NNSG3dResMdl * pMdl)
{
    NNSi_G3dModifyPolygonAttrMask(pMdl,
                                  FALSE,
                                  REG_G3_POLYGON_ATTR_ALPHA_MASK);
}

NNS_G3D_INLINE void NNS_G3dMdlUseGlbFogEnableFlag (NNSG3dResMdl * pMdl)
{
    NNSi_G3dModifyPolygonAttrMask(pMdl,
                                  FALSE,
                                  REG_G3_POLYGON_ATTR_FE_MASK);
}

NNS_G3D_INLINE void NNS_G3dMdlUseGlbDepthTestCond (NNSG3dResMdl * pMdl)
{
    NNSi_G3dModifyPolygonAttrMask(pMdl,
                                  FALSE,
                                  REG_G3_POLYGON_ATTR_DT_MASK);
}

NNS_G3D_INLINE void NNS_G3dMdlUseGlb1Dot (NNSG3dResMdl * pMdl)
{
    NNSi_G3dModifyPolygonAttrMask(pMdl,
                                  FALSE,
                                  REG_G3_POLYGON_ATTR_D1_MASK);
}

NNS_G3D_INLINE void NNS_G3dMdlUseGlbFarClip (NNSG3dResMdl * pMdl)
{
    NNSi_G3dModifyPolygonAttrMask(pMdl,
                                  FALSE,
                                  REG_G3_POLYGON_ATTR_FC_MASK);
}

NNS_G3D_INLINE void NNS_G3dMdlUseGlbXLDepthUpdate (NNSG3dResMdl * pMdl)
{
    NNSi_G3dModifyPolygonAttrMask(pMdl,
                                  FALSE,
                                  REG_G3_POLYGON_ATTR_XL_MASK);
}

NNS_G3D_INLINE void NNS_G3dMdlUseMdlDiff (NNSG3dResMdl * pMdl)
{
    NNSi_G3dModifyMatFlag(pMdl,
                          TRUE,
                          NNS_G3D_MATFLAG_DIFFUSE);
}

NNS_G3D_INLINE void NNS_G3dMdlUseMdlAmb (NNSG3dResMdl * pMdl)
{
    NNSi_G3dModifyMatFlag(pMdl,
                          TRUE,
                          NNS_G3D_MATFLAG_AMBIENT);
}

NNS_G3D_INLINE void NNS_G3dMdlUseMdlSpec (NNSG3dResMdl * pMdl)
{
    NNSi_G3dModifyMatFlag(pMdl,
                          TRUE,
                          NNS_G3D_MATFLAG_SPECULAR);
}

NNS_G3D_INLINE void NNS_G3dMdlUseMdlEmi (NNSG3dResMdl * pMdl)
{
    NNSi_G3dModifyMatFlag(pMdl,
                          TRUE,
                          NNS_G3D_MATFLAG_EMISSION);
}

NNS_G3D_INLINE void NNS_G3dMdlUseMdlLightEnableFlag (NNSG3dResMdl * pMdl)
{
    NNSi_G3dModifyPolygonAttrMask(pMdl,
                                  TRUE,
                                  REG_G3_POLYGON_ATTR_LE_MASK);
}

NNS_G3D_INLINE void NNS_G3dMdlUseMdlPolygonMode (NNSG3dResMdl * pMdl)
{
    NNSi_G3dModifyPolygonAttrMask(pMdl,
                                  TRUE,
                                  REG_G3_POLYGON_ATTR_PM_MASK);
}

NNS_G3D_INLINE void NNS_G3dMdlUseMdlCullMode (NNSG3dResMdl * pMdl)
{
    NNSi_G3dModifyPolygonAttrMask(pMdl,
                                  TRUE,
                                  REG_G3_POLYGON_ATTR_BK_MASK |
                                  REG_G3_POLYGON_ATTR_FR_MASK);
}

NNS_G3D_INLINE void NNS_G3dMdlUseMdlPolygonID (NNSG3dResMdl * pMdl)
{
    NNSi_G3dModifyPolygonAttrMask(pMdl,
                                  TRUE,
                                  REG_G3_POLYGON_ATTR_ID_MASK);
}

NNS_G3D_INLINE void NNS_G3dMdlUseMdlAlpha (NNSG3dResMdl * pMdl)
{
    NNSi_G3dModifyPolygonAttrMask(pMdl,
                                  TRUE,
                                  REG_G3_POLYGON_ATTR_ALPHA_MASK);
}

NNS_G3D_INLINE void NNS_G3dMdlUseMdlFogEnableFlag (NNSG3dResMdl * pMdl)
{
    NNSi_G3dModifyPolygonAttrMask(pMdl,
                                  TRUE,
                                  REG_G3_POLYGON_ATTR_FE_MASK);
}

NNS_G3D_INLINE void NNS_G3dMdlUseMdlDepthTestCond (NNSG3dResMdl * pMdl)
{
    NNSi_G3dModifyPolygonAttrMask(pMdl,
                                  TRUE,
                                  REG_G3_POLYGON_ATTR_DT_MASK);
}

NNS_G3D_INLINE void NNS_G3dMdlUseMdl1Dot (NNSG3dResMdl * pMdl)
{
    NNSi_G3dModifyPolygonAttrMask(pMdl,
                                  TRUE,
                                  REG_G3_POLYGON_ATTR_D1_MASK);
}

NNS_G3D_INLINE void NNS_G3dMdlUseMdlFarClip (NNSG3dResMdl * pMdl)
{
    NNSi_G3dModifyPolygonAttrMask(pMdl,
                                  TRUE,
                                  REG_G3_POLYGON_ATTR_FC_MASK);
}

NNS_G3D_INLINE void NNS_G3dMdlUseMdlXLDepthUpdate (NNSG3dResMdl * pMdl)
{
    NNSi_G3dModifyPolygonAttrMask(pMdl,
                                  TRUE,
                                  REG_G3_POLYGON_ATTR_XL_MASK);
}

#ifdef __cplusplus
}
#endif

#endif
