#ifndef POKEPLATINUM_OV19_021DEC04_H
#define POKEPLATINUM_OV19_021DEC04_H

#include "applications/pc_boxes/box_application.h"
#include "applications/pc_boxes/struct_ov19_021D61B0_decl.h"
#include "applications/pc_boxes/struct_ov19_021DEC04_decl.h"

#include "bg_window.h"
#include "message.h"
#include "narc.h"
#include "sprite.h"

#define CONTEST_CHART_CENTER_X 128
#define CONTEST_CHART_CENTER_Y 484

enum CompareWindow {
    COMPARE_WINDOW_SLOT_0_NAME = 0,
    COMPARE_WINDOW_SLOT_1_NAME,
    COMPARE_WINDOW_LABELS,
    COMPARE_WINDOW_SLOT_0_STATS,
    COMPARE_WINDOW_SLOT_1_STATS,
    COMPARE_WINDOW_SLOT_0_MOVES,
    COMPARE_WINDOW_SLOT_1_MOVES,
    COMPARE_WINDOW_COUNT,
};

enum ComparePageChangeState {
    COMPARE_PAGE_CHANGE_STATE_SHOW_LAYER = 0,
    COMPARE_PAGE_CHANGE_STATE_DRAW_PAGE,
    COMPARE_PAGE_CHANGE_STATE_DONE,
};

BOOL BoxCompareGraphics_Init(BoxCompareGraphics **outCompareGraphics, BoxGraphics *boxGraphics, const BoxApplication *boxApp, BgConfig *bgConfig, SpriteList *spriteList, MessageLoader *msgLoader, NARC *narc);
void BoxCompareGraphics_Free(BoxCompareGraphics *compareGraphics);
void BoxCompareGraphics_LoadGraphics(BoxCompareGraphics *compareGraphics, NARC *narc);
void BoxCompareGraphics_UpdateSlotTabs(BoxCompareGraphics *compareGraphics, BOOL isSwitching);
void BoxCompareGraphics_RefreshSelectedSlot(BoxCompareGraphics *compareGraphics);
BOOL BoxCompareGraphics_ReturnTrue(BoxCompareGraphics *compareGraphics);
void BoxCompareGraphics_StartPageChange(BoxCompareGraphics *compareGraphics);
BOOL BoxCompareGraphics_IsPageChangeDone(BoxCompareGraphics *compareGraphics);

#endif // POKEPLATINUM_OV19_021DEC04_H
