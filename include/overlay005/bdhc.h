#ifndef POKEPLATINUM_OV5_BDHC_H
#define POKEPLATINUM_OV5_BDHC_H

#include <nitro/fx/fx.h>

typedef struct BDHCPlate {
    u16 firstPointIndex;
    u16 secondPointIndex;
    u16 normalIndex;
    u16 heightIndex;
} BDHCPlate;

typedef struct BDHCPoint {
    fx32 x;
    fx32 y;
} BDHCPoint;

typedef struct BDHCStrip {
    fx32 lowerBound;
    u16 accessListElementCount;
    u16 accessListStartIndex;
} BDHCStrip;

typedef struct BDHC {
    BDHCPlate *plates;
    fx32 *heights;
    BDHCStrip *strips;
    u16 *accessList;
    BDHCPoint *points;
    VecFx32 *slopes;
    BOOL loaded;
    int stripsSize;
} BDHC;

#endif // POKEPLATINUM_OV5_BDHC_H
