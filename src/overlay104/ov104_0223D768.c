#include "overlay104/ov104_0223D768.h"

#include <nitro.h>
#include <string.h>

#include "narc.h"
#include "palette.h"
#include "sprite_system.h"

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

void ov104_0223D768(SpriteSystem *param0, SpriteManager *param1, NARC *param2, PaletteData *param3, u16 param4)
{
    const SpriteTemplate *v0;

    GF_ASSERT(param4 < NELEMS(Unk_ov104_022417D8));
    v0 = &Unk_ov104_022417D8[param4];

    SpriteSystem_LoadCharResObjFromOpenNarc(param0, param1, param2, v0->resources[0], 1, NNS_G2D_VRAM_TYPE_2DMAIN, v0->resources[0]);
    SpriteSystem_LoadPaletteBufferFromOpenNarc(param3, 2, param0, param1, param2, v0->resources[1], 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, v0->resources[1]);
    SpriteSystem_LoadCellResObjFromOpenNarc(param0, param1, param2, v0->resources[2], 1, v0->resources[2]);
    SpriteSystem_LoadAnimResObjFromOpenNarc(param0, param1, param2, v0->resources[3], 1, v0->resources[3]);
}

void ov104_0223D7EC(SpriteManager *param0, u16 param1)
{
    const SpriteTemplate *v0;

    GF_ASSERT(param1 < NELEMS(Unk_ov104_022417D8));
    v0 = &Unk_ov104_022417D8[param1];

    SpriteManager_UnloadCharObjById(param0, v0->resources[0]);
    SpriteManager_UnloadPlttObjById(param0, v0->resources[1]);
    SpriteManager_UnloadCellObjById(param0, v0->resources[2]);
    SpriteManager_UnloadAnimObjById(param0, v0->resources[3]);
}

CellActorData *ov104_0223D828(SpriteSystem *param0, SpriteManager *param1, u16 param2)
{
    CellActorData *v0;

    GF_ASSERT(param2 < NELEMS(Unk_ov104_022417D8));

    v0 = SpriteSystem_NewSprite(param0, param1, &Unk_ov104_022417D8[param2]);
    Sprite_TickFrame(v0->sprite);
    return v0;
}

void ov104_0223D858(CellActorData *param0)
{
    Sprite_DeleteAndFreeResources(param0);
}
