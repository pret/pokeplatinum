#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"

#include "struct_defs/struct_0200D0F4.h"
#include "overlay104/struct_ov104_0223F9E0.h"

#include "unk_0200C6E4.h"
#include "unk_0207C908.h"

__attribute__((aligned(4))) static const u32 Unk_020F0AF0[] = {
    0xEA,
    0xE1,
    0xE3,
    0xEB,
    0xE5,
    0xED,
    0xE7,
    0xE4,
    0xEE,
    0xEC,
    0xE2,
    0xF1,
    0xE9,
    0xDE,
    0xDF,
    0xE6,
    0xDD,
    0xE0,
    0xF0,
    0xDB,
    0xDC,
    0xE8,
    0xEF
};

__attribute__((aligned(4))) static const u8 Unk_020F0B4C[] = {
    0x0,
    0x0,
    0x1,
    0x1,
    0x0,
    0x0,
    0x2,
    0x1,
    0x0,
    0x2,
    0x0,
    0x1,
    0x2,
    0x0,
    0x1,
    0x1,
    0x2,
    0x0,
    0x0,
    0x1,
    0x1,
    0x2,
    0x0
};

__attribute__((aligned(4))) static const u32 Unk_020F0AE4[] = {
    0xF4,
    0xF6,
    0xF5
};

__attribute__((aligned(4))) static const u8 Unk_020F0AE0[] = {
    0x0,
    0x1,
    0x0
};

u32 sub_0207C908 (int param0)
{
    GF_ASSERT(param0 < NELEMS(Unk_020F0AF0));
    return Unk_020F0AF0[param0];
}

u32 sub_0207C920 (void)
{
    return 74;
}

u32 sub_0207C924 (void)
{
    return 242;
}

u32 sub_0207C928 (void)
{
    return 243;
}

u8 sub_0207C92C (int param0)
{
    GF_ASSERT(param0 < NELEMS(Unk_020F0B4C));
    return Unk_020F0B4C[param0];
}

u32 sub_0207C944 (void)
{
    return 27;
}

void sub_0207C948 (UnkStruct_0200C6E4 * param0, UnkStruct_0200C704 * param1, NNS_G2D_VRAM_TYPE param2, int param3, u32 param4)
{
    sub_0200CBDC(param0, param1, sub_0207C944(), sub_0207C908(param3), 1, param2, param4);
}

void sub_0207C97C (UnkStruct_0200C6E4 * param0, UnkStruct_0200C704 * param1, NNS_G2D_VRAM_TYPE param2, u32 param3)
{
    sub_0200CC9C(param0, param1, sub_0207C944(), sub_0207C920(), 0, 3, param2, param3);
}

void sub_0207C9B0 (UnkStruct_02002F38 * param0, int param1, UnkStruct_0200C6E4 * param2, UnkStruct_0200C704 * param3, NNS_G2D_VRAM_TYPE param4, u32 param5)
{
    sub_0200CD7C(param0, param1, param2, param3, sub_0207C944(), sub_0207C920(), 0, 3, param4, param5);
}

void sub_0207C9EC (UnkStruct_0200C6E4 * param0, UnkStruct_0200C704 * param1, u32 param2, u32 param3)
{
    sub_0200CE0C(param0, param1, sub_0207C944(), sub_0207C924(), 1, param2);
    sub_0200CE3C(param0, param1, sub_0207C944(), sub_0207C928(), 1, param3);
}

void sub_0207CA34 (UnkStruct_0200C704 * param0, u32 param1)
{
    sub_0200D070(param0, param1);
}

void sub_0207CA3C (UnkStruct_0200C704 * param0, u32 param1)
{
    sub_0200D080(param0, param1);
}

void sub_0207CA44 (UnkStruct_0200C704 * param0, u32 param1, u32 param2)
{
    sub_0200D090(param0, param1);
    sub_0200D0A0(param0, param2);
}

CellActorData * sub_0207CA58 (UnkStruct_0200C6E4 * param0, UnkStruct_0200C704 * param1, int param2, const UnkStruct_ov104_0223F9E0 * param3)
{
    CellActorData * v0;
    UnkStruct_ov104_0223F9E0 v1;

    v1 = *param3;
    v1.unk_0C = sub_0207C92C(param2);
    v0 = sub_0200CE6C(param0, param1, &v1);

    return v0;
}

void sub_0207CA88 (CellActorData * param0)
{
    sub_0200D0F4(param0);
}

u32 sub_0207CA90 (int param0)
{
    GF_ASSERT(param0 < NELEMS(Unk_020F0AE4));
    return Unk_020F0AE4[param0];
}

u8 sub_0207CAA8 (int param0)
{
    GF_ASSERT(param0 < NELEMS(Unk_020F0AE0));
    return Unk_020F0AE0[param0];
}

u32 sub_0207CAC0 (void)
{
    return 27;
}

void sub_0207CAC4 (UnkStruct_0200C6E4 * param0, UnkStruct_0200C704 * param1, NNS_G2D_VRAM_TYPE param2, int param3, u32 param4)
{
    sub_0200CBDC(param0, param1, sub_0207CAC0(), sub_0207CA90(param3), 1, param2, param4);
}

void sub_0207CAF8 (UnkStruct_0200C704 * param0, u32 param1)
{
    sub_0200D070(param0, param1);
}

void sub_0207CB00 (CellActorData * param0)
{
    sub_0200D0F4(param0);
}
