#ifndef POKEPLATINUM_POKETCH_POKEMON_HISTORY_GRAPHICS_H
#define POKEPLATINUM_POKETCH_POKEMON_HISTORY_GRAPHICS_H

#include "applications/poketch/poketch_animation.h"
#include "applications/poketch/poketch_task.h"

#include "bg_window.h"

#define POKEMON_HISTORY_TASK_SLOTS 4

#define MAX_HISTORY_SIZE 12

#define HISTORY_ICON_STEP_X 40
#define HISTORY_ICON_STEP_Y 48

typedef struct HistoryData {
    struct {
        int species;
        u32 form;
        int icon;
    } mons[MAX_HISTORY_SIZE];
    u32 count;
} HistoryData;

typedef struct PokemonHistoryGraphics {
    const HistoryData *history;
    BgConfig *bgConfig;
    u32 activeTasks[POKETCH_TASK_SLOT_BASE + POKEMON_HISTORY_TASK_SLOTS];
    PoketchAnimation_AnimationManager *animMan;
    PoketchAnimation_AnimatedSpriteData *sprites[MAX_HISTORY_SIZE];
    PoketchAnimation_SpriteData spriteData;
    u32 iconIndices[MAX_HISTORY_SIZE];
} PokemonHistoryGraphics;

enum PokemonHistoryGraphicsTask {
    POKEMON_HISTORY_GRAPHICS_INIT = 0,
    POKEMON_HISTORY_GRAPHICS_FREE,
};

BOOL PoketchPokemonHistoryGraphics_New(PokemonHistoryGraphics **dest, const HistoryData *history, BgConfig *bgConfig);
void PoketchPokemonHistoryGraphics_Free(PokemonHistoryGraphics *graphics);
void PoketchPokemonHistoryGraphics_StartTask(PokemonHistoryGraphics *graphics, enum PokemonHistoryGraphicsTask taskID);
BOOL PoketchPokemonHistoryGraphics_TaskIsNotActive(PokemonHistoryGraphics *graphics, enum PokemonHistoryGraphicsTask taskID);
BOOL PoketchPokemonHistoryGraphics_NoActiveTasks(PokemonHistoryGraphics *graphics);

#endif // POKEPLATINUM_POKETCH_POKEMON_HISTORY_GRAPHICS_H
