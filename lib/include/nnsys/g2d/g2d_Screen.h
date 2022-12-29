#ifndef NNS_G2D_SCREEN_H_
#define NNS_G2D_SCREEN_H_

#include <nitro.h>
#include <nnsys/g2d.h>
#include <nnsys/g2d/fmt/g2d_Screen_data.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef enum NNSG2dBGSelect {
    NNS_G2D_BGSELECT_MAIN0,
    NNS_G2D_BGSELECT_MAIN1,
    NNS_G2D_BGSELECT_MAIN2,
    NNS_G2D_BGSELECT_MAIN3,
    NNS_G2D_BGSELECT_SUB0,
    NNS_G2D_BGSELECT_SUB1,
    NNS_G2D_BGSELECT_SUB2,
    NNS_G2D_BGSELECT_SUB3,
    NNS_G2D_BGSELECT_NUM
} NNSG2dBGSelect;

#define NNS_G2D_BG_ASSERT(bg) SDK_MINMAX_ASSERT(bg, NNS_G2D_BGSELECT_MAIN0, NNS_G2D_BGSELECT_NUM - 1)

void NNS_G2dBGSetupEx(
    NNSG2dBGSelect bg,
    const NNSG2dScreenData * pScnData,
    const NNSG2dCharacterData * pChrData,
    const NNSG2dPaletteData * pPltData,
    const NNSG2dCharacterPosInfo * pPosInfo,
    const NNSG2dPaletteCompressInfo * pCmpInfo,
    GXBGScrBase scnBase,
    GXBGCharBase chrBase
);

void NNS_G2dBGLoadElementsEx(
    NNSG2dBGSelect bg,
    const NNSG2dScreenData * pScnData,
    const NNSG2dCharacterData * pChrData,
    const NNSG2dPaletteData * pPltData,
    const NNSG2dCharacterPosInfo * pPosInfo,
    const NNSG2dPaletteCompressInfo * pCmpInfo
);

void NNS_G2dBGLoadScreenRect(
    void * pScreenDst,
    const NNSG2dScreenData * pScnData,
    int srcX,
    int srcY,
    int dstX,
    int dstY,
    int dstW,
    int dstH,
    int width,
    int height
);

extern GXBGAreaOver NNSi_G2dBGAreaOver;

NNS_G2D_INLINE GXBGColorMode NNSi_G2dBGGetScreenColorMode (const NNSG2dScreenData * pScnData)
{
    NNS_G2D_POINTER_ASSERT(pScnData);
    return (pScnData->colorMode == NNS_G2D_SCREENCOLORMODE_16x16) ?
           GX_BG_COLORMODE_16 : GX_BG_COLORMODE_256;
}

NNS_G2D_INLINE NNSG2dScreenFormat NNSi_G2dBGGetScreenFormat (const NNSG2dScreenData * pScnData)
{
    NNS_G2D_POINTER_ASSERT(pScnData);
    return (NNSG2dScreenFormat)pScnData->screenFormat;
}

NNS_G2D_INLINE void NNS_G2dSetBGAreaOver (GXBGAreaOver areaOver)
{
    SDK_MINMAX_ASSERT(areaOver, GX_BG_AREAOVER_XLU, GX_BG_AREAOVER_REPEAT);
    NNSi_G2dBGAreaOver = areaOver;
}

NNS_G2D_INLINE GXBGAreaOver NNS_G2dGetBGAreaOver (void)
{
    return NNSi_G2dBGAreaOver;
}

NNS_G2D_INLINE void NNS_G2dBGSetup (
    NNSG2dBGSelect bg,
    const NNSG2dScreenData * pScnData,
    const NNSG2dCharacterData * pChrData,
    const NNSG2dPaletteData * pPltData,
    GXBGScrBase scnBase,
    GXBGCharBase chrBase
)
{
    NNS_G2dBGSetupEx(bg, pScnData, pChrData, pPltData, NULL, NULL, scnBase, chrBase);
}

NNS_G2D_INLINE void NNS_G2dBGLoadElements (
    NNSG2dBGSelect bg,
    const NNSG2dScreenData * pScnData,
    const NNSG2dCharacterData * pChrData,
    const NNSG2dPaletteData * pPltData
)
{
    NNS_G2dBGLoadElementsEx(bg, pScnData, pChrData, pPltData, NULL, NULL);
}

#ifdef __cplusplus
}
#endif

#endif
