#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"

#include "struct_defs/struct_0200D0F4.h"
#include "overlay104/struct_ov104_0223F9E0.h"

#include "unk_0200C6E4.h"
#include "overlay017/ov17_02241270.h"

static const UnkStruct_ov104_0223F9E0 Unk_ov17_0225364C = {
    0x28,
    0x60,
    0x0,
    0x0,
    0x3E8,
    0x0,
    NNS_G2D_VRAM_TYPE_2DSUB,
    {0x80FB, 0x80EF, 0x80F6, 0x80F6, 0xFFFFFFFF, 0xFFFFFFFF},
    0x1,
    0x0
};

static const UnkStruct_ov104_0223F9E0 Unk_ov17_02253618 = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x3E9,
    0x0,
    NNS_G2D_VRAM_TYPE_2DSUB,
    {0x80FA, 0x80EF, 0x80F5, 0x80F5, 0xFFFFFFFF, 0xFFFFFFFF},
    0x1,
    0x0
};

static const UnkStruct_ov104_0223F9E0 Unk_ov17_02253680 = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x3E9,
    0x1,
    NNS_G2D_VRAM_TYPE_2DSUB,
    {0x80FA, 0x80EF, 0x80F5, 0x80F5, 0xFFFFFFFF, 0xFFFFFFFF},
    0x1,
    0x0
};

void ov17_02241270 (CellTransferStateData * param0, AnimationResourceCollection * param1, NARC * param2)
{
    sub_0200CC3C(param0, param1, param2, 42, 1, NNS_G2D_VRAM_TYPE_2DSUB, 33019);
    sub_0200CE24(param0, param1, param2, 43, 1, 33014);
    sub_0200CE54(param0, param1, param2, 44, 1, 33014);
}

CellActorData * ov17_022412C0 (CellTransferStateData * param0, AnimationResourceCollection * param1, int param2)
{
    CellActorData * v0;

    v0 = sub_0200CE6C(param0, param1, &Unk_ov17_0225364C);
    sub_0200D500(v0, (5 * 8) + (11 * 8) * param2, (0xc * 8) + 0 * param2, (((192 + 80) << FX32_SHIFT)));
    sub_0200D324(v0->unk_00);

    return v0;
}

void ov17_022412F0 (AnimationResourceCollection * param0)
{
    sub_0200D070(param0, 33019);
    sub_0200D090(param0, 33014);
    sub_0200D0A0(param0, 33014);
}

void ov17_02241314 (CellActorData * param0)
{
    sub_0200D0F4(param0);
}

void ov17_0224131C (CellTransferStateData * param0, AnimationResourceCollection * param1, NARC * param2)
{
    sub_0200CC3C(param0, param1, param2, 45, 1, NNS_G2D_VRAM_TYPE_2DSUB, 33018);
    sub_0200CE24(param0, param1, param2, 46, 1, 33013);
    sub_0200CE54(param0, param1, param2, 47, 1, 33013);
}

CellActorData * ov17_0224136C (CellTransferStateData * param0, AnimationResourceCollection * param1, int param2, int param3, int param4)
{
    CellActorData * v0;

    if (param4 >= 0) {
        v0 = sub_0200CE6C(param0, param1, &Unk_ov17_02253618);
    } else {
        v0 = sub_0200CE6C(param0, param1, &Unk_ov17_02253680);
    }

    sub_0200D500(v0, param2, param3, (((192 + 80) << FX32_SHIFT)));
    sub_0200D324(v0->unk_00);

    return v0;
}

void ov17_022413AC (CellActorData * param0)
{
    sub_0200D0F4(param0);
}

void ov17_022413B4 (AnimationResourceCollection * param0)
{
    sub_0200D070(param0, 33018);
    sub_0200D090(param0, 33013);
    sub_0200D0A0(param0, 33013);
}
