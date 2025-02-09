#include "unk_0207C908.h"

#include <nitro.h>
#include <string.h>

#include "palette.h"
#include "sprite_system.h"

__attribute__((aligned(4))) static const u32 Unk_020F0AF0[] = {
    0xEA,
    0xE1,
    0xE3,
    0xEB,
    0xE5,
    0xED,
    0xE7,
    0xE4,
    0xEE,
    0xEC,
    0xE2,
    0xF1,
    0xE9,
    0xDE,
    0xDF,
    0xE6,
    0xDD,
    0xE0,
    0xF0,
    0xDB,
    0xDC,
    0xE8,
    0xEF
};

__attribute__((aligned(4))) static const u8 Unk_020F0B4C[] = {
    0x0,
    0x0,
    0x1,
    0x1,
    0x0,
    0x0,
    0x2,
    0x1,
    0x0,
    0x2,
    0x0,
    0x1,
    0x2,
    0x0,
    0x1,
    0x1,
    0x2,
    0x0,
    0x0,
    0x1,
    0x1,
    0x2,
    0x0
};

__attribute__((aligned(4))) static const u32 Unk_020F0AE4[] = {
    0xF4,
    0xF6,
    0xF5
};

__attribute__((aligned(4))) static const u8 Unk_020F0AE0[] = {
    0x0,
    0x1,
    0x0
};

u32 sub_0207C908(int param0)
{
    GF_ASSERT(param0 < NELEMS(Unk_020F0AF0));
    return Unk_020F0AF0[param0];
}

u32 sub_0207C920(void)
{
    return 74;
}

u32 sub_0207C924(void)
{
    return 242;
}

u32 sub_0207C928(void)
{
    return 243;
}

u8 sub_0207C92C(int param0)
{
    GF_ASSERT(param0 < NELEMS(Unk_020F0B4C));
    return Unk_020F0B4C[param0];
}

u32 sub_0207C944(void)
{
    return 27;
}

void sub_0207C948(SpriteSystem *param0, SpriteManager *param1, NNS_G2D_VRAM_TYPE param2, int param3, u32 param4)
{
    SpriteSystem_LoadCharResObj(param0, param1, sub_0207C944(), sub_0207C908(param3), 1, param2, param4);
}

void sub_0207C97C(SpriteSystem *param0, SpriteManager *param1, NNS_G2D_VRAM_TYPE param2, u32 param3)
{
    SpriteSystem_LoadPlttResObj(param0, param1, sub_0207C944(), sub_0207C920(), 0, 3, param2, param3);
}

void sub_0207C9B0(PaletteData *param0, int param1, SpriteSystem *param2, SpriteManager *param3, NNS_G2D_VRAM_TYPE param4, u32 param5)
{
    SpriteSystem_LoadPaletteBuffer(param0, param1, param2, param3, sub_0207C944(), sub_0207C920(), 0, 3, param4, param5);
}

void sub_0207C9EC(SpriteSystem *param0, SpriteManager *param1, u32 param2, u32 param3)
{
    SpriteSystem_LoadCellResObj(param0, param1, sub_0207C944(), sub_0207C924(), 1, param2);
    SpriteSystem_LoadAnimResObj(param0, param1, sub_0207C944(), sub_0207C928(), 1, param3);
}

void sub_0207CA34(SpriteManager *param0, u32 param1)
{
    SpriteManager_UnloadCharObjById(param0, param1);
}

void sub_0207CA3C(SpriteManager *param0, u32 param1)
{
    SpriteManager_UnloadPlttObjById(param0, param1);
}

void sub_0207CA44(SpriteManager *param0, u32 param1, u32 param2)
{
    SpriteManager_UnloadCellObjById(param0, param1);
    SpriteManager_UnloadAnimObjById(param0, param2);
}

CellActorData *sub_0207CA58(SpriteSystem *param0, SpriteManager *param1, int param2, const SpriteTemplate *param3)
{
    CellActorData *v0;
    SpriteTemplate v1;

    v1 = *param3;
    v1.plttIdx = sub_0207C92C(param2);
    v0 = SpriteSystem_NewSprite(param0, param1, &v1);

    return v0;
}

void sub_0207CA88(CellActorData *param0)
{
    Sprite_DeleteAndFreeResources(param0);
}

u32 sub_0207CA90(int param0)
{
    GF_ASSERT(param0 < NELEMS(Unk_020F0AE4));
    return Unk_020F0AE4[param0];
}

u8 sub_0207CAA8(int param0)
{
    GF_ASSERT(param0 < NELEMS(Unk_020F0AE0));
    return Unk_020F0AE0[param0];
}

u32 sub_0207CAC0(void)
{
    return 27;
}

void sub_0207CAC4(SpriteSystem *param0, SpriteManager *param1, NNS_G2D_VRAM_TYPE param2, int param3, u32 param4)
{
    SpriteSystem_LoadCharResObj(param0, param1, sub_0207CAC0(), sub_0207CA90(param3), 1, param2, param4);
}

void sub_0207CAF8(SpriteManager *param0, u32 param1)
{
    SpriteManager_UnloadCharObjById(param0, param1);
}

void sub_0207CB00(CellActorData *param0)
{
    Sprite_DeleteAndFreeResources(param0);
}
