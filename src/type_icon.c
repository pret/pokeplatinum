#include "type_icon.h"

#include "constants/narc.h"
#include "generated/move_classes.h"
#include "generated/pokemon_contest_types.h"
#include "generated/pokemon_types.h"

#include "palette.h"
#include "sprite_system.h"

#include "res/graphics/battle/sprites.naix"

// clang-format off
ALIGN_4 static const u32 sMoveTypeIconIndex[] = {
    [TYPE_NORMAL]   = type_icons_normal_NCGR_lz,
    [TYPE_FIGHTING] = type_icons_fighting_NCGR_lz,
    [TYPE_FLYING]   = type_icons_flying_NCGR_lz,
    [TYPE_POISON]   = type_icons_poison_NCGR_lz,
    [TYPE_GROUND]   = type_icons_ground_NCGR_lz,
    [TYPE_ROCK]     = type_icons_rock_NCGR_lz,
    [TYPE_BUG]      = type_icons_bug_NCGR_lz,
    [TYPE_GHOST]    = type_icons_ghost_NCGR_lz,
    [TYPE_STEEL]    = type_icons_steel_NCGR_lz,
    [TYPE_MYSTERY]  = type_icons_mystery_NCGR_lz,
    [TYPE_FIRE]     = type_icons_fire_NCGR_lz,
    [TYPE_WATER]    = type_icons_water_NCGR_lz,
    [TYPE_GRASS]    = type_icons_grass_NCGR_lz,
    [TYPE_ELECTRIC] = type_icons_electric_NCGR_lz,
    [TYPE_PSYCHIC]  = type_icons_psychic_NCGR_lz,
    [TYPE_ICE]      = type_icons_ice_NCGR_lz,
    [TYPE_DRAGON]   = type_icons_dragon_NCGR_lz,
    [TYPE_DARK]     = type_icons_dark_NCGR_lz,

    [NUM_POKEMON_TYPES + CONTEST_TYPE_COOL]   = type_icons_cool_NCGR_lz,
    [NUM_POKEMON_TYPES + CONTEST_TYPE_BEAUTY] = type_icons_beauty_NCGR_lz,
    [NUM_POKEMON_TYPES + CONTEST_TYPE_CUTE]   = type_icons_cute_NCGR_lz,
    [NUM_POKEMON_TYPES + CONTEST_TYPE_SMART]  = type_icons_smart_NCGR_lz,
    [NUM_POKEMON_TYPES + CONTEST_TYPE_TOUGH]  = type_icons_tough_NCGR_lz,
};

ALIGN_4 static const u8 sMoveTypeIconPaletteIndex[] = {
    [TYPE_NORMAL]   = 0,
    [TYPE_FIGHTING] = 0,
    [TYPE_FLYING]   = 1,
    [TYPE_POISON]   = 1,
    [TYPE_GROUND]   = 0,
    [TYPE_ROCK]     = 0,
    [TYPE_BUG]      = 2,
    [TYPE_GHOST]    = 1,
    [TYPE_STEEL]    = 0,
    [TYPE_MYSTERY]  = 2,
    [TYPE_FIRE]     = 0,
    [TYPE_WATER]    = 1,
    [TYPE_GRASS]    = 2,
    [TYPE_ELECTRIC] = 0,
    [TYPE_PSYCHIC]  = 1,
    [TYPE_ICE]      = 1,
    [TYPE_DRAGON]   = 2,
    [TYPE_DARK]     = 0,

    [NUM_POKEMON_TYPES + CONTEST_TYPE_COOL]   = 0,
    [NUM_POKEMON_TYPES + CONTEST_TYPE_BEAUTY] = 1,
    [NUM_POKEMON_TYPES + CONTEST_TYPE_CUTE]   = 1,
    [NUM_POKEMON_TYPES + CONTEST_TYPE_SMART]  = 2,
    [NUM_POKEMON_TYPES + CONTEST_TYPE_TOUGH]  = 0,
};

ALIGN_4 static const u32 sMoveCategoryIconIndex[] = {
    [CLASS_PHYSICAL] = type_icons_physical_NCGR_lz,
    [CLASS_SPECIAL]  = type_icons_special_NCGR_lz,
    [CLASS_STATUS]   = type_icons_status_NCGR_lz,
};

ALIGN_4 static const u8 sMoveCategoryIconPaletteIndex[] = {
    [CLASS_PHYSICAL] = 0,
    [CLASS_SPECIAL]  = 1,
    [CLASS_STATUS]   = 0,
};
// clang-format on

u32 TypeIcon_GetChar(enum PokemonType moveType)
{
    GF_ASSERT(moveType < NELEMS(sMoveTypeIconIndex));
    return sMoveTypeIconIndex[moveType];
}

u32 TypeIcon_GetPlttSrc(void)
{
    return type_icons_shared_NCLR;
}

u32 TypeIcon_GetCell(void)
{
    return type_icons_cell_NCER_lz;
}

u32 TypeIcon_GetAnim(void)
{
    return misc_single_frame_anim_NANR_lz_14;
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
    SpriteSystem_LoadPlttResObj(spriteSys, spriteMan, TypeIcon_GetNARC(), TypeIcon_GetPlttSrc(), FALSE, PLTT_3, vramType, resourceID);
}

void TypeIcon_LoadPltt(PaletteData *paletteData, enum PaletteBufferID bufferID, SpriteSystem *spriteSys, SpriteManager *spriteMan, NNS_G2D_VRAM_TYPE vramType, u32 resourceID)
{
    SpriteSystem_LoadPaletteBuffer(paletteData, bufferID, spriteSys, spriteMan, TypeIcon_GetNARC(), TypeIcon_GetPlttSrc(), FALSE, PLTT_3, vramType, resourceID);
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
