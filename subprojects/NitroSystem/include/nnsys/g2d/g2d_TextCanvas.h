#ifndef G2D_TEXTAREA_H_
#define G2D_TEXTAREA_H_

#include <nnsys/g2d/g2d_Font.h>
#include <nnsys/g2d/g2d_CharCanvas.h>
#include <nnsys/g2d/g2di_AssertUtil.h>
#include <nnsys/g2d/g2di_SplitChar.h>
#include <nnsys/g2d/g2di_Char.h>

#ifdef __cplusplus
extern "C" {
#endif

#define NNS_G2D_TEXTCANVAS_ASSERT(pTxn)                           \
    NNS_G2D_ASSERTMSG(                                              \
        NNS_G2D_IS_VALID_POINTER(pTxn)                              \
        && NNS_G2D_IS_VALID_POINTER((pTxn)->pCanvas)            \
        && NNS_G2D_IS_VALID_POINTER((pTxn)->pFont)              \
        , "Illegal NNSG2dTextCanvas.")

#define NNS_G2D_CHARENCODING_ASSERT(enc)                      \
    NNS_G2D_ASSERTMSG(                                          \
        (0 <= (enc)) && ((enc) < NNS_G2D_NUM_OF_CHARENCODING)   \
        , "Illegal NNSG2dCharEncoding(=%d).", (enc))           \

typedef enum NNSG2dVerticalOrigin {
    NNS_G2D_VERTICALORIGIN_TOP      = 0x1,
    NNS_G2D_VERTICALORIGIN_MIDDLE   = 0x2,
    NNS_G2D_VERTICALORIGIN_BOTTOM   = 0x4
} NNSG2dVerticalOrigin;

typedef enum NNSG2dHorizontalOrigin {
    NNS_G2D_HORIZONTALORIGIN_LEFT   = 0x8,
    NNS_G2D_HORIZONTALORIGIN_CENTER = 0x10,
    NNS_G2D_HORIZONTALORIGIN_RIGHT  = 0x20
} NNSG2dHorizontalOrigin;

typedef enum NNSG2dVerticalAlign {
    NNS_G2D_VERTICALALIGN_TOP       = 0x40,
    NNS_G2D_VERTICALALIGN_MIDDLE    = 0x80,
    NNS_G2D_VERTICALALIGN_BOTTOM    = 0x100
} NNSG2dVerticalAlign;

typedef enum NNSG2dHorizontalAlign {
    NNS_G2D_HORIZONTALALIGN_LEFT    = 0x200,
    NNS_G2D_HORIZONTALALIGN_CENTER  = 0x400,
    NNS_G2D_HORIZONTALALIGN_RIGHT   = 0x800
} NNSG2dHorizontalAlign;

typedef struct NNSG2dTextCanvas {
    const NNSG2dCharCanvas * pCanvas;
    const NNSG2dFont * pFont;
    int hSpace;
    int vSpace;
} NNSG2dTextCanvas;

typedef struct NNSG2dTagCallbackInfo {
    NNSG2dTextCanvas txn;
    const NNSG2dChar * str;
    int x;
    int y;
    int clr;
    void * cbParam;
} NNSG2dTagCallbackInfo;

typedef void (* NNSG2dTagCallback)(u16 c, NNSG2dTagCallbackInfo * pInfo);

typedef struct NNSiG2dTextDirection {
    s8 x;
    s8 y;
} NNSiG2dTextDirection;

void NNSi_G2dTextCanvasDrawString(
    const NNSG2dTextCanvas * pTxn,
    int x,
    int y,
    int cl,
    const void * str,
    const void ** pPos
#ifdef NNS_G2D_FONT_ENABLE_DIRECTION_SUPPORT
    , NNSiG2dTextDirection d
#endif
);

void NNSi_G2dTextCanvasDrawTextAlign(
    const NNSG2dTextCanvas * pTxn,
    int x,
    int y,
    int areaWidth,
    int cl,
    u32 flags,
    const void * txt
#ifdef NNS_G2D_FONT_ENABLE_DIRECTION_SUPPORT
    , NNSiG2dTextDirection d
#endif
);

void NNSi_G2dTextCanvasDrawText(
    const NNSG2dTextCanvas * pTxn,
    int x,
    int y,
    int cl,
    u32 flags,
    const void * txt
#ifdef NNS_G2D_FONT_ENABLE_DIRECTION_SUPPORT
    , NNSiG2dTextDirection d
#endif
);

void NNSi_G2dTextCanvasDrawTextRect(
    const NNSG2dTextCanvas * pTxn,
    int x,
    int y,
    int w,
    int h,
    int cl,
    u32 flags,
    const void * txt
#ifdef NNS_G2D_FONT_ENABLE_DIRECTION_SUPPORT
    , NNSiG2dTextDirection d
#endif
);

void NNSi_G2dTextCanvasDrawTaggedText(
    const NNSG2dTextCanvas * pTxn,
    int x,
    int y,
    int cl,
    const void * txt,
    NNSG2dTagCallback cbFunc,
    void * cbParam
#ifdef NNS_G2D_FONT_ENABLE_DIRECTION_SUPPORT
    , NNSiG2dTextDirection d
#endif
);

NNS_G2D_INLINE void NNS_G2dTextCanvasInit (
    NNSG2dTextCanvas * pTxn,
    const NNSG2dCharCanvas * pCC,
    const NNSG2dFont * pFont,
    int hSpace,
    int vSpace
)
{
    NNS_G2D_POINTER_ASSERT(pTxn);
    NNS_G2D_CHARCANVAS_ASSERT(pCC);
    NNS_G2D_FONT_ASSERT(pFont);

    pTxn->pCanvas = pCC;
    pTxn->pFont = pFont;
    pTxn->hSpace = hSpace;
    pTxn->vSpace = vSpace;
}

#define NNS_G2dTextCanvasInit1Byte NNS_G2dTextCanvasInit
#define NNS_G2dTextCanvasInitUTF8 NNS_G2dTextCanvasInit
#define NNS_G2dTextCanvasInitUTF16 NNS_G2dTextCanvasInit
#define NNS_G2dTextCanvasInitShiftJIS NNS_G2dTextCanvasInit

NNS_G2D_INLINE const NNSG2dCharCanvas * NNS_G2dTextCanvasGetCharCanvas (
    const NNSG2dTextCanvas * pTxn
)
{
    NNS_G2D_TEXTCANVAS_ASSERT(pTxn);
    return pTxn->pCanvas;
}

NNS_G2D_INLINE const NNSG2dFont * NNS_G2dTextCanvasGetFont (const NNSG2dTextCanvas * pTxn)
{
    NNS_G2D_TEXTCANVAS_ASSERT(pTxn);
    return pTxn->pFont;
}

NNS_G2D_INLINE int NNS_G2dTextCanvasGetHSpace (const NNSG2dTextCanvas * pTxn)
{
    NNS_G2D_TEXTCANVAS_ASSERT(pTxn);
    return pTxn->hSpace;
}

NNS_G2D_INLINE int NNS_G2dTextCanvasGetVSpace (const NNSG2dTextCanvas * pTxn)
{
    NNS_G2D_TEXTCANVAS_ASSERT(pTxn);
    return pTxn->vSpace;
}

NNS_G2D_INLINE void NNS_G2dTextCanvasSetCharCanvas (
    NNSG2dTextCanvas * pTxn,
    const NNSG2dCharCanvas * pCC
)
{
    NNS_G2D_TEXTCANVAS_ASSERT(pTxn);
    NNS_G2D_CHARCANVAS_ASSERT(pCC);
    pTxn->pCanvas = pCC;
}

NNS_G2D_INLINE void NNS_G2dTextCanvasSetFont (NNSG2dTextCanvas * pTxn, const NNSG2dFont * pFont)
{
    NNS_G2D_TEXTCANVAS_ASSERT(pTxn);
    NNS_G2D_FONT_ASSERT(pFont);
    pTxn->pFont = pFont;
}

NNS_G2D_INLINE void NNS_G2dTextCanvasSetHSpace (NNSG2dTextCanvas * pTxn, int hSpace)
{
    NNS_G2D_TEXTCANVAS_ASSERT(pTxn);
    pTxn->hSpace = hSpace;
}

NNS_G2D_INLINE void NNS_G2dTextCanvasSetVSpace (NNSG2dTextCanvas * pTxn, int vSpace)
{
    NNS_G2D_TEXTCANVAS_ASSERT(pTxn);
    pTxn->vSpace = vSpace;
}

NNS_G2D_INLINE int NNS_G2dTextCanvasGetStringWidth (
    const NNSG2dTextCanvas * pTxn,
    const NNSG2dChar * str,
    const NNSG2dChar ** pPos
)
{
    return NNS_G2dFontGetStringWidth(
        pTxn->pFont,
        pTxn->hSpace,
        str,
        pPos);
}

NNS_G2D_INLINE int NNS_G2dTextCanvasGetTextHeight (
    const NNSG2dTextCanvas * pTxn,
    const NNSG2dChar * txt
)
{
    return NNS_G2dFontGetTextHeight(
        pTxn->pFont,
        pTxn->vSpace,
        txt);
}

NNS_G2D_INLINE int NNS_G2dTextCanvasGetTextWidth (
    const NNSG2dTextCanvas * pTxn,
    const NNSG2dChar * txt
)
{
    return NNS_G2dFontGetTextWidth(
        pTxn->pFont,
        pTxn->hSpace,
        txt);
}

NNS_G2D_INLINE NNSG2dTextRect NNS_G2dTextCanvasGetTextRect (
    const NNSG2dTextCanvas * pTxn,
    const NNSG2dChar * txt
)
{
    return NNS_G2dFontGetTextRect(
        pTxn->pFont,
        pTxn->hSpace,
        pTxn->vSpace,
        txt);
}

NNS_G2D_INLINE NNSiG2dTextDirection NNSi_G2dGetTextDirection (const NNSG2dFont * pFont)
{
    NNSiG2dTextDirection d = {0, 0};
    switch (NNS_G2dFontGetFlags(pFont)) {
    case (NNS_G2D_FONT_FLAG_ROT_0):
    case (NNS_G2D_FONT_FLAG_ROT_270 | NNS_G2D_FONT_FLAG_TBRL): d.x = 1; break;
    case (NNS_G2D_FONT_FLAG_ROT_90):
    case (NNS_G2D_FONT_FLAG_ROT_0 | NNS_G2D_FONT_FLAG_TBRL):   d.y = 1; break;
    case (NNS_G2D_FONT_FLAG_ROT_180):
    case (NNS_G2D_FONT_FLAG_ROT_90 | NNS_G2D_FONT_FLAG_TBRL):  d.x = -1; break;
    case (NNS_G2D_FONT_FLAG_ROT_270):
    case (NNS_G2D_FONT_FLAG_ROT_180 | NNS_G2D_FONT_FLAG_TBRL): d.y = -1; break;
    }
    return d;
}

#ifdef NNS_G2D_FONT_ENABLE_DIRECTION_SUPPORT
NNS_G2D_INLINE void NNS_G2dTextCanvasDrawString (const NNSG2dTextCanvas * pTxn, int x, int y, int cl, const NNSG2dChar * str, const NNSG2dChar ** pPos)
{
    NNSi_G2dTextCanvasDrawString(pTxn, x, y, cl, str, (const void **)pPos,
                                 NNSi_G2dGetTextDirection(NNS_G2dTextCanvasGetFont(pTxn)));
}
NNS_G2D_INLINE void NNS_G2dTextCanvasDrawText (const NNSG2dTextCanvas * pTxn, int x, int y, int cl, u32 flags, const NNSG2dChar * txt)
{
    NNSi_G2dTextCanvasDrawText(pTxn, x, y, cl, flags, txt,
                               NNSi_G2dGetTextDirection(NNS_G2dTextCanvasGetFont(pTxn)));
}
NNS_G2D_INLINE void NNS_G2dTextCanvasDrawTextRect (const NNSG2dTextCanvas * pTxn, int x, int y, int w, int h, int cl, u32 flags, const NNSG2dChar * txt)
{
    NNSi_G2dTextCanvasDrawTextRect(pTxn, x, y, w, h, cl, flags, txt,
                                   NNSi_G2dGetTextDirection(NNS_G2dTextCanvasGetFont(pTxn)));
}
NNS_G2D_INLINE void NNS_G2dTextCanvasDrawTaggedText (const NNSG2dTextCanvas * pTxn, int x, int y, int cl, const NNSG2dChar * txt, NNSG2dTagCallback cbFunc, void * cbParam)
{
    NNSi_G2dTextCanvasDrawTaggedText(pTxn, x, y, cl, txt, cbFunc, cbParam,
                                     NNSi_G2dGetTextDirection(NNS_G2dTextCanvasGetFont(pTxn)));
}
#else
NNS_G2D_INLINE void NNS_G2dTextCanvasDrawString (const NNSG2dTextCanvas * pTxn, int x, int y, int cl, const NNSG2dChar * str, const NNSG2dChar ** pPos)
{
    NNSi_G2dTextCanvasDrawString(pTxn, x, y, cl, str, (const void **)pPos);
}
NNS_G2D_INLINE void NNS_G2dTextCanvasDrawText (const NNSG2dTextCanvas * pTxn, int x, int y, int cl, u32 flags, const NNSG2dChar * txt)
{
    NNSi_G2dTextCanvasDrawText(pTxn, x, y, cl, flags, txt);
}
NNS_G2D_INLINE void NNS_G2dTextCanvasDrawTextRect (const NNSG2dTextCanvas * pTxn, int x, int y, int w, int h, int cl, u32 flags, const NNSG2dChar * txt)
{
    NNSi_G2dTextCanvasDrawTextRect(pTxn, x, y, w, h, cl, flags, txt);
}
NNS_G2D_INLINE void NNS_G2dTextCanvasDrawTaggedText (const NNSG2dTextCanvas * pTxn, int x, int y, int cl, const NNSG2dChar * txt, NNSG2dTagCallback cbFunc, void * cbParam)
{
    NNSi_G2dTextCanvasDrawTaggedText(pTxn, x, y, cl, txt, cbFunc, cbParam);
}
#endif

#ifdef __cplusplus
}
#endif

#endif
