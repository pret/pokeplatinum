#ifndef POKEPLATINUM_BERRY_GRAPHICS_TABLE_H
#define POKEPLATINUM_BERRY_GRAPHICS_TABLE_H

typedef struct BerryGraphicsData {
    u32 growingResourceID;
    u32 bloomingResourceID;
    u32 fruitResourceID;
} BerryGraphicsData;

extern const BerryGraphicsData gBerryGraphicsTable[];

#endif // POKEPLATINUM_BERRY_GRAPHICS_TABLE_H
