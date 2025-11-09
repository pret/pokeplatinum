#ifndef POKEPLATINUM_OV91_021D0D80_H
#define POKEPLATINUM_OV91_021D0D80_H

#include "overlay_manager.h"

#define MOVE_REMINDER_TERMINATOR 0xffff

BOOL MoveReminder_Init(ApplicationManager *appMan, int *state);
BOOL MoveReminder_Main(ApplicationManager *appMan, int *state);
BOOL MoveReminder_Exit(ApplicationManager *appMan, int *state);

#endif // POKEPLATINUM_OV91_021D0D80_H
