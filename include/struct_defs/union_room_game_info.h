#ifndef POKEPLATINUM_UNION_ROOM_GAME_INFO_H
#define POKEPLATINUM_UNION_ROOM_GAME_INFO_H

typedef struct UnionRoomGameInfo {
    u32 trainerIDs[4];
    u8 unused_10[4];
    u8 unused_14[4];
    u8 appearanceAndGender[4];
    u8 activity;
    u8 padding_1D[3];
} UnionRoomGameInfo;

#endif // POKEPLATINUM_UNION_ROOM_GAME_INFO_H
