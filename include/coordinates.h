#ifndef POKEPLATINUM_COORDINATES_H
#define POKEPLATINUM_COORDINATES_H

typedef struct CoordinatesS16 {
    s16 x;
    union {
        s16 y;
        s16 z;
    };
} CoordinatesS16;

typedef struct CoordinatesU16 {
    u16 x;
    union {
        u16 y;
        u16 z;
    };
} CoordinatesU16;

typedef struct CoordinatesInt {
    int x;
    union {
        int y;
        int z;
    };
} CoordinatesInt;

typedef struct CoordinatesFX32 {
    fx32 x;
    fx32 y;
} CoordinatesFX32;

#endif // POKEPLATINUM_COORDINATES_H
