#ifndef POKEPLATINUM_GRAPHICS_H
#define POKEPLATINUM_GRAPHICS_H

#include <nnsys.h>

#include "bg_window.h"
#include "narc.h"

enum PaletteLoadLocation {
    PAL_LOAD_MAIN_BG = 0,
    PAL_LOAD_MAIN_OBJ,
    PAL_LOAD_MAIN_BGEXT,
    PAL_LOAD_MAIN_OBJEXT,
    PAL_LOAD_SUB_BG,
    PAL_LOAD_SUB_OBJ,
    PAL_LOAD_SUB_BGEXT,
    PAL_LOAD_SUB_OBJEXT,
};

enum ImageMappingLayout {
    IMAGE_MAPPING_LAYOUT_1D = 0,
    IMAGE_MAPPING_LAYOUT_2D,
};

void *LoadCompressedMemberFromNARC(u32 narcID, u32 narcMemberIdx, u32 heapID);
void *LoadMemberFromNARC(u32 narcID, u32 narcMemberIdx, BOOL compressed, u32 heapID, BOOL allocAtEnd);
void *LoadMemberFromNARC_OutFileSize(u32 narcID, u32 narcMemberIdx, BOOL compressed, u32 heapID, BOOL allocAtEnd, u32 *fileSize);
void *LoadMemberFromOpenNARC(NARC *narc, u32 narcMemberIdx, BOOL compressed, u32 heapID, BOOL allocAtEnd);
void *LoadMemberFromOpenNARC_OutFileSize(NARC *narc, u32 narcMemberIdx, BOOL compressed, u32 heapID, BOOL allocAtEnd, u32 *fileSize);

u32 Graphics_LoadTilesToBgLayer(u32 param0, u32 param1, BgConfig *param2, u32 param3, u32 param4, u32 param5, BOOL param6, u32 param7);
void Graphics_LoadTilemapToBgLayer(u32 param0, u32 param1, BgConfig *param2, u32 param3, u32 param4, u32 param5, BOOL param6, u32 param7);
void Graphics_LoadPalette(u32 param0, u32 param1, int param2, u32 param3, u32 param4, u32 param5);
void Graphics_LoadPaletteWithSrcOffset(u32 param0, u32 param1, int param2, u32 param3, u32 param4, u32 param5, u32 param6);
u32 Graphics_LoadObjectTiles(u32 param0, u32 param1, int param2, u32 param3, u32 param4, BOOL param5, u32 param6);
void Graphics_LoadPartialPalette(u32 param0, u32 param1, NNS_G2D_VRAM_TYPE param2, u32 param3, u32 param4, NNSG2dImagePaletteProxy *param5);
u32 Graphics_LoadImageMapping(u32 param0, u32 param1, BOOL param2, int param3, u32 param4, NNS_G2D_VRAM_TYPE param5, u32 param6, u32 param7, NNSG2dImageProxy *param8);
void Graphics_LoadImageMappingAndSetVramMode(u32 param0, u32 param1, BOOL param2, int param3, u32 param4, NNS_G2D_VRAM_TYPE param5, u32 param6, u32 param7, NNSG2dImageProxy *param8);
void *Graphics_GetCharData(u32 param0, u32 param1, BOOL param2, NNSG2dCharacterData **param3, u32 param4);
void *Graphics_GetScrnData(u32 param0, u32 param1, BOOL param2, NNSG2dScreenData **param3, u32 param4);
void *Graphics_GetPlttData(u32 bankID, u32 memberIndex, NNSG2dPaletteData **param2, u32 param3);
void *Graphics_GetCellBank(u32 param0, u32 param1, BOOL param2, NNSG2dCellDataBank **param3, u32 param4);
void *Graphics_GetAnimBank(u32 param0, u32 param1, BOOL param2, NNSG2dAnimBankData **param3, u32 param4);
u32 Graphics_LoadTilesToBgLayerFromOpenNARC(NARC *param0, u32 param1, BgConfig *param2, u32 param3, u32 param4, u32 param5, BOOL param6, u32 param7);
void Graphics_LoadTilemapToBgLayerFromOpenNARC(NARC *param0, u32 param1, BgConfig *param2, u32 param3, u32 param4, u32 param5, BOOL param6, u32 param7);
void Graphics_LoadPaletteFromOpenNARC(NARC *param0, u32 param1, int param2, u32 param3, u32 param4, u32 param5);
void Graphics_LoadPaletteWithSrcOffsetFromOpenNARC(NARC *param0, u32 param1, int param2, u32 param3, u32 param4, u32 param5, u32 param6);
void Graphics_LoadPartialPaletteFromOpenNARC(NARC *param0, u32 param1, NNS_G2D_VRAM_TYPE param2, u32 param3, u32 param4, NNSG2dImagePaletteProxy *param5);
u32 Graphics_LoadImageMappingFromOpenNARC(NARC *param0, u32 param1, BOOL param2, int param3, u32 param4, NNS_G2D_VRAM_TYPE param5, u32 param6, u32 param7, NNSG2dImageProxy *param8);
void *Graphics_GetCharDataFromOpenNARC(NARC *param0, u32 param1, BOOL param2, NNSG2dCharacterData **param3, u32 param4);
void *Graphics_GetScrnDataFromOpenNARC(NARC *param0, u32 param1, BOOL param2, NNSG2dScreenData **param3, u32 param4);
void *Graphics_GetPlttDataFromOpenNARC(NARC *param0, u32 param1, NNSG2dPaletteData **param2, u32 param3);
void *Graphics_GetCellBankFromOpenNARC(NARC *param0, u32 param1, BOOL param2, NNSG2dCellDataBank **param3, u32 param4);
void *Graphics_GetAnimBankFromOpenNARC(NARC *param0, u32 param1, BOOL param2, NNSG2dAnimBankData **param3, u32 param4);

#endif // POKEPLATINUM_GRAPHICS_H
