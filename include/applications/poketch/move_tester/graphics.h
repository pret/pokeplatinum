#ifndef POKEPLATINUM_POKETCH_MOVE_TESTER_GRAPHICS_H
#define POKEPLATINUM_POKETCH_MOVE_TESTER_GRAPHICS_H

#include "poketch/poketch_animation.h"

#include "bg_window.h"
#include "message.h"

#define MOVE_TESTER_NONE_SELECTED NUM_POKEMON_TYPES

#define NUM_TASK_SLOTS 8

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
    u32 activeTasks[2 + NUM_TASK_SLOTS];
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
    Strbuf *strBuf;
} PoketchMoveTesterGraphics;

enum MoveTesterGraphicsTasks {
    TASK_DRAW_APP_SCREEN = 0,
    TASK_FREE_WINDOWS_AND_BG,
    TASK_BUTTON_PRESSED,
    TASK_BUTTON_RELEASED,
    TASK_UPDATE_GRAPHICS
};

BOOL PoketchMoveTesterGraphics_New(PoketchMoveTesterGraphics **graphics, const MoveTesterData *moveTesterData, BgConfig *bgConfig);
void PoketchMoveTesterGraphics_Free(PoketchMoveTesterGraphics *graphics);
void PoketchMoveTesterGraphics_StartTask(PoketchMoveTesterGraphics *graphics, enum MoveTesterGraphicsTasks taskID);
BOOL PoketchMoveTesterGraphics_TaskIsNotActive(PoketchMoveTesterGraphics *graphics, enum MoveTesterGraphicsTasks taskID);
BOOL PoketchMoveTesterGraphics_NoActiveTasks(PoketchMoveTesterGraphics *graphics);

#endif // POKEPLATINUM_POKETCH_MOVE_TESTER_GRAPHICS_H
