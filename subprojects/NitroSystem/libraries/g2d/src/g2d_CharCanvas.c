
#include <nitro.h>
#include <nnsys/g2d/g2d_CharCanvas.h>
#include <nnsys/g2d/fmt/g2d_Oam_data.h>
#include <nnsys/g2d/g2d_config.h>

#include "include/g2di_BitReader.h"

#define CHARACTER_WIDTH 8
#define CHARACTER_HEIGHT 8

#define MAX_TEXT_BG_CHEIGHT 64
#define MAX_AFFINE_BG_CHEIGHT 128
#define MAX_256x16PLTT_BG_CHEIGHT 128

#define MAX_TEXT_BG_CHARACTER 1024
#define MAX_AFFINE_BG_CHARACTER 256
#define MAX_256x16PLTT_BG_CHARACTER 1024

#define MAX_OBJ_CHARA_WIDTH 8
#define MAX_OBJ_CHARA_HEIGHT 8

#define MAX_OBJ1D_CHARACTER 8192
#define MAX_OBJ2DRECT_HEIGHT 32

typedef struct LC_INFO {
    const u8 * dst;
    const u8 * src;
    int ofs_x;
    int ofs_y;
    int width;
    int height;
    int dsrc;
    int srcBpp;
    int dstBpp;
    u32 cl;
} LC_INFO;

typedef union OBJ1DParam {
    u32 packed;
    struct {
        unsigned baseWidthShift :    8;
        unsigned baseHeightShift :   8;
    };
} OBJ1DParam;

typedef struct ObjectSize {
    u8 widthShift;
    u8 heightShift;
} ObjectSize;

static void DrawGlyphLine(const NNSG2dCharCanvas * pCC, const NNSG2dFont * pFont, int x, int y, int cl, const NNSG2dGlyph * pGlyph);
static void DrawGlyph1D(const NNSG2dCharCanvas * pCC, const NNSG2dFont * pFont, int x, int y, int cl, const NNSG2dGlyph * pGlyph);
static void ClearContinuous(const NNSG2dCharCanvas * pCC, int cl);
static void ClearLine(const NNSG2dCharCanvas * pCC, int cl);
static void ClearAreaLine(const NNSG2dCharCanvas * pCC, int cl, int x, int y, int w, int h);
static void ClearArea1D(const NNSG2dCharCanvas * pCC, int cl, int x, int y, int w, int h);

static const NNSiG2dCharCanvasVTable VTABLE_BG = {
    DrawGlyphLine,
    ClearContinuous,
    ClearAreaLine
};

static const NNSiG2dCharCanvasVTable VTABLE_OBJ1D = {
    DrawGlyph1D,
    ClearContinuous,
    ClearArea1D
};

static const NNSiG2dCharCanvasVTable VTABLE_OBJ2DRECT = {
    DrawGlyphLine,
    ClearLine,
    ClearAreaLine
};

static NNS_G2D_INLINE int GetCharacterSize (const NNSG2dCharCanvas * pCC) {
    NNS_G2D_CHARCANVAS_ASSERT(pCC);
    return CHARACTER_HEIGHT * CHARACTER_WIDTH * pCC->dstBpp / 8;
}

static NNS_G2D_INLINE u32 SpreadColor32 (const NNSG2dCharCanvas * pCC, int cl) {
    u32 val = (u32)cl;

    NNS_G2D_CHARCANVAS_ASSERT(pCC);

    if (pCC->dstBpp == 4) {
        NNS_G2D_ASSERT((cl & ~0xF) == 0);

        val = (val << 4) | val;
        val |= val << 8;
        val |= val << 16;
    } else {
        NNS_G2D_ASSERT((cl & ~0xFF) == 0);

        val = (val << 8) | val;
        val |= val << 16;
    }

    return val;
}

static NNS_G2D_INLINE const ObjectSize * GetMaxObjectSize (int w, int h) {
    const static ObjectSize objs[4][4] = {
        {{0, 0}, {1, 0}, {2, 0}, {2, 0}},
        {{0, 1}, {1, 1}, {2, 1}, {2, 1}},
        {{0, 2}, {1, 2}, {2, 2}, {3, 2}},
        {{0, 2}, {1, 2}, {2, 3}, {3, 3}},
    };

    int log_w = (w >= 8) ? 3: MATH_ILog2((unsigned long)w);
    int log_h = (h >= 8) ? 3: MATH_ILog2((unsigned long)h);

    NNS_G2D_MINMAX_ASSERT(log_w, 0, 3);
    NNS_G2D_MINMAX_ASSERT(log_h, 0, 3);

    return &objs[log_h][log_w];
}

static int ISqrt (int x) {
    u32 min = 1;
    u32 max = (u32)x;

    if (x <= 0) {
        return 0;
    }

    for (;;) {
        const u32 mid = (min + max) / 2;
        const u32 mid2 = mid * mid;

        if (mid2 < x) {
            if (mid == min) {
                break;
            }
            min = mid;
        } else {
            max = mid;
        }
    }

    return (int)min;
}

static u32 GetCharIndex1D (u32 cx, u32 cy, u32 areaWidth, u32 areaHeight, u32 objWidth, u32 objHeight) {
    const u32 fullbits = (u32)(~0);
    u32 idx = 0;

    NNS_G2D_ASSERT(cx < areaWidth);
    NNS_G2D_ASSERT(cy < areaHeight);
    NNS_G2D_MINMAX_ASSERT(objWidth, 0, 3);
    NNS_G2D_MINMAX_ASSERT(objHeight, 0, 3);

    for (;;) {
        const u32 objWidthMaskInv = fullbits << objWidth;
        const u32 objHeightMaskInv = fullbits << objHeight;
        const u32 areaAWidth = areaWidth & objWidthMaskInv;
        const u32 areaAHeight = areaHeight & objHeightMaskInv;

        if (areaAHeight <= cy) {
            idx += areaWidth * areaAHeight;

            if (areaAWidth <= cx) {
                idx += (areaHeight - areaAHeight) * areaAWidth;

                cx -= areaAWidth;
                cy -= areaAHeight;
                areaWidth -= areaAWidth;
                areaHeight -= areaAHeight;
            } else {
                cy -= areaAHeight;
                areaWidth = areaAWidth;
                areaHeight -= areaAHeight;
            }
        } else {
            const u32 objHeightMask = ~objHeightMaskInv;

            if (areaAWidth <= cx) {
                idx += (u32)(areaAWidth * areaAHeight);

                cx -= areaAWidth;
                areaWidth -= areaAWidth;
                areaHeight = areaAHeight;
            } else {
                const u32 objWidthMask = ~objWidthMaskInv;
                idx += (u32)(cy & objHeightMaskInv) * areaAWidth;
                idx += (u32)(cx & objWidthMaskInv) << objHeight;
                idx += (u32)(cy & objHeightMask) << objWidth;
                idx += (u32)(cx & objWidthMask);
                return idx;
            }
        }

        {
            const ObjectSize * pobj = GetMaxObjectSize((int)areaWidth, (int)areaHeight);

            objWidth = pobj->widthShift;
            objHeight = pobj->heightShift;
        }
    }
}

