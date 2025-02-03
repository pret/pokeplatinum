#ifndef POKEPLATINUM_SPRITE_TRANSFER_H
#define POKEPLATINUM_SPRITE_TRANSFER_H

#include <nnsys.h>

#include "sprite_resource.h"

BOOL SpriteTransfer_RequestChar(const SpriteResource *param0);
void SpriteTransfer_RequestCharList(const SpriteResourceList *param0);
BOOL SpriteTransfer_RequestCharWithHardwareMappingType(const SpriteResource *param0);
BOOL SpriteTransfer_RequestCharAtEnd(const SpriteResource *param0);
void SpriteTransfer_RequestCharListAtEnd(const SpriteResourceList *param0);
BOOL SpriteTransfer_RequestCharAtEndWithHardwareMappingType(const SpriteResource *param0);
void SpriteTransfer_ReplaceCharData(const SpriteResource *param0, const SpriteResource *param1);
void SpriteTransfer_RetransferCharData(const SpriteResource *param0);
void SpriteTransfer_ResetCharTransfer(SpriteResource *param0);
void SpriteTransfer_ResetCharTransferList(SpriteResourceList *param0);
NNSG2dImageProxy *SpriteTransfer_GetImageProxy(const SpriteResource *param0);
NNSG2dImageProxy *SpriteTransfer_GetCellTransferProxy(const SpriteResource *param0, const SpriteResource *param1);
void SpriteTransfer_DeleteCharTransfer(const NNSG2dImageProxy *param0);
BOOL SpriteTransfer_RequestPlttWholeRange(const SpriteResource *param0);
void SpriteTransfer_RequestPlttWholeRangeList(const SpriteResourceList *param0);
BOOL SpriteTransfer_RequestPlttFreeSpace(const SpriteResource *param0);
void SpriteTransfer_RequestPlttFreeSpaceList(const SpriteResourceList *param0);
void SpriteTransfer_ReplacePlttData(const SpriteResource *param0);
void SpriteTransfer_ResetPlttTransfer(SpriteResource *param0);
void SpriteTransfer_ResetPlttTransferList(SpriteResourceList *param0);
const NNSG2dImagePaletteProxy *SpriteTransfer_GetPaletteProxy(const SpriteResource *param0, NNSG2dImageProxy *param1);
u32 SpriteTransfer_GetPlttOffset(const SpriteResource *param0, NNS_G2D_VRAM_TYPE param1);

#endif // POKEPLATINUM_SPRITE_TRANSFER_H
