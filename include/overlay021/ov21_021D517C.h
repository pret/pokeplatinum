#ifndef POKEPLATINUM_OV21_021D517C_H
#define POKEPLATINUM_OV21_021D517C_H

#include "bg_window.h"

enum CellNeighbors {
    CN_ALONE = 0,
    CN_WEST = (1 << 0),
    CN_EAST = (1 << 1),
    CN_SOUTH = (1 << 2),
    CN_NORTH = (1 << 3),
    CN_SOUTHWEST = (1 << 4),
    CN_NORTHWEST = (1 << 5),
    CN_SOUTHEAST = (1 << 6),
    CN_NORTHEAST = (1 << 7),
};

void ov21_021D517C(Window *param0, u8 *param1, u16 param2, u16 param3, u8 param4, u8 *param5, u8 param6, u8 param7, u16 param8, u16 param9);
void MapFieldCellMatrix_SmoothCells(u8 *mapFieldCellMatrix, u8 mapHeight, u8 mapWidth);

#endif // POKEPLATINUM_OV21_021D517C_H
