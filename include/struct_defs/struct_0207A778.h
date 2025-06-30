#ifndef POKEPLATINUM_STRUCT_0207A778_H
#define POKEPLATINUM_STRUCT_0207A778_H

#include "bg_window.h"
#include "field_battle_data_transfer.h"
#include "pal_pad.h"
#include "palette.h"

typedef struct {
    FieldBattleDTO *unk_00;
    BgConfig *unk_04;
    Window *unk_08;
    PaletteData *unk_0C;
    PalPad *unk_10[4];
    u8 unk_20[0x1000];
    u8 unk_1020;
    u8 unk_1021;
    u16 unk_1022;
    void *unk_1024;
} UnkStruct_0207A778;

#endif // POKEPLATINUM_STRUCT_0207A778_H
