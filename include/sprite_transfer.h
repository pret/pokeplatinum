#ifndef POKEPLATINUM_SPRITE_TRANSFER_H
#define POKEPLATINUM_SPRITE_TRANSFER_H

#include <nnsys.h>

#include "sprite_resource.h"

BOOL SpriteTransfer_RequestChar(const SpriteResource *resource);
void SpriteTransfer_RequestCharList(const SpriteResourceList *resourceList);
BOOL SpriteTransfer_RequestCharWithHardwareMappingType(const SpriteResource *resource);
BOOL SpriteTransfer_RequestCharAtEnd(const SpriteResource *resource);
void SpriteTransfer_RequestCharListAtEnd(const SpriteResourceList *resourceList);
BOOL SpriteTransfer_RequestCharAtEndWithHardwareMappingType(const SpriteResource *resource);
void SpriteTransfer_ReplaceCharData(const SpriteResource *dst, const SpriteResource *src);
void SpriteTransfer_RetransferCharData(const SpriteResource *resource);
void SpriteTransfer_ResetCharTransfer(SpriteResource *resource);
void SpriteTransfer_ResetCharTransferList(SpriteResourceList *resourceList);
NNSG2dImageProxy *SpriteTransfer_GetImageProxy(const SpriteResource *resource);
NNSG2dImageProxy *SpriteTransfer_GetCellTransferProxy(const SpriteResource *charResource, const SpriteResource *cellResource);
void SpriteTransfer_DeleteCharTransfer(const NNSG2dImageProxy *imageProxy);
BOOL SpriteTransfer_RequestPlttWholeRange(const SpriteResource *resource);
void SpriteTransfer_RequestPlttWholeRangeList(const SpriteResourceList *resourceList);
BOOL SpriteTransfer_RequestPlttFreeSpace(const SpriteResource *resource);
void SpriteTransfer_RequestPlttFreeSpaceList(const SpriteResourceList *resourceList);
void SpriteTransfer_ReplacePlttData(const SpriteResource *resource);
void SpriteTransfer_ResetPlttTransfer(SpriteResource *resource);
void SpriteTransfer_ResetPlttTransferList(SpriteResourceList *resourceList);
const NNSG2dImagePaletteProxy *SpriteTransfer_GetPaletteProxy(const SpriteResource *resource, NNSG2dImageProxy *imageProxy);
u32 SpriteTransfer_GetPlttOffset(const SpriteResource *resource, NNS_G2D_VRAM_TYPE vramType);

#endif // POKEPLATINUM_SPRITE_TRANSFER_H
