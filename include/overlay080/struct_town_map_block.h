#ifndef POKEPLATINUM_STRUCT_TOWN_MAP_BLOCK_H
#define POKEPLATINUM_STRUCT_TOWN_MAP_BLOCK_H

typedef struct TownMapBlock {
    int mapHeader;
    int flyPoint;
    u8 blockType;
    u8 blockColor;
    u16 unk_0A;
    fx32 xCoord;
    fx32 yCoord;
} TownMapBlock;

#endif // POKEPLATINUM_STRUCT_TOWN_MAP_BLOCK_H
