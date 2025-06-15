#ifndef POKEPLATINUM_OV19_021D61B0_H
#define POKEPLATINUM_OV19_021D61B0_H

#include <nnsys.h>

#include "overlay019/funcptr_ov19_021D79B8.h"
#include "overlay019/struct_ov19_021D4DF0.h"
#include "overlay019/struct_ov19_021D5DF8_decl.h"
#include "overlay019/struct_ov19_021D61B0_decl.h"
#include "overlay019/struct_ov19_021D8318.h"
#include "overlay019/struct_ov19_021D8E00.h"
#include "overlay019/struct_ov19_021DA384.h"
#include "overlay019/struct_ov19_021DBA9C.h"
#include "overlay019/struct_ov19_021DC680.h"
#include "overlay019/struct_ov19_021DE3E8_decl.h"

#include "sprite.h"
#include "sys_task_manager.h"

enum BoxGraphicsFunctions {
    FUNC_ov19_021D6694,
    FUNC_BoxGraphics_ScreenFadeBothToBlack0,
    FUNC_BoxGraphics_ScreenFadeBothToBlack1,
    FUNC_BoxGraphics_ScreenFadeBothToBlack2,
    FUNC_BoxGraphics_ChangeToNewBox,
    FUNC_BoxGraphics_MoveCursor,
    FUNC_BoxGraphics_PreviewMon,
    FUNC_ov19_021D69BC,
    FUNC_ov19_021D6A1C,
    FUNC_BoxGraphics_PickUpMonIntoCursor,
    FUNC_BoxGraphics_PlaceMonDownFromCursor,
    FUNC_ov19_021D6AB0,
    FUNC_ov19_021D6AEC,
    FUNC_ov19_021D6B1C,
    FUNC_BoxGraphics_PlayReleaseCursorMonAnimation,
    FUNC_BoxGraphics_PlayReleaseBoxMonAnimation,
    FUNC_BoxGraphics_PlayReleasePartyMonAnimation,
    FUNC_ov19_021D6C38,
    FUNC_ov19_021D6C74,
    FUNC_ov19_021D6CB0,
    FUNC_ov19_021D6CF8,
    FUNC_ov19_021D6D40,
    FUNC_ov19_021D6D88,
    FUNC_BoxGraphics_ItemShrinkToNothing,
    FUNC_BoxGraphics_DisplayBoxMessage,
    FUNC_BoxGraphics_ShowMenu,
    FUNC_BoxGraphics_CloseMessageBox,
    FUNC_ov19_021D6EC0,
    FUNC_BoxGraphics_UpdateMenuCursor,
    FUNC_ov19_021D6F0C,
    FUNC_BoxGraphics_ShowBoxSelectionPopup,
    FUNC_BoxGraphics_ScrollBoxSelectionPopup,
    FUNC_ov19_021D6FB0,
    FUNC_BoxGraphics_TransitionWallpaper,
    FUNC_ov19_021D7028,
    FUNC_BoxGraphics_OpenPartyPopup,
    FUNC_ov19_021D7138,
    FUNC_BoxGraphics_PlayAdjustPartyAnimation,
    FUNC_ov19_021D71F8,
    FUNC_ov19_021D7248,
    FUNC_ov19_021D7278,
    FUNC_ov19_021D72E8,
    FUNC_ov19_021D7324,
    FUNC_ov19_021D7340,
    FUNC_BoxGraphics_StartDrawMultiSelect,
    FUNC_ov19_021D7380,
    FUNC_BoxGraphics_ApplyMultiSelectMonShadingTask,
    FUNC_ov19_021D73B0,
    FUNC_ov19_021D73EC,
    FUNC_ov19_021D7408,
    FUNC_ov19_021D7424,
    FUNC_BoxGraphics_ScreenFadeBothToBlackLogOff,
};

BOOL BoxGraphics_Load(UnkStruct_ov19_021D61B0 **param0, const UnkStruct_ov19_021D4DF0 *param1, const UnkStruct_ov19_021D5DF8 *param2);
void BoxGraphics_Free(UnkStruct_ov19_021D61B0 *param0);
void ov19_BoxTaskHandler(UnkStruct_ov19_021D61B0 *param0, enum BoxGraphicsFunctions function);
BOOL ov19_IsSysTaskDone(UnkStruct_ov19_021D61B0 *param0, enum BoxGraphicsFunctions function);
BOOL ov19_CheckAllTasksDone(UnkStruct_ov19_021D61B0 *param0);
SysTask *ov19_021D77C8(SysTaskFunc param0, void *param1, u32 param2);
NNSG2dImagePaletteProxy *ov19_021D77D0(UnkStruct_ov19_021D61B0 *param0);
UnkStruct_ov19_021DA384 *ov19_021D77D8(UnkStruct_ov19_021D61B0 *param0);
UnkStruct_ov19_021D8318 *ov19_021D77E0(UnkStruct_ov19_021D61B0 *param0);
UnkStruct_ov19_021DC680 *ov19_021D77E8(UnkStruct_ov19_021D61B0 *param0);
UnkStruct_ov19_021D8E00 *ov19_021D77F4(UnkStruct_ov19_021D61B0 *param0);
UnkStruct_ov19_021DE3E8 *ov19_021D7800(UnkStruct_ov19_021D61B0 *param0);
UnkStruct_ov19_021DBA9C *ov19_021D780C(UnkStruct_ov19_021D61B0 *param0);
PokemonSpriteManager *ov19_021D7818(UnkStruct_ov19_021D61B0 *param0);
int ov19_021D7820(UnkStruct_ov19_021D61B0 *param0);
void ov19_021D783C(SpriteResourcesHeader *param0, NNSG2dImageProxy *param1, NNSG2dImagePaletteProxy *param2, NNSG2dCellDataBank *param3, NNSG2dCellAnimBankData *param4, u32 param5);
Sprite *ov19_021D785C(SpriteList *param0, SpriteResourcesHeader *param1, u32 param2, u32 param3, u32 param4, int param5);
void BoxGraphics_SetSpritePriority(Sprite *sprite, u32 priority);
void ov19_021D78C8(const u16 *param0, u16 *param1, u32 param2, u16 param3, u32 param4);
const UnkStruct_ov19_021D5DF8 *ov19_021D7964(UnkStruct_ov19_021D61B0 *param0);
void ov19_021D79B8(void *param0, UnkFuncPtr_ov19_021D79B8 param1, void *param2);

#endif // POKEPLATINUM_OV19_021D61B0_H
