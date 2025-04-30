#ifndef POKEPLATINUM_OV5_BDHC_H
#define POKEPLATINUM_OV5_BDHC_H

#include <nitro/fx/fx.h>
#include <nitro/types.h>

#include "narc.h"
#include "sys_task_manager.h"

typedef struct BDHCPlate {
    u16 firstPointIndex;
    u16 secondPointIndex;
    u16 normalIndex;
    u16 constantIndex;
} BDHCPlate;

typedef struct BDHCPoint {
    fx32 x;
    fx32 z;
} BDHCPoint;

typedef struct BDHCStrip {
    fx32 scanline;
    u16 accessListElementCount;
    u16 accessListStartIndex;
} BDHCStrip;

typedef struct BDHC {
    BDHCPlate *plates;
    fx32 *constants;
    BDHCStrip *strips;
    u16 *accessList;
    BDHCPoint *points;
    VecFx32 *normals;
    BOOL loaded;
    int stripsCount;
} BDHC;

BOOL CalculateObjectHeight(const fx32 objectHeight, const fx32 objectX, const fx32 objectZ, const BDHC *bdhc, fx32 *newObjectHeight);

void BDHC_Load(NARC *narc, const int bdhcSize, BDHC *bdhc, u8 *buffer);
SysTask *BDHC_LazyLoad(NARC *landDataNARC, const int unused1, BDHC *bdhc, int *param3, u8 **buffer, int *param5);
void BDHC_KillLoad(SysTask *sysTask);
void BDHC_MarkNotLoaded(BDHC *bdhc);

BDHC *BDHC_New(void);
void BDHC_Free(BDHC *bdhc);
void BDHC_Reset(BDHC *bdhc);

#endif // POKEPLATINUM_OV5_BDHC_H
