#ifndef POKEPLATINUM_PALETTE_H
#define POKEPLATINUM_PALETTE_H

#include "constants/heap.h"
#include "constants/narc.h"

#define BlendColor(source, target, fraction) ((source) + (((target) - (source)) * (fraction) >> 4))

#define ColorR(source) ((source) & 0x1F)
#define ColorG(source) (((source) >> 5) & 0x1F)
#define ColorB(source) (((source) >> 10) & 0x1F)
#define RGB(r, g, b)   (((b) << 10) | ((g) << 5) | (r))

enum PaletteBufferID {
    PLTTBUF_MAIN_BG = 0,
    PLTTBUF_SUB_BG,
    PLTTBUF_MAIN_OBJ,
    PLTTBUF_SUB_OBJ,
    PLTTBUF_EX_BEGIN,

    PLTTBUF_MAIN_EX_BG_0 = PLTTBUF_EX_BEGIN,
    PLTTBUF_MAIN_EX_BG_1,
    PLTTBUF_MAIN_EX_BG_2,
    PLTTBUF_MAIN_EX_BG_3,
    PLTTBUF_SUB_EX_BG_0,
    PLTTBUF_SUB_EX_BG_1,
    PLTTBUF_SUB_EX_BG_2,
    PLTTBUF_SUB_EX_BG_3,
    PLTTBUF_MAIN_EX_OBJ,
    PLTTBUF_SUB_EX_OBJ,

    PLTTBUF_MAX,
};

#define PLTTBUF_MAIN_BG_F      (1 << PLTTBUF_MAIN_BG)
#define PLTTBUF_SUB_BG_F       (1 << PLTTBUF_SUB_BG)
#define PLTTBUF_MAIN_OBJ_F     (1 << PLTTBUF_MAIN_OBJ)
#define PLTTBUF_SUB_OBJ_F      (1 << PLTTBUF_SUB_OBJ)
#define PLTTBUF_MAIN_EX_BG_0_F (1 << PLTTBUF_MAIN_EX_BG_0)
#define PLTTBUF_MAIN_EX_BG_1_F (1 << PLTTBUF_MAIN_EX_BG_1)
#define PLTTBUF_MAIN_EX_BG_2_F (1 << PLTTBUF_MAIN_EX_BG_2)
#define PLTTBUF_MAIN_EX_BG_3_F (1 << PLTTBUF_MAIN_EX_BG_3)
#define PLTTBUF_SUB_EX_BG_0_F  (1 << PLTTBUF_SUB_EX_BG_0)
#define PLTTBUF_SUB_EX_BG_1_F  (1 << PLTTBUF_SUB_EX_BG_1)
#define PLTTBUF_SUB_EX_BG_2_F  (1 << PLTTBUF_SUB_EX_BG_2)
#define PLTTBUF_SUB_EX_BG_3_F  (1 << PLTTBUF_SUB_EX_BG_3)
#define PLTTBUF_MAIN_EX_OBJ_F  (1 << PLTTBUF_MAIN_EX_OBJ)
#define PLTTBUF_SUB_EX_OBJ_F   (1 << PLTTBUF_SUB_EX_OBJ)
#define PLTTBUF_ALL_F          ((1 << PLTTBUF_MAX) - 1)

enum PaletteSelector {
    PLTTSEL_FADED,
    PLTTSEL_UNFADED,
    PLTTSEL_BOTH,
};

enum Palette {
    PLTT_0 = 0,
    PLTT_1,
    PLTT_2,
    PLTT_3,
    PLTT_4,
    PLTT_5,
    PLTT_6,
    PLTT_7,
    PLTT_8,
    PLTT_9,
    PLTT_10,
    PLTT_11,
    PLTT_12,
    PLTT_13,
    PLTT_14,
    PLTT_15,
};

typedef struct RgbColor {
    u16 r : 5;
    u16 g : 5;
    u16 b : 5;
    u16 unused : 1;
} RgbColor;

typedef struct PaletteFadeControl {
    u16 unfadedMask;
    u16 wait : 6;
    u16 cur : 5;
    u16 end : 5;
    u16 target : 15;
    u16 sign : 1;
    u16 step : 4;
    u16 waitStep : 6;
    u16 unused : 6;
} PaletteFadeControl;

