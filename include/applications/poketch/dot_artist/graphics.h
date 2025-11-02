#ifndef POKEPLATINUM_POKETCH_DOT_ARTIST_GRAPHICS_H
#define POKEPLATINUM_POKETCH_DOT_ARTIST_GRAPHICS_H

#include "applications/poketch/poketch_task.h"

#include "bg_window.h"

#define DOT_ARTIST_TASK_SLOTS 8

#define CANVAS_WIDTH  24
#define CANVAS_HEIGHT 20

typedef struct DotArt {
    u8 dots[CANVAS_HEIGHT][CANVAS_WIDTH];
} DotArt;

typedef struct DotArtistGraphics {
    const DotArt *dotArt;
    BgConfig *bgConfig;
    u32 activeTasks[POKETCH_TASK_SLOT_BASE + DOT_ARTIST_TASK_SLOTS];
} DotArtistGraphics;

enum DotArtistGraphicsTask {
    DOT_ARTIST_GRAPHICS_INIT = 0,
    DOT_ARTIST_GRAPHICS_UPDATE,
    DOT_ARTIST_GRAPHICS_FREE,
};

BOOL PoketchDotArtistGraphics_New(DotArtistGraphics **graphics, const DotArt *dotArt, BgConfig *bgConfig);
void PoketchDotArtistGraphics_Free(DotArtistGraphics *graphics);
void PoketchDotArtistGraphics_StartTask(DotArtistGraphics *graphics, enum DotArtistGraphicsTask taskID);
BOOL PoketchDotArtistGraphics_TaskIsNotActive(DotArtistGraphics *graphics, enum DotArtistGraphicsTask taskID);
BOOL PoketchDotArtistGraphics_NoActiveTasks(DotArtistGraphics *graphics);

#endif // POKEPLATINUM_POKETCH_DOT_ARTIST_GRAPHICS_H
