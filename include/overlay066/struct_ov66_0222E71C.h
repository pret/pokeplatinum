#ifndef POKEPLATINUM_STRUCT_OV66_0222E71C_H
#define POKEPLATINUM_STRUCT_OV66_0222E71C_H

#include "constants/string.h"

#include "overlay066/struct_ov66_0222E908.h"
#include "overlay066/struct_ov66_02231428.h"

#include "charcode.h"

typedef struct UnkStruct_ov66_0222E71C {
    s32 unk_00;
    u32 unk_04;
    charcode_t unk_08[TRAINER_NAME_LEN + 1];
    UnkStruct_ov66_02231428 unk_18;
    UnkStruct_ov66_02231428 unk_1C;
    u16 unk_20[6];
    u8 unk_2C[6];
    u8 unk_32[6];
    u8 unk_38;
    u8 language;
    u16 unk_3A;
    u16 unk_3C;
    u8 unk_3E;
    u8 unk_3F;
    u8 unk_40;
    u8 unk_41;
    u8 unk_42;
    u8 unk_43;
    s64 unk_44;
    u8 unk_4C[12];
    s32 unk_58[12];
    u16 unk_88[2];
    UnkStruct_ov66_0222E908 unk_8C;
} UnkStruct_ov66_0222E71C;

#endif // POKEPLATINUM_STRUCT_OV66_0222E71C_H
