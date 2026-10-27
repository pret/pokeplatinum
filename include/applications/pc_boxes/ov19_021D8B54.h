#ifndef POKEPLATINUM_OV19_021D8B54_H
#define POKEPLATINUM_OV19_021D8B54_H

#include <nitro/fx/fx.h>

#include "applications/pc_boxes/box_application.h"
#include "applications/pc_boxes/struct_ov19_021D61B0_decl.h"
#include "applications/pc_boxes/struct_ov19_021D8E00.h"

#include "narc.h"
#include "sprite.h"

#define CURSOR_ICON_TILE_BASE       1240
#define CURSOR_MULTI_ICON_TILE_BASE 1520

#define CURSOR_HELD_ICON_OFFSET_X 0
#define CURSOR_HELD_ICON_OFFSET_Y (-4)
#define CURSOR_SHADOW_OFFSET_Y    24

#define CURSOR_LEFT_ARROW_X  108
#define CURSOR_RIGHT_ARROW_X 236
#define CURSOR_ARROW_Y       20

BOOL BoxCursorGraphics_Init(BoxCursorGraphics *bcGraphics, BoxGraphics *boxGraphics, const BoxApplication *boxApp, SpriteList *spriteList, NARC *narc);
void BoxCursorGraphics_Load(BoxCursorGraphics *bcGraphics, NARC *narc);
void BoxCursorGraphics_Free(BoxCursorGraphics *bcGraphics);
void BoxCursorGraphics_StartMove(BoxCursorGraphics *bcGraphics);
BOOL BoxCursorGraphics_IsMoveDone(BoxCursorGraphics *bcGraphics);
void BoxCursorGraphics_StartPickUpAnimation(BoxCursorGraphics *bcGraphics);
BOOL BoxCursorGraphics_IsPickUpAnimationDone(BoxCursorGraphics *bcGraphics);
void BoxCursorGraphics_StartPlaceDownAnimation(BoxCursorGraphics *bcGraphics);
BOOL BoxCursorGraphics_IsPlaceDownAnimationDone(BoxCursorGraphics *bcGraphics);
void BoxCursorGraphics_StartShiftAnimation(BoxCursorGraphics *bcGraphics);
BOOL BoxCursorGraphics_IsShiftAnimationDone(BoxCursorGraphics *bcGraphics);
void BoxCursorGraphics_StartButtonPressAnimation(BoxCursorGraphics *bcGraphics);
BOOL BoxCursorGraphics_IsAnimationDone2(BoxCursorGraphics *bcGraphics);
void BoxCursorGraphics_StartReturnToRestAnimation(BoxCursorGraphics *bcGraphics);
BOOL BoxCursorGraphics_IsReturnToRestAnimationDone(BoxCursorGraphics *bcGraphics);
void BoxCursorGraphics_OnMonStoredFromCursor(BoxCursorGraphics *param0);
void BoxCursorGraphics_StartReleaseAnimation(BoxCursorGraphics *param0);
BOOL BoxCursorGraphics_IsReleaseAnimationDone(BoxCursorGraphics *param0);
void BoxCursorGraphics_RaisePriority(BoxCursorGraphics *bcGraphics);
void BoxCursorGraphics_RestorePriority(BoxCursorGraphics *bcGraphics);
void BoxCursorGraphics_UpdateMarkingsIcon(BoxCursorGraphics *bcGraphics);
void BoxCursorGraphics_UpdateHeldMonTransparency(BoxCursorGraphics *bcGraphics);
void BoxCursorGraphics_UpdateHeldItemIcon(BoxCursorGraphics *bcGraphics, u32 item);
void BoxCursorGraphics_UpdateFastModePalette(BoxCursorGraphics *param0);
void BoxGraphics_OpenMultiSelectCursor(BoxCursorGraphics *param0);
void BoxCursorGraphics_GetPosition(BoxCursorGraphics *bcGraphics, VecFx32 *pos);
void BoxCursorGraphics_StartTakeItemAnimation(BoxCursorGraphics *bcGraphics);
BOOL BoxCursorGraphics_IsAnimationDone3(BoxCursorGraphics *bcGraphics);
void BoxCursorGraphics_StartGiveItemAnimation(BoxCursorGraphics *bcGraphics);
BOOL BoxCursorGraphics_IsAnimationDone4(BoxCursorGraphics *bcGraphics);
void BoxCursorGraphics_StartSwitchItemAnimation(BoxCursorGraphics *bcGraphics);
BOOL BoxCursorGraphics_IsAnimationDone5(BoxCursorGraphics *bcGraphics);
void BoxCursorGraphics_ShowReachingPose(BoxCursorGraphics *bcGraphics);
void BoxCursorGraphics_ClearHeldItem(BoxCursorGraphics *bcGraphics);

#endif // POKEPLATINUM_OV19_021D8B54_H
