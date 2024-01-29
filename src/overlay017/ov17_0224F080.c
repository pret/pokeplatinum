#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"

#include "struct_defs/struct_0200D0F4.h"
#include "overlay104/struct_ov104_0223F9E0.h"

#include "unk_0200C6E4.h"
#include "overlay017/ov17_0224F080.h"

__attribute__((aligned(4))) static const u32 Unk_ov17_02254A90[] = {
    0x30,
    0x34,
    0x33,
    0x35,
    0x36
};

__attribute__((aligned(4))) static const u8 Unk_ov17_02254A88[] = {
    0x1,
    0x1,
    0x1,
    0x1,
    0x1
};

u32 ov17_0224F080 (int param0)
{
    GF_ASSERT(param0 < NELEMS(Unk_ov17_02254A90));
    return Unk_ov17_02254A90[param0];
}

u32 ov17_0224F098 (void)
{
    return 49;
}

u32 ov17_0224F09C (void)
{
    return 50;
}

u8 ov17_0224F0A0 (int param0)
{
    GF_ASSERT(param0 < NELEMS(Unk_ov17_02254A88));
    return Unk_ov17_02254A88[param0];
}

u32 ov17_0224F0B8 (void)
{
    return 46;
}

void ov17_0224F0BC (CellTransferStateData * param0, AnimationResourceCollection * param1, NNS_G2D_VRAM_TYPE param2, int param3, u32 param4)
{
    sub_0200CBDC(param0, param1, ov17_0224F0B8(), ov17_0224F080(param3), 1, param2, param4);
}

void ov17_0224F0F0 (CellTransferStateData * param0, AnimationResourceCollection * param1, u32 param2, u32 param3)
{
    sub_0200CE0C(param0, param1, ov17_0224F0B8(), ov17_0224F098(), 1, param2);
    sub_0200CE3C(param0, param1, ov17_0224F0B8(), ov17_0224F09C(), 1, param3);
}

void ov17_0224F138 (AnimationResourceCollection * param0, u32 param1)
{
    sub_0200D070(param0, param1);
}

void ov17_0224F140 (AnimationResourceCollection * param0, u32 param1, u32 param2)
{
    sub_0200D090(param0, param1);
    sub_0200D0A0(param0, param2);
}

CellActorData * ov17_0224F154 (CellTransferStateData * param0, AnimationResourceCollection * param1, int param2, const UnkStruct_ov104_0223F9E0 * param3)
{
    CellActorData * v0;
    UnkStruct_ov104_0223F9E0 v1;

    v1 = *param3;
    v1.unk_0C = ov17_0224F0A0(param2);
    v0 = sub_0200CE6C(param0, param1, &v1);

    return v0;
}

void ov17_0224F184 (CellActorData * param0)
{
    sub_0200D0F4(param0);
}
