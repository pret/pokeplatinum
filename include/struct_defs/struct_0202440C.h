#ifndef POKEPLATINUM_STRUCT_0202440C_H
#define POKEPLATINUM_STRUCT_0202440C_H

#include "constants/tv_broadcast.h"

#include "struct_defs/struct_0202E7E4.h"
#include "struct_defs/struct_0202E7F0.h"
#include "struct_defs/struct_0202E7FC.h"
#include "struct_defs/struct_0202E808.h"
#include "struct_defs/struct_0202E810.h"
#include "struct_defs/struct_0202E81C.h"
#include "struct_defs/struct_0202E828.h"
#include "struct_defs/struct_0202E834.h"
#include "struct_defs/tv_segment_contest_hall_showcased_pokemon.h"

#define TV_BROADCAST_MAX_PLAYED_SEGMENTS 4

typedef struct TVSegmentInstance {
    u8 segmentID;
    u8 timesPlayed;
    u32 timestamp;
    u8 segment[40];
} TVSegmentInstance;

typedef struct TVEpisode {
    u8 segmentID;
    u8 gameVersion;
    u8 language;
    u8 gender;
    u16 name[8];
    TVSegmentInstance *details;
} TVEpisode;

typedef struct TVWifiEpisode {
    u32 trainerID;
    u8 gender;
    u8 gameVersion;
    u8 language;
    u16 name[8];
    TVSegmentInstance details;
} TVWifiEpisode;

typedef struct TVBroadcast {
    u8 playedSegments[TV_BROADCAST_MAX_PLAYED_SEGMENTS];
    int timeSlotMinutesRemaining;
    u8 programFinished;
    TVSegmentInstance unk_0C[4];
    TVSegmentInstance unk_C4[4];
    TVSegmentInstance unk_17C[4];
    TVWifiEpisode unk_234[16];
    TVWifiEpisode unk_684[8];
    TVWifiEpisode unk_8AC[8];
    TVSegment_ContestHall_ShowcasedPokemon showcasedPokemon;
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
