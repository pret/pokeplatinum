#ifndef POKEPLATINUM_STRUCT_OV98_02246E88_H
#define POKEPLATINUM_STRUCT_OV98_02246E88_H

#include <dwc.h>
#include <nnsys.h>

#include "overlay096/struct_ov96_0223B574.h"
#include "overlay096/struct_ov96_0223B574_1.h"

#include "game_options.h"
#include "overlay_manager.h"
#include "savedata.h"
#include "strbuf.h"

typedef struct {
    OverlayManager *overlayMan;
    SaveData *saveData;
    Options *unk_08;
    void *unk_0C;
    NNSFndHeapHandle unk_10;
    DWCInetControl unk_14;
    u16 unk_7C;
    u8 unk_7E;
    u8 padding_7F;
    int unk_80;
    int unk_84;
    u8 padding_88[4];
    int unk_8C;
    int unk_90;
    u8 padding_94[4];
    void *unk_98;
    UnkStruct_ov96_0223B574 unk_9C;
    UnkStruct_ov96_0223B574_1 unk_100;
    u32 unk_108;
    u32 unk_10C;
    u8 unk_110;
    u8 unk_111[3];
    Strbuf *unk_114;
    Strbuf *unk_118;
    BOOL unk_11C;
} UnkStruct_ov98_02246E88;

#endif // POKEPLATINUM_STRUCT_OV98_02246E88_H
