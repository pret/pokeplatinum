#ifndef POKEPLATINUM_STRUCT_020997B8_H
#define POKEPLATINUM_STRUCT_020997B8_H

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

#endif // POKEPLATINUM_STRUCT_020997B8_H
