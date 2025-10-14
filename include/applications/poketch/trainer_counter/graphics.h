#ifndef POKEPLATINUM_POKETCH_TRAINER_COUNTER_GRAPHICS_H
#define POKEPLATINUM_POKETCH_TRAINER_COUNTER_GRAPHICS_H

#include "generated/species.h"

#include "struct_defs/radar_chain_records.h"

#include "applications/poketch/poketch_animation.h"
#include "applications/poketch/poketch_task.h"

#include "bg_window.h"

#define TRAINER_COUNTER_TASK_SLOTS 4

#define NUM_POKE_ICONS   (NUM_RADAR_RECORDS + 1)
#define DIGITS_PER_CHAIN 3
#define NUM_SPRITES      (NUM_POKE_ICONS * (1 + DIGITS_PER_CHAIN))

typedef struct TrainerCounterData {
    enum Species activeSpecies;
    int activeChain;
    enum Species bestChainSpecies[NUM_RADAR_RECORDS];
    int bestChains[NUM_RADAR_RECORDS];
    int bestChainsCount;
    int pressedIcon;
} TrainerCounterData;

typedef struct TrainerCounterGraphics {
    const TrainerCounterData *chainData;
    BgConfig *bgConfig;
    u32 activeTask[POKETCH_TASK_SLOT_BASE + TRAINER_COUNTER_TASK_SLOTS];
    PoketchAnimation_AnimationManager *animMan;
    PoketchAnimation_AnimatedSpriteData *sprites[NUM_SPRITES];
    PoketchAnimation_SpriteData digitData;
    PoketchAnimation_SpriteData monData;
    u32 spriteIndices[NUM_POKE_ICONS];
    PoketchAnimation_AnimatedSpriteData *cryingIcon;
    fx32 cryingIconY;
    fx32 cryingIconX;
    fx32 unused;
    u32 monIconTileOffset;
} TrainerCounterGraphics;

enum TrainerCounterGraphicsTask {
    TRAINER_COUNTER_GRAPHICS_INIT = 0,
    TRAINER_COUNTER_GRAPHICS_FREE,
    TRAINER_COUNTER_GRAPHICS_REFRESH,
    TRAINER_COUNTER_GRAPHICS_PLAY_CRY,
};

BOOL PoketchTrainerCounterGraphics_New(TrainerCounterGraphics **dest, const TrainerCounterData *chainData, BgConfig *bgConfig);
void PoketchTrainerCounterGraphics_Free(TrainerCounterGraphics *graphics);
void PoketchTrainerCounterGraphics_StartTask(TrainerCounterGraphics *graphics, enum TrainerCounterGraphicsTask taskID);
BOOL PoketchTrainerCounterGraphics_TaskIsNotActive(TrainerCounterGraphics *graphics, enum TrainerCounterGraphicsTask taskID);
BOOL PoketchTrainerCounterGraphics_NoActiveTasks(TrainerCounterGraphics *graphics);

#endif // POKEPLATINUM_POKETCH_TRAINER_COUNTER_GRAPHICS_H