static GXOamShape OBJSizeToShape (const ObjectSize * pSize) {
    const static GXOamShape shape[4][4] = {
        {GX_OAM_SHAPE_8x8, GX_OAM_SHAPE_16x8, GX_OAM_SHAPE_32x8, (GXOamShape)NULL},
        {GX_OAM_SHAPE_8x16, GX_OAM_SHAPE_16x16, GX_OAM_SHAPE_32x16, (GXOamShape)NULL},
        {GX_OAM_SHAPE_8x32, GX_OAM_SHAPE_16x32, GX_OAM_SHAPE_32x32, GX_OAM_SHAPE_64x32},
        {(GXOamShape)NULL, (GXOamShape)NULL, GX_OAM_SHAPE_32x64, GX_OAM_SHAPE_64x64},
    };

    NNS_G2D_POINTER_ASSERT(pSize);
    NNS_G2D_MINMAX_ASSERT(pSize->heightShift, 0, 3);
    NNS_G2D_MINMAX_ASSERT(pSize->widthShift, 0, 3);

    return shape[pSize->heightShift][pSize->widthShift];
}

static void ClearChar (void * pChar, int x, int y, int w, int h, u32 cl8, int bpp) {
    NNS_G2D_POINTER_ASSERT(pChar);
    NNS_G2D_MINMAX_ASSERT(x, 0, CHARACTER_WIDTH - 1);
    NNS_G2D_MINMAX_ASSERT(y, 0, CHARACTER_HEIGHT - 1);
    NNS_G2D_MINMAX_ASSERT(w, 1, CHARACTER_WIDTH);
    NNS_G2D_MINMAX_ASSERT(h, 1, CHARACTER_HEIGHT);
    NNS_G2D_ASSERT(x + w <= CHARACTER_WIDTH);
    NNS_G2D_ASSERT(y + h <= CHARACTER_HEIGHT);

    if ((w == CHARACTER_WIDTH) && (h == CHARACTER_HEIGHT)) {
        MI_CpuFillFast(pChar, cl8, (u32)(8 * bpp));
    } else {
        if (bpp == 4) {
            u32 mask;
            u32 data;
            u32 * pLine;
            u32 * pLineEnd;

            {
                u32 x4 = (unsigned int)x * 4;
                u32 rw4 = 32 - (w * 4 + x4);

                mask = (u32)(~0) >> x4;
                mask <<= x4 + rw4;
                mask >>= rw4;

                data = cl8 & mask;
                mask = ~mask;
            }

            pLine = (u32 *)pChar + y;
            pLineEnd = pLine + h;
            for ( ; pLine < pLineEnd; pLine++ ) {
                *pLine = (*pLine & mask) | data;
            }
        } else {
            u32 mask_0, mask_1;
            u32 data_0, data_1;

            {
                u32 x8 = (unsigned int)x * 8;
                u32 rw8 = 64 - (w * 8 + x8);

                mask_0 = (u32)(~0) >> x8;
                if (rw8 >= 32) {
                    const u32 rw32 = rw8 - 32;
                    mask_0 <<= (x8 + rw32);
                    mask_0 >>= rw32;
                } else {
                    mask_0 <<= x8;
                }

                mask_1 = (u32)(~0) << rw8;
                if (x8 >= 32) {
                    const u32 x32 = x8 - 32;
                    mask_1 >>= (x32 + rw8);
                    mask_1 <<= x32;
                } else {
                    mask_1 >>= rw8;
                }

                data_0 = cl8 & mask_0;
                data_1 = cl8 & mask_1;

                mask_0 = ~mask_0;
                mask_1 = ~mask_1;
            }

            {
                u32 * pLine = (u32 *)((u64 *)pChar + y);
                u32 * const pLineEnd = (u32 *)((u64 *)pLine + h);

                while (pLine < pLineEnd) {
                    *pLine = (*pLine & mask_0) | data_0;
                    pLine++;
                    *pLine = (*pLine & mask_1) | data_1;
                    pLine++;
                }
            }
        }
    }
}

static void LetterChar (LC_INFO * i) {
    const u8 * pSrc;
    u32 x_st;
    u32 x_ed;
    u32 y_st;
    u32 y_ed;
    u32 offset;

    NNS_G2D_POINTER_ASSERT(i);
    NNS_G2D_POINTER_ASSERT(i->dst);
    NNS_G2D_POINTER_ASSERT(i->src);
    NNS_G2D_ASSERT(i->ofs_x < CHARACTER_WIDTH);
    NNS_G2D_ASSERT(i->ofs_y < CHARACTER_HEIGHT);
    NNS_G2D_ASSERT(i->srcBpp * i->width <= i->dsrc);
    NNS_G2D_ASSERT(0 < i->srcBpp <= 8);
    NNS_G2D_ASSERT(i->dstBpp == 4 || i->dstBpp == 8);
    NNS_G2D_ASSERT(i->cl + (1 << i->srcBpp) <= (1 << i->dstBpp));

    NNS_G2D_ASSERT(-i->width < i->ofs_x);
    NNS_G2D_ASSERT(-i->height < i->ofs_y);
    NNS_G2D_ASSERT(0 < i->width);
    NNS_G2D_ASSERT(0 < i->height);

    {
        u32 bit_y_begin;

        x_st = (unsigned int)MATH_IMax(i->ofs_x, 0);
        y_st = (unsigned int)MATH_IMax(i->ofs_y, 0);
        x_ed = (unsigned int)MATH_IMin(CHARACTER_WIDTH, i->ofs_x + i->width);
        y_ed = (unsigned int)MATH_IMin(CHARACTER_HEIGHT, i->ofs_y + i->height);

        bit_y_begin = (unsigned int)-MATH_IMin(i->ofs_y, 0);
        offset = -MATH_IMin(i->ofs_x, 0) * i->srcBpp + bit_y_begin * i->dsrc;

        pSrc = i->src;
    }

    NNS_G2D_ASSERT(x_st < x_ed);
    NNS_G2D_ASSERT(y_st < y_ed);
    NNS_G2D_ASSERT(x_ed <= CHARACTER_WIDTH);
    NNS_G2D_ASSERT(y_ed <= CHARACTER_HEIGHT);

    {
        u32 x;
        const int dsrc = i->dsrc;
        const int srcBpp = i->srcBpp;
        const int dstBpp = i->dstBpp;

        x_st *= dstBpp;
        x_ed *= dstBpp;

        if (dstBpp == 4) {
            u32 * pDst = (u32 *)i->dst + y_st;
            u32 * pDstEnd = (u32 *)i->dst + y_ed;
            u32 cl = i->cl;

            for ( ; pDst < pDstEnd; pDst++ ) {
                NNSiG2dBitReader reader;
                u32 out_line = *pDst;

                NNSi_G2dBitReaderInit(&reader, pSrc + offset / 8);
                (void)NNSi_G2dBitReaderRead(&reader, (int)offset % 8);

                for ( x = x_st; x < x_ed; x += 4 ) {
                    u32 bits = NNSi_G2dBitReaderRead(&reader, srcBpp);

                    if (bits != 0) {
                        out_line = (out_line & ~(0xF << x)) | ((cl + bits) << x);
                    }
                }

                *pDst = out_line;

                offset += dsrc;
            }
        } else {
            u32 * pDst = (u32 *)((u64 *)i->dst + y_st);
            u32 * const pDstEnd = (u32 *)((u64 *)i->dst + y_ed);
            u32 cl = i->cl;

            NNS_G2D_ASSERT(dstBpp == 8);

            for ( ; pDst < pDstEnd; pDst += 2 ) {
                NNSiG2dBitReader reader;
                u32 out_line_0 = *pDst;
                u32 out_line_1 = *(pDst + 1);

                NNSi_G2dBitReaderInit(&reader, pSrc + offset / 8);
                (void)NNSi_G2dBitReaderRead(&reader, (int)offset % 8);

                for ( x = x_st; x < x_ed; x += 8 ) {
                    u32 bits = NNSi_G2dBitReaderRead(&reader, srcBpp);

                    if (bits != 0) {
                        if (x < 32) {
                            out_line_0 = (out_line_0 & ~((u32)0xFF << x)) | ((u32)(cl + bits) << x);
                        } else {
                            const u32 x_32 = x - 32;
                            out_line_1 = (out_line_1 & ~((u32)0xFF << x_32)) | ((u32)(cl + bits) << x_32);
                        }
                    }
                }

                *pDst = out_line_0;
                *(pDst + 1) = out_line_1;

                offset += dsrc;
            }
        }
    }
}

