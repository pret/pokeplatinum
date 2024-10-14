#include "unk_0207C908.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_defs/sprite_template.h"
#include "struct_defs/struct_0200D0F4.h"

#include "palette.h"
#include "unk_0200C6E4.h"

#include "narc.h"

/*
* Maps a type index (e.g. TYPE_WATER) to the corresponding NARC member in pl_batt_obj.narc containing the type icon.
*/
__attribute__((aligned(4))) static const u32 BattleObj_NARCMemberMap[] = {
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

/*
* Maps a type index (e.g. TYPE_WATER) to the corresponding palette index in NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ__TYPE_PALETTE.
*/
__attribute__((aligned(4))) static const u8 BattleObj_PaletteIndexMap[] = {
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

/*
* Maps move types (Physical, Special, Status) to the corresponding NARC member in pl_batt_obj.narc containing the type icon.
*/
__attribute__((aligned(4))) static const u32 BattleObj_MoveType_NARCMemberMap[] = {
    0xF4,
    0xF6,
    0xF5
};

/*
* Maps a move type (Physical, Special, Status) to the corresponding palette index in NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ__TYPE_PALETTE.
*/
__attribute__((aligned(4))) static const u8 BattleObj_MoveType_PaletteIndexMap[] = {
    0x0,
    0x1,
    0x0
};

/*
* Given a type index, return the corresponding NARC member containing the icon for that type.
* See also BattleObj_GetNARCIndex.
*/
u32 BattleObj_TypeIDToNARCMember(int typeIndex)
{
    GF_ASSERT(typeIndex < NELEMS(BattleObj_NARCMemberMap));
    return BattleObj_NARCMemberMap[typeIndex];
}

/*
* Returns the NARC member within pl_batt_obj containing palettes for battle icons.
* See also BattleObj_GetNARCIndex.
*/
u32 BattleObj_GetPaletteNARCMember(void)
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
* See also BattleObj_GetNARCIndex and BattleObj_GetPaletteNARCMember.
*/
u8 BattleObj_TypeIDToPaletteIndex(int param0)
{
    GF_ASSERT(param0 < NELEMS(BattleObj_PaletteIndexMap));
    return BattleObj_PaletteIndexMap[param0];
}

/*
* Returns the index of the NARC for pl_batt_obj.
*/
u32 BattleObj_GetNARCIndex(void)
{
    return NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ;
}

void sub_0207C948(SpriteRenderer *param0, SpriteGfxHandler *param1, NNS_G2D_VRAM_TYPE param2, int param3, u32 param4)
{
    sub_0200CBDC(param0, param1, BattleObj_GetNARCIndex(), BattleObj_TypeIDToNARCMember(param3), 1, param2, param4);
}

void sub_0207C97C(SpriteRenderer *param0, SpriteGfxHandler *param1, NNS_G2D_VRAM_TYPE param2, u32 param3)
{
    sub_0200CC9C(param0, param1, BattleObj_GetNARCIndex(), BattleObj_GetPaletteNARCMember(), 0, 3, param2, param3);
}

void sub_0207C9B0(PaletteData *param0, int param1, SpriteRenderer *param2, SpriteGfxHandler *param3, NNS_G2D_VRAM_TYPE param4, u32 param5)
{
    sub_0200CD7C(param0, param1, param2, param3, BattleObj_GetNARCIndex(), BattleObj_GetPaletteNARCMember(), 0, 3, param4, param5);
}

void sub_0207C9EC(SpriteRenderer *param0, SpriteGfxHandler *param1, u32 param2, u32 param3)
{
    sub_0200CE0C(param0, param1, BattleObj_GetNARCIndex(), sub_0207C924(), 1, param2);
    sub_0200CE3C(param0, param1, BattleObj_GetNARCIndex(), sub_0207C928(), 1, param3);
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
    v1.plttIdx = BattleObj_TypeIDToPaletteIndex(param2);
    v0 = SpriteActor_LoadResources(param0, param1, &v1);

    return v0;
}

void sub_0207CA88(CellActorData *param0)
{
    sub_0200D0F4(param0);
}

/*
* Given a movetype index, return the corresponding NARC member containing the icon for that movetype.
* See also BattleObj_GetNARCIndex.
*/
u32 BattleObj_MoveTypeIDToNARCMember(int moveTypeIndex)
{
    GF_ASSERT(moveTypeIndex < NELEMS(BattleObj_MoveType_NARCMemberMap));
    return BattleObj_MoveType_NARCMemberMap[moveTypeIndex];
}

/*
* Given a movetype index, return the corresponding palette index to use for that movetype's icon.
* See also BattleObj_GetNARCIndex and BattleObj_GetPaletteNARCMember.
*/
u8 BattleObj_MoveTypeIDToPaletteIndex(int moveTypeIndex)
{
    GF_ASSERT(moveTypeIndex < NELEMS(BattleObj_MoveType_PaletteIndexMap));
    return BattleObj_MoveType_PaletteIndexMap[moveTypeIndex];
}

/*
* Returns the index of the NARC for pl_batt_obj.
* (This is identical to BattleObj_GetNARCIndex).
*/
u32 BattleObj_GetMoveTypeNARCIndex(void)
{
    return NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ;
}

void sub_0207CAC4(SpriteRenderer *param0, SpriteGfxHandler *param1, NNS_G2D_VRAM_TYPE param2, int param3, u32 param4)
{
    sub_0200CBDC(param0, param1, BattleObj_GetMoveTypeNARCIndex(), BattleObj_MoveTypeIDToNARCMember(param3), 1, param2, param4);
}

void sub_0207CAF8(SpriteGfxHandler *param0, u32 param1)
{
    SpriteGfxHandler_UnloadCharObjById(param0, param1);
}

void sub_0207CB00(CellActorData *param0)
{
    sub_0200D0F4(param0);
}
