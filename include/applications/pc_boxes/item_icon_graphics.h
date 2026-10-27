#ifndef POKEPLATINUM_APPLICATIONS_PC_BOXES_ITEM_ICON_GRAPHICS_H
#define POKEPLATINUM_APPLICATIONS_PC_BOXES_ITEM_ICON_GRAPHICS_H

#include <nitro/fx/fx.h>

#include "applications/pc_boxes/cursor_graphics.h"
#include "applications/pc_boxes/defs.h"
#include "applications/pc_boxes/icon_helper.h"

#include "bg_window.h"
#include "sprite.h"

#define ITEM_ICON_TILE_BASE              1536
#define ITEM_ICON_TILE_COUNT             (4 * 4)
#define ITEM_ICON_PLTT_BASE              7
#define ITEM_ICON_MOVE_FRAMES            12
#define ITEM_ICON_SPRITE_COUNT           3
#define ITEM_ICON_CURSOR_OFFSET_X        0
#define ITEM_ICON_CURSOR_OFFSET_Y        8
#define ITEM_ICON_MON_OFFSET_X           10
#define ITEM_ICON_MON_OFFSET_Y           8
#define ITEM_ICON_PARTY_BG_PRIORITY      1
#define ITEM_ICON_BOX_BG_PRIORITY        2
#define ITEM_ICON_CURSOR_SPRITE_PRIORITY 2
#define ITEM_ICON_MON_SPRITE_PRIORITY    3

enum ItemIconMoveState {
    ITEM_ICON_MOVE_STATE_MOVE = 0,
    ITEM_ICON_MOVE_STATE_WAIT_ANIM,
};

enum ItemIconRole {
    ITEM_ICON_ROLE_FREE = 0,
    ITEM_ICON_ROLE_PREVIEW,
    ITEM_ICON_ROLE_HIDING,
    ITEM_ICON_ROLE_HELD,
};

enum ItemIconAnim {
    ITEM_ICON_ANIM_HELD = 0,
    ITEM_ICON_ANIM_APPEAR,
    ITEM_ICON_ANIM_HIDE,
    ITEM_ICON_ANIM_PICK_UP,
    ITEM_ICON_ANIM_PUT_DOWN,
    ITEM_ICON_ANIM_SHRINK,
    ITEM_ICON_ANIM_SHOWN,
};

struct BoxItemIconGraphics {
    BOOL isMoveItemsMode;
    BoxGraphics *boxGraphics;
    const BoxApplication *boxApp;
    BgConfig *unread_0C;
    SpriteList *spriteList;
    MonIconHelper *monIconHelper;
    BoxCursorGraphics *cursorGraphics;
    Sprite *sprites[ITEM_ICON_SPRITE_COUNT];
    int spriteRoles[ITEM_ICON_SPRITE_COUNT];
    int activeMoveCount;
    int shrinkingSprite;
};

BOOL BoxItemIconGraphics_Init(BoxItemIconGraphics **outItemIconGraphics, BoxGraphics *boxGraphics, const BoxApplication *boxApp, BgConfig *bgConfig, SpriteList *spriteList);
void BoxItemIconGraphics_Free(BoxItemIconGraphics *itemIconGraphics);
void BoxItemIconGraphics_ShowInitialIcons(BoxItemIconGraphics *itemIconGraphics);
void BoxItemIconGraphics_UpdatePreviewIcon(BoxItemIconGraphics *itemIconGraphics);
BOOL BoxItemIconGraphics_IsPreviewUpdateDone(BoxItemIconGraphics *itemIconGraphics);
void BoxItemIconGraphics_StartTakeItem(BoxItemIconGraphics *itemIconGraphics);
BOOL BoxItemIconGraphics_IsTakeItemDone(BoxItemIconGraphics *itemIconGraphics);
void BoxItemIconGraphics_HidePreviewIcon(BoxItemIconGraphics *itemIconGraphics);
BOOL BoxItemIconGraphics_IsPreviewIconHidden(BoxItemIconGraphics *itemIconGraphics);
void BoxItemIconGraphics_StartGiveItem(BoxItemIconGraphics *itemIconGraphics);
BOOL BoxItemIconGraphics_IsTakeItemDone2(BoxItemIconGraphics *itemIconGraphics);
void BoxItemIconGraphics_StartSwapItems(BoxItemIconGraphics *itemIconGraphics);
BOOL BoxItemIconGraphics_IsTakeItemDone3(BoxItemIconGraphics *itemIconGraphics);
void BoxItemIconGraphics_StartShrinkItem(BoxItemIconGraphics *itemIconGraphics);
BOOL BoxItemIconGraphics_IsShrinkItemDone(BoxItemIconGraphics *itemIconGraphics);
void BoxItemIconGraphics_SetHeldIconPosition(BoxItemIconGraphics *itemIconGraphics, const VecFx32 *cursorPos);
void BoxItemIconGraphics_SetHeldIconBgPriority(BoxItemIconGraphics *itemIconGraphics, u32 bgPriority);

#endif // POKEPLATINUM_APPLICATIONS_PC_BOXES_ITEM_ICON_GRAPHICS_H