static void DrawGlyphLine (const NNSG2dCharCanvas * pCC, const NNSG2dFont * pFont, int x, int y, int cl, const NNSG2dGlyph * pGlyph) {
    int ofs_x_base;
    int ofs_x;
    int ofs_y;
    int ofs_x_end;
    int ofs_y_end;
    unsigned int nextLineOffset;
    u8 * pChar;
    u8 glyphWidth;
    u8 charHeight;
    int charSize;

    NNS_G2D_CHARCANVAS_ASSERT(pCC);
    NNS_G2D_FONT_ASSERT(pFont);
    NNS_G2D_GLYPH_ASSERT(pGlyph);
    NNS_G2D_ASSERT(NNS_G2dFontGetBpp(pFont) <= pCC->dstBpp);
    NNS_G2D_MINMAX_ASSERT(
        cl, 0,
        (1 << pCC->dstBpp)
        - (1 << NNS_G2dFontGetBpp(pFont)) + 1
    );

    charSize = GetCharacterSize(pCC);

    {
        int chara_x_num;
        int chara_y_num;
        const unsigned int areaWidth = (unsigned int)pCC->areaWidth;
        const unsigned int areaHeight = (unsigned int)pCC->areaHeight;
        u8 * const charBase = pCC->charBase;
        const NNSG2dCharWidths * const pWidth = pGlyph->pWidths;

        unsigned int chara_x_begin;
        unsigned int chara_x_last;
        unsigned int chara_y_begin;
        unsigned int chara_y_last;

        glyphWidth = pWidth->glyphWidth;
        charHeight = NNS_G2dFontGetCellHeight(pFont);

        if (glyphWidth <= 0) {
            return;
        }

        if ((x + glyphWidth < 0) || (y + charHeight) < 0) {
            return;
        }

        chara_x_begin = (x <= 0) ? 0: ((u32)x / CHARACTER_WIDTH);
        chara_y_begin = (y <= 0) ? 0: ((u32)y / CHARACTER_HEIGHT);

        chara_x_last = (u32)(x + glyphWidth + (CHARACTER_WIDTH - 1)) / CHARACTER_WIDTH;
        if (chara_x_last >= areaWidth) {
            chara_x_last = areaWidth;
        }
        chara_y_last = (u32)(y + charHeight + (CHARACTER_HEIGHT - 1)) / CHARACTER_HEIGHT;
        if (chara_y_last >= areaHeight) {
            chara_y_last = areaHeight;
        }

        chara_x_num = (int)(chara_x_last - chara_x_begin);
        chara_y_num = (int)(chara_y_last - chara_y_begin);

        if ((chara_x_num < 0) || (chara_y_num < 0)) {
            return;
        }

        pChar = charBase + (pCC->param * chara_y_begin + chara_x_begin) * charSize;

        nextLineOffset = (pCC->param - chara_x_num) * charSize;

        ofs_x_base = (x < 0) ? x: x & 0x7;
        ofs_y = (y < 0) ? y: y & 0x7;
        ofs_x_end = ofs_x_base - CHARACTER_WIDTH * chara_x_num;
        ofs_y_end = ofs_y - CHARACTER_HEIGHT * chara_y_num;
    }

    {
        LC_INFO i;

        i.src = pGlyph->image;
        i.width = glyphWidth;
        i.height = charHeight;
        i.cl = (u32)(cl - 1);
        i.srcBpp = NNS_G2dFontGetBpp(pFont);
        i.dstBpp = pCC->dstBpp;
        i.dsrc = NNS_G2dFontGetCellWidth(pFont) * i.srcBpp;

        for ( ; ofs_y > ofs_y_end; ofs_y -= CHARACTER_HEIGHT ) {
            i.ofs_y = ofs_y;
            for ( ofs_x = ofs_x_base; ofs_x > ofs_x_end; ofs_x -= CHARACTER_WIDTH ) {
                i.dst = pChar;
                i.ofs_x = ofs_x;
                LetterChar(&i);
                pChar += charSize;
            }
            pChar += nextLineOffset;
        }
    }
}

