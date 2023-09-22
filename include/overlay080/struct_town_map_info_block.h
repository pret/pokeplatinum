#ifndef POKEPLATINUM_STRUCT_TOWN_MAP_INFO_BLOCK_H
#define POKEPLATINUM_STRUCT_TOWN_MAP_INFO_BLOCK_H

typedef struct {
    u16 xCoord;
    u16 yCoord;
    u16 textBoxType;
    u16 icon;
    u16 firstParagraphMsgBank;
    u16 secondParagraphMsgBank;
    u16 firstParagraphPadding_X;
    u16 firstParagraphPadding_Y;
    u16 secondParagraphPadding_X;
    u16 secondParagraphPadding_Y;
    u16 unk_14;
    u16 unk_16;
} TownMapInfoBlock;

typedef struct TownMapInfoBlockList {
    int count;
    TownMapInfoBlock * data;
} TownMapInfoBlockList;

#endif // POKEPLATINUM_STRUCT_TOWN_MAP_INFO_BLOCK_H
