#ifndef POKEPLATINUM_STRUCT_0202440C_H
#define POKEPLATINUM_STRUCT_0202440C_H

#include "constants/tv_broadcast.h"

#include "struct_defs/struct_0202E768.h"
#include "struct_defs/struct_0202E794.h"
#include "struct_defs/struct_0202E7D8.h"
#include "struct_defs/struct_0202E7E4.h"
#include "struct_defs/struct_0202E7F0.h"
#include "struct_defs/struct_0202E7FC.h"
#include "struct_defs/struct_0202E808.h"
#include "struct_defs/struct_0202E810.h"
#include "struct_defs/struct_0202E81C.h"
#include "struct_defs/struct_0202E828.h"
#include "struct_defs/struct_0202E834.h"

#define TV_BROADCAST_MAX_PLAYED_SEGMENTS 4

typedef struct TVBroadcast {
    u8 playedSegments[TV_BROADCAST_MAX_PLAYED_SEGMENTS];
    int timeSlotMinutesRemaining;
    u8 programFinished;
    UnkStruct_0202E768 unk_0C[4];
    UnkStruct_0202E768 unk_C4[4];
    UnkStruct_0202E768 unk_17C[4];
    UnkStruct_0202E794 unk_234[16];
    UnkStruct_0202E794 unk_684[8];
    UnkStruct_0202E794 unk_8AC[8];
    UnkStruct_0202E7D8 unk_AD4;
    UnkStruct_0202E7E4 unk_ADE;
    UnkStruct_0202E7F0 unk_B02;
    UnkStruct_0202E7FC unk_B04;
    UnkStruct_0202E808 safariGame;
    UnkStruct_0202E810 unk_B10;
    UnkStruct_0202E81C unk_B2E;
    UnkStruct_0202E828 unk_B44;
    UnkStruct_0202E834 unk_B4C;
} TVBroadcast;

#endif // POKEPLATINUM_STRUCT_0202440C_H
