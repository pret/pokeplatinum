#include "unk_0200A328.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_0200A5C8.h"

#include "char_transfer.h"
#include "sprite_resource.h"
#include "unk_0201F834.h"

BOOL sub_0200A328(const SpriteResource *param0)
{
    CharTransferTaskTemplate v0;

    GF_ASSERT(param0);
    GF_ASSERT(SpriteResource_GetType(param0) == 0);

    v0.data = SpriteResource_GetTileData(param0);
    v0.vramType = SpriteResource_GetVRAMType(param0);
    v0.resourceID = SpriteResource_GetID(param0);
    v0.atEnd = FALSE;

    return sub_0201EA24(&v0);
}

void sub_0200A368(const SpriteResourceList *param0)
{
    int v0;
    BOOL v1;

    GF_ASSERT(param0);

    for (v0 = 0; v0 < param0->capacity; v0++) {
        if (param0->resources[v0]) {
            v1 = sub_0200A328(param0->resources[v0]);
            GF_ASSERT(v1);
        }
    }
}

BOOL sub_0200A39C(const SpriteResource *param0)
{
    CharTransferTaskTemplate v0;

    GF_ASSERT(param0);
    GF_ASSERT(SpriteResource_GetType(param0) == 0);

    v0.data = SpriteResource_GetTileData(param0);
    v0.vramType = SpriteResource_GetVRAMType(param0);
    v0.resourceID = SpriteResource_GetID(param0);
    v0.atEnd = FALSE;

    return sub_0201EA7C(&v0);
}

BOOL sub_0200A3DC(const SpriteResource *param0)
{
    CharTransferTaskTemplate v0;

    GF_ASSERT(param0);
    GF_ASSERT(SpriteResource_GetType(param0) == 0);

    v0.data = SpriteResource_GetTileData(param0);
    v0.vramType = SpriteResource_GetVRAMType(param0);
    v0.resourceID = SpriteResource_GetID(param0);
    v0.atEnd = TRUE;

    return sub_0201EA24(&v0);
}

void sub_0200A41C(const SpriteResourceList *param0)
{
    int v0;
    BOOL v1;

    GF_ASSERT(param0);

    for (v0 = 0; v0 < param0->capacity; v0++) {
        if (param0->resources[v0]) {
            v1 = sub_0200A3DC(param0->resources[v0]);
            GF_ASSERT(v1);
        }
    }
}

BOOL sub_0200A450(const SpriteResource *param0)
{
    CharTransferTaskTemplate v0;

    GF_ASSERT(param0);
    GF_ASSERT(SpriteResource_GetType(param0) == 0);

    v0.data = SpriteResource_GetTileData(param0);
    v0.vramType = SpriteResource_GetVRAMType(param0);
    v0.resourceID = SpriteResource_GetID(param0);
    v0.atEnd = TRUE;

    return sub_0201EA7C(&v0);
}

void sub_0200A490(const SpriteResource *param0, const SpriteResource *param1)
{
    int v0;
    NNSG2dCharacterData *v1;

    GF_ASSERT(param0);
    GF_ASSERT(param1);

    v0 = SpriteResource_GetID(param0);
    v1 = SpriteResource_GetTileData(param1);

    sub_0201EB08(v0, v1);
}

void sub_0200A4C0(const SpriteResource *param0)
{
    int v0;
    NNSG2dCharacterData *v1;

    GF_ASSERT(param0);

    v0 = SpriteResource_GetID(param0);
    v1 = SpriteResource_GetTileData(param0);

    sub_0201EB08(v0, v1);
}

void sub_0200A4E4(SpriteResource *param0)
{
    int v0;

    GF_ASSERT(param0);
    GF_ASSERT(SpriteResource_GetType(param0) == 0);

    v0 = SpriteResource_GetID(param0);
    sub_0201EB50(v0);
}

void sub_0200A508(SpriteResourceList *param0)
{
    int v0;

    GF_ASSERT(param0);

    for (v0 = 0; v0 < param0->capacity; v0++) {
        if (param0->resources[v0]) {
            sub_0200A4E4(param0->resources[v0]);
        }
    }
}

NNSG2dImageProxy *sub_0200A534(const SpriteResource *param0)
{
    int v0;

    GF_ASSERT(param0);
    GF_ASSERT(SpriteResource_GetType(param0) == 0);

    v0 = SpriteResource_GetID(param0);
    return sub_0201EBDC(v0);
}

