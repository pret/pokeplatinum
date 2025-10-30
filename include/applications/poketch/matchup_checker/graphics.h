#ifndef POKEPLATINUM_POKETCH_MATCHUP_CHECKER_GRAPHICS_H
#define POKEPLATINUM_POKETCH_MATCHUP_CHECKER_GRAPHICS_H

#include "constants/pokemon.h"

#include "applications/poketch/poketch_animation.h"
#include "applications/poketch/poketch_task.h"

#include "bg_window.h"

#define MATCHUP_CHECKER_TASK_SLOTS 4

#define NUM_SPRITES           6
#define SPRITE_BUTTON         0
#define SPRITE_HEART_METER    1
#define SPRITE_LUVDISC_LEFT   2
#define SPRITE_LUVDISC_RIGHT  3
#define SPRITE_MON_ICON_LEFT  4
#define SPRITE_MON_ICON_RIGHT 5

typedef struct MatchupCheckerData {
    u32 spriteIndices[MAX_PARTY_SIZE];
    u16 species[MAX_PARTY_SIZE];
    u16 forms[MAX_PARTY_SIZE];
    u8 partySize;
    u8 compatibility;
    u8 leftMonIdx;
    u8 rightMonIdx;
} MatchupCheckerData;

typedef struct MatchupCheckerGraphics {
    const MatchupCheckerData *matchupData;
    BgConfig *bgConfig;
    u32 activeTasks[POKETCH_TASK_SLOT_BASE + MATCHUP_CHECKER_TASK_SLOTS];
    PoketchAnimation_AnimationManager *animMan;
    PoketchAnimation_AnimatedSpriteData *sprites[NUM_SPRITES];
    PoketchAnimation_SpriteData indicatorSpriteData;
    PoketchAnimation_SpriteData monIconData;
    u32 monIconTileOffset;
    BOOL killIndicatorTask;
    const int *animationCommands;
    u32 commandState;
    u32 commandIdx;
    fx32 luvdiscOffset;
    fx32 offsetStep;
    fx32 commandEndOffset;
    u32 commandTimer;
} MatchupCheckerGraphics;

enum MatchupCheckerGraphicsTask {
    MATCHUP_CHECKER_GRAPHICS_INIT = 0,
    MATCHUP_CHECKER_GRAPHICS_FREE,
    MATCHUP_CHECKER_GRAPHICS_PRESS_BUTTON,
    MATCHUP_CHECKER_GRAPHICS_RELEASE_BUTTON,
    MATCHUP_CHECKER_GRAPHICS_UPDATE_LEFT,
    MATCHUP_CHECKER_GRAPHICS_UPDATE_RIGHT,
    MATCHUP_CHECKER_GRAPHICS_CHECK_MATCHUP,
};

BOOL PoketchMatchupCheckerGraphics_New(MatchupCheckerGraphics **graphics, const MatchupCheckerData *matchupData, BgConfig *bgConfig);
void PoketchMatchupCheckerGraphics_Free(MatchupCheckerGraphics *graphics);
void PoketchMatchupCheckerGraphics_StartTask(MatchupCheckerGraphics *graphics, enum MatchupCheckerGraphicsTask taskID);
BOOL PoketchMatchupCheckerGraphics_TaskIsNotActive(MatchupCheckerGraphics *graphics, enum MatchupCheckerGraphicsTask taskID);
BOOL PoketchMatchupCheckerGraphics_NoActiveTasks(MatchupCheckerGraphics *graphics);

#endif // POKEPLATINUM_POKETCH_MATCHUP_CHECKER_GRAPHICS_H
