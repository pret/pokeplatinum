#include "unk_0207C908.h"

#include <nitro.h>
#include <string.h>

#include "constants/narc.h"
#include "generated/move_classes.h"

#include "pch/global_pch.h"

#include "palette.h"
#include "sprite_system.h"

ALIGN_4 static const u32 sMoveTypeIconIndex[] = {
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

ALIGN_4 static const u8 sMoveTypeIconPaletteIndex[] = {
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

ALIGN_4 static const u32 sMoveCategoryIconIndex[] = {
    0xF4,
    0xF6,
    0xF5
};

ALIGN_4 static const u8 sMoveCategoryIconPaletteIndex[] = {
    0x0,
    0x1,
    0x0
};

u32 TypeIcon_GetChar(enum PokemonType moveType)
{
    GF_ASSERT(moveType < NELEMS(sMoveTypeIconIndex));
    return sMoveTypeIconIndex[moveType];
}

u32 TypeIcon_GetPlttSrc(void)
{
    return 74;
}

u32 TypeIcon_GetCell(void)
{
    return 242;
}

u32 TypeIcon_GetAnim(void)
{
    return 243;
}

u8 TypeIcon_GetPltt(enum PokemonType moveType)
{
    GF_ASSERT(moveType < NELEMS(sMoveTypeIconPaletteIndex));
    return sMoveTypeIconPaletteIndex[moveType];
}

enum NarcID TypeIcon_GetNARC(void)
{
    return NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ;
}

void TypeIcon_LoadChar(SpriteSystem *spriteSys, SpriteManager *spriteMan, NNS_G2D_VRAM_TYPE vramType, enum PokemonType moveType, u32 resourceID)
{
    SpriteSystem_LoadCharResObj(spriteSys, spriteMan, TypeIcon_GetNARC(), TypeIcon_GetChar(moveType), TRUE, vramType, resourceID);
}

void TypeIcon_LoadPlttSrc(SpriteSystem *spriteSys, SpriteManager *spriteMan, NNS_G2D_VRAM_TYPE vramType, u32 resourceID)
{
    SpriteSystem_LoadPlttResObj(spriteSys, spriteMan, TypeIcon_GetNARC(), TypeIcon_GetPlttSrc(), FALSE, 3, vramType, resourceID);
}

void TypeIcon_LoadPltt(PaletteData *paletteData, enum PaletteBufferID bufferID, SpriteSystem *spriteSys, SpriteManager *spriteMan, NNS_G2D_VRAM_TYPE vramType, u32 resourceID)
{
    SpriteSystem_LoadPaletteBuffer(paletteData, bufferID, spriteSys, spriteMan, TypeIcon_GetNARC(), TypeIcon_GetPlttSrc(), FALSE, 3, vramType, resourceID);
}

void TypeIcon_LoadAnim(SpriteSystem *spriteSys, SpriteManager *spriteMan, u32 cellResourceID, u32 animResourceID)
{
    SpriteSystem_LoadCellResObj(spriteSys, spriteMan, TypeIcon_GetNARC(), TypeIcon_GetCell(), TRUE, cellResourceID);
    SpriteSystem_LoadAnimResObj(spriteSys, spriteMan, TypeIcon_GetNARC(), TypeIcon_GetAnim(), TRUE, animResourceID);
}

void TypeIcon_UnloadChar(SpriteManager *spriteMan, u32 resourceID)
{
    SpriteManager_UnloadCharObjById(spriteMan, resourceID);
}

void TypeIcon_UnloadPlttSrc(SpriteManager *spriteMan, u32 resourceID)
{
    SpriteManager_UnloadPlttObjById(spriteMan, resourceID);
}

void TypeIcon_UnloadAnim(SpriteManager *spriteMan, u32 cellResourceID, u32 animResourceID)
{
    SpriteManager_UnloadCellObjById(spriteMan, cellResourceID);
    SpriteManager_UnloadAnimObjById(spriteMan, animResourceID);
}

ManagedSprite *TypeIcon_NewTypeIconSprite(SpriteSystem *spriteSys, SpriteManager *spriteMan, enum PokemonType moveType, const SpriteTemplate *spriteTemplate)
{
    ManagedSprite *managedSprite;
    SpriteTemplate template;

    template = *spriteTemplate;
    template.plttIdx = TypeIcon_GetPltt(moveType);
    managedSprite = SpriteSystem_NewSprite(spriteSys, spriteMan, &template);

    return managedSprite;
}

void TypeIcon_DeleteSprite(ManagedSprite *managedSprite)
{
    Sprite_DeleteAndFreeResources(managedSprite);
}

u32 CategoryIcon_GetChar(enum MoveClass moveCat)
{
    GF_ASSERT(moveCat < NELEMS(sMoveCategoryIconIndex));
    return sMoveCategoryIconIndex[moveCat];
}

u8 CategoryIcon_GetPltt(enum MoveClass moveCat)
{
    GF_ASSERT(moveCat < NELEMS(sMoveCategoryIconPaletteIndex));
    return sMoveCategoryIconPaletteIndex[moveCat];
}

enum NarcID CategoryIcon_GetNARC(void)
{
    return NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ;
}

void CategoryIcon_LoadChar(SpriteSystem *spriteSys, SpriteManager *spriteMan, NNS_G2D_VRAM_TYPE vramType, enum MoveClass moveCat, u32 resourceID)
{
    SpriteSystem_LoadCharResObj(spriteSys, spriteMan, CategoryIcon_GetNARC(), CategoryIcon_GetChar(moveCat), TRUE, vramType, resourceID);
}

void CategoryIcon_UnloadChar(SpriteManager *spriteMan, u32 resourceID)
{
    SpriteManager_UnloadCharObjById(spriteMan, resourceID);
}

void CategoryIcon_DeleteSprite(ManagedSprite *managedSprite)
{
    Sprite_DeleteAndFreeResources(managedSprite);
}
