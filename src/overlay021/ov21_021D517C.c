#include "overlay021/ov21_021D517C.h"

#include <nitro.h>
#include <string.h>

#include "bg_window.h"

static void ov21_021D5248(Window *param0, u8 *param1, u16 cellWidth, u16 cellHeight, int mapScale, int cellType, u8 yCoord, u8 xCoord);
static void MapFieldCellMatrix_CellType(u8 *mapFieldCellMatrix, int y, int x, int mapHeight, int mapWidth);
static int MapFieldCellMatrix_Value(u8 *mapFieldCellMatrix, int y, int x, int mapHeight, int mapWidth);
static void MapFieldCellMatrix_NeighboringCells(u8 *mapFieldCellMatrix, int *neighbors, int y, int x, int mapHeight, int mapWidth);
static int MapFieldCellMatrix_EmptyCellType(int neighbors);

void ov21_021D517C(Window *param0, u8 *param1, u16 cellWidth, u16 cellHeight, u8 mapScale, u8 *mapFieldCellMatrix, u8 mapHeight, u8 mapWidth, u16 yOffset, u16 xOffset)
{
    int x, y;

    for (x = 0; x < mapWidth; x++) {
        for (y = 0; y < mapHeight; y++) {
            ov21_021D5248(param0, param1, cellWidth, cellHeight, mapScale, mapFieldCellMatrix[(x * mapWidth) + y], yOffset + (y * mapScale), xOffset + (x * mapScale));
        }
    }
}

void MapFieldCellMatrix_SmoothCells(u8 *mapFieldCellMatrix, u8 mapHeight, u8 mapWidth)
{
    int x, y;

    for (x = 0; x < mapWidth; x++) {
        for (y = 0; y < mapHeight; y++) {
            MapFieldCellMatrix_CellType(mapFieldCellMatrix, y, x, mapHeight, mapWidth);
        }
    }
}

static void ov21_021D5248(Window *param0, u8 *param1, u16 cellWidth, u16 cellHeight, int mapScale, int cellType, u8 yCoord, u8 xCoord)
{
    int v0;
    int v1;

    if (cellType != 0) {
        v0 = cellType * mapScale;
        v1 = v0 / cellWidth;
        v0 = v0 % cellWidth;

        Window_BlitBitmapRect(param0, param1, v0, v1, cellWidth, cellHeight, yCoord, xCoord, mapScale, mapScale);
    }
}

static void MapFieldCellMatrix_CellType(u8 *mapFieldCellMatrix, int y, int x, int mapHeight, int mapWidth)
{
    int neighbors;
    int cellType;

    if (mapFieldCellMatrix[(x * mapHeight) + y] == 0) {
        MapFieldCellMatrix_NeighboringCells(mapFieldCellMatrix, &neighbors, y, x, mapHeight, mapWidth);

        cellType = MapFieldCellMatrix_EmptyCellType(neighbors);
        mapFieldCellMatrix[(x * mapHeight) + y] = cellType;
    }
}

static int MapFieldCellMatrix_Value(u8 *mapFieldCellMatrix, int y, int x, int mapHeight, int mapWidth)
{
    if ((y < 0) || (y >= mapHeight)) {
        return -1;
    }

    if ((x < 0) || (x >= mapWidth)) {
        return -1;
    }

    return mapFieldCellMatrix[(x * mapHeight) + y];
}

static void MapFieldCellMatrix_NeighboringCells(u8 *mapFieldCellMatrix, int *neighbors, int y, int x, int mapHeight, int mapWidth)
{
    int v0;

    *neighbors = 0; // binary storage of cells (NE)(SE)(NW)(SW)(N)(S)(E)(W)
    // only records intercardinal directions if adjacent cardinals are both empty

    if (MapFieldCellMatrix_Value(mapFieldCellMatrix, y, x - 1, mapHeight, mapWidth) == 1) {
        *neighbors |= CN_WEST;
    }

    if (MapFieldCellMatrix_Value(mapFieldCellMatrix, y, x + 1, mapHeight, mapWidth) == 1) {
        *neighbors |= CN_EAST;
    }

    if (MapFieldCellMatrix_Value(mapFieldCellMatrix, y - 1, x, mapHeight, mapWidth) == 1) {
        *neighbors |= CN_SOUTH;
    }

    if (MapFieldCellMatrix_Value(mapFieldCellMatrix, y + 1, x, mapHeight, mapWidth) == 1) {
        *neighbors |= CN_NORTH;
    }

    if ((((*neighbors) & CN_WEST) == 0) && (((*neighbors) & CN_SOUTH) == 0)) {
        if (MapFieldCellMatrix_Value(mapFieldCellMatrix, y - 1, x - 1, mapHeight, mapWidth) == 1) {
            *neighbors |= CN_SOUTHWEST;
        }
    }

    if ((((*neighbors) & CN_WEST) == 0) && (((*neighbors) & CN_NORTH) == 0)) {
        if (MapFieldCellMatrix_Value(mapFieldCellMatrix, y + 1, x - 1, mapHeight, mapWidth) == 1) {
            *neighbors |= CN_NORTHWEST;
        }
    }

    if ((((*neighbors) & CN_EAST) == 0) && (((*neighbors) & CN_SOUTH) == 0)) {
        if (MapFieldCellMatrix_Value(mapFieldCellMatrix, y - 1, x + 1, mapHeight, mapWidth) == 1) {
            *neighbors |= CN_SOUTHEAST;
        }
    }

    if ((((*neighbors) & CN_EAST) == 0) && (((*neighbors) & CN_NORTH) == 0)) {
        if (MapFieldCellMatrix_Value(mapFieldCellMatrix, y + 1, x + 1, mapHeight, mapWidth) == 1) {
            *neighbors |= CN_NORTHEAST;
        }
    }
}

