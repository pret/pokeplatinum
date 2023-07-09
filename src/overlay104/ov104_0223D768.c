#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/narc.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"

#include "struct_defs/struct_0200D0F4.h"
#include "overlay104/struct_ov104_0223F9E0.h"

#include "unk_0200C6E4.h"
#include "overlay104/ov104_0223D768.h"

static const UnkStruct_ov104_0223F9E0 Unk_ov104_022417D8[] = {
    {
        0x0,
        0x0,
        0x0,
        0x0,
        0x64,
        0x0,
        NNS_G2D_VRAM_TYPE_2DMAIN,
        {0x21, 0x2C, 0x23, 0x22, 0xffffffff, 0xffffffff},
        0x1,
        0x0
    },
    {
        0x0,
        0x0,
        0x0,
        0x0,
        0x64,
        0x0,
        NNS_G2D_VRAM_TYPE_2DMAIN,
        {0x21, 0x2C, 0x23, 0x22, 0xffffffff, 0xffffffff},
        0x1,
        0x0
    },
    {
        0x0,
        0x0,
        0x0,
        0x0,
        0x64,
        0x0,
        NNS_G2D_VRAM_TYPE_2DMAIN,
        {0x18, 0x2A, 0x1A, 0x19, 0xffffffff, 0xffffffff},
        0x1,
        0x0
    },
    {
        0x0,
        0x0,
        0x0,
        0x0,
        0x64,
        0x0,
        NNS_G2D_VRAM_TYPE_2DMAIN,
        {0x1B, 0x2B, 0x1D, 0x1C, 0xffffffff, 0xffffffff},
        0x1,
        0x0
    }
};

void ov104_0223D768 (UnkStruct_0200C6E4 * param0, UnkStruct_0200C704 * param1, NARC * param2, UnkStruct_02002F38 * param3, u16 param4)
{
    const UnkStruct_ov104_0223F9E0 * v0;

    GF_ASSERT(param4 < NELEMS(Unk_ov104_022417D8));
    v0 = &Unk_ov104_022417D8[param4];

    sub_0200CC3C(param0, param1, param2, v0->unk_14[0], 1, NNS_G2D_VRAM_TYPE_2DMAIN, v0->unk_14[0]);
    sub_0200CDC4(param3, 2, param0, param1, param2, v0->unk_14[1], 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, v0->unk_14[1]);
    sub_0200CE24(param0, param1, param2, v0->unk_14[2], 1, v0->unk_14[2]);
    sub_0200CE54(param0, param1, param2, v0->unk_14[3], 1, v0->unk_14[3]);
}

void ov104_0223D7EC (UnkStruct_0200C704 * param0, u16 param1)
{
    const UnkStruct_ov104_0223F9E0 * v0;

    GF_ASSERT(param1 < NELEMS(Unk_ov104_022417D8));
    v0 = &Unk_ov104_022417D8[param1];

    sub_0200D070(param0, v0->unk_14[0]);
    sub_0200D080(param0, v0->unk_14[1]);
    sub_0200D090(param0, v0->unk_14[2]);
    sub_0200D0A0(param0, v0->unk_14[3]);
}

UnkStruct_0200D0F4 * ov104_0223D828 (UnkStruct_0200C6E4 * param0, UnkStruct_0200C704 * param1, u16 param2)
{
    UnkStruct_0200D0F4 * v0;

    GF_ASSERT(param2 < NELEMS(Unk_ov104_022417D8));

    v0 = sub_0200CE6C(param0, param1, &Unk_ov104_022417D8[param2]);
    sub_0200D324(v0->unk_00);
    return v0;
}

void ov104_0223D858 (UnkStruct_0200D0F4 * param0)
{
    sub_0200D0F4(param0);
}
