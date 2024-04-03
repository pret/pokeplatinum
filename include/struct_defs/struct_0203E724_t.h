#ifndef POKEPLATINUM_STRUCT_0203E724_T_H
#define POKEPLATINUM_STRUCT_0203E724_T_H

#include "message.h"
#include "field/field_system_decl.h"
#include "functypes/funcptr_0203E724.h"

struct UnkStruct_0203E724_t {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 padding_03;
    UnkFuncPtr_0203E724 unk_04;
    const u8 * unk_08;
    const u8 * unk_0C[20];
    const UnkFuncPtr_0203E724 * unk_10;
    u32 unk_14;
    u32 unk_18[4];
    void * unk_28;
    MessageLoader * unk_2C;
    u8 * unk_30;
    FieldSystem * unk_34;
};

#endif // POKEPLATINUM_STRUCT_0203E724_T_H
