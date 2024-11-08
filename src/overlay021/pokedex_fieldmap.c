#include "overlay021/pokedex_fieldmap.h"

#include <nitro.h>
#include <string.h>

#include "bg_window.h"

enum FieldNeighbors {
    FN_ALONE = 0,
    FN_WEST = (1 << 0),
    FN_EAST = (1 << 1),
    FN_SOUTH = (1 << 2),
    FN_NORTH = (1 << 3),
    FN_SOUTHWEST = (1 << 4),
    FN_NORTHWEST = (1 << 5),
    FN_SOUTHEAST = (1 << 6),
    FN_NORTHEAST = (1 << 7),
};

static void DisplayOnWindow(Window *window, u8 *src, u16 fieldWidth, u16 fieldHeight, int mapSize, int fieldType, u8 y, u8 x);
static void PopulateMapAtXY(u8 *pokedexFieldMap, int y, int x, int mapHeight, int mapWidth);
static int XYToValue(u8 *pokedexFieldMap, int y, int x, int mapHeight, int mapWidth);
static void FindNeighboringFields(u8 *pokedexFieldMap, int *neighbors, int y, int x, int mapHeight, int mapWidth);
static int GetNeighborType(int neighbors);

void PokedexFieldMap_DisplayFields(Window *window, u8 *src, u16 fieldWidth, u16 fieldHeight, u8 mapSize, u8 *pokedexFieldMap, u8 mapHeight, u8 mapWidth, u16 yOffset, u16 xOffset)
{
    for (int x = 0; x < mapWidth; x++) {
        for (int y = 0; y < mapHeight; y++) {
            DisplayOnWindow(window, src, fieldWidth, fieldHeight, mapSize, pokedexFieldMap[(x * mapWidth) + y], yOffset + (y * mapSize), xOffset + (x * mapSize));
        }
    }
}

void PokedexFieldMap_SmoothFields(u8 *pokedexFieldMap, u8 mapHeight, u8 mapWidth)
{
    for (int x = 0; x < mapWidth; x++) {
        for (int y = 0; y < mapHeight; y++) {
            PopulateMapAtXY(pokedexFieldMap, y, x, mapHeight, mapWidth);
        }
    }
}

static void DisplayOnWindow(Window *window, u8 *src, u16 fieldWidth, u16 fieldHeight, int mapSize, int fieldType, u8 y, u8 x)
{
    if (fieldType != 0) {
        int srcX = fieldType * mapSize;
        int srcY = srcX / fieldWidth;
        srcX = srcX % fieldWidth;

        Window_BlitBitmapRect(window, src, srcX, srcY, fieldWidth, fieldHeight, y, x, mapSize, mapSize);
    }
}

static void PopulateMapAtXY(u8 *pokedexFieldMap, int y, int x, int mapHeight, int mapWidth)
{
    int neighbors;
    int fieldType;

    if (pokedexFieldMap[(x * mapHeight) + y] == 0) {
        FindNeighboringFields(pokedexFieldMap, &neighbors, y, x, mapHeight, mapWidth);

        fieldType = GetNeighborType(neighbors);
        pokedexFieldMap[(x * mapHeight) + y] = fieldType;
    }
}

static int XYToValue(u8 *pokedexFieldMap, int y, int x, int mapHeight, int mapWidth)
{
    if ((y < 0) || (y >= mapHeight)) {
        return -1;
    }

    if ((x < 0) || (x >= mapWidth)) {
        return -1;
    }

    return pokedexFieldMap[(x * mapHeight) + y];
}

static void FindNeighboringFields(u8 *pokedexFieldMap, int *neighbors, int y, int x, int mapHeight, int mapWidth)
{
    *neighbors = FN_ALONE; // binary storage of fields (NE)(SE)(NW)(SW)(N)(S)(E)(W)
    // only records intercardinal directions if adjacent cardinals are both empty

    if (XYToValue(pokedexFieldMap, y, x - 1, mapHeight, mapWidth) == 1) {
        *neighbors |= FN_WEST;
    }

    if (XYToValue(pokedexFieldMap, y, x + 1, mapHeight, mapWidth) == 1) {
        *neighbors |= FN_EAST;
    }

    if (XYToValue(pokedexFieldMap, y - 1, x, mapHeight, mapWidth) == 1) {
        *neighbors |= FN_SOUTH;
    }

    if (XYToValue(pokedexFieldMap, y + 1, x, mapHeight, mapWidth) == 1) {
        *neighbors |= FN_NORTH;
    }

    if ((*neighbors & FN_WEST) == 0 && (*neighbors & FN_SOUTH) == 0) {
        if (XYToValue(pokedexFieldMap, y - 1, x - 1, mapHeight, mapWidth) == 1) {
            *neighbors |= FN_SOUTHWEST;
        }
    }

    if ((*neighbors & FN_WEST) == 0 && (*neighbors & FN_NORTH) == 0) {
        if (XYToValue(pokedexFieldMap, y + 1, x - 1, mapHeight, mapWidth) == 1) {
            *neighbors |= FN_NORTHWEST;
        }
    }

    if ((*neighbors & FN_EAST) == 0 && (*neighbors & FN_SOUTH) == 0) {
        if (XYToValue(pokedexFieldMap, y - 1, x + 1, mapHeight, mapWidth) == 1) {
            *neighbors |= FN_SOUTHEAST;
        }
    }

    if ((*neighbors & FN_EAST) == 0 && (*neighbors & FN_NORTH) == 0) {
        if (XYToValue(pokedexFieldMap, y + 1, x + 1, mapHeight, mapWidth) == 1) {
            *neighbors |= FN_NORTHEAST;
        }
    }
}

