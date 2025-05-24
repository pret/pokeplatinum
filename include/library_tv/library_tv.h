#ifndef POKEPLATINUM_LIBRARY_TV_H
#define POKEPLATINUM_LIBRARY_TV_H

#include "overlay_manager.h"

BOOL LibraryTV_Init(OverlayManager *overlayMan, int *state);
BOOL LibraryTV_Main(OverlayManager *overlayMan, int *state);
BOOL LibraryTV_Exit(OverlayManager *overlayMan, int *state);

#endif // POKEPLATINUM_LIBRARY_TV_H