NNSG2dImageProxy *sub_0200A558(const SpriteResource *param0, const SpriteResource *param1)
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
    v2 = sub_0201EC00(v0, v1->pVramTransferData->szByteMax);

    if (v2 == NULL) {
        NNSG2dImageProxy *v3;

        v3 = sub_0201EBDC(v0);
        v2 = sub_0201EC84(v3);
    }

    return v2;
}

void sub_0200A5B4(const NNSG2dImageProxy *param0)
{
    GF_ASSERT(param0);
    sub_0201ED1C(param0);
}

BOOL sub_0200A5C8(const SpriteResource *param0)
{
    UnkStruct_0200A5C8 v0;

    GF_ASSERT(param0);
    GF_ASSERT(SpriteResource_GetType(param0) == 1);

    v0.unk_00 = SpriteResource_GetPaletteFade(param0);
    v0.unk_04 = SpriteResource_GetVRAMType(param0);
    v0.unk_0C = SpriteResource_GetID(param0);
    v0.unk_08 = SpriteResource_GetPaletteIndex(param0);

    return sub_0201F90C(&v0);
}

void sub_0200A60C(const SpriteResourceList *param0)
{
    int v0;
    BOOL v1;

    GF_ASSERT(param0);

    for (v0 = 0; v0 < param0->capacity; v0++) {
        if (param0->resources[v0]) {
            v1 = sub_0200A5C8(param0->resources[v0]);
            GF_ASSERT(v1);
        }
    }
}

BOOL sub_0200A640(const SpriteResource *param0)
{
    UnkStruct_0200A5C8 v0;

    GF_ASSERT(param0);
    GF_ASSERT(SpriteResource_GetType(param0) == 1);

    v0.unk_00 = SpriteResource_GetPaletteFade(param0);
    v0.unk_04 = SpriteResource_GetVRAMType(param0);
    v0.unk_0C = SpriteResource_GetID(param0);
    v0.unk_08 = SpriteResource_GetPaletteIndex(param0);

    return sub_0201F950(&v0);
}

void sub_0200A684(const SpriteResourceList *param0)
{
    int v0;
    BOOL v1;

    GF_ASSERT(param0);

    for (v0 = 0; v0 < param0->capacity; v0++) {
        if (param0->resources[v0]) {
            v1 = sub_0200A640(param0->resources[v0]);
            GF_ASSERT(v1);
        }
    }
}

void sub_0200A6B8(const SpriteResource *param0)
{
    NNSG2dPaletteData *v0;
    int v1;
    int v2;

    GF_ASSERT(param0);

    v1 = SpriteResource_GetID(param0);
    v0 = SpriteResource_GetPaletteFade(param0);

    sub_0201F990(v1, v0);
}

void sub_0200A6DC(SpriteResource *param0)
{
    int v0;

    GF_ASSERT(param0);
    GF_ASSERT(SpriteResource_GetType(param0) == 1);

    v0 = SpriteResource_GetID(param0);
    sub_0201F9F0(v0);
}

void sub_0200A700(SpriteResourceList *param0)
{
    int v0;

    GF_ASSERT(param0);

    for (v0 = 0; v0 < param0->capacity; v0++) {
        if (param0->resources[v0]) {
            sub_0200A6DC(param0->resources[v0]);
        }
    }
}

const NNSG2dImagePaletteProxy *sub_0200A72C(const SpriteResource *param0, NNSG2dImageProxy *param1)
{
    int v0;

    GF_ASSERT(param0);
    GF_ASSERT(SpriteResource_GetType(param0) == 1);

    v0 = SpriteResource_GetID(param0);

    if (param1) {
        return sub_0201FA80(v0, param1);
    }

    return sub_0201FA58(v0);
}

u32 sub_0200A760(const SpriteResource *param0, NNS_G2D_VRAM_TYPE param1)
{
    int v0;
    const NNSG2dImagePaletteProxy *v1;

    v1 = sub_0200A72C(param0, NULL);
    v0 = NNS_G2dGetImagePaletteLocation(v1, param1);

    if (v0 != (NNS_G2D_VRAM_ADDR_NOT_INITIALIZED)) {
        v0 /= 32;
    }

    return v0;
}