static void DrawGlyph1D (const NNSG2dCharCanvas * pCC, const NNSG2dFont * pFont, int x, int y, int cl, const NNSG2dGlyph * pGlyph) {
    int ofs_x_base;
    int ofs_x;
    int ofs_y;
    int ofs_x_end;
    int ofs_y_end;
    int cx, cx_base;
    int cy;
    u8 glyphWidth;
    u8 charHeight;
    int charSize;
    u16 * mapTable;

    NNS_G2D_CHARCANVAS_ASSERT(pCC);
    NNS_G2D_FONT_ASSERT(pFont);
    NNS_G2D_GLYPH_ASSERT(pGlyph);
    NNS_G2D_ASSERT(NNS_G2dFontGetBpp(pFont) <= pCC->dstBpp);
    NNS_G2D_MINMAX_ASSERT(
        cl, 0,
        (1 << pCC->dstBpp)
        - (1 << NNS_G2dFontGetBpp(pFont)) + 1
    );

    charSize = GetCharacterSize(pCC);
    mapTable = (u16 *)(pCC->param);

    {
        int chara_x_num;
        int chara_y_num;
        const unsigned int areaWidth = (unsigned int)pCC->areaWidth;
        const unsigned int areaHeight = (unsigned int)pCC->areaHeight;
        const NNSG2dCharWidths * const pWidth = pGlyph->pWidths;

        u32 chara_x_begin;
        u32 chara_x_last;
        u32 chara_y_begin;
        u32 chara_y_last;

        glyphWidth = pWidth->glyphWidth;
        charHeight = NNS_G2dFontGetCellHeight(pFont);

        if (glyphWidth <= 0) {
            return;
        }

        if ((x + glyphWidth < 0) || (y + charHeight) < 0) {
            return;
        }

        chara_x_begin = (x <= 0) ? 0: ((u32)x / CHARACTER_WIDTH);
        chara_y_begin = (y <= 0) ? 0: ((u32)y / CHARACTER_HEIGHT);

        chara_x_last = (u32)(x + glyphWidth + (CHARACTER_WIDTH - 1)) / CHARACTER_WIDTH;
        if (chara_x_last >= areaWidth) {
            chara_x_last = areaWidth;
        }
        chara_y_last = (u32)(y + charHeight + (CHARACTER_HEIGHT - 1)) / CHARACTER_HEIGHT;
        if (chara_y_last >= areaHeight) {
            chara_y_last = areaHeight;
        }

        chara_x_num = (int)(chara_x_last - chara_x_begin);
        chara_y_num = (int)(chara_y_last - chara_y_begin);

        if ((chara_x_num < 0) || (chara_y_num < 0)) {
            return;
        }

        cx_base = (int)chara_x_begin;
        cy = (int)chara_y_begin;

        ofs_x_base = (x < 0) ? x: x & 0x7;
        ofs_y = (y < 0) ? y: y & 0x7;
        ofs_x_end = ofs_x_base - CHARACTER_WIDTH * chara_x_num;
        ofs_y_end = ofs_y - CHARACTER_HEIGHT * chara_y_num;
    }

    {
        LC_INFO i;
        u8 * const pCharBase = pCC->charBase;
        OBJ1DParam p;

        i.src = pGlyph->image;
        i.width = glyphWidth;
        i.height = charHeight;
        i.cl = (u32)(cl - 1);
        i.srcBpp = NNS_G2dFontGetBpp(pFont);
        i.dstBpp = pCC->dstBpp;
        i.dsrc = NNS_G2dFontGetCellWidth(pFont) * i.srcBpp;

        p.packed = pCC->param;

        {
            const u32 areaWidth = (u32)pCC->areaWidth;
            const u32 areaHeight = (u32)pCC->areaHeight;
            const u32 baseWidthShift = p.baseWidthShift;
            const u32 baseHeightShift = p.baseHeightShift;

            for ( ; ofs_y > ofs_y_end; ofs_y -= CHARACTER_HEIGHT ) {
                i.ofs_y = ofs_y;
                cx = cx_base;
                for ( ofs_x = ofs_x_base; ofs_x > ofs_x_end; ofs_x -= CHARACTER_WIDTH ) {
                    const unsigned int iChar = GetCharIndex1D((u32)cx, (u32)cy, areaWidth, areaHeight, baseWidthShift, baseHeightShift);

                    i.ofs_x = ofs_x;
                    i.dst = pCharBase + iChar * charSize;

                    LetterChar(&i);
                    cx++;
                }
                cy++;
            }
        }
    }
}

static void ClearContinuous (const NNSG2dCharCanvas * pCC, int cl) {
    u32 data;

    NNS_G2D_CHARCANVAS_ASSERT(pCC);

    data = SpreadColor32(pCC, cl);

    MI_CpuFillFast(
        pCC->charBase,
        data,
        (u32)pCC->areaWidth * pCC->areaHeight * GetCharacterSize(pCC)
    );
}

static void ClearLine (const NNSG2dCharCanvas * pCC, int cl) {
    u32 data;

    NNS_G2D_CHARCANVAS_ASSERT(pCC);

    data = SpreadColor32(pCC, cl);

    {
        const int charSize = GetCharacterSize(pCC);
        const int lineSize = (int)(charSize * pCC->param);
        const u32 blockSize = (u32)(charSize * pCC->areaWidth);
        int y;
        u8 * pChar = pCC->charBase;

        for ( y = 0; y < pCC->areaHeight; y++ ) {
            MI_CpuFillFast(pChar, data, blockSize);
            pChar += lineSize;
        }
    }
}

static void ClearAreaLine (const NNSG2dCharCanvas * pCC, int cl, int x, int y, int w, int h) {
    int ix, iy;
    int cx, cy, cw, ch;
    const int xw = x + w;
    const int yh = y + h;
    u32 cl8;

    NNS_G2D_CHARCANVAS_ASSERT(pCC);
    NNS_G2D_ASSERT(xw <= pCC->areaWidth * 8);
    NNS_G2D_ASSERT(yh <= pCC->areaHeight * 8);

    cl8 = SpreadColor32(pCC, cl);

    {
        const int left = MATH_ROUNDDOWN(x, CHARACTER_WIDTH);
        const int top = MATH_ROUNDDOWN(y, CHARACTER_HEIGHT);
        const int right = MATH_ROUNDUP(xw, CHARACTER_WIDTH);
        const int bottom = MATH_ROUNDUP(yh, CHARACTER_HEIGHT);

        const int charSize = GetCharacterSize(pCC);
        const int charBaseLineOffset = (int)(pCC->param * charSize);
        const int bpp = pCC->dstBpp;
        u8 * pCharBase;
        u8 * pChar;

        pCharBase = pCC->charBase + ((top / CHARACTER_HEIGHT) * pCC->param + (left / CHARACTER_WIDTH)) * charSize;

        for ( iy = top; iy < bottom; iy += CHARACTER_HEIGHT ) {
            cy = (iy < y) ? y - iy: 0;
            ch = ((yh - iy > CHARACTER_HEIGHT) ? CHARACTER_HEIGHT: yh - iy) - cy;
            pChar = pCharBase;

            for ( ix = left; ix < right; ix += CHARACTER_WIDTH ) {
                cx = (ix < x) ? x - ix: 0;
                cw = ((xw - ix > CHARACTER_WIDTH) ? CHARACTER_WIDTH: xw - ix) - cx;

                ClearChar(pChar, cx, cy, cw, ch, cl8, bpp);
                pChar += charSize;
            }

            pCharBase += charBaseLineOffset;
        }
    }
}

