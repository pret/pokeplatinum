#ifndef POKEPLATINUM_YES_NO_TOUCH_MENU_H
#define POKEPLATINUM_YES_NO_TOUCH_MENU_H

#include "bg_window.h"
#include "touch_screen.h"
#include "touch_screen_actions.h"

#define BUTTON_FRAME_COUNT 4

enum YesNoTouchButton {
    BUTTON_YES = 0,
    BUTTON_NO,
    BUTTON_COUNT,
    BUTTON_NONE,
};

#define YES_NO_TOUCH_MENU_NOTHING_CHOSEN 0
#define YES_NO_TOUCH_MENU_YES            1 // the player selected yes, and the button animation is finished
#define YES_NO_TOUCH_MENU_NO             2 // the player selected no, and the button animation is finished
#define YES_NO_TOUCH_MENU_YES_INSTANT    3 // the player selected yes
#define YES_NO_TOUCH_MENU_NO_INSTANT     4 // the player selected no

typedef struct YesNoButtonAnimData {
    const fx32 *frameThresholds;
    u32 frameCount;
    fx32 frameProgress;
} YesNoButtonAnimData;

typedef struct YesNoButtonSprite {
    BgConfig *bgConfig;
    enum BgLayer bgLayer;
    void *nscrBuffers[BUTTON_FRAME_COUNT];
    NNSG2dScreenData *screenData[BUTTON_FRAME_COUNT];
    YesNoButtonAnimData animData;
    u8 tilemapLeft;
    u8 tilemapTop;
    u8 animFrame;
} YesNoButtonSprite;

typedef struct YesNoTouchMenu {
    TouchScreenActions *buttonAction;
    TouchScreenHitTable hitTable[BUTTON_COUNT];
    YesNoButtonSprite buttonSprites[BUTTON_COUNT];
    BgConfig *bgConfig;
    u32 bgLayer;
    enum HeapID heapID;
    fx32 frameThresholds[BUTTON_FRAME_COUNT];
    u8 tilemapLeft;
    u8 tilemapTop;
    u8 pressedButton;
    u8 paramsApplied : 4;
    u8 buttonState : 4;
} YesNoTouchMenu;

typedef struct YesNoTouchMenuParams {
    BgConfig *bgConfig;
    enum BgLayer bgLayer;
    u32 baseTile;
    u32 palette;
    u8 tilemapLeft;
    u8 tilemapTop;
} YesNoTouchMenuParams;

YesNoTouchMenu *YesNoTouchMenu_New(enum HeapID heapID);
void YesNoTouchMenu_Free(YesNoTouchMenu *menu);
void YesNoTouchMenu_InitWithParams(YesNoTouchMenu *menu, const YesNoTouchMenuParams *params);
u32 YesNoTouchMenu_ProcessInputInstant(YesNoTouchMenu *menu);
u32 YesNoTouchMenu_ProcessInput(YesNoTouchMenu *menu);
void YesNoTouchMenu_Reset(YesNoTouchMenu *menu);

#endif // POKEPLATINUM_YES_NO_TOUCH_MENU_H
