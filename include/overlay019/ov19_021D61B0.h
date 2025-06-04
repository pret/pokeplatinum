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

enum BoxFunctions {
    FUNCTION_ov19_021D6694,
    FUNCTION_BoxGraphics_ScreenFadeBothToBlack0,
    FUNCTION_BoxGraphics_ScreenFadeBothToBlack1,
    FUNCTION_BoxGraphics_ScreenFadeBothToBlack2,
    FUNCTION_ov19_021D6824,
    FUNCTION_ov19_021D68E4,
    FUNCTION_ov19_021D6940,
    FUNCTION_ov19_021D69BC,
    FUNCTION_ov19_021D6A1C,
    FUNCTION_ov19_021D6A38,
    FUNCTION_ov19_021D6A74,
    FUNCTION_ov19_021D6AB0,
    FUNCTION_ov19_021D6AEC,
    FUNCTION_ov19_021D6B1C,
    FUNCTION_BoxGraphics_PlayReleaseCursorMonAnimation,
    FUNCTION_BoxGraphics_PlayReleaseBoxMonAnimation,
    FUNCTION_BoxGraphics_PlayReleasePartyMonAnimation,
    FUNCTION_ov19_021D6C38,
    FUNCTION_ov19_021D6C74,
    FUNCTION_ov19_021D6CB0,
    FUNCTION_ov19_021D6CF8,
    FUNCTION_ov19_021D6D40,
    FUNCTION_ov19_021D6D88,
    FUNCTION_ov19_021D6DF8,
    FUNCTION_BoxGraphics_DisplayBoxMessage,
    FUNCTION_ov19_021D6E70,
    FUNCTION_BoxGraphics_CloseMessageBox,
    FUNCTION_ov19_021D6EC0,
    FUNCTION_BoxGraphics_UpdateMenuCursor,
    FUNCTION_ov19_021D6F0C,
    FUNCTION_ov19_021D6F3C,
    FUNCTION_ov19_021D6F78,
    FUNCTION_ov19_021D6FB0,
    FUNCTION_BoxGraphics_TransitionWallpaper,
    FUNCTION_ov19_021D7028,
    FUNCTION_ov19_021D70E8,
    FUNCTION_ov19_021D7138,
    FUNCTION_BoxGraphics_PlayAdjustPartyAnimation,
    FUNCTION_ov19_021D71F8,
    FUNCTION_ov19_021D7248,
    FUNCTION_ov19_021D7278,
    FUNCTION_ov19_021D72E8,
    FUNCTION_ov19_021D7324,
    FUNCTION_ov19_021D7340,
    FUNCTION_ov19_021D735C,
    FUNCTION_ov19_021D7380,
    FUNCTION_ov19_021D7398,
    FUNCTION_ov19_021D73B0,
    FUNCTION_ov19_021D73EC,
    FUNCTION_ov19_021D7408,
    FUNCTION_ov19_021D7424,
    FUNCTION_BoxGraphics_ScreenFadeBothToBlackLogOff,
};

BOOL BoxGraphics_Load(UnkStruct_ov19_021D61B0 **param0, const UnkStruct_ov19_021D4DF0 *param1, const UnkStruct_ov19_021D5DF8 *param2);
void BoxGraphics_Free(UnkStruct_ov19_021D61B0 *param0);
void ov19_BoxTaskHandler(UnkStruct_ov19_021D61B0 *param0, enum BoxFunctions function);
BOOL ov19_IsSysTaskDone(UnkStruct_ov19_021D61B0 *param0, enum BoxFunctions function);
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