static void ClearArea1D (const NNSG2dCharCanvas * pCC, int cl, int x, int y, int w, int h) {
    int ix, iy;
    int pcx, pcy, pcw, pch;
    int cx, cy;
    const int xw = x + w;
    const int yh = y + h;
    u32 cl8;
    OBJ1DParam p;

    NNS_G2D_CHARCANVAS_ASSERT(pCC);
    NNS_G2D_ASSERT(xw <= pCC->areaWidth * 8);
    NNS_G2D_ASSERT(yh <= pCC->areaHeight * 8);

    cl8 = SpreadColor32(pCC, cl);

    p.packed = pCC->param;

    {
        const int left = MATH_ROUNDDOWN(x, CHARACTER_WIDTH);
        const int top = MATH_ROUNDDOWN(y, CHARACTER_HEIGHT);
        const int right = MATH_ROUNDUP(xw, CHARACTER_WIDTH);
        const int bottom = MATH_ROUNDUP(yh, CHARACTER_HEIGHT);

        const int areaWidth = pCC->areaWidth;
        const int areaHeight = pCC->areaHeight;
        const int baseWidthShift = (int)p.baseWidthShift;
        const int baseHeightShift = (int)p.baseHeightShift;

        const int charSize = GetCharacterSize(pCC);
        const int charBaseLineOffset = (int)pCC->param * charSize;
        const int bpp = pCC->dstBpp;
        const int cx_base = left / CHARACTER_WIDTH;
        u8 * const pCharBase = pCC->charBase;
        u8 * pChar;

        cy = top / CHARACTER_HEIGHT;

        for ( iy = top; iy < bottom; iy += CHARACTER_HEIGHT ) {
            pcy = (iy < y) ? y - iy: 0;
            pch = ((yh - iy > CHARACTER_HEIGHT) ? CHARACTER_HEIGHT: yh - iy) - pcy;
            pChar = pCharBase;

            cx = cx_base;
            for ( ix = left; ix < right; ix += CHARACTER_WIDTH ) {
                const u32 iChar = GetCharIndex1D((u32)cx, (u32)cy, (u32)areaWidth, (u32)areaHeight, (u32)baseWidthShift, (u32)baseHeightShift);
                pcx = (ix < x) ? x - ix: 0;
                pcw = ((xw - ix > CHARACTER_WIDTH) ? CHARACTER_WIDTH: xw - ix) - pcx;

                pChar = pCharBase + iChar * charSize;

                ClearChar(pChar, pcx, pcy, pcw, pch, cl8, bpp);
                cx++;
            }
            cy++;
        }
    }
}

static void InitCharCanvas (NNSG2dCharCanvas * pCC, void * charBase, int areaWidth, int areaHeight, NNSG2dCharaColorMode colorMode, const NNSiG2dCharCanvasVTable * vtable, u32 param) {
    NNS_G2D_POINTER_ASSERT(pCC);
    NNS_G2D_ASSERT(0 < areaWidth);
    NNS_G2D_ASSERT(0 < areaHeight);
    NNS_G2D_COLORMODE_ASSERT(colorMode);
    NNS_G2D_POINTER_ASSERT(charBase);
    NNS_G2D_ALIGN_ASSERT(charBase, 4);
    NNS_G2D_POINTER_ASSERT(vtable);
    NNS_G2D_POINTER_ASSERT(vtable->pDrawGlyph);
    NNS_G2D_POINTER_ASSERT(vtable->pClear);
    NNS_G2D_POINTER_ASSERT(vtable->pClearArea);

    pCC->areaWidth = areaWidth;
    pCC->areaHeight = areaHeight;
    pCC->dstBpp = colorMode;
    pCC->charBase = charBase;
    pCC->vtable = vtable;
    pCC->param = param;
}

static void MakeCell (NNSG2dCellData * pCell, GXOamAttr * pOam, u16 numObj, int x, int y, int areaPWidth, int areaPHeight, int priority, GXOamMode mode, BOOL mosaic, GXOamEffect effect, int cParam, BOOL makeBR) {
    NNSG2dCellOAMAttrData * oamArray = NULL;
    NNSG2dCellBoundingRectS16 * pBoundingRect = NULL;
    u16 attr = 0;
    int i;

    NNS_G2D_POINTER_ASSERT(pCell);
    NNS_G2D_POINTER_ASSERT(pOam);

    if (makeBR) {
        pBoundingRect = (NNSG2dCellBoundingRectS16 *)(pCell + 1);
        oamArray = (NNSG2dCellOAMAttrData *)(pBoundingRect + 1);
        attr |= NNSi_G2dSetCellAttrHasBR(1);

        pBoundingRect->minX = (s16)(-x);
        pBoundingRect->maxX = (s16)(areaPWidth - x);
        pBoundingRect->minY = (s16)(-y);
        pBoundingRect->maxY = (s16)(areaPHeight - y);
    } else {
        oamArray = (NNSG2dCellOAMAttrData *)(pCell + 1);
    }

    for ( i = 0; i < numObj; i++ ) {
        G2_SetOBJPriority(&pOam[i], priority);
        G2_SetOBJMode(&pOam[i], mode, cParam);
        G2_SetOBJEffect(&pOam[i], effect, 0);
        G2_OBJMosaic(&pOam[i], mosaic);

        if (effect == GX_OAM_EFFECT_AFFINE_DOUBLE) {
            const GXOamShape shape = G2_GetOBJShape(&pOam[i]);
            const int w = NNS_G2dGetOamSizeX(&shape);
            const int h = NNS_G2dGetOamSizeY(&shape);
            u32 x, y;
            int mx, my;

            G2_GetOBJPosition(&pOam[i], &x, &y);
            mx = NNS_G2dRepeatXinCellSpace((s16)(x - w / 2));
            my = NNS_G2dRepeatYinCellSpace((s16)(y - h / 2));
            G2_SetOBJPosition(&pOam[i], mx, my);
        }
    }

    for ( i = 0; i < numObj; i++ ) {
        oamArray[i].attr0 = pOam[i].attr0;
        oamArray[i].attr1 = pOam[i].attr1;
        oamArray[i].attr2 = pOam[i].attr2;
    }

    attr |= NNSi_G2dSetCellAttrFlipFlag(
        (effect == GX_OAM_EFFECT_FLIP_H) ? 1: 0,
        (effect == GX_OAM_EFFECT_FLIP_V) ? 1: 0,
        (effect == GX_OAM_EFFECT_FLIP_HV) ? 1: 0
    );

    pCell->numOAMAttrs = numObj;
    pCell->cellAttr = attr;
    pCell->pOamAttrArray = oamArray;

    {
        const u8 bsr = (u8)(ISqrt(areaPWidth * areaPWidth + areaPHeight * areaPHeight) / 2);
        NNSi_G2dSetCellBoundingSphereR(pCell, bsr);
    }
}

int NNS_G2dCharCanvasDrawChar (const NNSG2dCharCanvas * pCC, const NNSG2dFont * pFont, int x, int y, int cl, u16 ccode) {
    NNSG2dGlyph glyph;

    NNS_G2D_CHARCANVAS_ASSERT(pCC);
    NNS_G2D_FONT_ASSERT(pFont);
    NNS_G2D_ASSERT(NNS_G2dFontGetBpp(pFont) <= pCC->dstBpp);
    NNS_G2D_MINMAX_ASSERT(
        cl, 0,
        (1 << pCC->dstBpp)
        - (1 << NNS_G2dFontGetBpp(pFont)) + 1
    );

    NNS_G2dFontGetGlyph(&glyph, pFont, ccode);

#ifdef NNS_G2D_FONT_ENABLE_DIRECTION_SUPPORT
    switch (NNS_G2dFontGetFlags(pFont)) {
    case (NNS_G2D_FONT_FLAG_ROT_0):
    case (NNS_G2D_FONT_FLAG_ROT_270 | NNS_G2D_FONT_FLAG_TBRL):
#endif
    x += glyph.pWidths->left;
#ifdef NNS_G2D_FONT_ENABLE_DIRECTION_SUPPORT
    break;
    case (NNS_G2D_FONT_FLAG_ROT_90):
    case (NNS_G2D_FONT_FLAG_ROT_0 | NNS_G2D_FONT_FLAG_TBRL):
        x -= NNS_G2dFontGetCellWidth(pFont);
        y += glyph.pWidths->left;
        break;
    case (NNS_G2D_FONT_FLAG_ROT_180):
    case (NNS_G2D_FONT_FLAG_ROT_90 | NNS_G2D_FONT_FLAG_TBRL):
        x -= glyph.pWidths->left + glyph.pWidths->glyphWidth;
        y -= NNS_G2dFontGetCellHeight(pFont);
        break;
    case (NNS_G2D_FONT_FLAG_ROT_270):
    case (NNS_G2D_FONT_FLAG_ROT_180 | NNS_G2D_FONT_FLAG_TBRL):
        y -= glyph.pWidths->left + NNS_G2dFontGetCellHeight(pFont);
        break;
}
#endif

    NNS_G2dCharCanvasDrawGlyph(pCC, pFont, x, y, cl, &glyph);

    return glyph.pWidths->charWidth;
}

