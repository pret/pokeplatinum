#ifndef POKEPLATINUM_POKETCH_MOVE_TESTER_GRAPHICS_H
#define POKEPLATINUM_POKETCH_MOVE_TESTER_GRAPHICS_H

#include "applications/poketch/poketch_animation.h"
#include "applications/poketch/poketch_task.h"

#include "bg_window.h"
#include "message.h"

#define MOVE_TESTER_NONE_SELECTED NUM_POKEMON_TYPES

#define MOVE_TESTER_TASK_SLOTS 8

typedef struct MoveTesterData {
    u32 lastButtonPressed;
    u16 exclamCount;
    u16 attackType;
    u16 defenderType1;
    u16 defenderType2;
} MoveTesterData;

typedef struct PoketchMoveTesterGraphics {
    const MoveTesterData *moveTesterData;
    BgConfig *bgConfig;
    u32 activeTasks[POKETCH_TASK_SLOT_BASE + MOVE_TESTER_TASK_SLOTS];
    PoketchAnimation_AnimationManager *animMan;
    PoketchAnimation_AnimatedSpriteData *animSpriteData[6];
    PoketchAnimation_AnimatedSpriteData *exclamSprites[5];
    PoketchAnimation_SpriteData spriteData;
    Window windowAttackType;
    Window windowDefenderType1;
    Window windowDefenderType2;
    Window windowExclamations;
    MessageLoader *msgLoaderTypes;
    MessageLoader *msgLoaderEffectiveness;
    String *string;
} PoketchMoveTesterGraphics;

enum MoveTesterGraphicsTask {
    MOVE_TESTER_GRAPHICS_INIT = 0,
    MOVE_TESTER_GRAPHICS_FREE,
    MOVE_TESTER_GRAPHICS_BUTTON_PRESSED,
    MOVE_TESTER_GRAPHICS_BUTTON_RELEASED,
    MOVE_TESTER_GRAPHICS_UPDATE,
};

BOOL PoketchMoveTesterGraphics_New(PoketchMoveTesterGraphics **dest, const MoveTesterData *moveTesterData, BgConfig *bgConfig);
void PoketchMoveTesterGraphics_Free(PoketchMoveTesterGraphics *graphics);
void PoketchMoveTesterGraphics_StartTask(PoketchMoveTesterGraphics *graphics, enum MoveTesterGraphicsTask taskID);
BOOL PoketchMoveTesterGraphics_TaskIsNotActive(PoketchMoveTesterGraphics *graphics, enum MoveTesterGraphicsTask taskID);
BOOL PoketchMoveTesterGraphics_NoActiveTasks(PoketchMoveTesterGraphics *graphics);

#endif // POKEPLATINUM_POKETCH_MOVE_TESTER_GRAPHICS_H
