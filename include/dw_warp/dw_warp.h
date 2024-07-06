#ifndef POKEPLATINUM_DW_WARP_H
#define POKEPLATINUM_DW_WARP_H

#include "overlay_manager.h"

BOOL DWWarp_Init(OverlayManager *ovy, int *seq);
BOOL DWWarp_Main(OverlayManager *ovy, int *seq);
BOOL DWWarp_Exit(OverlayManager *ovy, int *seq);

#endif // POKEPLATINUM_DWWARP_H
