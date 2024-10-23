#include "overlay104/ov104_0223D768.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_defs/sprite_template.h"
#include "struct_defs/struct_0200D0F4.h"

#include "palette.h"
#include "unk_0200C6E4.h"

static const SpriteTemplate Unk_ov104_022417D8[] = {
    {
        0x0,
        0x0,
        0x0,
        0x0,
        0x64,
        0x0,
        NNS_G2D_VRAM_TYPE_2DMAIN,
        { 0x21, 0x2C, 0x23, 0x22, 0xffffffff, 0xffffffff },
        0x1,
        0x0,
    },
    {
        0x0,
        0x0,
        0x0,
        0x0,
        0x64,
        0x0,
        NNS_G2D_VRAM_TYPE_2DMAIN,
        { 0x21, 0x2C, 0x23, 0x22, 0xffffffff, 0xffffffff },
        0x1,
        0x0,
    },
    {
        0x0,
        0x0,
        0x0,
        0x0,
        0x64,
        0x0,
        NNS_G2D_VRAM_TYPE_2DMAIN,
        { 0x18, 0x2A, 0x1A, 0x19, 0xffffffff, 0xffffffff },
        0x1,
        0x0,
    },
    {
        0x0,
        0x0,
        0x0,
        0x0,
        0x64,
        0x0,
        NNS_G2D_VRAM_TYPE_2DMAIN,
        { 0x1B, 0x2B, 0x1D, 0x1C, 0xffffffff, 0xffffffff },
        0x1,
        0x0,
    },
};

void ov104_0223D768(SpriteRenderer *param0, SpriteGfxHandler *param1, NARC *param2, PaletteData *param3, u16 param4)
{
    const SpriteTemplate *v0;

    GF_ASSERT(param4 < NELEMS(Unk_ov104_022417D8));
    v0 = &Unk_ov104_022417D8[param4];

    SpriteRenderer_LoadCharResObjFromOpenNarc(param0, param1, param2, v0->resources[0], 1, NNS_G2D_VRAM_TYPE_2DMAIN, v0->resources[0]);
    SpriteRenderer_LoadPalette(param3, 2, param0, param1, param2, v0->resources[1], 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, v0->resources[1]);
    SpriteRenderer_LoadCellResObjFromOpenNarc(param0, param1, param2, v0->resources[2], 1, v0->resources[2]);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(param0, param1, param2, v0->resources[3], 1, v0->resources[3]);
}

void ov104_0223D7EC(SpriteGfxHandler *param0, u16 param1)
{
    const SpriteTemplate *v0;

    GF_ASSERT(param1 < NELEMS(Unk_ov104_022417D8));
    v0 = &Unk_ov104_022417D8[param1];

    SpriteGfxHandler_UnloadCharObjById(param0, v0->resources[0]);
    SpriteGfxHandler_UnloadPlttObjById(param0, v0->resources[1]);
    SpriteGfxHandler_UnloadCellObjById(param0, v0->resources[2]);
    SpriteGfxHandler_UnloadAnimObjById(param0, v0->resources[3]);
}

CellActorData *ov104_0223D828(SpriteRenderer *param0, SpriteGfxHandler *param1, u16 param2)
{
    CellActorData *v0;

    GF_ASSERT(param2 < NELEMS(Unk_ov104_022417D8));

    v0 = SpriteActor_LoadResources(param0, param1, &Unk_ov104_022417D8[param2]);
    SpriteActor_UpdateObject(v0->unk_00);
    return v0;
}

void ov104_0223D858(CellActorData *param0)
{
    sub_0200D0F4(param0);
}
