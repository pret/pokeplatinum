#ifndef POKEPLATINUM_POKETCH_CALENDAR_GRAPHICS_H
#define POKEPLATINUM_POKETCH_CALENDAR_GRAPHICS_H

#include "applications/poketch/poketch_animation.h"
#include "applications/poketch/poketch_task.h"

#include "bg_window.h"

#define CALENDAR_TASK_SLOTS 4

#define CALENDAR_CELL_WIDTH_TILES  2
#define CALENDAR_CELL_HEIGHT_TILES 2

typedef struct CalendarData {
    u32 month;
    u32 daysInMonth;
    u32 currentDay;
    struct {
        u16 num;
        u8 calendarCell;
        u8 isMarked;
    } days[31];
    u32 updatedIndex;
} CalendarData;

typedef struct CalendarGraphics {
    const CalendarData *calendar;
    BgConfig *bgConfig;
    u32 activeTasks[POKETCH_TASK_SLOT_BASE + CALENDAR_TASK_SLOTS];
    PoketchAnimation_AnimationManager *animMan;
    PoketchAnimation_AnimatedSpriteData *sprite;
    PoketchAnimation_SpriteData spriteData;
} CalendarGraphics;

enum CalendarGraphicsTask {
    CALENDAR_GRAPHICS_INIT = 0,
    CALENDAR_GRAPHICS_FREE,
    CALENDAR_GRAPHICS_UPDATE,
};

BOOL PoketchCalendarGraphics_New(CalendarGraphics **dest, const CalendarData *calendar, BgConfig *bgConfig);
void PoketchCalendarGraphics_Free(CalendarGraphics *graphics);
void PoketchCalendarGraphics_StartTask(CalendarGraphics *graphics, enum CalendarGraphicsTask taskID);
BOOL PoketchCalendarGraphics_TaskIsNotActive(CalendarGraphics *graphics, enum CalendarGraphicsTask taskID);
BOOL PoketchCalendarGraphics_NoActiveTasks(CalendarGraphics *graphics);

#endif // POKEPLATINUM_POKETCH_CALENDAR_GRAPHICS_H
