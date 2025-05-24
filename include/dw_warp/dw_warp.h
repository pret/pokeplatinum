#ifndef POKEPLATINUM_DW_WARP_H
#define POKEPLATINUM_DW_WARP_H

#include "overlay_manager.h"

BOOL DWWarp_Init(ApplicationManager *appMan, int *seq);
BOOL DWWarp_Main(ApplicationManager *appMan, int *seq);
BOOL DWWarp_Exit(ApplicationManager *appMan, int *seq);

#endif // POKEPLATINUM_DWWARP_H
