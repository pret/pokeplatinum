#ifndef POKEPLATINUM_POKETCH_COIN_TOSS_GRAPHICS_H
#define POKEPLATINUM_POKETCH_COIN_TOSS_GRAPHICS_H

#include "applications/poketch/poketch_animation.h"
#include "applications/poketch/poketch_task.h"

#include "bg_window.h"

#define COIN_TOSS_TASK_SLOTS 4

#define COIN_REST_POSITION_X 112
#define COIN_REST_POSITION_Y 144
#define COIN_RADIUS          24

typedef struct CoinTossResult {
    BOOL isHeads;
} CoinTossResult;

typedef struct CoinTossGraphics {
    const CoinTossResult *coin;
    BgConfig *bgConfig;
    u32 activeTasks[POKETCH_TASK_SLOT_BASE + COIN_TOSS_TASK_SLOTS];
    PoketchAnimation_AnimationManager *animMan;
    PoketchAnimation_AnimatedSpriteData *sprite;
    PoketchAnimation_SpriteData animData;
    fx32 coinY;
    fx32 coinSpeed;
    BOOL killCoinTask;
} CoinTossGraphics;

enum CoinTossGraphicsTask {
    COIN_TOSS_GRAPHICS_INIT = 0,
    COIN_TOSS_GRAPHICS_FREE,
    COIN_TOSS_GRAPHICS_TOSS_COIN,
};

BOOL PoketchCoinTossGraphics_New(CoinTossGraphics **dest, const CoinTossResult *coin, BgConfig *bgConfig);
void PoketchCoinTossGraphics_Free(CoinTossGraphics *graphics);
void PoketchCoinTossGraphics_StartTask(CoinTossGraphics *graphics, enum CoinTossGraphicsTask taskID);
BOOL PoketchCoinTossGraphics_TaskIsNotActive(CoinTossGraphics *graphics, enum CoinTossGraphicsTask taskID);
BOOL PoketchCoinTossGraphics_NoActiveTasks(CoinTossGraphics *graphics);

#endif // POKEPLATINUM_POKETCH_COIN_TOSS_GRAPHICS_H
