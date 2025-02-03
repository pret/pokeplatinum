#include "sprite_transfer.h"

#include <nitro.h>
#include <string.h>

#include "char_transfer.h"
#include "pltt_transfer.h"
#include "sprite_resource.h"

BOOL SpriteTransfer_RequestChar(const SpriteResource *param0)
{
    CharTransferTaskTemplate v0;

    GF_ASSERT(param0);
    GF_ASSERT(SpriteResource_GetType(param0) == 0);

    v0.data = SpriteResource_GetTileData(param0);
    v0.vramType = SpriteResource_GetVRAMType(param0);
    v0.resourceID = SpriteResource_GetID(param0);
    v0.atEnd = FALSE;

    return CharTransfer_Request(&v0);
}

void SpriteTransfer_RequestCharList(const SpriteResourceList *param0)
{
    int v0;
    BOOL v1;

    GF_ASSERT(param0);

    for (v0 = 0; v0 < param0->capacity; v0++) {
        if (param0->resources[v0]) {
            v1 = SpriteTransfer_RequestChar(param0->resources[v0]);
            GF_ASSERT(v1);
        }
    }
}

BOOL SpriteTransfer_RequestCharWithHardwareMappingType(const SpriteResource *param0)
{
    CharTransferTaskTemplate v0;

    GF_ASSERT(param0);
    GF_ASSERT(SpriteResource_GetType(param0) == 0);

    v0.data = SpriteResource_GetTileData(param0);
    v0.vramType = SpriteResource_GetVRAMType(param0);
    v0.resourceID = SpriteResource_GetID(param0);
    v0.atEnd = FALSE;

    return CharTransfer_RequestWithHardwareMappingType(&v0);
}

BOOL SpriteTransfer_RequestCharAtEnd(const SpriteResource *param0)
{
    CharTransferTaskTemplate v0;

    GF_ASSERT(param0);
    GF_ASSERT(SpriteResource_GetType(param0) == 0);

    v0.data = SpriteResource_GetTileData(param0);
    v0.vramType = SpriteResource_GetVRAMType(param0);
    v0.resourceID = SpriteResource_GetID(param0);
    v0.atEnd = TRUE;

    return CharTransfer_Request(&v0);
}

void SpriteTransfer_RequestCharListAtEnd(const SpriteResourceList *param0)
{
    int v0;
    BOOL v1;

    GF_ASSERT(param0);

    for (v0 = 0; v0 < param0->capacity; v0++) {
        if (param0->resources[v0]) {
            v1 = SpriteTransfer_RequestCharAtEnd(param0->resources[v0]);
            GF_ASSERT(v1);
        }
    }
}

BOOL SpriteTransfer_RequestCharAtEndWithHardwareMappingType(const SpriteResource *param0)
{
    CharTransferTaskTemplate v0;

    GF_ASSERT(param0);
    GF_ASSERT(SpriteResource_GetType(param0) == 0);

    v0.data = SpriteResource_GetTileData(param0);
    v0.vramType = SpriteResource_GetVRAMType(param0);
    v0.resourceID = SpriteResource_GetID(param0);
    v0.atEnd = TRUE;

    return CharTransfer_RequestWithHardwareMappingType(&v0);
}

void SpriteTransfer_ReplaceCharData(const SpriteResource *param0, const SpriteResource *param1)
{
    int v0;
    NNSG2dCharacterData *v1;

    GF_ASSERT(param0);
    GF_ASSERT(param1);

    v0 = SpriteResource_GetID(param0);
    v1 = SpriteResource_GetTileData(param1);

    CharTransfer_ReplaceCharData(v0, v1);
}

void SpriteTransfer_RetransferCharData(const SpriteResource *param0)
{
    int v0;
    NNSG2dCharacterData *v1;

    GF_ASSERT(param0);

    v0 = SpriteResource_GetID(param0);
    v1 = SpriteResource_GetTileData(param0);

    CharTransfer_ReplaceCharData(v0, v1);
}

void SpriteTransfer_ResetCharTransfer(SpriteResource *param0)
{
    int v0;

    GF_ASSERT(param0);
    GF_ASSERT(SpriteResource_GetType(param0) == 0);

    v0 = SpriteResource_GetID(param0);
    CharTransfer_ResetTask(v0);
}

void SpriteTransfer_ResetCharTransferList(SpriteResourceList *param0)
{
    int v0;

    GF_ASSERT(param0);

    for (v0 = 0; v0 < param0->capacity; v0++) {
        if (param0->resources[v0]) {
            SpriteTransfer_ResetCharTransfer(param0->resources[v0]);
        }
    }
}

NNSG2dImageProxy *SpriteTransfer_GetImageProxy(const SpriteResource *param0)
{
    int v0;

    GF_ASSERT(param0);
    GF_ASSERT(SpriteResource_GetType(param0) == 0);

    v0 = SpriteResource_GetID(param0);
    return CharTransfer_GetImageProxy(v0);
}

