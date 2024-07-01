#include "unk_0200A328.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02009DC8_decl.h"
#include "struct_defs/struct_02009CFC.h"
#include "struct_defs/struct_0200A328.h"
#include "struct_defs/struct_0200A5C8.h"

#include "sprite_util.h"
#include "unk_0201E86C.h"
#include "unk_0201F834.h"

BOOL sub_0200A328(const SpriteResource *param0)
{
    UnkStruct_0200A328 v0;

    GF_ASSERT(param0);
    GF_ASSERT(sub_02009EAC(param0) == 0);

    v0.unk_00 = sub_02009E1C(param0);
    v0.unk_04 = sub_02009EBC(param0);
    v0.unk_08 = sub_02009E08(param0);
    v0.unk_0C = 0;

    return sub_0201EA24(&v0);
}

void sub_0200A368(const UnkStruct_02009CFC *param0)
{
    int v0;
    BOOL v1;

    GF_ASSERT(param0);

    for (v0 = 0; v0 < param0->unk_04; v0++) {
        if (param0->unk_00[v0]) {
            v1 = sub_0200A328(param0->unk_00[v0]);
            GF_ASSERT(v1);
        }
    }
}

BOOL sub_0200A39C(const SpriteResource *param0)
{
    UnkStruct_0200A328 v0;

    GF_ASSERT(param0);
    GF_ASSERT(sub_02009EAC(param0) == 0);

    v0.unk_00 = sub_02009E1C(param0);
    v0.unk_04 = sub_02009EBC(param0);
    v0.unk_08 = sub_02009E08(param0);
    v0.unk_0C = 0;

    return sub_0201EA7C(&v0);
}

BOOL sub_0200A3DC(const SpriteResource *param0)
{
    UnkStruct_0200A328 v0;

    GF_ASSERT(param0);
    GF_ASSERT(sub_02009EAC(param0) == 0);

    v0.unk_00 = sub_02009E1C(param0);
    v0.unk_04 = sub_02009EBC(param0);
    v0.unk_08 = sub_02009E08(param0);
    v0.unk_0C = 1;

    return sub_0201EA24(&v0);
}

void sub_0200A41C(const UnkStruct_02009CFC *param0)
{
    int v0;
    BOOL v1;

    GF_ASSERT(param0);

    for (v0 = 0; v0 < param0->unk_04; v0++) {
        if (param0->unk_00[v0]) {
            v1 = sub_0200A3DC(param0->unk_00[v0]);
            GF_ASSERT(v1);
        }
    }
}

BOOL sub_0200A450(const SpriteResource *param0)
{
    UnkStruct_0200A328 v0;

    GF_ASSERT(param0);
    GF_ASSERT(sub_02009EAC(param0) == 0);

    v0.unk_00 = sub_02009E1C(param0);
    v0.unk_04 = sub_02009EBC(param0);
    v0.unk_08 = sub_02009E08(param0);
    v0.unk_0C = 1;

    return sub_0201EA7C(&v0);
}

void sub_0200A490(const SpriteResource *param0, const SpriteResource *param1)
{
    int v0;
    NNSG2dCharacterData *v1;

    GF_ASSERT(param0);
    GF_ASSERT(param1);

    v0 = sub_02009E08(param0);
    v1 = sub_02009E1C(param1);

    sub_0201EB08(v0, v1);
}

void sub_0200A4C0(const SpriteResource *param0)
{
    int v0;
    NNSG2dCharacterData *v1;

    GF_ASSERT(param0);

    v0 = sub_02009E08(param0);
    v1 = sub_02009E1C(param0);

    sub_0201EB08(v0, v1);
}

void sub_0200A4E4(SpriteResource *param0)
{
    int v0;

    GF_ASSERT(param0);
    GF_ASSERT(sub_02009EAC(param0) == 0);

    v0 = sub_02009E08(param0);
    sub_0201EB50(v0);
}

void sub_0200A508(UnkStruct_02009CFC *param0)
{
    int v0;

    GF_ASSERT(param0);

    for (v0 = 0; v0 < param0->unk_04; v0++) {
        if (param0->unk_00[v0]) {
            sub_0200A4E4(param0->unk_00[v0]);
        }
    }
}

NNSG2dImageProxy *sub_0200A534(const SpriteResource *param0)
{
    int v0;

    GF_ASSERT(param0);
    GF_ASSERT(sub_02009EAC(param0) == 0);

    v0 = sub_02009E08(param0);
    return sub_0201EBDC(v0);
}

NNSG2dImageProxy *sub_0200A558(const SpriteResource *param0, const SpriteResource *param1)
{
    int v0;
    NNSG2dCellDataBank *v1;
    NNSG2dImageProxy *v2;

    GF_ASSERT(param0);
    GF_ASSERT(sub_02009EAC(param0) == 0);
    GF_ASSERT(param1);
    GF_ASSERT(sub_02009EAC(param1) == 2);

    v0 = sub_02009E08(param0);
    v1 = sub_02009E4C(param1);
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
    GF_ASSERT(sub_02009EAC(param0) == 1);

    v0.unk_00 = sub_02009E34(param0);
    v0.unk_04 = sub_02009EBC(param0);
    v0.unk_0C = sub_02009E08(param0);
    v0.unk_08 = sub_02009EE8(param0);

    return sub_0201F90C(&v0);
}

void sub_0200A60C(const UnkStruct_02009CFC *param0)
{
    int v0;
    BOOL v1;

    GF_ASSERT(param0);

    for (v0 = 0; v0 < param0->unk_04; v0++) {
        if (param0->unk_00[v0]) {
            v1 = sub_0200A5C8(param0->unk_00[v0]);
            GF_ASSERT(v1);
        }
    }
}

BOOL sub_0200A640(const SpriteResource *param0)
{
    UnkStruct_0200A5C8 v0;

    GF_ASSERT(param0);
    GF_ASSERT(sub_02009EAC(param0) == 1);

    v0.unk_00 = sub_02009E34(param0);
    v0.unk_04 = sub_02009EBC(param0);
    v0.unk_0C = sub_02009E08(param0);
    v0.unk_08 = sub_02009EE8(param0);

    return sub_0201F950(&v0);
}

void sub_0200A684(const UnkStruct_02009CFC *param0)
{
    int v0;
    BOOL v1;

    GF_ASSERT(param0);

    for (v0 = 0; v0 < param0->unk_04; v0++) {
        if (param0->unk_00[v0]) {
            v1 = sub_0200A640(param0->unk_00[v0]);
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

    v1 = sub_02009E08(param0);
    v0 = sub_02009E34(param0);

    sub_0201F990(v1, v0);
}

void sub_0200A6DC(SpriteResource *param0)
{
    int v0;

    GF_ASSERT(param0);
    GF_ASSERT(sub_02009EAC(param0) == 1);

    v0 = sub_02009E08(param0);
    sub_0201F9F0(v0);
}

void sub_0200A700(UnkStruct_02009CFC *param0)
{
    int v0;

    GF_ASSERT(param0);

    for (v0 = 0; v0 < param0->unk_04; v0++) {
        if (param0->unk_00[v0]) {
            sub_0200A6DC(param0->unk_00[v0]);
        }
    }
}

const NNSG2dImagePaletteProxy *sub_0200A72C(const SpriteResource *param0, NNSG2dImageProxy *param1)
{
    int v0;

    GF_ASSERT(param0);
    GF_ASSERT(sub_02009EAC(param0) == 1);

    v0 = sub_02009E08(param0);

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
