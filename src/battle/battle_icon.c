#include "battle/battle_icon.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_defs/sprite_template.h"
#include "struct_defs/struct_0200D0F4.h"

#include "consts/pokemon.h"
#include "consts/moves.h"

#include "narc.h"
#include "unk_0200C6E4.h"

// these do not align with the types defined in consts/pokemon.json.
#define TYPE_COOL_ICON NUMBER_OF_MON_TYPES + 0
#define TYPE_BEAUTY_ICON NUMBER_OF_MON_TYPES + 1
#define TYPE_CUTE_ICON NUMBER_OF_MON_TYPES + 2
#define TYPE_SMART_ICON NUMBER_OF_MON_TYPES + 3
#define TYPE_TOUGH_ICON NUMBER_OF_MON_TYPES + 4

/*
 * Maps a type index (e.g. TYPE_WATER) to the corresponding NARC member in pl_batt_obj.narc containing the type icon.
 */
__attribute__((aligned(4))) static const u32 sBattleIcon_NARCMemberMap[] = {
    [TYPE_NORMAL] = 0xEA,
    [TYPE_FIGHTING] = 0xE1,
    [TYPE_FLYING] = 0xE3,
    [TYPE_POISON] = 0xEB,
    [TYPE_GROUND] = 0xE5,
    [TYPE_ROCK] = 0xED,
    [TYPE_BUG] = 0xE7,
    [TYPE_GHOST] = 0xE4,
    [TYPE_STEEL] = 0xEE,
    [TYPE_MYSTERY] = 0xEC,
    [TYPE_FIRE] = 0xE2,
    [TYPE_WATER] = 0xF1,
    [TYPE_GRASS] = 0xE9,
    [TYPE_ELECTRIC] = 0xDE,
    [TYPE_PSYCHIC] = 0xDF,
    [TYPE_ICE] = 0xE6,
    [TYPE_DRAGON] = 0xDD,
    [TYPE_DARK] = 0xE0,
    [TYPE_COOL_ICON] = 0xF0,
    [TYPE_BEAUTY_ICON] = 0xDB,
    [TYPE_CUTE_ICON] = 0xDC,
    [TYPE_SMART_ICON] = 0xE8,
    [TYPE_TOUGH_ICON] = 0xEF
};

/*
 * Maps a type index (e.g. TYPE_WATER) to the corresponding palette index in NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ__TYPE_PALETTE.
 */
__attribute__((aligned(4))) static const u8 sBattleIcon_PaletteIndexMap[] = {
    [TYPE_NORMAL] = 0x0,
    [TYPE_FIGHTING] = 0x0,
    [TYPE_FLYING] = 0x1,
    [TYPE_POISON] = 0x1,
    [TYPE_GROUND] = 0x0,
    [TYPE_ROCK] = 0x0,
    [TYPE_BUG] = 0x2,
    [TYPE_GHOST] = 0x1,
    [TYPE_STEEL] = 0x0,
    [TYPE_MYSTERY] = 0x2,
    [TYPE_FIRE] = 0x0,
    [TYPE_WATER] = 0x1,
    [TYPE_GRASS] = 0x2,
    [TYPE_ELECTRIC] = 0x0,
    [TYPE_PSYCHIC] = 0x1,
    [TYPE_ICE] = 0x1,
    [TYPE_DRAGON] = 0x2,
    [TYPE_DARK] = 0x0,
    [TYPE_COOL_ICON] = 0x0,
    [TYPE_BEAUTY_ICON] = 0x1,
    [TYPE_CUTE_ICON] = 0x1,
    [TYPE_SMART_ICON] = 0x2,
    [TYPE_TOUGH_ICON] = 0x0
};

/*
 * Maps move classes (Physical, Special, Status) to the corresponding NARC member in pl_batt_obj.narc containing the type icon.
 */
__attribute__((aligned(4))) static const u32 sBattleIcon_MoveClass_NARCMemberMap[] = {
    [CLASS_PHYSICAL] = 0xF4,
    [CLASS_SPECIAL] = 0xF6,
    [CLASS_STATUS] = 0xF5
};

/*
 * Maps move classes (Physical, Special, Status) to the corresponding palette index in NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ__TYPE_PALETTE.
 */
__attribute__((aligned(4))) static const u8 sBattleIcon_MoveClass_PaletteIndexMap[] = {
    [CLASS_PHYSICAL] = 0x0,
    [CLASS_SPECIAL] = 0x1,
    [CLASS_STATUS] = 0x0
};

/*
 * Given a type index, return the corresponding NARC member containing the icon for that type.
 * See also BattleIcon_GetNARCIndex.
 */
u32 BattleIcon_TypeIndexToNARCMember(int typeIndex)
{
    GF_ASSERT(typeIndex < NELEMS(sBattleIcon_NARCMemberMap));
    return sBattleIcon_NARCMemberMap[typeIndex];
}

/*
 * Returns the NARC member within pl_batt_obj containing palettes for battle icons.
 * See also BattleIcon_GetNARCIndex.
 */
u32 BattleIcon_GetPaletteNARCMember(void)
{
    return NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ__TYPE_PALETTE;
}

u32 sub_0207C924(void)
{
    return 242;
}

