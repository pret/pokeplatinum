#ifndef POKEPLATINUM_OV80_021D2AF4_H
#define POKEPLATINUM_OV80_021D2AF4_H

#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "overlay080/struct_town_map_info_block.h"
#include "overlay080/struct_ov80_021D2C1C.h"
#include "overlay080/struct_ov80_021D2C5C.h"
#include "overlay080/struct_ov80_021D2E10.h"

#define TOWN_MAP_UNIT (7)
#define TOWN_MAP_HALF_UNIT (4)

#define TOWN_MAP_COORDINATE(n) (TOWN_MAP_UNIT * n)

enum {
    TOWN_MAP_BLOCK_CIRCLE,
    TOWN_MAP_BLOCK_1x2,
    TOWN_MAP_BLOCK_2x2,
    TOWN_MAP_BLOCK_L,
    TOWN_MAP_BLOCK_L_2,
    TOWN_MAP_BLOCK_2x1,
    TOWN_MAP_BLOCK_PALPARK
};

UnkStruct_ov80_021D2C1C * ov80_021D2AF4(UnkStruct_0200C6E4 * param0, UnkStruct_0200C704 * param1, u8 * param2, short param3, int param4);
void ov80_021D2C1C(UnkStruct_ov80_021D2C1C * param0);
UnkStruct_ov80_021D2C5C * ov80_021D2C5C(UnkStruct_ov80_021D2C1C * param0, int param1, int param2, int param3);
int ov80_021D2CC0(UnkStruct_ov80_021D2C1C * param0, int param1, int param2, int param3);
void ov80_021D2D28(UnkStruct_ov80_021D2C1C * param0, int param1);
UnkStruct_ov80_021D2E10 * ov80_021D2D70(const char * param0, int param1);
void ov80_021D2E10(UnkStruct_ov80_021D2E10 * param0);
TownMapInfoBlock * ov80_021D2E24(UnkStruct_ov80_021D2E10 * param0, int param1, int param2, u16 param3);

#endif // POKEPLATINUM_OV80_021D2AF4_H
