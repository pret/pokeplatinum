#ifndef NNS_G2D_FONT_DATA_H_
#define NNS_G2D_FONT_DATA_H_

#include <nnsys/g2d/fmt/g2d_Common_data.h>

#ifdef _MSC_VER
    #pragma warning( disable: 4200 )
    #pragma warning( disable: 4201 )
#endif

#ifndef SDK_ARM9
    #include <nitro_win32.h>
#endif

#ifdef __cplusplus
extern "C" {
#endif

#define NNS_G2D_BINFILE_SIG_FONTDATA (u32)'NFTR'

#define NNS_G2D_BINBLK_SIG_FINFDATA (u32)'FINF'
#define NNS_G2D_BINBLK_SIG_CGLPDATA (u32)'CGLP'
#define NNS_G2D_BINBLK_SIG_TGLPDATA (u32)'TGLP'
#define NNS_G2D_BINBLK_SIG_TCLPDATA (u32)'TCLP'
#define NNS_G2D_BINBLK_SIG_CWDHDATA (u32)'CWDH'
#define NNS_G2D_BINBLK_SIG_CMAPDATA (u32)'CMAP'

#define NNS_G2D_BINFILE_EXT_FONTDATA "NFTR"

#define NNS_G2D_NFTR_MAJOR_VER (u8)1
#define NNS_G2D_NFTR_MINOR_VER (u8)1

#define NNS_G2D_NFTR_VER (u16)((NNS_G2D_NFTR_MAJOR_VER << 8) | NNS_G2D_NFTR_MINOR_VER)

typedef enum NNSG2dFontType {
    NNS_G2D_FONTTYPE_GLYPH,
    NNS_G2D_NUM_OF_FONTTYPE
} NNSG2dFontType;

typedef enum NNSG2dFontEncoding {
    NNS_G2D_FONT_ENCODING_UTF8,
    NNS_G2D_FONT_ENCODING_UTF16,
    NNS_G2D_FONT_ENCODING_SJIS,
    NNS_G2D_FONT_ENCODING_CP1252,
    NNS_G2D_NUM_OF_ENCODING
} NNSG2dFontEncoding;

typedef enum NNSG2dFontMappingMethod {
    NNS_G2D_MAPMETHOD_DIRECT,
    NNS_G2D_MAPMETHOD_TABLE,
    NNS_G2D_MAPMETHOD_SCAN,
    NNS_G2D_NUM_OF_MAPMETHOD
} NNSG2dFontMappingMethod;

typedef enum NNSG2dFontGlyphFlag {
    NNS_G2D_FONT_FLAG_TBRL      = (1 << 0),
    NNS_G2D_FONT_FLAG_ROT_0     = (0 << 1),
    NNS_G2D_FONT_FLAG_ROT_90    = (1 << 1),
    NNS_G2D_FONT_FLAG_ROT_180   = (2 << 1),
    NNS_G2D_FONT_FLAG_ROT_270   = (3 << 1),
    NNS_G2D_FONT_FLAG_ROT_MASK  = (3 << 1)
} NNSG2dFontGlyphFlag;

typedef struct NNSG2dCharWidths {
    s8 left;
    u8 glyphWidth;
    s8 charWidth;
} NNSG2dCharWidths;

typedef struct NNSG2dCMapScanEntry {
    u16 ccode;
    u16 index;
} NNSG2dCMapScanEntry;

typedef struct NNSG2dCMapInfoScan {
    u16 num;
    NNSG2dCMapScanEntry entries[];
} NNSG2dCMapInfoScan;

typedef struct NNSG2dFontGlyph {
    u8 cellWidth;
    u8 cellHeight;
    u16 cellSize;
    s8 baselinePos;
    u8 maxCharWidth;
    u8 bpp;
    u8 flags;

    u8 glyphTable[];
} NNSG2dFontGlyph;

typedef struct NNSG2dFontWidth {
    u16 indexBegin;
    u16 indexEnd;
    struct NNSG2dFontWidth * pNext;
    NNSG2dCharWidths widthTable[];
} NNSG2dFontWidth;

typedef struct NNSG2dFontCodeMap {
    u16 ccodeBegin;
    u16 ccodeEnd;
    u16 mappingMethod;
    u16 reserved;
    struct NNSG2dFontCodeMap * pNext;
    u16 mapInfo[];
} NNSG2dFontCodeMap;

typedef struct NNSG2dFontInformation {
    u8 fontType;
    s8 linefeed;
    u16 alterCharIndex;
    NNSG2dCharWidths defaultWidth;
    u8 encoding;
    NNSG2dFontGlyph * pGlyph;
    NNSG2dFontWidth * pWidth;
    NNSG2dFontCodeMap * pMap;
} NNSG2dFontInformation;

typedef struct NNSG2dFontInformationBlock {
    NNSG2dBinaryBlockHeader blockHeader;
    NNSG2dFontInformation blockBody;
} NNSG2dFontInformationBlock;

typedef struct NNSG2dFontGlyphBlock {
    NNSG2dBinaryBlockHeader blockHeader;
    NNSG2dFontGlyph blockBody;
} NNSG2dFontGlyphBlock;

typedef struct NNSG2dFontWidthBlock {
    NNSG2dBinaryBlockHeader blockHeader;
    NNSG2dFontWidth blockBody;
} NNSG2dFontWidthBlock;

typedef struct NNSG2dFontCodeMapBlock {
    NNSG2dBinaryBlockHeader blockHeader;
    NNSG2dFontCodeMap blockBody;
} NNSG2dFontCodeMapBlock;

#ifdef NNS_G2D_FONT_USE_OLD_RESOURCE

#define NNS_G2D_NFTR_PREV_MAJOR_VER (u8)1
#define NNS_G2D_NFTR_PREV_MINOR_VER (u8)0

#define NNS_G2D_NFTR_PREV_VER (u16)((NNS_G2D_NFTR_PREV_MAJOR_VER << 8) | NNS_G2D_NFTR_PREV_MINOR_VER)

#endif

#ifdef __cplusplus
}
#endif

#ifdef _MSC_VER
    #pragma warning( default: 4200 )
    #pragma warning( default: 4201 )
#endif

#endif
