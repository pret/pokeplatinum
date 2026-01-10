#ifndef POKEPLATINUM_GRAPHICS_H
#define POKEPLATINUM_GRAPHICS_H

#include <nnsys.h>

#include "constants/graphics.h"

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

void *LoadCompressedMemberFromNARC(enum NarcID narcID, u32 narcMemberIdx, u32 heapID);
void *LoadMemberFromNARC(enum NarcID narcID, u32 narcMemberIdx, BOOL compressed, enum HeapID heapID, BOOL allocAtEnd);
void *LoadMemberFromNARC_OutFileSize(enum NarcID narcID, u32 narcMemberIdx, BOOL compressed, enum HeapID heapID, BOOL allocAtEnd, u32 *fileSize);
void *LoadMemberFromOpenNARC(NARC *narc, u32 narcMemberIdx, BOOL compressed, enum HeapID heapID, BOOL allocAtEnd);
void *LoadMemberFromOpenNARC_OutFileSize(NARC *narc, u32 narcMemberIdx, BOOL compressed, enum HeapID heapID, BOOL allocAtEnd, u32 *fileSize);

u32 Graphics_LoadTilesToBgLayer(enum NarcID narcID, u32 narcMemberIdx, BgConfig *bgConfig, u32 bgLayer, u32 offset, u32 size, BOOL compressed, u32 heapID);
void Graphics_LoadTilemapToBgLayer(enum NarcID narcID, u32 narcMemberIdx, BgConfig *bgConfig, u32 bgLayer, u32 offset, u32 size, BOOL compressed, enum HeapID heapID);
void Graphics_LoadPalette(enum NarcID narcID, u32 narcMemberIdx, enum PaletteLoadLocation loadLocation, u32 palOffset, u32 size, enum HeapID heapID);
void Graphics_LoadPaletteWithSrcOffset(enum NarcID narcID, u32 narcMemberIdx, enum PaletteLoadLocation loadLocation, u32 srcOffset, u32 palOffset, u32 size, enum HeapID heapID);
u32 Graphics_LoadObjectTiles(enum NarcID narcID, u32 narcMemberIdx, enum DSScreen display, u32 offset, u32 size, BOOL compressed, enum HeapID heapID);
void Graphics_LoadPartialPalette(enum NarcID narcID, u32 narcMemberIdx, NNS_G2D_VRAM_TYPE vramType, u32 baseAddr, enum HeapID heapID, NNSG2dImagePaletteProxy *paletteProxy);
u32 Graphics_LoadImageMapping(enum NarcID narcID, u32 narcMemberIdx, BOOL compressed, enum ImageMappingLayout layout, u32 size, NNS_G2D_VRAM_TYPE vramType, u32 baseAddr, enum HeapID heapID, NNSG2dImageProxy *imageProxy);
void Graphics_LoadImageMappingAndSetVramMode(enum NarcID narcID, u32 narcMemberIdx, BOOL compressed, enum ImageMappingLayout layout, u32 size, NNS_G2D_VRAM_TYPE vramType, u32 baseAddr, enum HeapID heapID, NNSG2dImageProxy *imageProxy);

void *Graphics_GetCharData(enum NarcID narcID, u32 narcMemberIdx, BOOL compressed, NNSG2dCharacterData **outCharData, enum HeapID heapID);
void *Graphics_GetScrnData(enum NarcID narcID, u32 narcMemberIdx, BOOL compressed, NNSG2dScreenData **outScreenData, enum HeapID heapID);
void *Graphics_GetPlttData(enum NarcID narcID, u32 narcMemberIdx, NNSG2dPaletteData **outPaletteData, enum HeapID heapID);
void *Graphics_GetCellBank(enum NarcID narcID, u32 narcMemberIdx, BOOL compressed, NNSG2dCellDataBank **outCellBank, enum HeapID heapID);
void *Graphics_GetAnimBank(enum NarcID narcID, u32 narcMemberIdx, BOOL compressed, NNSG2dAnimBankData **outAnimBank, enum HeapID heapID);

u32 Graphics_LoadTilesToBgLayerFromOpenNARC(NARC *narc, u32 narcMemberIdx, BgConfig *bgConfig, u32 bgLayer, u32 offset, u32 size, BOOL compressed, u32 heapID);
void Graphics_LoadTilemapToBgLayerFromOpenNARC(NARC *narc, u32 narcMemberIdx, BgConfig *bgConfig, u32 bgLayer, u32 offset, u32 size, BOOL compressed, enum HeapID heapID);
void Graphics_LoadPaletteFromOpenNARC(NARC *narc, u32 narcMemberIdx, enum PaletteLoadLocation loadLocation, u32 offset, u32 size, u32 heapID);
void Graphics_LoadPaletteWithSrcOffsetFromOpenNARC(NARC *narc, u32 narcMemberIdx, enum PaletteLoadLocation loadLocation, u32 srcOffset, u32 offset, u32 size, enum HeapID heapID);
void Graphics_LoadPartialPaletteFromOpenNARC(NARC *narc, u32 narcMemberIdx, NNS_G2D_VRAM_TYPE vramType, u32 baseAddr, enum HeapID heapID, NNSG2dImagePaletteProxy *paletteProxy);
u32 Graphics_LoadImageMappingFromOpenNARC(NARC *narc, u32 narcMemberIdx, BOOL compressed, enum ImageMappingLayout layout, u32 size, NNS_G2D_VRAM_TYPE vramType, u32 baseAddr, enum HeapID heapID, NNSG2dImageProxy *imageProxy);

void *Graphics_GetCharDataFromOpenNARC(NARC *narc, u32 narcMemberIdx, BOOL compressed, NNSG2dCharacterData **outCharData, enum HeapID heapID);
void *Graphics_GetScrnDataFromOpenNARC(NARC *narc, u32 narcMemberIdx, BOOL compressed, NNSG2dScreenData **outScreenData, enum HeapID heapID);
void *Graphics_GetPlttDataFromOpenNARC(NARC *narc, u32 narcMemberIdx, NNSG2dPaletteData **outPaletteData, enum HeapID heapID);
void *Graphics_GetCellBankFromOpenNARC(NARC *narc, u32 narcMemberIdx, BOOL compressed, NNSG2dCellDataBank **outCellBank, enum HeapID heapID);
void *Graphics_GetAnimBankFromOpenNARC(NARC *narc, u32 narcMemberIdx, BOOL compressed, NNSG2dAnimBankData **outAnimBank, enum HeapID heapID);

#endif // POKEPLATINUM_GRAPHICS_H
