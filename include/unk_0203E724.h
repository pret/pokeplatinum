#ifndef POKEPLATINUM_UNK_0203E724_H
#define POKEPLATINUM_UNK_0203E724_H

#include "message.h"
#include "field/field_system_decl.h"

typedef struct UnkStruct_0203E724 UnkStruct_0203E724;

typedef BOOL (* UnkFuncPtr_0203E724)(UnkStruct_0203E724 *);

struct UnkStruct_0203E724 {
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

void sub_0203E724(UnkStruct_0203E724 * param0, const UnkFuncPtr_0203E724 * param1, u32 param2);
u8 sub_0203E758(UnkStruct_0203E724 * param0, const u8 * param1);
void sub_0203E764(UnkStruct_0203E724 * param0, UnkFuncPtr_0203E724 param1);
void sub_0203E76C(UnkStruct_0203E724 * param0);
void sub_0203E774(UnkStruct_0203E724 * param0, void * param1);
u8 sub_0203E778(UnkStruct_0203E724 * param0);
u8 sub_0203E7E4(UnkStruct_0203E724 * param0, const u8 * param1);
const u8 * sub_0203E800(UnkStruct_0203E724 * param0);
void sub_0203E818(UnkStruct_0203E724 * param0, u8 * param1);
void sub_0203E81C(UnkStruct_0203E724 * param0, u8 * param1);
void sub_0203E82C(UnkStruct_0203E724 * param0);
u16 sub_0203E838(UnkStruct_0203E724 * param0);
u32 sub_0203E850(UnkStruct_0203E724 * param0);

#endif // POKEPLATINUM_UNK_0203E724_H
