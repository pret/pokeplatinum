#ifndef POKEPLATINUM_STRUCT_OV80_021D2AF4_H
#define POKEPLATINUM_STRUCT_OV80_021D2AF4_H

typedef struct TownMapBlockEntry {
    u16 x;
    u16 y;
    u16 signpostType;
    u16 signpostNARCMemberIdx;
    u16 locationDescString1;
    u16 locationDescString2;
    u16 locationDesc1X;
    u16 locationDesc1Y;
    u16 locationDesc2X;
    u16 locationDesc2Y;
    u16 hiddenLocationFlags;
    u16 index;
} TownMapBlock;

#endif // POKEPLATINUM_STRUCT_OV80_021D2AF4_H