void NNS_G2dCharCanvasInitForBG (NNSG2dCharCanvas * pCC, void * charBase, int areaWidth, int areaHeight, NNSG2dCharaColorMode colorMode) {
    NNS_G2D_POINTER_ASSERT(pCC);
    NNS_G2D_POINTER_ASSERT(charBase);
    NNS_G2D_ALIGN_ASSERT(charBase, 4);
    NNS_G2D_ASSERT(0 < areaWidth);
    NNS_G2D_ASSERT(0 < areaHeight);
    NNS_G2D_COLORMODE_ASSERT(colorMode);

    InitCharCanvas(
        pCC,
        charBase, areaWidth, areaHeight, colorMode,
        &VTABLE_BG, (unsigned int)areaWidth
    );
}

void NNS_G2dCharCanvasInitForOBJ1D (NNSG2dCharCanvas * pCC, void * charBase, int areaWidth, int areaHeight, NNSG2dCharaColorMode colorMode) {
    OBJ1DParam p;
    const ObjectSize * pObj = GetMaxObjectSize(areaWidth, areaHeight);

    NNS_G2D_POINTER_ASSERT(pCC);
    NNS_G2D_POINTER_ASSERT(charBase);
    NNS_G2D_ALIGN_ASSERT(charBase, 4);
    NNS_G2D_ASSERT(0 < areaWidth);
    NNS_G2D_ASSERT(0 < areaHeight);
    NNS_G2D_ASSERT(areaWidth * areaHeight <= MAX_OBJ1D_CHARACTER);
    NNS_G2D_COLORMODE_ASSERT(colorMode);

    p.baseWidthShift = pObj->widthShift;
    p.baseHeightShift = pObj->heightShift;

    InitCharCanvas(
        pCC,
        charBase, areaWidth, areaHeight, colorMode,
        &VTABLE_OBJ1D, p.packed
    );
}

void NNS_G2dCharCanvasInitForOBJ2DRect (NNSG2dCharCanvas * pCC, void * charBase, int areaWidth, int areaHeight, NNSG2dCharaColorMode colorMode) {
    int lineWidth = (colorMode == NNS_G2D_CHARA_COLORMODE_16) ? 32: 16;

    NNS_G2D_POINTER_ASSERT(pCC);
    NNS_G2D_POINTER_ASSERT(charBase);
    NNS_G2D_ALIGN_ASSERT(charBase, 4);
    NNS_G2D_ASSERT(0 < areaWidth);
    NNS_G2D_ASSERT(areaWidth <= lineWidth);
    NNS_G2D_ASSERT(0 < areaHeight);
    NNS_G2D_ASSERT(areaHeight <= MAX_OBJ2DRECT_HEIGHT);
    NNS_G2D_COLORMODE_ASSERT(colorMode);

    InitCharCanvas(
        pCC,
        charBase, areaWidth, areaHeight, colorMode,
        &VTABLE_OBJ2DRECT, (unsigned int)lineWidth
    );
}

void NNS_G2dMapScrToCharText (void * scnBase, int areaWidth, int areaHeight, int areaLeft, int areaTop, NNSG2dTextBGWidth scnWidth, int charNo, int cplt) {
    NNS_G2D_POINTER_ASSERT(scnBase);
    NNS_G2D_ALIGN_ASSERT(scnBase, 2);
    NNS_G2D_ASSERT(0 < areaWidth);
    NNS_G2D_ASSERT(0 < areaHeight);
    NNS_G2D_ASSERT(0 <= areaLeft);
    NNS_G2D_ASSERT(0 <= areaTop);
    NNS_G2D_ASSERT(areaLeft + areaWidth <= scnWidth);
    NNS_G2D_ASSERT(areaTop + areaHeight <= MAX_TEXT_BG_CHEIGHT);
    NNS_G2D_TEXT_BG_WIDTH_ASSERT(scnWidth);
    NNS_G2D_ASSERT(0 <= charNo);
    NNS_G2D_ASSERT(charNo + (areaHeight * areaWidth) <= MAX_TEXT_BG_CHARACTER);
    NNS_G2D_MINMAX_ASSERT(cplt, 0, 15);

    if (scnWidth <= 32) {
        void * areaBase = (u16 *)scnBase + (scnWidth * areaTop + areaLeft);
        NNS_G2dMapScrToChar256x16Pltt(
            areaBase, areaWidth, areaHeight,
            (NNSG2d256x16PlttBGWidth)scnWidth, charNo, cplt
        );
    } else {
        const int areaRight = areaLeft + areaWidth;
        const int areaBottom = areaTop + areaHeight;
        const u16 cplt_sft = (u16)(cplt << 12);
        u16 * const pScrBase = (u16 *)scnBase;
        int x, y;

        for ( y = areaTop; y < areaBottom; ++y ) {
            const int py = (y < 32) ? y: y + 32;
            u16 * pScr = pScrBase + py * 32;

            for ( x = areaLeft; x < areaRight; ++x ) {
                const int px = (x < 32) ? x: x + 32 * 31;
                *(pScr + px) = (u16)(cplt_sft | charNo++);
            }
        }
    }
}

