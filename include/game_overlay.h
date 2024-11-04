#ifndef POKEPLATINUM_UNK_020064F0_H
#define POKEPLATINUM_UNK_020064F0_H

#include <nitro/fs.h>

typedef enum OverlayLoadType {
    OVERLAY_LOAD_NORMAL,
    OVERLAY_LOAD_NOINIT,
    OVERLAY_LOAD_ASYNC
} OverlayLoadType;

void Overlay_UnloadByID(const FSOverlayID overlayID);
int Overlay_GetLoadDestination(const FSOverlayID overlayID);
BOOL Overlay_LoadByID(const FSOverlayID overlayID, enum OverlayLoadType loadType);

#ifdef GDB_DEBUGGING
// describes a single overlay entry, which GDB can inspect to determine which overlays are loaded.
typedef struct {
    unsigned long vma;
    unsigned long size;
    FSOverlayID id;
    unsigned long mapped;
} struct_overlayTable;

// this is set based on the current number of overlays, other projects might need more!
#define MAX_OVERLAYS 128

// externs required for GDB to access overlay state
extern unsigned long _novlys;
extern struct_overlayTable _ovly_table[MAX_OVERLAYS];

// event callback which GDB will hook and use to refresh overlay state
static void _ovly_debug_event(void);
#endif // GDB_DEBUGGING

#endif // POKEPLATINUM_UNK_020064F0_H
