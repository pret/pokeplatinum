#ifndef POKEPLATINUM_APPLICATIONS_PC_BOXES_DIAL_GRAPHICS_H
#define POKEPLATINUM_APPLICATIONS_PC_BOXES_DIAL_GRAPHICS_H

#include <nnsys.h>

#include "applications/pc_boxes/application_manager.h"
#include "applications/pc_boxes/defs.h"

#include "bg_window.h"
#include "narc.h"
#include "sprite.h"
#include "string_gf.h"
#include "sys_task_manager.h"

#define DIAL_THUMBNAIL_COUNT  10
#define DIAL_VISIBLE_BUTTONS  6
#define DIAL_FRAMES_PER_STEP  6
#define DIAL_FADE_STEPS       16
#define DIAL_SLIDE_FRAMES     8
#define DIAL_LAST_RING_POS    7
#define DIAL_SPRITE_TILE_BASE 192

enum DialRotateState {
    DIAL_ROTATE_STATE_START_MOVES = 0,
    DIAL_ROTATE_STATE_WAIT_MOVES,
    DIAL_ROTATE_STATE_DONE,
};

enum ThumbnailsAppearState {
    THUMBNAILS_APPEAR_STATE_LAUNCH = 0,
    THUMBNAILS_APPEAR_STATE_WAIT_DELAY,
    THUMBNAILS_APPEAR_STATE_WAIT_MOVES,
    THUMBNAILS_APPEAR_STATE_DONE,
};

enum DialOpenState {
    DIAL_OPEN_STATE_WAIT_TAB = 0,
    DIAL_OPEN_STATE_SLIDE,
    DIAL_OPEN_STATE_SET_CONTENT,
    DIAL_OPEN_STATE_FADE_IN,
};

enum DialSwitchState {
    DIAL_SWITCH_STATE_WAIT_TAB = 0,
    DIAL_SWITCH_STATE_FADE_OUT,
    DIAL_SWITCH_STATE_SLIDE,
    DIAL_SWITCH_STATE_SET_CONTENT,
    DIAL_SWITCH_STATE_FADE_IN,
};

enum DialCloseState {
    DIAL_CLOSE_STATE_START_FADE = 0,
    DIAL_CLOSE_STATE_FADE_OUT,
    DIAL_CLOSE_STATE_SLIDE,
    DIAL_CLOSE_STATE_FINISH,
};

typedef struct DialSwitchAnim {
    struct BoxDialGraphics *dialGraphics;
    u32 state;
    Sprite *tabSprite;
    u16 slideFramesLeft;
    s16 fadeStep;
    fx32 bgXOffset;
    fx32 bgXStep;
    int targetBgXOffset;
} DialSwitchAnim;

typedef struct BoxDialGraphics {
    BoxGraphics *boxGraphics;
    const BoxApplication *boxApp;
    BgConfig *bgConfig;
    SpriteList *spriteList;
    u32 shownDial;
    SysTask *animTask;
    NNSG2dImagePaletteProxy plttProxy;
    Sprite *boxJumpTabSprite;
    Sprite *markingsTabSprite;
    Sprite *markingButtonSprites[PC_MARKINGS_BUTTON_COUNT];
    Sprite *thumbnailSprites[DIAL_THUMBNAIL_COUNT];
    int thumbnailsToUpdate;
    int dialRotation;
    String *string;
    Window window;
    void *tabCellBankBuffer;
    NNSG2dCellDataBank *tabCellBank;
    void *tabAnimBankBuffer;
    NNSG2dAnimBankData *tabAnimBank;
    void *markingButtonCellBankBuffer;
    NNSG2dCellDataBank *markingButtonCellBank;
    void *markingButtonAnimBankBuffer;
    NNSG2dAnimBankData *markingButtonAnimBank;
    DialSwitchAnim switchAnim;
    u8 fadeBlendA[DIAL_FADE_STEPS];
    u8 fadeBlendB[DIAL_FADE_STEPS];
} BoxDialGraphics;

BOOL BoxDialGraphics_Init(BoxDialGraphics **outDialGraphics, BoxGraphics *boxGraphics, const BoxApplication *boxApp, BgConfig *bgConfig, SpriteList *spriteList);
void BoxDialGraphics_Free(BoxDialGraphics *dialGraphics);
void BoxDialGraphics_LoadGraphics(BoxDialGraphics *dialGraphics, NARC *narc);
void BoxDialGraphics_SwitchDial(BoxDialGraphics *dialGraphics);
BOOL BoxDialGraphics_IsSwitchDone(BoxDialGraphics *dialGraphics);
void BoxDialGraphics_PopulateDial(BoxDialGraphics *dialGraphics);
BOOL BoxDialGraphics_IsPopulateDone(BoxDialGraphics *dialGraphics);
void BoxDialGraphics_RotateDial(BoxDialGraphics *dialGraphics);
BOOL BoxDialGraphics_IsRotateDone(BoxDialGraphics *dialGraphics);
void BoxDialGraphics_UpdateMarkingButtons(BoxDialGraphics *dialGraphics);

#endif // POKEPLATINUM_APPLICATIONS_PC_BOXES_DIAL_GRAPHICS_H
