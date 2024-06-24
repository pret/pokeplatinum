#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02014EC4_decl.h"
#include "struct_decls/pokedexdata_decl.h"
#include "struct_decls/struct_0209747C_decl.h"
#include "savedata.h"

#include "struct_defs/sentence.h"

#include "unk_02014A84.h"
#include "unk_02014D38.h"
#include "heap.h"
#include "save_state.h"
#include "unk_0202631C.h"
#include "game_options.h"
#include "vars_flags.h"
#include "unk_0206A8DC.h"
#include "unk_0209747C.h"

struct UnkStruct_0209747C_t {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04;
    u8 unk_05;
    int unk_08;
    const PokedexData * unk_0C;
    const UnkStruct_02014EC4 * unk_10;
    Sentence unk_14;
    u16 unk_1C[2];
    u16 unk_20[2];
};

UnkStruct_0209747C * sub_0209747C (u32 param0, u32 param1, SaveData * param2, u32 param3)
{
    UnkStruct_0209747C * v0 = Heap_AllocFromHeap(param3, sizeof(UnkStruct_0209747C));

    v0->unk_00 = param0;
    v0->unk_01 = param1;
    v0->unk_0C = SaveData_Pokedex(param2);
    v0->unk_10 = sub_02014EC4(param2);
    v0->unk_04 = sub_0206A954(SaveData_GetVarsFlags(param2));
    v0->unk_05 = 0;
    v0->unk_02 = 1;
    v0->unk_03 = 0;
    v0->unk_08 = Options_Frame(SaveData_Options(param2));

    if (param0 == 2) {
        sub_02014A9C(&v0->unk_14, 3);
    } else {
        int v1;

        for (v1 = 0; v1 < 2; v1++) {
            v0->unk_1C[v1] = 0xffff;
        }
    }

    return v0;
}

void sub_020974EC (UnkStruct_0209747C * param0)
{
    Heap_FreeToHeap(param0);
}

void sub_020974F4 (UnkStruct_0209747C * param0, u16 param1)
{
    param0->unk_1C[0] = param1;
}

void sub_020974F8 (UnkStruct_0209747C * param0, u16 param1, u16 param2)
{
    param0->unk_1C[0] = param1;
    param0->unk_1C[1] = param2;
}

void sub_02097500 (UnkStruct_0209747C * param0, const Sentence * param1)
{
    param0->unk_14 = *param1;
}

void sub_02097514 (UnkStruct_0209747C * param0)
{
    param0->unk_02 = 1;
    param0->unk_03 = 0;
}

void sub_02097520 (UnkStruct_0209747C * param0)
{
    param0->unk_05 = 1;
}

BOOL sub_02097528 (const UnkStruct_0209747C * param0)
{
    return param0->unk_02;
}

BOOL sub_0209752C (const UnkStruct_0209747C * param0)
{
    return param0->unk_03;
}

u16  sub_02097530 (const UnkStruct_0209747C * param0)
{
    return param0->unk_1C[0];
}

void sub_02097534 (const UnkStruct_0209747C * param0, u16 * param1)
{
    param1[0] = param0->unk_1C[0];
    param1[1] = param0->unk_1C[1];
}

void sub_02097540 (const UnkStruct_0209747C * param0, Sentence * param1)
{
    sub_02014CC0(param1, &(param0->unk_14));
}

u32 sub_02097550 (const UnkStruct_0209747C * param0)
{
    return param0->unk_00;
}

u32 sub_02097554 (const UnkStruct_0209747C * param0)
{
    return param0->unk_01;
}

int sub_02097558 (const UnkStruct_0209747C * param0)
{
    return param0->unk_08;
}

const PokedexData * sub_0209755C (const UnkStruct_0209747C * param0)
{
    return param0->unk_0C;
}

const UnkStruct_02014EC4 * sub_02097560 (const UnkStruct_0209747C * param0)
{
    return param0->unk_10;
}

BOOL sub_02097564 (const UnkStruct_0209747C * param0)
{
    return param0->unk_04;
}

BOOL sub_02097568 (const UnkStruct_0209747C * param0)
{
    return param0->unk_05;
}

void sub_0209756C (const UnkStruct_0209747C * param0, u16 * param1, Sentence * param2)
{
    switch (param0->unk_00) {
    case 0:
        param1[0] = param0->unk_1C[0];
        break;
    case 1:
        param1[0] = param0->unk_1C[0];
        param1[1] = param0->unk_1C[1];
        break;
    case 2:
        *param2 = param0->unk_14;
        break;
    }
}

BOOL sub_020975A0 (const UnkStruct_0209747C * param0, const u16 * param1, const Sentence * param2)
{
    switch (param0->unk_00) {
    case 0:
        return param1[0] == param0->unk_1C[0];
    case 1:
        return (param1[0] == param0->unk_1C[0]) && (param1[1] == param0->unk_1C[1]);
    case 2:
    default:
        return sub_02014C88(&param0->unk_14, param2);
    }
}

void sub_020975E4 (UnkStruct_0209747C * param0, const u16 * param1, const Sentence * param2)
{
    int v0;

    param0->unk_03 = (sub_020975A0(param0, param1, param2) == 0);
    param0->unk_02 = 0;

    for (v0 = 0; v0 < 2; v0++) {
        param0->unk_1C[v0] = param1[v0];
    }

    param0->unk_14 = *param2;
}
