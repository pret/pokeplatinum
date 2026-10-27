#ifndef POKEPLATINUM_OV19_021DCF88_H
#define POKEPLATINUM_OV19_021DCF88_H

#include "applications/pc_boxes/box_application.h"
#include "applications/pc_boxes/struct_ov19_021D61B0_decl.h"
#include "applications/pc_boxes/struct_ov19_021DCF88_decl.h"

#include "bg_window.h"
#include "narc.h"
#include "sprite.h"

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

#endif // POKEPLATINUM_OV19_021DCF88_H
