#include "battle/battle_icon.h"

#include <nitro.h>
#include <string.h>

#include "consts/moves.h"
#include "consts/pokemon.h"

#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_defs/sprite_template.h"
#include "struct_defs/struct_0200D0F4.h"

#include "battle/graphic/objects/pl_batt_obj.naix"

#include "palette.h"
#include "unk_0200C6E4.h"

// these do not align with the types defined in consts/pokemon.json.
#define TYPE_COOL_ICON   NUMBER_OF_MON_TYPES + 0
#define TYPE_BEAUTY_ICON NUMBER_OF_MON_TYPES + 1
#define TYPE_CUTE_ICON   NUMBER_OF_MON_TYPES + 2
#define TYPE_SMART_ICON  NUMBER_OF_MON_TYPES + 3
#define TYPE_TOUGH_ICON  NUMBER_OF_MON_TYPES + 4

/*
 * Maps a type index (e.g. TYPE_WATER) to the corresponding NARC member in pl_batt_obj.narc containing the type icon.
 */
__attribute__((aligned(4))) static const u32 sBattleTypeIconTiles[] = {
    [TYPE_NORMAL] = type_icon_normal_NCGR_lz,
    [TYPE_FIGHTING] = type_icon_fighting_NCGR_lz,
    [TYPE_FLYING] = type_icon_flying_NCGR_lz,
    [TYPE_POISON] = type_icon_poison_NCGR_lz,
    [TYPE_GROUND] = type_icon_ground_NCGR_lz,
    [TYPE_ROCK] = type_icon_rock_NCGR_lz,
    [TYPE_BUG] = type_icon_bug_NCGR_lz,
    [TYPE_GHOST] = type_icon_ghost_NCGR_lz,
    [TYPE_STEEL] = type_icon_steel_NCGR_lz,
    [TYPE_MYSTERY] = type_icon_mystery_NCGR_lz,
    [TYPE_FIRE] = type_icon_fire_NCGR_lz,
    [TYPE_WATER] = type_icon_water_NCGR_lz,
    [TYPE_GRASS] = type_icon_grass_NCGR_lz,
    [TYPE_ELECTRIC] = type_icon_electric_NCGR_lz,
    [TYPE_PSYCHIC] = type_icon_psychic_NCGR_lz,
    [TYPE_ICE] = type_icon_ice_NCGR_lz,
    [TYPE_DRAGON] = type_icon_dragon_NCGR_lz,
    [TYPE_DARK] = type_icon_dark_NCGR_lz,
    [TYPE_COOL_ICON] = contest_icon_cool_NCGR_lz,
    [TYPE_BEAUTY_ICON] = contest_icon_beauty_NCGR_lz,
    [TYPE_CUTE_ICON] = contest_icon_cute_NCGR_lz,
    [TYPE_SMART_ICON] = contest_icon_smart_NCGR_lz,
    [TYPE_TOUGH_ICON] = contest_icon_tough_NCGR_lz
};

/*
 * Maps a type index (e.g. TYPE_WATER) to the corresponding palette index in NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ__TYPE_PALETTE.
 */
__attribute__((aligned(4))) static const u8 sBattleTypeIconPaletteIndex[] = {
    [TYPE_NORMAL] = 0,
    [TYPE_FIGHTING] = 0,
    [TYPE_FLYING] = 1,
    [TYPE_POISON] = 1,
    [TYPE_GROUND] = 0,
    [TYPE_ROCK] = 0,
    [TYPE_BUG] = 2,
    [TYPE_GHOST] = 1,
    [TYPE_STEEL] = 0,
    [TYPE_MYSTERY] = 2,
    [TYPE_FIRE] = 0,
    [TYPE_WATER] = 1,
    [TYPE_GRASS] = 2,
    [TYPE_ELECTRIC] = 0,
    [TYPE_PSYCHIC] = 1,
    [TYPE_ICE] = 1,
    [TYPE_DRAGON] = 2,
    [TYPE_DARK] = 0,
    [TYPE_COOL_ICON] = 0,
    [TYPE_BEAUTY_ICON] = 1,
    [TYPE_CUTE_ICON] = 1,
    [TYPE_SMART_ICON] = 2,
    [TYPE_TOUGH_ICON] = 0
};

