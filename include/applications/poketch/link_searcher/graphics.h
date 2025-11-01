#ifndef POKEPLATINUM_POKETCH_LINK_SEARCHER_GRAPHICS_H
#define POKEPLATINUM_POKETCH_LINK_SEARCHER_GRAPHICS_H

#include "applications/poketch/poketch_animation.h"
#include "applications/poketch/poketch_task.h"

#include "bg_window.h"
#include "message.h"
#include "strbuf.h"

#define LINK_SEARCHER_TASK_SLOTS 4

#define NUM_SPRITES 4

typedef struct LinkResults {
    int results[4];
} LinkResults;

typedef struct LinkSearcherGraphics {
    const LinkResults *linkResults;
    BgConfig *bgConfig;
    u32 activeTasks[POKETCH_TASK_SLOT_BASE + LINK_SEARCHER_TASK_SLOTS];
    Window window;
    PoketchAnimation_AnimationManager *animMan;
    PoketchAnimation_AnimatedSpriteData *sprites[NUM_SPRITES];
    PoketchAnimation_SpriteData spriteData;
    MessageLoader *msgLoader;
    Strbuf *strbuf;
} LinkSearcherGraphics;

enum LinkSearcherGraphicsTask {
    LINK_SEARCHER_GRAPHICS_INIT = 0,
    LINK_SEARCHER_GRAPHICS_FREE,
    LINK_SEARCHER_GRAPHICS_INTRO,
    LINK_SEARCHER_GRAPHICS_SEARCHING,
    LINK_SEARCHER_GRAPHICS_UNUSABLE,
    LINK_SEARCHER_GRAPHICS_DONT_MOVE,
    LINK_SEARCHER_GRAPHICS_RESULTS,
    LINK_SEARCHER_GRAPHICS_UNUSED,
};

BOOL PoketchLinkSearcherGraphics_New(LinkSearcherGraphics **dest, const LinkResults *results, BgConfig *bgConfig);
void PoketchLinkSearchGraphics_Free(LinkSearcherGraphics *graphics);
void PoketchLinkSearcherGraphics_StartTask(LinkSearcherGraphics *graphics, enum LinkSearcherGraphicsTask taskID);
BOOL PoketchLinkSearcherGraphics_TaskIsNotActive(LinkSearcherGraphics *graphics, enum LinkSearcherGraphicsTask taskID);
BOOL PoketchLinkSearcherGraphics_NoActiveTasks(LinkSearcherGraphics *graphics);

#endif // POKEPLATINUM_POKETCH_LINK_SEARCHER_GRAPHICS_H
