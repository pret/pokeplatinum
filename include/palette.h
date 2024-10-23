#ifndef POKEPLATINUM_PALETTE_H
#define POKEPLATINUM_PALETTE_H

typedef struct RgbColor {
    u16 r : 5;
    u16 g : 5;
    u16 b : 5;
    u16 unused : 1;
} RgbColor;

typedef struct PaletteFadeControl {
    u16 isOpaque;
    u16 wait : 6;
    u16 cur : 5;
    u16 end : 5;
    u16 nextRGB : 15;
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
    u16 transparentBits : 14;
    u16 callbackFlag : 1;
    u16 autoTransparent : 1;
    u8 forceExit;
} PaletteData;

PaletteData *PaletteData_New(int param0);
void PaletteData_Free(PaletteData *param0);
void PaletteData_InitBuffer(PaletteData *param0, int param1, void *param2, void *param3, u32 param4);
void PaletteData_AllocBuffer(PaletteData *param0, int param1, u32 param2, u32 param3);
void PaletteData_FreeBuffer(PaletteData *param0, int param1);
void PaletteData_LoadBuffer(PaletteData *param0, const void *param1, int param2, u16 param3, u16 param4);
void PaletteData_LoadBufferFromFile(PaletteData *param0, u32 bankID, u32 memberIndex, u32 param3, int param4, u32 param5, u16 param6, u16 param7);
void PaletteData_LoadBufferFromFileStart(PaletteData *param0, u32 bankID, u32 memberIndex, u32 param3, int param4, u32 param5, u16 param6);
void PaletteData_LoadBufferFromHardware(PaletteData *param0, int param1, u16 param2, u32 param3);
void LoadPaletteFromFile(u32 param0, u32 param1, u32 param2, u32 param3, u16 param4, void *param5);
void PaletteData_CopyBuffer(PaletteData *param0, int param1, u16 param2, int param3, u16 param4, u16 param5);
u16 *PaletteData_GetUnfadedBuffer(PaletteData *param0, int param1);
u16 *PaletteData_GetFadedBuffer(PaletteData *param0, int param1);
u8 PaletteData_StartFade(PaletteData *param0, u16 param1, u16 param2, s8 param3, u8 param4, u8 param5, u16 param6);
void PaletteData_CommitFadedBuffers(PaletteData *param0);
u16 PaletteData_GetSelectedBuffersMask(PaletteData *param0);
void PaletteData_SetAutoTransparent(PaletteData *param0, int param1);
void PaletteData_SelectAll(PaletteData *param0, u8 param1);
void PaletteData_FillBufferRange(PaletteData *param0, int param1, int param2, u16 param3, u16 param4, u16 param5);
u16 PaletteData_GetBufferIndexColor(PaletteData *param0, int param1, int param2, u16 param3);
void BlendPalette(const u16 *param0, u16 *param1, u16 param2, u8 param3, u16 param4);
void PaletteData_Blend(PaletteData *param0, int param1, u16 param2, u16 param3, u8 param4, u16 param5);
void BlendPalettes(const u16 *param0, u16 *param1, u16 param2, u8 param3, u16 param4);
void PaletteData_BlendMulti(PaletteData *param0, int param1, u16 param2, u8 param3, u16 param4);
void TintPalette(u16 *param0, int param1, int param2, int param3, int param4);
void PaletteData_TintFromFile(PaletteData *param0, u32 param1, u32 param2, u32 param3, int param4, u32 param5, u16 param6, int param7, int param8, int param9);

#endif // POKEPLATINUM_PALETTE_H
