#ifndef POKEPLATINUM_STRUCT_OV80_021D2C5C_SUB1_H
#define POKEPLATINUM_STRUCT_OV80_021D2C5C_SUB1_H

typedef struct {
    int mapHeader;
    int unusedUnlockFirstArrivalFlag;
    u8 blockShape;
    u8 palette;
    u16 specialFlyDestID;
    u32 spriteX;
    u32 spriteY;
} TownMapFlyDestDescriptor;

#endif // POKEPLATINUM_STRUCT_OV80_021D2C5C_SUB1_H
