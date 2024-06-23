#ifndef POKEPLATINUM_LIBRARY_TV_H
#define POKEPLATINUM_LIBRARY_TV_H

#include "overlay_manager.h"

BOOL LibraryTV_Init(OverlayManager *ovy, int *state);
BOOL LibraryTV_Main(OverlayManager *ovy, int *state);
BOOL LibraryTV_Exit(OverlayManager *ovy, int *state);

#endif // POKEPLATINUM_LIBRARY_TV_H
