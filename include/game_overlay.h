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

typedef struct {
    unsigned long vma;
    unsigned long size;
    FSOverlayID ovly_id;
    unsigned long mapped;
} struct_overlayTable;

#define MAX_OVERLAYS 128

extern unsigned long _novlys;
extern struct_overlayTable _ovly_table[MAX_OVERLAYS];

static void _ovly_debug_event(void);

#endif // POKEPLATINUM_UNK_020064F0_H
