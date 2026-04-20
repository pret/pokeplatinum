#ifndef POKEPLATINUM_STRUCT_DEF_COMM_PLAYER_LOCATION_H
#define POKEPLATINUM_STRUCT_DEF_COMM_PLAYER_LOCATION_H

typedef struct CommPlayerLocation {
    u16 x;
    u16 z;
    s8 dir;
    u8 moveSpeed;
    u8 unk_06;
    u8 collisionFlag;
} CommPlayerLocation;

#endif // POKEPLATINUM_STRUCT_DEF_COMM_PLAYER_LOCATION_H
