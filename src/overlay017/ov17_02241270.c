#include "overlay017/ov17_02241270.h"

#include <nitro.h>
#include <string.h>

#include "narc.h"
#include "sprite_system.h"

static const SpriteTemplate Unk_ov17_0225364C = {
    0x28,
    0x60,
    0x0,
    0x0,
    0x3E8,
    0x0,
    NNS_G2D_VRAM_TYPE_2DSUB,
    { 0x80FB, 0x80EF, 0x80F6, 0x80F6, 0xFFFFFFFF, 0xFFFFFFFF },
    0x1,
    0x0
};

static const SpriteTemplate Unk_ov17_02253618 = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x3E9,
    0x0,
    NNS_G2D_VRAM_TYPE_2DSUB,
    { 0x80FA, 0x80EF, 0x80F5, 0x80F5, 0xFFFFFFFF, 0xFFFFFFFF },
    0x1,
    0x0
};

static const SpriteTemplate Unk_ov17_02253680 = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x3E9,
    0x1,
    NNS_G2D_VRAM_TYPE_2DSUB,
    { 0x80FA, 0x80EF, 0x80F5, 0x80F5, 0xFFFFFFFF, 0xFFFFFFFF },
    0x1,
    0x0
};

void ov17_02241270(SpriteSystem *param0, SpriteManager *param1, NARC *param2)
{
    SpriteSystem_LoadCharResObjFromOpenNarc(param0, param1, param2, 42, TRUE, NNS_G2D_VRAM_TYPE_2DSUB, 33019);
    SpriteSystem_LoadCellResObjFromOpenNarc(param0, param1, param2, 43, TRUE, 33014);
    SpriteSystem_LoadAnimResObjFromOpenNarc(param0, param1, param2, 44, TRUE, 33014);
}

ManagedSprite *ov17_022412C0(SpriteSystem *param0, SpriteManager *param1, int param2)
{
    ManagedSprite *v0 = SpriteSystem_NewSprite(param0, param1, &Unk_ov17_0225364C);
    ManagedSprite_SetPositionXYWithSubscreenOffset(v0, (5 * 8) + (11 * 8) * param2, (0xc * 8) + 0 * param2, ((192 + 80) << FX32_SHIFT));
    Sprite_TickFrame(v0->sprite);

    return v0;
}

void ov17_022412F0(SpriteManager *param0)
{
    SpriteManager_UnloadCharObjById(param0, 33019);
    SpriteManager_UnloadCellObjById(param0, 33014);
    SpriteManager_UnloadAnimObjById(param0, 33014);
}

void ov17_02241314(ManagedSprite *param0)
{
    Sprite_DeleteAndFreeResources(param0);
}

void ov17_0224131C(SpriteSystem *param0, SpriteManager *param1, NARC *param2)
{
    SpriteSystem_LoadCharResObjFromOpenNarc(param0, param1, param2, 45, TRUE, NNS_G2D_VRAM_TYPE_2DSUB, 33018);
    SpriteSystem_LoadCellResObjFromOpenNarc(param0, param1, param2, 46, TRUE, 33013);
    SpriteSystem_LoadAnimResObjFromOpenNarc(param0, param1, param2, 47, TRUE, 33013);
}

ManagedSprite *ov17_0224136C(SpriteSystem *param0, SpriteManager *param1, int param2, int param3, int param4)
{
    ManagedSprite *v0;

    if (param4 >= 0) {
        v0 = SpriteSystem_NewSprite(param0, param1, &Unk_ov17_02253618);
    } else {
        v0 = SpriteSystem_NewSprite(param0, param1, &Unk_ov17_02253680);
    }

    ManagedSprite_SetPositionXYWithSubscreenOffset(v0, param2, param3, ((192 + 80) << FX32_SHIFT));
    Sprite_TickFrame(v0->sprite);

    return v0;
}

void ov17_022413AC(ManagedSprite *param0)
{
    Sprite_DeleteAndFreeResources(param0);
}

void ov17_022413B4(SpriteManager *param0)
{
    SpriteManager_UnloadCharObjById(param0, 33018);
    SpriteManager_UnloadCellObjById(param0, 33013);
    SpriteManager_UnloadAnimObjById(param0, 33013);
}