/*
 * Maps move classes (Physical, Special, Status) to the corresponding NARC member in pl_batt_obj.narc containing the type icon.
 */
__attribute__((aligned(4))) static const u32 sMoveClassIconTiles[] = {
    [CLASS_PHYSICAL] = move_class_physical_NCGR_lz,
    [CLASS_SPECIAL] = move_class_special_NCGR_lz,
    [CLASS_STATUS] = move_class_status_NCGR_lz
};

/*
 * Maps move classes (Physical, Special, Status) to the corresponding palette index in NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ__TYPE_PALETTE.
 */
__attribute__((aligned(4))) static const u8 sMoveClassIconPaletteIndex[] = {
    [CLASS_PHYSICAL] = 0,
    [CLASS_SPECIAL] = 1,
    [CLASS_STATUS] = 0
};

/*
 * Given a type index, return the corresponding NARC member containing the icon for that type.
 * See also BattleIcon_GetNARCIndex.
 */
u32 BattleIcon_GetMoveTypeTiles(int typeIndex)
{
    GF_ASSERT(typeIndex < NELEMS(sBattleTypeIconTiles));
    return sBattleTypeIconTiles[typeIndex];
}

/*
 * Returns the NARC member within pl_batt_obj containing palettes for battle icons.
 * See also BattleIcon_GetNARCIndex.
 */
u32 BattleIcon_GetMoveTypePaletteFileIndex(void)
{
    return icon_palettes_NCLR;
}

/*
 * Returns the NARC member within pl_batt_obj containing cells for battle icons.
 * See also BattleIcon_GetNARCIndex.
 */
u32 BattleIcon_GetMoveTypeCellsFileIndex(void)
{
    return move_type_icon_NCER_lz;
}

/*
 * Returns the NARC member within pl_batt_obj containing animations for battle icons.
 * See also BattleIcon_GetNARCIndex.
 */
u32 BattleIcon_GetMoveTypeAnimFileIndex(void)
{
    return move_type_icon_NANR_lz;
}

/*
 * Given a type index, return the corresponding palette index to use for that type's icon.
 * See also BattleIcon_GetNARCIndex and BattleIcon_GetMoveTypePaletteFileIndex.
 */
u8 BattleIcon_GetMoveTypePaletteIndex(int typeIndex)
{
    GF_ASSERT(typeIndex < NELEMS(sBattleTypeIconPaletteIndex));
    return sBattleTypeIconPaletteIndex[typeIndex];
}

/*
 * Returns the index of the NARC for pl_batt_obj.
 */
u32 BattleIcon_GetNARCIndex(void)
{
    return NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ;
}

void BattleIcon_MakeTypeSpriteTiles(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, NNS_G2D_VRAM_TYPE vramType, int typeIndex, u32 resourceID)
{
    sub_0200CBDC(renderer, gfxHandler, BattleIcon_GetNARCIndex(), BattleIcon_GetMoveTypeTiles(typeIndex), TRUE, vramType, resourceID);
}

void BattleIcon_MakeTypeSpritePalette(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, NNS_G2D_VRAM_TYPE vramType, u32 resourceID)
{
    sub_0200CC9C(renderer, gfxHandler, BattleIcon_GetNARCIndex(), BattleIcon_GetMoveTypePaletteFileIndex(), FALSE, 3, vramType, resourceID);
}

