#ifndef POKEPLATINUM_STRUCT_020619DC_H
#define POKEPLATINUM_STRUCT_020619DC_H

typedef struct ObjectEvent {
    u16 localID;
    u16 graphicsID;
    u16 movementType;
    u16 trainerType;
    u16 flag;
    u16 script;
    s16 dir;
    u16 data[3];
    s16 movementRangeX;
    s16 movementRangeZ;
    u16 x;
    u16 z;
    fx32 y;
} ObjectEvent;

#endif // POKEPLATINUM_STRUCT_020619DC_H