static int MapFieldCellMatrix_EmptyCellType(int neighbors)
{
    int v0;

    switch (neighbors) {
    case CN_ALONE:
        v0 = 0;
        break;
    case (CN_WEST):
        v0 = 2;
        break;
    case (CN_EAST):
        v0 = 3;
        break;
    case (CN_SOUTH):
        v0 = 4;
        break;
    case (CN_NORTH):
        v0 = 5;
        break;
    case (CN_WEST | CN_EAST):
        v0 = 6;
        break;
    case (CN_WEST | CN_SOUTH):
        v0 = 7;
        break;
    case (CN_WEST | CN_NORTH):
        v0 = 8;
        break;
    case (CN_EAST | CN_SOUTH):
        v0 = 9;
        break;
    case (CN_EAST | CN_NORTH):
        v0 = 10;
        break;
    case (CN_SOUTH | CN_NORTH):
        v0 = 11;
        break;
    case (CN_WEST | CN_EAST | CN_SOUTH):
        v0 = 12;
        break;
    case (CN_WEST | CN_EAST | CN_NORTH):
        v0 = 13;
        break;
    case (CN_WEST | CN_SOUTH | CN_NORTH):
        v0 = 14;
        break;
    case (CN_EAST | CN_SOUTH | CN_NORTH):
        v0 = 15;
        break;
    case (CN_WEST | CN_EAST | CN_SOUTH | CN_NORTH):
        v0 = 16;
        break;
    case (CN_SOUTHWEST):
        v0 = 17;
        break;
    case (CN_NORTHWEST):
        v0 = 18;
        break;
    case (CN_SOUTHEAST):
        v0 = 19;
        break;
    case (CN_NORTHEAST):
        v0 = 20;
        break;
    case (CN_SOUTHWEST | CN_NORTHWEST):
        v0 = 21;
        break;
    case (CN_SOUTHWEST | CN_SOUTHEAST):
        v0 = 22;
        break;
    case (CN_SOUTHWEST | CN_NORTHEAST):
        v0 = 23;
        break;
    case (CN_NORTHWEST | CN_SOUTHEAST):
        v0 = 24;
        break;
    case (CN_NORTHWEST | CN_NORTHEAST):
        v0 = 25;
        break;
    case (CN_SOUTHEAST | CN_NORTHEAST):
        v0 = 26;
        break;
    case (CN_SOUTHWEST | CN_NORTHWEST | CN_SOUTHEAST):
        v0 = 27;
        break;
    case (CN_SOUTHWEST | CN_NORTHWEST | CN_NORTHEAST):
        v0 = 28;
        break;
    case (CN_SOUTHWEST | CN_SOUTHEAST | CN_NORTHEAST):
        v0 = 29;
        break;
    case (CN_NORTHWEST | CN_SOUTHEAST | CN_NORTHEAST):
        v0 = 30;
        break;
    case (CN_SOUTHWEST | CN_NORTHWEST | CN_SOUTHEAST | CN_NORTHEAST):
        v0 = 31;
        break;
    case (CN_WEST | CN_SOUTHEAST | CN_NORTHEAST):
        v0 = 32;
        break;
    case (CN_EAST | CN_SOUTHWEST | CN_NORTHWEST):
        v0 = 33;
        break;
    case (CN_SOUTH | CN_NORTHWEST | CN_NORTHEAST):
        v0 = 34;
        break;
    case (CN_NORTH | CN_SOUTHWEST | CN_SOUTHEAST):
        v0 = 35;
        break;
    case (CN_WEST | CN_SOUTH | CN_NORTHEAST):
        v0 = 36;
        break;
    case (CN_WEST | CN_NORTH | CN_SOUTHEAST):
        v0 = 37;
        break;
    case (CN_EAST | CN_SOUTH | CN_NORTHWEST):
        v0 = 38;
        break;
    case (CN_EAST | CN_NORTH | CN_SOUTHWEST):
        v0 = 39;
        break;
    case (CN_WEST | CN_SOUTHEAST):
        v0 = 40;
        break;
    case (CN_WEST | CN_NORTHEAST):
        v0 = 41;
        break;
    case (CN_EAST | CN_SOUTHWEST):
        v0 = 42;
        break;
    case (CN_EAST | CN_NORTHWEST):
        v0 = 43;
        break;
    case (CN_SOUTH | CN_NORTHWEST):
        v0 = 44;
        break;
    case (CN_SOUTH | CN_NORTHEAST):
        v0 = 45;
        break;
    case (CN_NORTH | CN_SOUTHWEST):
        v0 = 46;
        break;
    case (CN_NORTH | CN_SOUTHEAST):
        v0 = 47;
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    return v0;
}
