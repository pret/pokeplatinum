#ifndef POKEPLATINUM_POKETCH_KITCHEN_TIMER_GRAPHICS_H
#define POKEPLATINUM_POKETCH_KITCHEN_TIMER_GRAPHICS_H

#include "applications/poketch/poketch_animation.h"
#include "applications/poketch/poketch_task.h"

#include "bg_window.h"

#define KITCHEN_TIMER_TASK_SLOTS 8

#define NUM_STATE_BUTTONS 3

#define NUM_SPRITES               17
#define SPRITE_HAND_LEFT          0
#define SPRITE_HAND_RIGHT         1
#define SPRITE_START_BUTTON       2
#define SPRITE_STOP_BUTTON        3
#define SPRITE_RESET_BUTTON       4
#define SPRITE_MINUTES_TENS_UP    5
#define SPRITE_MINUTES_ONES_UP    6
#define SPRITE_SECONDS_TENS_UP    7
#define SPRITE_SECONDS_ONES_UP    8
#define SPRITE_MINUTES_TENS_DOWN  9
#define SPRITE_MINUTES_ONES_DOWN  10
#define SPRITE_SECONDS_TENS_DOWN  11
#define SPRITE_SECONDS_ONES_DOWN  12
#define SPRITE_MINUTES_TENS_DIGIT 13
#define SPRITE_MINUTES_ONES_DIGIT 14
#define SPRITE_SECONDS_TENS_DIGIT 15
#define SPRITE_SECONDS_ONES_DIGIT 16

typedef struct KitchenTimerDisplay {
    s8 minutesTensDigit;
    s8 minutesOnesDigit;
    s8 secondsTensDigit;
    s8 secondsOnesDigit;
    u8 buttonPressed[NUM_STATE_BUTTONS];
    BOOL editingActive;
    u32 handPositions;
    u32 beatingHandPosition;
} KitchenTimerDisplay;

typedef struct KitchenTimerGraphics {
    const KitchenTimerDisplay *timerData;
    BgConfig *bgConfig;
    u32 activeTasks[POKETCH_TASK_SLOT_BASE + KITCHEN_TIMER_TASK_SLOTS];
    PoketchAnimation_AnimationManager *animMan;
    PoketchAnimation_AnimatedSpriteData *sprites[NUM_SPRITES];
    PoketchAnimation_SpriteData timerSpritesData;
    PoketchAnimation_SpriteData digitSpritesData;
    BOOL stopBeatingHands;
    u32 beatingHandTimer;
    u32 beatingHandPositions;
} KitchenTimerGraphics;

enum KitchenTimerGraphicsTask {
    KITCHEN_TIMER_GRAPHICS_INIT = 0,
    KITCHEN_TIMER_GRAPHICS_FREE,
    KITCHEN_TIMER_GRAPHICS_RESET_TIMER,
    KITCHEN_TIMER_GRAPHICS_START_TIMER,
    KITCHEN_TIMER_GRAPHICS_UPDATE_BUTTONS,
    KITCHEN_TIMER_GRAPHICS_UPDATE_DIGITS,
    KITCHEN_TIMER_GRAPHICS_BEAT_HANDS,
    KITCHEN_TIMER_GRAPHICS_STOP_HANDS,
};

BOOL PoketchKitchenTimerGraphics_New(KitchenTimerGraphics **dest, const KitchenTimerDisplay *timerData, BgConfig *bgConfig);
void PoketchKitchenTimerGraphics_Free(KitchenTimerGraphics *graphics);
void PoketchKitchenTimerGraphics_StartTask(KitchenTimerGraphics *graphics, enum KitchenTimerGraphicsTask taskID);
BOOL PoketchKitchenTimerGraphics_TaskIsNotActive(KitchenTimerGraphics *graphics, enum KitchenTimerGraphicsTask taskID);
BOOL PoketchKitchenTimerGraphics_NoActiveTasks(KitchenTimerGraphics *graphics);
u32 PoketchKitchenTimerGraphics_GetBeatingHandsPosition(KitchenTimerGraphics *graphics);

#endif // POKEPLATINUM_POKETCH_KITCHEN_TIMER_GRAPHICS_H