static int GetNeighborType(int neighbors)
{
    int fieldType;

    switch (neighbors) {
    case FN_ALONE:
        fieldType = 0;
        break;
    case FN_WEST:
        fieldType = 2;
        break;
    case FN_EAST:
        fieldType = 3;
        break;
    case FN_SOUTH:
        fieldType = 4;
        break;
    case FN_NORTH:
        fieldType = 5;
        break;
    case (FN_WEST | FN_EAST):
        fieldType = 6;
        break;
    case (FN_WEST | FN_SOUTH):
        fieldType = 7;
        break;
    case (FN_WEST | FN_NORTH):
        fieldType = 8;
        break;
    case (FN_EAST | FN_SOUTH):
        fieldType = 9;
        break;
    case (FN_EAST | FN_NORTH):
        fieldType = 10;
        break;
    case (FN_SOUTH | FN_NORTH):
        fieldType = 11;
        break;
    case (FN_WEST | FN_EAST | FN_SOUTH):
        fieldType = 12;
        break;
    case (FN_WEST | FN_EAST | FN_NORTH):
        fieldType = 13;
        break;
    case (FN_WEST | FN_SOUTH | FN_NORTH):
        fieldType = 14;
        break;
    case (FN_EAST | FN_SOUTH | FN_NORTH):
        fieldType = 15;
        break;
    case (FN_WEST | FN_EAST | FN_SOUTH | FN_NORTH):
        fieldType = 16;
        break;
    case (FN_SOUTHWEST):
        fieldType = 17;
        break;
    case (FN_NORTHWEST):
        fieldType = 18;
        break;
    case (FN_SOUTHEAST):
        fieldType = 19;
        break;
    case (FN_NORTHEAST):
        fieldType = 20;
        break;
    case (FN_SOUTHWEST | FN_NORTHWEST):
        fieldType = 21;
        break;
    case (FN_SOUTHWEST | FN_SOUTHEAST):
        fieldType = 22;
        break;
    case (FN_SOUTHWEST | FN_NORTHEAST):
        fieldType = 23;
        break;
    case (FN_NORTHWEST | FN_SOUTHEAST):
        fieldType = 24;
        break;
    case (FN_NORTHWEST | FN_NORTHEAST):
        fieldType = 25;
        break;
    case (FN_SOUTHEAST | FN_NORTHEAST):
        fieldType = 26;
        break;
    case (FN_SOUTHWEST | FN_NORTHWEST | FN_SOUTHEAST):
        fieldType = 27;
        break;
    case (FN_SOUTHWEST | FN_NORTHWEST | FN_NORTHEAST):
        fieldType = 28;
        break;
    case (FN_SOUTHWEST | FN_SOUTHEAST | FN_NORTHEAST):
        fieldType = 29;
        break;
    case (FN_NORTHWEST | FN_SOUTHEAST | FN_NORTHEAST):
        fieldType = 30;
        break;
    case (FN_SOUTHWEST | FN_NORTHWEST | FN_SOUTHEAST | FN_NORTHEAST):
        fieldType = 31;
        break;
    case (FN_WEST | FN_SOUTHEAST | FN_NORTHEAST):
        fieldType = 32;
        break;
    case (FN_EAST | FN_SOUTHWEST | FN_NORTHWEST):
        fieldType = 33;
        break;
    case (FN_SOUTH | FN_NORTHWEST | FN_NORTHEAST):
        fieldType = 34;
        break;
    case (FN_NORTH | FN_SOUTHWEST | FN_SOUTHEAST):
        fieldType = 35;
        break;
    case (FN_WEST | FN_SOUTH | FN_NORTHEAST):
        fieldType = 36;
        break;
    case (FN_WEST | FN_NORTH | FN_SOUTHEAST):
        fieldType = 37;
        break;
    case (FN_EAST | FN_SOUTH | FN_NORTHWEST):
        fieldType = 38;
        break;
    case (FN_EAST | FN_NORTH | FN_SOUTHWEST):
        fieldType = 39;
        break;
    case (FN_WEST | FN_SOUTHEAST):
        fieldType = 40;
        break;
    case (FN_WEST | FN_NORTHEAST):
        fieldType = 41;
        break;
    case (FN_EAST | FN_SOUTHWEST):
        fieldType = 42;
        break;
    case (FN_EAST | FN_NORTHWEST):
        fieldType = 43;
        break;
    case (FN_SOUTH | FN_NORTHWEST):
        fieldType = 44;
        break;
    case (FN_SOUTH | FN_NORTHEAST):
        fieldType = 45;
        break;
    case (FN_NORTH | FN_SOUTHWEST):
        fieldType = 46;
        break;
    case (FN_NORTH | FN_SOUTHEAST):
        fieldType = 47;
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    return fieldType;
}
