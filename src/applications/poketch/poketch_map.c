#include "applications/poketch/poketch_map.h"

#include <nitro.h>

static const u16 mapPositionsX[] = {
    26,
    32,
    38,
    44,
    50,
    56,
    62,
    68,
    74,
    80,
    86,
    92,
    98,
    104,
    110,
    116,
    122,
    128,
    134,
    140,
    146,
    152,
    158,
    164,
    170,
    176,
    182,
    188,
    194,
    200
};

static const u16 mapPositionsY[] = {
    0,
    0,
    0,
    0,
    0,
    24,
    30,
    36,
    42,
    48,
    54,
    60,
    66,
    72,
    78,
    84,
    90,
    96,
    102,
    108,
    114,
    120,
    126,
    132,
    138,
    144,
    150,
    156,
    162,
    168,
    174,
    180,
    186
};

void PoketchMap_GetPositionOnMap(u32 x, u32 y, u32 *mapX, u32 *mapY)
{
    GF_ASSERT(x < NELEMS(mapPositionsX));
    GF_ASSERT(y < NELEMS(mapPositionsY));

    if (x >= NELEMS(mapPositionsX)) {
        x = 0;
    }

    if (y >= NELEMS(mapPositionsY)) {
        y = 0;
    }

    *mapX = mapPositionsX[x];
    *mapY = mapPositionsY[y];
}

void PoketchMap_GetHiddenLocationPosition(int hiddenLocation, u32 *mapX, u32 *mapY)
{
    static const struct {
        u32 x;
        u32 y;
    } hiddenLocationPositions[] = {
        { 32, 42 },
        { 50, 42 },
        { 168, 122 },
        { 194, 58 },
    };

    GF_ASSERT(hiddenLocation < NELEMS(hiddenLocationPositions));

    *mapX = hiddenLocationPositions[hiddenLocation].x;
    *mapY = hiddenLocationPositions[hiddenLocation].y;
}

BOOL PoketchMap_GetPositionFromMapID(enum MapID mapID, u32 *x, u32 *y)
{
    static const struct {
        u16 mapID;
        u8 x;
        u8 y;
    } positions[] = {
        { MAP_342, 47, 150 },
        { MAP_343, 56, 144 },
        { MAP_344, 65, 132 },
        { MAP_345, 50, 126 },
        { MAP_346, 50, 120 },
        { MAP_347, 62, 108 },
        { MAP_349, 74, 90 },
        { MAP_350, 80, 111 },
        { MAP_353, 83, 126 },
        { MAP_354, 101, 126 },
        { MAP_356, 125, 126 },
        { MAP_362, 128, 102 },
        { MAP_363, 122, 90 },
        { MAP_365, 92, 90 },
        { MAP_366, 104, 90 },
        { MAP_367, 110, 138 },
        { MAP_371, 119, 150 },
        { MAP_373, 152, 147 },
        { MAP_380, 152, 120 },
        { MAP_382, 140, 102 },
        { MAP_383, 86, 66 },
        { MAP_385, 80, 51 },
        { MAP_388, 41, 132 },
        { MAP_391, 56, 156 },
        { MAP_467, 59, 162 },
        { MAP_392, 74, 162 },
        { MAP_395, 170, 138 },
        { MAP_200, 68, 114 },
        { MAP_204, 56, 102 }
    };

    for (int i = 0; i < NELEMS(positions); i++) {
        if (positions[i].mapID == mapID) {
            *x = positions[i].x;
            *y = positions[i].y;
            return TRUE;
        }
    }

    return FALSE;
}