void BattleIcon_LoadTypeSpritePalette(PaletteData *palette, enum PaletteBufferID bufferID, SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, NNS_G2D_VRAM_TYPE vramType, u32 resourceID)
{
    sub_0200CD7C(palette, bufferID, renderer, gfxHandler, BattleIcon_GetNARCIndex(), BattleIcon_GetMoveTypePaletteFileIndex(), FALSE, 3, vramType, resourceID);
}

void BattleIcon_MakeTypeSpriteCellsAnim(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, u32 cellResourceID, u32 animResourceID)
{
    sub_0200CE0C(renderer, gfxHandler, BattleIcon_GetNARCIndex(), BattleIcon_GetMoveTypeCellsFileIndex(), TRUE, cellResourceID);
    sub_0200CE3C(renderer, gfxHandler, BattleIcon_GetNARCIndex(), BattleIcon_GetMoveTypeAnimFileIndex(), TRUE, animResourceID);
}

void BattleIcon_UnloadTypeSpriteTiles(SpriteGfxHandler *gfxHandler, u32 resourceID)
{
    SpriteGfxHandler_UnloadCharObjById(gfxHandler, resourceID);
}

void BattleIcon_UnloadTypeSpritePalette(SpriteGfxHandler *gfxHandler, u32 resourceID)
{
    SpriteGfxHandler_UnloadPlttObjById(gfxHandler, resourceID);
}

void BattleIcon_UnloadTypeSpriteCellsAnim(SpriteGfxHandler *gfxHandler, u32 cellResourceID, u32 animResourceID)
{
    SpriteGfxHandler_UnloadCellObjById(gfxHandler, cellResourceID);
    SpriteGfxHandler_UnloadAnimObjById(gfxHandler, animResourceID);
}

CellActorData *BattleIcon_CreateCellActorForTypeSprite(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, int typeIndex, const SpriteTemplate *template)
{
    SpriteTemplate overrideTemplate = *template;
    overrideTemplate.plttIdx = BattleIcon_GetMoveTypePaletteIndex(typeIndex);

    return SpriteActor_LoadResources(renderer, gfxHandler, &overrideTemplate);
}

void BattleIcon_DeleteMoveTypeCellActorData(CellActorData *data)
{
    sub_0200D0F4(data);
}

/*
 * Given a move class index, return the corresponding NARC member containing the icon for that move class.
 * See also BattleIcon_GetNARCIndex.
 */
u32 BattleIcon_GetMoveClassTiles(int moveClassIndex)
{
    GF_ASSERT(moveClassIndex < NELEMS(sMoveClassIconTiles));
    return sMoveClassIconTiles[moveClassIndex];
}

/*
 * Given a move class index, return the corresponding palette index to use for that move class' icon.
 * See also BattleIcon_GetNARCIndex and BattleIcon_GetMoveTypePaletteFileIndex.
 */
u8 BattleIcon_GetMoveClassPaletteIndex(int moveClassIndex)
{
    GF_ASSERT(moveClassIndex < NELEMS(sMoveClassIconPaletteIndex));
    return sMoveClassIconPaletteIndex[moveClassIndex];
}

/*
 * Returns the index of the NARC for pl_batt_obj.
 * (This is identical to BattleIcon_GetNARCIndex).
 */
u32 BattleIcon_GetMoveClassNARCIndex(void)
{
    return NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ;
}

void BattleIcon_MakeMoveClassSpriteTiles(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, NNS_G2D_VRAM_TYPE vramType, int moveTypeIndex, u32 resourceID)
{
    sub_0200CBDC(renderer, gfxHandler, BattleIcon_GetMoveClassNARCIndex(), BattleIcon_GetMoveClassTiles(moveTypeIndex), TRUE, vramType, resourceID);
}

void BattleIcon_UnloadMoveClassSpriteTiles(SpriteGfxHandler *gfxHandler, u32 resourceID)
{
    SpriteGfxHandler_UnloadCharObjById(gfxHandler, resourceID);
}

void BattleIcon_DeleteMoveClassCellActorData(CellActorData *data)
{
    sub_0200D0F4(data);
}