typedef struct PaletteBuffer {
    u16 *unfaded;
    u16 *faded;
    u32 size;
    PaletteFadeControl selected;
} PaletteBuffer;

typedef struct PaletteData {
    PaletteBuffer buffers[14];
    u16 selectedFlag : 2;
    u16 selectedBuffers : 14;
    u16 fadedBuffers : 14;
    u16 fadeInProgress : 1;
    u16 autoTransparent : 1;
    u8 forceExit;
} PaletteData;

void LoadPaletteFromFile(enum NarcID narcID, u32 narcMemberIdx, u32 heapID, u32 size, u16 start, void *dest);
void BlendPalette(const u16 *src, u16 *dest, u16 size, u8 fraction, u16 target);
void BlendPalettes(const u16 *sources, u16 *dests, u16 toBlend, u8 fraction, u16 target);
void TintPalette(u16 *palette, int numColorsToTint, int tintR, int tintG, int tintB);

PaletteData *PaletteData_New(enum HeapID heapID);
void PaletteData_Free(PaletteData *paletteData);
void PaletteData_InitBuffer(PaletteData *paletteData, enum PaletteBufferID bufferID, void *unfaded, void *faded, u32 size);
void PaletteData_AllocBuffer(PaletteData *paletteData, enum PaletteBufferID bufferID, u32 size, u32 heapID);
void PaletteData_FreeBuffer(PaletteData *paletteData, enum PaletteBufferID bufferID);
void PaletteData_LoadBuffer(PaletteData *paletteData, const void *src, enum PaletteBufferID bufferID, u16 destStart, u16 srcSize);
void PaletteData_LoadBufferFromFile(PaletteData *paletteData, enum NarcID narcID, u32 narcMemberIdx, u32 heapID, enum PaletteBufferID bufferID, u32 srcSize, u16 destStart, u16 srcStart);
void PaletteData_LoadBufferFromFileStart(PaletteData *paletteData, enum NarcID narcID, u32 narcMemberIdx, u32 heapID, enum PaletteBufferID bufferID, u32 srcSize, u16 destStart);
void PaletteData_LoadBufferFromFileStartWithTint(PaletteData *paletteData, enum NarcID narcID, u32 narcMemberIdx, u32 heapID, enum PaletteBufferID bufferID, u32 size, u16 start, int r, int g, int b);
void PaletteData_LoadBufferFromHardware(PaletteData *paletteData, enum PaletteBufferID bufferID, u16 start, u32 size);
void PaletteData_CopyBuffer(PaletteData *palette, enum PaletteBufferID srcBufferID, u16 srcStart, enum PaletteBufferID destBufferID, u16 destStart, u16 size);
u16 *PaletteData_GetUnfadedBuffer(PaletteData *palette, enum PaletteBufferID bufferID);
u16 *PaletteData_GetFadedBuffer(PaletteData *palette, enum PaletteBufferID bufferID);
u8 PaletteData_StartFade(PaletteData *paletteData, u16 buffersToFade, u16 palettesToFade, s8 wait, u8 cur, u8 end, u16 target);
void PaletteData_CommitFadedBuffers(PaletteData *paletteData);
u16 PaletteData_GetSelectedBuffersMask(PaletteData *paletteData);
void PaletteData_SetAutoTransparent(PaletteData *paletteData, int val);
void PaletteData_SelectAll(PaletteData *paletteData, u8 val);
void PaletteData_FillBufferRange(PaletteData *paletteData, enum PaletteBufferID bufferID, enum PaletteSelector selector, u16 fillVal, u16 start, u16 end);
u16 PaletteData_GetBufferIndexColor(PaletteData *paletteData, enum PaletteBufferID bufferID, enum PaletteSelector selector, u16 index);
void PaletteData_Blend(PaletteData *paletteData, enum PaletteBufferID bufferID, u16 index, u16 size, u8 fraction, u16 target);
void PaletteData_BlendMulti(PaletteData *paletteData, enum PaletteBufferID bufferID, u16 toBlend, u8 fraction, u16 target);

#endif // POKEPLATINUM_PALETTE_H
