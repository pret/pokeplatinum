#ifndef POKEPLATINUM_MOVE_REMINDER_DATA_H
#define POKEPLATINUM_MOVE_REMINDER_DATA_H

#include "game_options.h"
#include "pokemon.h"
#include "trainer_info.h"

typedef struct MoveReminderData {
    Pokemon *mon;
    TrainerInfo *trainerInfo;
    Options *options;
    u16 *moves;
    u16 cursorPos;
    u16 listPos;
    u8 showingContest;
    u8 isMoveTutor; // draco meteor or frenzy plant / blast burn / hydro cannon
    u8 keepOldMove;
    u8 moveSlot;
} MoveReminderData;

MoveReminderData *MoveReminderData_Alloc(u32 heapID);
void MoveReminderData_Free(MoveReminderData *data);
u16 *MoveReminderData_GetMoves(Pokemon *mon, u32 heapID);
BOOL MoveReminderData_HasMoves(u16 *moves);

#endif // POKEPLATINUM_MOVE_REMINDER_DATA_H
