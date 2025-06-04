#include "unk_0207C908.h"

#include <nitro.h>
#include <string.h>

#include "constants/narc.h"

#include "palette.h"
#include "sprite_system.h"

__attribute__((aligned(4))) static const u32 sMoveTypeIconIndex[] = {
    0xEA, // 0 to 17 are pokemon types
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
    0xF0, // 18 to 22 are contest types
    0xDB,
    0xDC,
    0xE8,
    0xEF
};

__attribute__((aligned(4))) static const u8 sMoveTypeIconPaletteIndex[] = {
    0x0, // 0 to 17 are pokemon types
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
    0x0, // 18 to 22 are contest types
    0x1,
    0x1,
    0x2,
    0x0
};

__attribute__((aligned(4))) static const u32 sMoveCategoryIconIndex[] = {
    0xF4,
    0xF6,
    0xF5
};

__attribute__((aligned(4))) static const u8 sMoveCategoryIconPaletteIndex[] = {
    0x0,
    0x1,
    0x0
};

u32 GetIconFromMoveType(int moveType)
{
    GF_ASSERT(moveType < NELEMS(sMoveTypeIconIndex));
    return sMoveTypeIconIndex[moveType];
}

u32 sub_0207C920(void)
{
    return 74;
}

u32 GetMoveTypeIconCellBank(void)
{
    return 242;
}

u32 GetMoveTypeIconAnimBank(void)
{
    return 243;
}

u8 GetPaletteFromMoveType(int moveType)
{
    GF_ASSERT(moveType < NELEMS(sMoveTypeIconPaletteIndex));
    return sMoveTypeIconPaletteIndex[moveType];
}

enum NarcID GetBattleGraphicNarcIndex(void)
{
    return NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ;
}

void sub_0207C948(SpriteSystem *param0, SpriteManager *param1, NNS_G2D_VRAM_TYPE param2, int param3, u32 param4)
{
    SpriteSystem_LoadCharResObj(param0, param1, GetBattleGraphicNarcIndex(), GetIconFromMoveType(param3), TRUE, param2, param4);
}

void sub_0207C97C(SpriteSystem *param0, SpriteManager *param1, NNS_G2D_VRAM_TYPE param2, u32 param3)
{
    SpriteSystem_LoadPlttResObj(param0, param1, GetBattleGraphicNarcIndex(), sub_0207C920(), FALSE, 3, param2, param3);
}

void sub_0207C9B0(PaletteData *param0, int param1, SpriteSystem *param2, SpriteManager *param3, NNS_G2D_VRAM_TYPE param4, u32 param5)
{
    SpriteSystem_LoadPaletteBuffer(param0, param1, param2, param3, GetBattleGraphicNarcIndex(), sub_0207C920(), FALSE, 3, param4, param5);
}

void sub_0207C9EC(SpriteSystem *param0, SpriteManager *param1, u32 param2, u32 param3)
{
    SpriteSystem_LoadCellResObj(param0, param1, GetBattleGraphicNarcIndex(), GetMoveTypeIconCellBank(), TRUE, param2);
    SpriteSystem_LoadAnimResObj(param0, param1, GetBattleGraphicNarcIndex(), GetMoveTypeIconAnimBank(), TRUE, param3);
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

ManagedSprite *CreateMoveSelectSprite(SpriteSystem *spriteSys, SpriteManager *spriteMan, int moveType, const SpriteTemplate *spriteTemplate)
{
    ManagedSprite *managedSprite;
    SpriteTemplate template;

    template = *spriteTemplate;
    template.plttIdx = GetPaletteFromMoveType(moveType);
    managedSprite = SpriteSystem_NewSprite(spriteSys, spriteMan, &template);

    return managedSprite;
}

void sub_0207CA88(ManagedSprite *param0)
{
    Sprite_DeleteAndFreeResources(param0);
}

u32 GetIconFromMoveCategory(int moveCat)
{
    GF_ASSERT(moveCat < NELEMS(sMoveCategoryIconIndex));
    return sMoveCategoryIconIndex[moveCat];
}

u8 GetPaletteFromMoveCategory(int moveCat)
{
    GF_ASSERT(moveCat < NELEMS(sMoveCategoryIconPaletteIndex));
    return sMoveCategoryIconPaletteIndex[moveCat];
}

enum NarcID GetBattleObjNarcID(void)
{
    return NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ;
}

void sub_0207CAC4(SpriteSystem *param0, SpriteManager *param1, NNS_G2D_VRAM_TYPE param2, int param3, u32 param4)
{
    SpriteSystem_LoadCharResObj(param0, param1, GetBattleObjNarcID(), GetIconFromMoveCategory(param3), TRUE, param2, param4);
}

void sub_0207CAF8(SpriteManager *param0, u32 param1)
{
    SpriteManager_UnloadCharObjById(param0, param1);
}

void sub_0207CB00(ManagedSprite *param0)
{
    Sprite_DeleteAndFreeResources(param0);
}
