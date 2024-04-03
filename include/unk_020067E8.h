#ifndef POKEPLATINUM_UNK_020067E8_H
#define POKEPLATINUM_UNK_020067E8_H

#include <nitro/fs.h>

typedef struct OverlayManager OverlayManager;

typedef int (*OverlayFunc)(OverlayManager *ovyManager, int *state);

typedef struct OverlayManagerTemplate {
    OverlayFunc unk_00;
    OverlayFunc unk_04;
    OverlayFunc unk_08;
    const FSOverlayID unk_0C;
} OverlayManagerTemplate;

struct OverlayManager {
    OverlayManagerTemplate unk_00;
    int unk_10;
    int unk_14;
    void * unk_18;
    void * unk_1C;
    OverlayManager * unk_20;
    OverlayManager * unk_24;
};

OverlayManager * sub_020067E8(const OverlayManagerTemplate * param0, void * param1, const int param2);
void sub_02006814(OverlayManager * param0);
void * sub_0200681C(OverlayManager * param0, int param1, int param2);
void * sub_0200682C(OverlayManager * param0);
void sub_02006830(OverlayManager * param0);
void * sub_02006840(OverlayManager * param0);
BOOL sub_02006844(OverlayManager * param0);

#endif // POKEPLATINUM_UNK_020067E8_H