void NNS_G2dMapScrToCharAffine (void * areaBase, int areaWidth, int areaHeight, NNSG2dAffineBGWidth scnWidth, int charNo) {
    NNS_G2D_POINTER_ASSERT(areaBase);
    NNS_G2D_ASSERT(areaHeight <= MAX_AFFINE_BG_CHEIGHT);
    NNS_G2D_ASSERT(0 < areaWidth);
    NNS_G2D_ASSERT(0 < areaHeight);
    NNS_G2D_AFFINE_BG_WIDTH_ASSERT(scnWidth);
    NNS_G2D_ASSERT(areaWidth <= scnWidth);
    NNS_G2D_ASSERT(0 <= charNo);
    NNS_G2D_ASSERT(charNo + (areaHeight * areaWidth) <= MAX_AFFINE_BG_CHARACTER);

    {
        const BOOL bOddBase = (((u32)(areaBase) % 2) == 1);
        const BOOL bOddWidth = ((areaWidth % 2) == 1);
        const BOOL bOddLast = bOddBase ^ bOddWidth;
        int wordWidth = areaWidth / 2;
        u16 * pScrBase = (u16 *)((u32)(areaBase) & ~1);
        int y;

        if (bOddBase && !bOddWidth) {
            wordWidth--;
        }

        scnWidth /= 2;

        for ( y = 0; y < areaHeight; ++y ) {
            int x = 0;
            u16 * pScr = pScrBase;

            if (bOddBase) {
                *pScr++ = (u16)((charNo++ << 8) | (*pScr & 0xFF));
            }
            for ( ; x < wordWidth; ++x ) {
                *pScr++ = (u16)(((charNo + 1) << 8) | charNo);
                charNo += 2;
            }
            if (bOddLast) {
                *pScr++ = (u16)((*pScr & 0xFF00) | charNo++);
            }
            pScrBase += scnWidth;
        }
    }
}

void NNS_G2dMapScrToChar256x16Pltt (void * areaBase, int areaWidth, int areaHeight, NNSG2d256x16PlttBGWidth scnWidth, int charNo, int cplt) {
    u16 * pScrBase;
    int x, y;
    const u16 cplt_sft = (u16)(cplt << 12);

    NNS_G2D_POINTER_ASSERT(areaBase);
    NNS_G2D_ALIGN_ASSERT(areaBase, 2);
    NNS_G2D_ASSERT(0 < areaWidth);
    NNS_G2D_ASSERT(0 < areaHeight);
    NNS_G2D_ASSERT(areaHeight <= MAX_256x16PLTT_BG_CHEIGHT);
    NNS_G2D_256x16PLTT_BG_WIDTH_ASSERT(scnWidth);
    NNS_G2D_ASSERT(areaWidth <= scnWidth);
    NNS_G2D_ASSERT(0 <= charNo);
    NNS_G2D_ASSERT(charNo + (areaHeight * areaWidth) <= MAX_256x16PLTT_BG_CHARACTER);
    NNS_G2D_MINMAX_ASSERT(cplt, 0, 15);

    pScrBase = areaBase;

    for ( y = 0; y < areaHeight; ++y ) {
        u16 * pScr = pScrBase;
        for ( x = 0; x < areaWidth; ++x ) {
            *pScr++ = (u16)(cplt_sft | charNo++);
        }
        pScrBase += scnWidth;
    }
}

int NNSi_G2dCalcRequiredOBJ (int areaWidth, int areaHeight) {
    const u32 w = (unsigned int)areaWidth;
    const u32 h = (unsigned int)areaHeight;
    const u32 w8 = w / 8;
    const u32 h8 = h / 8;
    const u32 w4 = (w & 4) >> 2;
    const u32 h4 = (h & 4) >> 2;
    const u32 wcp = ((w & 2) >> 1) + (w & 1);
    const u32 hcp = ((h & 2) >> 1) + (h & 1);
    int ret = 0;

    NNS_G2D_ASSERT(0 < areaWidth);
    NNS_G2D_ASSERT(0 < areaHeight);

    ret += w8 * h8;

    ret += (wcp * 2 + w4) * h8;

    ret += (hcp * 2 + h4) * w8;

    ret += (wcp + w4) * (hcp + h4);

    return ret;
}

int NNS_G2dArrangeOBJ1D (GXOamAttr * oam, int areaWidth, int areaHeight, int x, int y, GXOamColorMode color, int charName, NNSG2dOBJVramMode vramMode) {
    const u32 fullbits = (u32)(~0);
    const ObjectSize * pSize = GetMaxObjectSize(areaWidth, areaHeight);
    const int objWidthShift = pSize->widthShift;
    const int objHeightShift = pSize->heightShift;
    const u32 objWidthMaskInv = fullbits << objWidthShift;
    const u32 objHeightMaskInv = fullbits << objHeightShift;
    const u32 areaAWidth = areaWidth & objWidthMaskInv;
    const u32 areaAHeight = areaHeight & objHeightMaskInv;
    const int charNameUnit = (color == GX_OAM_COLORMODE_16) ? 1: 2;
    int usedObjs = 0;

    NNS_G2D_POINTER_ASSERT(oam);
    NNS_G2D_MINMAX_ASSERT(areaWidth, 1, 1024);
    NNS_G2D_MINMAX_ASSERT(areaHeight, 1, 1024);
    GX_OAM_COLORMODE_ASSERT(color);
    NNS_G2D_OBJVRAMMODE_ASSERT(vramMode);
    NNS_G2D_ASSERT(0 <= charName);
    NNS_G2D_ASSERT((charName + ((areaWidth * areaHeight) >> vramMode)) <= 1024);

    {
        const GXOamShape shape = OBJSizeToShape(pSize);
        const int xNum = areaWidth >> objWidthShift;
        const int yNum = areaHeight >> objHeightShift;
        const int charNameSize = ((charNameUnit << objWidthShift) << objHeightShift) >> vramMode;
        int ox, oy;

        for ( oy = 0; oy < yNum; ++oy ) {
            const int py = y + (oy << objHeightShift) * CHARACTER_HEIGHT;

            for ( ox = 0; ox < xNum; ++ox ) {
                const int px = x + (ox << objWidthShift) * CHARACTER_WIDTH;

                G2_SetOBJPosition(oam, px, py);
                G2_SetOBJShape(oam, shape);
                G2_SetOBJCharName(oam, charName);
                G2_SetOBJColorMode(oam, color);

                oam++;
                charName += charNameSize;
            }
        }

        usedObjs += xNum * yNum;
    }

    if (areaAWidth < areaWidth) {
        const unsigned int areaBWidth = areaWidth - areaAWidth;
        const unsigned int areaBHeight = areaAHeight;
        const int px = x + (int)areaAWidth * CHARACTER_WIDTH;
        const int py = y;

        const int areaBObjs = NNS_G2dArrangeOBJ1D(oam, (int)areaBWidth, (int)areaBHeight, px, py, color, charName, vramMode);

        oam += areaBObjs;
        usedObjs += areaBObjs;
        charName += (charNameUnit * areaBWidth * areaBHeight) >> vramMode;
    }

    if (areaAHeight < areaHeight) {
        const unsigned int areaCWidth = areaAWidth;
        const unsigned int areaCHeight = areaHeight - areaAHeight;
        const int px = x;
        const int py = y + (int)areaAHeight * CHARACTER_HEIGHT;

        const int areaCObjs = NNS_G2dArrangeOBJ1D(oam, (int)areaCWidth, (int)areaCHeight, px, py, color, charName, vramMode);

        oam += areaCObjs;
        usedObjs += areaCObjs;
        charName += (charNameUnit * areaCWidth * areaCHeight) >> vramMode;
    }

    if (areaAWidth < areaWidth && areaAHeight < areaHeight) {
        const unsigned int areaDWidth = areaWidth - areaAWidth;
        const unsigned int areaDHeight = areaHeight - areaAHeight;
        const int px = x + (int)areaAWidth * CHARACTER_WIDTH;
        const int py = y + (int)areaAHeight * CHARACTER_HEIGHT;

        const int areaDObjs = NNS_G2dArrangeOBJ1D(oam, (int)areaDWidth, (int)areaDHeight, px, py, color, charName, vramMode);

        usedObjs += areaDObjs;
    }

    return usedObjs;
}

