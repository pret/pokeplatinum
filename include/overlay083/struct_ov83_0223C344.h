#ifndef POKEPLATINUM_STRUCT_OV83_0223C344_H
#define POKEPLATINUM_STRUCT_OV83_0223C344_H

#include "overlay_manager.h"
#include "bag.h"
#include "overlay082/struct_ov82_0223B164.h"

typedef struct {
    int unk_00;
    u16 unk_04;
    u16 unk_06_0 : 8;
    u16 unk_06_8 : 4;
    u16 unk_06_12 : 4;
    int unk_08;
    UnkStruct_0207D99C * unk_0C;
    UnkStruct_ov82_0223B164 * unk_10;
    int unk_14;
    void * unk_18;
    OverlayManager * unk_1C;
    BOOL unk_20;
    s16 unk_24;
    u8 unk_26;
    u8 unk_27;
} UnkStruct_ov83_0223C344;

#endif // POKEPLATINUM_STRUCT_OV83_0223C344_H
