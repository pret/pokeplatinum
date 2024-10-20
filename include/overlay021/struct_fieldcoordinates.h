#ifndef POKEPLATINUM_STRUCT_FIELDCOORDINATES_H
#define POKEPLATINUM_STRUCT_FIELDCOORDINATES_H

typedef struct {
    u8 yCoordinate;
    u8 xCoordinate;
    u8 height;
    u8 width;
    u8 cellMatrix[32];
} fieldCoordinates;

#endif // POKEPLATINUM_STRUCT_FIELDCOORDINATES_H
