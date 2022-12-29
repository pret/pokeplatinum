#ifndef NNS_G2D_SCREEN_DATA_H_
#define NNS_G2D_SCREEN_DATA_H_

#include <nitro/types.h>
#include <nnsys/g2d/fmt/g2d_Common_data.h>

#ifndef SDK_ARM9
    #include <nitro_win32.h>
#endif

#ifdef __cplusplus
extern "C" {
#endif

#define NNS_G2D_BINFILE_SIG_SCRDATA (u32)'NSCR'

#define NNS_G2D_BINBLK_SIG_SCRDATA (u32)'SCRN'

#define NNS_G2D_BINFILE_EXT_SCRDATA "NSCR"

#define NNS_G2D_NSCR_MAJOR_VER (u8)1
#define NNS_G2D_NSCR_MINOR_VER (u8)0

#define NNS_G2D_NSCR_VER (u16)((NNS_G2D_NSCR_MAJOR_VER << 8) | NNS_G2D_NSCR_MINOR_VER)

typedef enum NNSG2dColorMode {
    NNS_G2D_SCREENCOLORMODE_16x16,
    NNS_G2D_SCREENCOLORMODE_256x1,
    NNS_G2D_SCREENCOLORMODE_256x16
} NNSG2dColorMode;

typedef enum NNSG2dScreenFormat {
    NNS_G2D_SCREENFORMAT_TEXT,
    NNS_G2D_SCREENFORMAT_AFFINE,
    NNS_G2D_SCREENFORMAT_AFFINEEXT,
    NNS_G2D_SCREENFORMAT_PLTBMP,
    NNS_G2D_SCREENFORMAT_DCBMP
} NNSG2dScreenFormat;

typedef struct NNSG2dScreenData {
    u16 screenWidth;
    u16 screenHeight;
    u16 colorMode;
    u16 screenFormat;
    u32 szByte;
    u32 rawData[1];
} NNSG2dScreenData;

typedef struct NNSG2dScreenDataBlock {
    NNSG2dBinaryBlockHeader blockHeader;
    NNSG2dScreenData screenData;
} NNSG2dScreenDataBlock;

#ifdef __cplusplus
}
#endif

#endif
