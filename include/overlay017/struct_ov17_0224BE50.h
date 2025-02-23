#ifndef POKEPLATINUM_STRUCT_OV17_0224BE50_H
#define POKEPLATINUM_STRUCT_OV17_0224BE50_H

#include "overlay017/struct_ov17_0224B09C.h"

#include "sys_task_manager.h"
#include "unk_0200762C.h"

struct UnkStruct_ov17_0224DF54_t;

typedef struct {
    struct UnkStruct_ov17_0224DF54_t *unk_00;
    SysTask *unk_04;
    PokemonSprite *unk_08;
    UnkStruct_ov17_0224B09C *unk_0C;
    s32 unk_10;
    s32 unk_14;
    u8 unk_18;
    u8 unk_19;
    u8 unk_1A;
    u8 unk_1B;
    u8 unk_1C;
    u32 unk_20;
    u8 unk_24_0 : 1;
    u8 unk_24_1 : 1;
    u8 unk_24_2 : 1;
    u8 unk_24_3 : 1;
    u8 unk_24_4 : 1;
    u8 unk_24_5 : 1;
    u8 unk_24_6 : 1;
    u8 : 1;
} UnkStruct_ov17_0224BE50;

#endif // POKEPLATINUM_STRUCT_OV17_0224BE50_H
