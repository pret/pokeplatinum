#ifndef POKEPLATINUM_STRUCT_OV80_021D2AF4_H
#define POKEPLATINUM_STRUCT_OV80_021D2AF4_H

typedef struct TownMapBlock {
    u16 x;
    u16 y;
    u16 signpostType;
    u16 signpostNARCMemberIdx;
    u16 areaDescString;
    u16 landmarkDescString;
    u16 areaDescX;
    u16 locationDesc1Y;
    u16 landmarkDescX;
    u16 locationDesc2Y;
    u16 hiddenLocationFlags;
    u16 index;
} TownMapBlock;

#endif // POKEPLATINUM_STRUCT_OV80_021D2AF4_H
