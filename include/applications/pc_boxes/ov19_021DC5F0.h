#ifndef POKEPLATINUM_OV19_021DC5F0_H
#define POKEPLATINUM_OV19_021DC5F0_H

#include "applications/pc_boxes/box_application.h"
#include "applications/pc_boxes/struct_ov19_021D61B0_decl.h"
#include "applications/pc_boxes/struct_ov19_021DC680.h"
#include "applications/pc_boxes/struct_ov19_021DCD18.h"

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

#endif // POKEPLATINUM_OV19_021DC5F0_H
