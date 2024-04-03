#ifndef POKEPLATINUM_OVERLAY_MANAGER_H
#define POKEPLATINUM_OVERLAY_MANAGER_H

#include <nitro/fs.h>

typedef struct OverlayManager OverlayManager;

typedef int (*OverlayFunc)(OverlayManager *ovyManager, int *state);

typedef struct OverlayManagerTemplate {
    OverlayFunc init;
    OverlayFunc main;
    OverlayFunc exit;
    const FSOverlayID overlayID;
} OverlayManagerTemplate;

struct OverlayManager {
    OverlayManagerTemplate template;
    int execState;
    int procState;
    void *args;
    void *data;
    OverlayManager *parent;
    OverlayManager *child;
};

OverlayManager * sub_020067E8(const OverlayManagerTemplate * param0, void * param1, const int param2);
void sub_02006814(OverlayManager * param0);
void * sub_0200681C(OverlayManager * param0, int param1, int param2);
void * sub_0200682C(OverlayManager * param0);
void sub_02006830(OverlayManager * param0);
void * sub_02006840(OverlayManager * param0);
BOOL sub_02006844(OverlayManager * param0);

#endif // POKEPLATINUM_OVERLAY_MANAGER_H
