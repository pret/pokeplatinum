#ifndef POKEPLATINUM_APPLICATIONS_MOVE_REMINDER_H
#define POKEPLATINUM_APPLICATIONS_MOVE_REMINDER_H

#include "overlay_manager.h"

BOOL MoveReminder_Init(ApplicationManager *appMan, int *state);
BOOL MoveReminder_Main(ApplicationManager *appMan, int *state);
BOOL MoveReminder_Exit(ApplicationManager *appMan, int *state);

#endif // POKEPLATINUM_APPLICATIONS_MOVE_REMINDER_H