NNSG2dImageProxy *SpriteTransfer_GetCellTransferProxy(const SpriteResource *param0, const SpriteResource *param1)
{
    int v0;
    NNSG2dCellDataBank *v1;
    NNSG2dImageProxy *v2;

    GF_ASSERT(param0);
    GF_ASSERT(SpriteResource_GetType(param0) == 0);
    GF_ASSERT(param1);
    GF_ASSERT(SpriteResource_GetType(param1) == 2);

    v0 = SpriteResource_GetID(param0);
    v1 = SpriteResource_GetSpriteData(param1);
    v2 = CharTransfer_ResizeTaskRange(v0, v1->pVramTransferData->szByteMax);

    if (v2 == NULL) {
        NNSG2dImageProxy *v3;

        v3 = CharTransfer_GetImageProxy(v0);
        v2 = CharTransfer_CopyTask(v3);
    }

    return v2;
}

void SpriteTransfer_DeleteCharTransfer(const NNSG2dImageProxy *param0)
{
    GF_ASSERT(param0);
    CharTransfer_DeleteTask(param0);
}

BOOL SpriteTransfer_RequestPlttWholeRange(const SpriteResource *param0)
{
    PlttTransferTaskTemplate v0;

    GF_ASSERT(param0);
    GF_ASSERT(SpriteResource_GetType(param0) == 1);

    v0.data = SpriteResource_GetPaletteFade(param0);
    v0.vramType = SpriteResource_GetVRAMType(param0);
    v0.resourceID = SpriteResource_GetID(param0);
    v0.plttIndex = SpriteResource_GetPaletteIndex(param0);

    return PlttTransfer_RequestWholeRange(&v0);
}

void SpriteTransfer_RequestPlttWholeRangeList(const SpriteResourceList *param0)
{
    int v0;
    BOOL v1;

    GF_ASSERT(param0);

    for (v0 = 0; v0 < param0->capacity; v0++) {
        if (param0->resources[v0]) {
            v1 = SpriteTransfer_RequestPlttWholeRange(param0->resources[v0]);
            GF_ASSERT(v1);
        }
    }
}

BOOL SpriteTransfer_RequestPlttFreeSpace(const SpriteResource *param0)
{
    PlttTransferTaskTemplate v0;

    GF_ASSERT(param0);
    GF_ASSERT(SpriteResource_GetType(param0) == 1);

    v0.data = SpriteResource_GetPaletteFade(param0);
    v0.vramType = SpriteResource_GetVRAMType(param0);
    v0.resourceID = SpriteResource_GetID(param0);
    v0.plttIndex = SpriteResource_GetPaletteIndex(param0);

    return PlttTransfer_RequestFreeSpace(&v0);
}

void SpriteTransfer_RequestPlttFreeSpaceList(const SpriteResourceList *param0)
{
    int v0;
    BOOL v1;

    GF_ASSERT(param0);

    for (v0 = 0; v0 < param0->capacity; v0++) {
        if (param0->resources[v0]) {
            v1 = SpriteTransfer_RequestPlttFreeSpace(param0->resources[v0]);
            GF_ASSERT(v1);
        }
    }
}

void SpriteTransfer_ReplacePlttData(const SpriteResource *param0)
{
    NNSG2dPaletteData *v0;
    int v1;
    int v2;

    GF_ASSERT(param0);

    v1 = SpriteResource_GetID(param0);
    v0 = SpriteResource_GetPaletteFade(param0);

    PlttTransfer_ReplacePlttData(v1, v0);
}

void SpriteTransfer_ResetPlttTransfer(SpriteResource *param0)
{
    int v0;

    GF_ASSERT(param0);
    GF_ASSERT(SpriteResource_GetType(param0) == 1);

    v0 = SpriteResource_GetID(param0);
    PlttTransfer_ResetTask(v0);
}

void SpriteTransfer_ResetPlttTransferList(SpriteResourceList *param0)
{
    int v0;

    GF_ASSERT(param0);

    for (v0 = 0; v0 < param0->capacity; v0++) {
        if (param0->resources[v0]) {
            SpriteTransfer_ResetPlttTransfer(param0->resources[v0]);
        }
    }
}

const NNSG2dImagePaletteProxy *SpriteTransfer_GetPaletteProxy(const SpriteResource *param0, NNSG2dImageProxy *param1)
{
    int v0;

    GF_ASSERT(param0);
    GF_ASSERT(SpriteResource_GetType(param0) == 1);

    v0 = SpriteResource_GetID(param0);

    if (param1) {
        return PlttTransfer_ToggleExtPalette(v0, param1);
    }

    return PlttTransfer_GetPaletteProxy(v0);
}

u32 SpriteTransfer_GetPlttOffset(const SpriteResource *param0, NNS_G2D_VRAM_TYPE param1)
{
    int v0;
    const NNSG2dImagePaletteProxy *v1;

    v1 = SpriteTransfer_GetPaletteProxy(param0, NULL);
    v0 = NNS_G2dGetImagePaletteLocation(v1, param1);

    if (v0 != (NNS_G2D_VRAM_ADDR_NOT_INITIALIZED)) {
        v0 /= 32;
    }

    return v0;
}
