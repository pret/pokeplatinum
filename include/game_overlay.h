#ifndef POKEPLATINUM_UNK_020064F0_H
#define POKEPLATINUM_UNK_020064F0_H

#include <nitro/fs.h>

typedef enum PMOverlayLoadType {
    OVERLAY_LOAD_NORMAL,
    OVERLAY_LOAD_NOINIT,
    OVERLAY_LOAD_ASYNC
} PMOverlayLoadType;

void Overlay_UnloadByID(const FSOverlayID param0);
int Overlay_GetLoadDestination(const FSOverlayID param0);
BOOL Overlay_LoadByID(const FSOverlayID param0, int param1);

// TODO: this should integrate into build system instead of a manual define here.
// to turn off overlay debugging and build a matching ROM, undefine this.
#define GDB_DEBUGGING

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
