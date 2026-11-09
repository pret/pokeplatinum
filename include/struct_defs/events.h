#ifndef POKEPLATINUM_EVENTS_H
#define POKEPLATINUM_EVENTS_H

typedef struct BgEvent {
    u16 script;
    u16 type;
    int x;
    int z;
    int y;
    u16 playerFacingDir;
    u8 padding[2];
} BgEvent;

typedef struct ObjectEvent {
    u16 localID;
    u16 graphicsID;
    u16 movementType;
    u16 trainerType;
    u16 hiddenFlag;
    u16 script;
    s16 dir;
    u16 data[3];
    s16 movementRangeX;
    s16 movementRangeZ;
    u16 x;
    u16 z;
    fx32 y;
} ObjectEvent;

typedef struct WarpEvent {
    u16 x;
    u16 z;
    u16 destHeaderID;
    u16 destWarpID;
    u8 unused[4];
} WarpEvent;

typedef struct CoordEvent {
    u16 script;
    u16 x;
    u16 z;
    u16 width;
    u16 length;
    u16 y;
    u16 value;
    u16 var;
} CoordEvent;

#endif // POKEPLATINUM_EVENTS_H