int NNS_G2dArrangeOBJ2DRect (GXOamAttr * oam, int areaWidth, int areaHeight, int x, int y, GXOamColorMode color, int charName) {
    const u32 fullbits = (u32)(~0);
    const ObjectSize * pSize = GetMaxObjectSize(areaWidth, areaHeight);
    const int objWidthShift = pSize->widthShift;
    const int objHeightShift = pSize->heightShift;
    const u32 objWidthMaskInv = fullbits << objWidthShift;
    const u32 objHeightMaskInv = fullbits << objHeightShift;
    const u32 areaAWidth = areaWidth & objWidthMaskInv;
    const u32 areaAHeight = areaHeight & objHeightMaskInv;
    const int charNameUnit = (color == GX_OAM_COLORMODE_16) ? 1: 2;
    int usedObjs = 0;

    NNS_G2D_POINTER_ASSERT(oam);
    NNS_G2D_MINMAX_ASSERT(areaWidth, 1, 32);
    NNS_G2D_MINMAX_ASSERT(areaHeight, 1, 32);
    GX_OAM_COLORMODE_ASSERT(color);
    NNS_G2D_ASSERT(0 <= charName);
    NNS_G2D_ASSERT(charName + areaWidth * areaHeight <= 1024);

    {
        const GXOamShape shape = OBJSizeToShape(pSize);
        const unsigned int charNameSize = (u32)(charNameUnit << objWidthShift) << objHeightShift;
        const int xNum = areaWidth >> objWidthShift;
        const int yNum = areaHeight >> objHeightShift;
        int ox, oy;

        for ( oy = 0; oy < yNum; ++oy ) {
            const int cy = oy << objHeightShift;
            const int py = y + cy * CHARACTER_HEIGHT;

            for ( ox = 0; ox < xNum; ++ox ) {
                const int cx = ox << objWidthShift;
                const int px = x + cx * CHARACTER_WIDTH;
                const int cName = charName + cy * 32 + cx * charNameUnit;

                G2_SetOBJPosition(oam, px, py);
                G2_SetOBJShape(oam, shape);
                G2_SetOBJCharName(oam, cName);
                G2_SetOBJColorMode(oam, color);

                oam++;
            }
        }

        usedObjs += xNum * yNum;
    }

    if (areaAWidth < areaWidth) {
        const unsigned int areaBWidth = areaWidth - areaAWidth;
        const unsigned int areaBHeight = areaAHeight;
        const int px = x + (int)areaAWidth * CHARACTER_WIDTH;
        const int py = y;
        const unsigned int cName = charName + areaAWidth * charNameUnit;

        const int areaBObjs = NNS_G2dArrangeOBJ2DRect(oam, (int)areaBWidth, (int)areaBHeight, px, py, color, (int)cName);

        oam += areaBObjs;
        usedObjs += areaBObjs;
    }

    if (areaAHeight < areaHeight) {
        const unsigned int areaCWidth = areaAWidth;
        const unsigned int areaCHeight = areaHeight - areaAHeight;
        const int px = x;
        const int py = y + (int)areaAHeight * CHARACTER_HEIGHT;
        const unsigned int cName = charName + areaAHeight * 32;

        const int areaCObjs = NNS_G2dArrangeOBJ2DRect(oam, (int)areaCWidth, (int)areaCHeight, px, py, color, (int)cName);

        oam += areaCObjs;
        usedObjs += areaCObjs;
    }

    if (areaAWidth < areaWidth && areaAHeight < areaHeight) {
        const unsigned int areaDWidth = areaWidth - areaAWidth;
        const unsigned int areaDHeight = areaHeight - areaAHeight;
        const int px = x + (int)areaAWidth * CHARACTER_WIDTH;
        const int py = y + (int)areaAHeight * CHARACTER_HEIGHT;
        const unsigned int cName = charName + areaAHeight * 32 + areaAWidth * charNameUnit;

        const int areaDObjs = NNS_G2dArrangeOBJ2DRect(oam, (int)areaDWidth, (int)areaDHeight, px, py, color, (int)cName);

        usedObjs += areaDObjs;
    }

    return usedObjs;
}

void NNS_G2dCharCanvasMakeCell1D (NNSG2dCellData * pCell, const NNSG2dCharCanvas * pCC, int x, int y, int priority, GXOamMode mode, BOOL mosaic, GXOamEffect effect, GXOamColorMode color, int charName, int cParam, NNSG2dOBJVramMode vramMode, BOOL makeBR) {
    NNS_G2D_POINTER_ASSERT(pCell);
    NNS_G2D_CHARCANVAS_ASSERT(pCC);

    {
        const int areaCWidth = (u16)pCC->areaWidth;
        const int areaCHeight = (u16)pCC->areaHeight;

        const u16 numObj = (u16)NNS_G2dCalcRequiredOBJ1D(areaCWidth, areaCHeight);
        GXOamAttr * pTmpBuffer = (GXOamAttr *)__alloca(sizeof(GXOamAttr) * numObj);

        (void)NNS_G2dArrangeOBJ1D(
            pTmpBuffer,
            areaCWidth,
            areaCHeight,
            -x, -y,
            color,
            charName,
            vramMode
        );

        MakeCell(
            pCell,
            pTmpBuffer,
            numObj,
            x, y,
            areaCWidth * CHARACTER_WIDTH,
            areaCHeight * CHARACTER_HEIGHT,
            priority,
            mode,
            mosaic,
            effect,
            cParam,
            makeBR
        );
    }
}

void NNS_G2dCharCanvasMakeCell2DRect (NNSG2dCellData * pCell, const NNSG2dCharCanvas * pCC, int x, int y, int priority, GXOamMode mode, BOOL mosaic, GXOamEffect effect, GXOamColorMode color, int charName, int cParam, BOOL makeBR) {
    NNS_G2D_POINTER_ASSERT(pCell);
    NNS_G2D_CHARCANVAS_ASSERT(pCC);

    {
        const int areaCWidth = (u16)pCC->areaWidth;
        const int areaCHeight = (u16)pCC->areaHeight;

        const u16 numObj = (u16)NNS_G2dCalcRequiredOBJ1D(areaCWidth, areaCHeight);
        GXOamAttr * pTmpBuffer = (GXOamAttr *)__alloca(sizeof(GXOamAttr) * numObj);

        (void)NNS_G2dArrangeOBJ2DRect(
            pTmpBuffer,
            areaCWidth,
            areaCHeight,
            -x, -y,
            color,
            charName
        );

        MakeCell(
            pCell,
            pTmpBuffer,
            numObj,
            x, y,
            areaCWidth * CHARACTER_WIDTH,
            areaCHeight * CHARACTER_HEIGHT,
            priority,
            mode,
            mosaic,
            effect,
            cParam,
            makeBR
        );
    }
}
