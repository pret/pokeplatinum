#ifndef POKEPLATINUM_APPLICATIONS_PC_BOXES_PARTY_GRAPHICS_H
#define POKEPLATINUM_APPLICATIONS_PC_BOXES_PARTY_GRAPHICS_H

#include <nnsys.h>

#include "constants/pokemon.h"

#include "applications/pc_boxes/defs.h"
#include "applications/pc_boxes/icon_helper.h"
#include "applications/pc_boxes/view.h"

#include "bg_window.h"
#include "narc.h"
#include "sprite.h"

#define PARTY_PANEL_HEIGHT               26
#define PARTY_PANEL_WIDTH                15
#define PARTY_PANEL_OVERFLOW_ROWS        (PARTY_PANEL_HEIGHT - SCREEN_HEIGHT_TILES)
#define PARTY_PANEL_TILEMAP_LEFT         14
#define PARTY_PANEL_COMPARE_TILEMAP_LEFT 9
#define PARTY_PANEL_SLIDE_ROWS           2

#define PARTY_ICON_TILE_BASE            1048
#define PARTY_ICON_TILE_COUNT           32
#define PARTY_ICON_SPRITE_PRIORITY_BASE 4
#define PARTY_ICON_HIDE_Y               208
#define PARTY_ICON_ANIM_FRAMES          8

#define PARTY_CLOSE_BUTTON_X 192
#define PARTY_CLOSE_BUTTON_Y 184

typedef struct BoxPartyGraphics {
    BoxGraphics *boxGraphics;
    BgConfig *bgConfig;
    SpriteList *unread_08;
    const BoxApplication *boxApp;
    BoxView *boxView;
    void *panelScreenBuffer;
    NNSG2dScreenData *panelScreenData;
    VecFx32 *shiftPositions;
    fx32 moveStepX;
    fx32 moveStepY;
    u8 animSlot;
    u8 shiftCount;
    u8 animFrame;
    u8 hiddenRows;
    BOOL isAnimating;
    u32 tilemapLeft;
    int xOffset;
    MonIconHelper *monIconHelper;
    MonIcon monIcons[MAX_PARTY_SIZE];
    u8 releaseAnimStep;
    u8 padding_175[3];
} BoxPartyGraphics;

BOOL BoxPartyGraphics_Init(BoxPartyGraphics *partyGraphics, BoxGraphics *boxGraphics, const BoxApplication *boxApp, BgConfig *bgConfig, SpriteList *spriteList, NARC *narc);
void BoxPartyGraphics_Free(BoxPartyGraphics *partyGraphics);
void BoxPartyGraphics_ShowInstantly(BoxPartyGraphics *partyGraphics);
void BoxPartyGraphics_Open(BoxPartyGraphics *partyGraphics);
BOOL BoxPartyGraphics_HasFinishedAnimating(BoxPartyGraphics *partyGraphics);
void BoxPartyGraphics_Close(BoxPartyGraphics *partyGraphics);
BOOL BoxPartyGraphics_IsClosed(BoxPartyGraphics *partyGraphics);
void BoxPartyGraphics_ShiftIconsUp(BoxPartyGraphics *partyGraphics);
BOOL BoxPartyGraphics_HasFinishedAnimating2(BoxPartyGraphics *partyGraphics);
void BoxPartyGraphics_GlideIconToLastSlot(BoxPartyGraphics *partyGraphics);
BOOL BoxPartyGraphics_HasFinishedAnimating3(BoxPartyGraphics *partyGraphics);
void BoxPartyGraphics_StoreMon(BoxPartyGraphics *partyGraphics);
void BoxPartyGraphics_StartReleaseMonAnimation(BoxPartyGraphics *partyGraphics, u32 partySlot);
BOOL BoxPartyGraphics_IsReleaseMonAnimationDone(BoxPartyGraphics *partyGraphics);
void BoxPartyGraphics_UpdateMarkingsTransparency(BoxPartyGraphics *partyGraphics);
void BoxPartyGraphics_UpdateHeldItemIcon(BoxPartyGraphics *partyGraphics, u32 partySlot, u32 item);
void BoxPartyGraphics_UpdateMarkingsIcon(BoxPartyGraphics *partyGraphics);
void BoxPartyGraphics_PickUpIcon(BoxPartyGraphics *partyGraphics, u32 partySlot, u32 tileOffset, MonIcon *monIcon);
void BoxPartyGraphics_PlaceDownIcon(BoxPartyGraphics *partyGraphics, u32 partySlot, const MonIcon *monIcon);
void BoxPartyGraphics_PlaceDownIconAtSlot(BoxPartyGraphics *partyGraphics, u32 partySlot, const MonIcon *monIcon);
MonIcon *BoxPartyGraphics_GetIcon(BoxPartyGraphics *partyGraphics, u32 partySlot);
void BoxPartyGraphics_GetCursorSlotPosition(BoxPartyGraphics *partyGraphics, u32 partyPosition, s32 *x, s32 *y);

#endif // POKEPLATINUM_APPLICATIONS_PC_BOXES_PARTY_GRAPHICS_H
