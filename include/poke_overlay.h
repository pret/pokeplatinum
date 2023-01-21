#ifndef POKEPLATINUM_UNK_020064F0_H
#define POKEPLATINUM_UNK_020064F0_H

#include <nitro/fs.h>

typedef enum PMOverlayLoadType {
    OVERLAY_LOAD_NORMAL,
    OVERLAY_LOAD_NOINIT,
    OVERLAY_LOAD_ASYNC
} PMOverlayLoadType;

void UnloadOverlayByID(const FSOverlayID param0);
int GetOverlayLoadDestination(const FSOverlayID param0);
BOOL HandleLoadOverlay(const FSOverlayID param0, int param1);

#endif // POKEPLATINUM_UNK_020064F0_H