u32 sub_0207C928(void)
{
    return 243;
}

/*
 * Given a type index, return the corresponding palette index to use for that type's icon.
 * See also BattleIcon_GetNARCIndex and BattleIcon_GetPaletteNARCMember.
 */
u8 BattleIcon_TypeIndexToPaletteIndex(int typeIndex)
{
    GF_ASSERT(typeIndex < NELEMS(sBattleIcon_PaletteIndexMap));
    return sBattleIcon_PaletteIndexMap[typeIndex];
}

/*
 * Returns the index of the NARC for pl_batt_obj.
 */
u32 BattleIcon_GetNARCIndex(void)
{
    return NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ;
}

void BattleIcon_MakeTypeSpriteTiles(SpriteRenderer *param0, SpriteGfxHandler *param1, NNS_G2D_VRAM_TYPE param2, int typeIndex, u32 param4)
{
    sub_0200CBDC(param0, param1, BattleIcon_GetNARCIndex(), BattleIcon_TypeIndexToNARCMember(typeIndex), 1, param2, param4);
}

void BattleIcon_MakeTypeSpritePalette(SpriteRenderer *param0, SpriteGfxHandler *param1, NNS_G2D_VRAM_TYPE param2, u32 param3)
{
    sub_0200CC9C(param0, param1, BattleIcon_GetNARCIndex(), BattleIcon_GetPaletteNARCMember(), 0, 3, param2, param3);
}

void sub_0207C9B0(PaletteData *param0, int param1, SpriteRenderer *param2, SpriteGfxHandler *param3, NNS_G2D_VRAM_TYPE param4, u32 param5)
{
    sub_0200CD7C(param0, param1, param2, param3, BattleIcon_GetNARCIndex(), BattleIcon_GetPaletteNARCMember(), 0, 3, param4, param5);
}

void sub_0207C9EC(SpriteRenderer *param0, SpriteGfxHandler *param1, u32 param2, u32 param3)
{
    sub_0200CE0C(param0, param1, BattleIcon_GetNARCIndex(), sub_0207C924(), 1, param2);
    sub_0200CE3C(param0, param1, BattleIcon_GetNARCIndex(), sub_0207C928(), 1, param3);
}

void sub_0207CA34(SpriteGfxHandler *param0, u32 param1)
{
    SpriteGfxHandler_UnloadCharObjById(param0, param1);
}

void sub_0207CA3C(SpriteGfxHandler *param0, u32 param1)
{
    SpriteGfxHandler_UnloadPlttObjById(param0, param1);
}

void sub_0207CA44(SpriteGfxHandler *param0, u32 param1, u32 param2)
{
    SpriteGfxHandler_UnloadCellObjById(param0, param1);
    SpriteGfxHandler_UnloadAnimObjById(param0, param2);
}

CellActorData *sub_0207CA58(SpriteRenderer *param0, SpriteGfxHandler *param1, int param2, const SpriteTemplate *param3)
{
    CellActorData *v0;
    SpriteTemplate v1;

    v1 = *param3;
    v1.plttIdx = BattleIcon_TypeIndexToPaletteIndex(param2);
    v0 = SpriteActor_LoadResources(param0, param1, &v1);

    return v0;
}

void sub_0207CA88(CellActorData *param0)
{
    sub_0200D0F4(param0);
}

/*
 * Given a move class index, return the corresponding NARC member containing the icon for that move class.
 * See also BattleIcon_GetNARCIndex.
 */
u32 BattleIcon_MoveClassIndexToNARCMember(int moveClassIndex)
{
    GF_ASSERT(moveClassIndex < NELEMS(sBattleIcon_MoveClass_NARCMemberMap));
    return sBattleIcon_MoveClass_NARCMemberMap[moveClassIndex];
}

/*
 * Given a move class index, return the corresponding palette index to use for that move class' icon.
 * See also BattleIcon_GetNARCIndex and BattleIcon_GetPaletteNARCMember.
 */
u8 BattleIcon_MoveClassIndexToPaletteIndex(int moveClassIndex)
{
    GF_ASSERT(moveClassIndex < NELEMS(sBattleIcon_MoveClass_PaletteIndexMap));
    return sBattleIcon_MoveClass_PaletteIndexMap[moveClassIndex];
}

/*
 * Returns the index of the NARC for pl_batt_obj.
 * (This is identical to BattleIcon_GetNARCIndex).
 */
u32 BattleIcon_GetMoveClassNARCIndex(void)
{
    return NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ;
}

void BattleIcon_MakeMoveTypeSpriteTiles(SpriteRenderer *param0, SpriteGfxHandler *param1, NNS_G2D_VRAM_TYPE param2, int moveTypeIndex, u32 param4)
{
    sub_0200CBDC(param0, param1, BattleIcon_GetMoveClassNARCIndex(), BattleIcon_MoveClassIndexToNARCMember(moveTypeIndex), 1, param2, param4);
}

void sub_0207CAF8(SpriteGfxHandler *param0, u32 param1)
{
    SpriteGfxHandler_UnloadCharObjById(param0, param1);
}

void sub_0207CB00(CellActorData *param0)
{
    sub_0200D0F4(param0);
}
