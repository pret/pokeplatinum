#ifndef POKEPLATINUM_APPLICATIONS_PC_BOXES_COMPARE_GRAPHICS_H
#define POKEPLATINUM_APPLICATIONS_PC_BOXES_COMPARE_GRAPHICS_H

#include <nnsys.h>

#include "generated/pokemon_contest_types.h"

#include "applications/pc_boxes/defs.h"
#include "applications/pc_boxes/icon_helper.h"

#include "bg_window.h"
#include "message.h"
#include "narc.h"
#include "sprite.h"
#include "string_gf.h"
#include "sys_task_manager.h"

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

typedef struct BoxCompareGraphics {
    BOOL unused_00;
    BoxGraphics *boxGraphics;
    const BoxApplication *boxApp;
    BgConfig *bgConfig;
    SpriteList *spriteList;
    MonIconHelper *monIconHelper;
    u32 monIconVramOffsets[NUM_COMPARE_SLOTS];
    Sprite *monIconSprites[NUM_COMPARE_SLOTS];
    Sprite *slotTabSprites[NUM_COMPARE_SLOTS];
    Sprite *compareButtonSprite;
    Sprite *contestStatSprites[NUM_COMPARE_SLOTS][CONTEST_TYPE_MAX];
    void *cellBankBuffer;
    NNSG2dCellDataBank *cellBank;
    void *animBankBuffer;
    NNSG2dAnimBankData *animBank;
    MessageLoader *boxMessagesLoader;
    MessageLoader *moveNamesLoader;
    String *boxDisplayText;
    Window windows[COMPARE_WINDOW_COUNT];
    u8 iconCharBuffer[MON_ICON_FILE_SIZE];
    NNSG2dScreenData *slot0HighlightScreenData;
    NNSG2dScreenData *slot1HighlightScreenData;
    void *slot0HighlightScreenBuffer;
    void *slot1HighlightScreenBuffer;
    enum CompareMode shownCompareMode;
    int modeTransitionState;
    SysTask *compareButtonTask;
} BoxCompareGraphics;

BOOL BoxCompareGraphics_Init(BoxCompareGraphics **outCompareGraphics, BoxGraphics *boxGraphics, const BoxApplication *boxApp, BgConfig *bgConfig, SpriteList *spriteList, MessageLoader *msgLoader, NARC *narc);
void BoxCompareGraphics_Free(BoxCompareGraphics *compareGraphics);
void BoxCompareGraphics_LoadGraphics(BoxCompareGraphics *compareGraphics, NARC *narc);
void BoxCompareGraphics_UpdateSlotTabs(BoxCompareGraphics *compareGraphics, BOOL isSwitching);
void BoxCompareGraphics_RefreshSelectedSlot(BoxCompareGraphics *compareGraphics);
BOOL BoxCompareGraphics_ReturnTrue(BoxCompareGraphics *compareGraphics);
void BoxCompareGraphics_StartPageChange(BoxCompareGraphics *compareGraphics);
BOOL BoxCompareGraphics_IsPageChangeDone(BoxCompareGraphics *compareGraphics);

#endif // POKEPLATINUM_APPLICATIONS_PC_BOXES_COMPARE_GRAPHICS_H
