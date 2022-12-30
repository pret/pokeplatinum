#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_020203AC_decl.h"

#include "overlay115/struct_ov115_0226527C.h"

#include "unk_02017E74.h"
#include "unk_02020020.h"
#include "overlay005/ov5_021EAFA4.h"

typedef struct UnkStruct_ov5_021EB0E0_t {
    u16 unk_00;
    u16 unk_02;
    VecFx32 unk_04;
    VecFx32 unk_10;
    fx32 unk_1C;
    MtxFx43 unk_20;
    UnkStruct_020203AC * unk_50;
    VecFx32 unk_54;
} UnkStruct_ov5_021EB0E0;

VecFx32 ov5_021EAFA4 (const u16 param0, const u16 param1, const UnkStruct_ov5_021EB0E0 * param2)
{
    s8 v0, v1;
    VecFx32 v2;
    VecFx32 v3;
    u8 v4, v5;
    u16 v6, v7;

    v3.y = 0;
    v2 = sub_02020AAC(param2->unk_50);

    {
        MtxFx43 v8;
        VecFx32 v9;
        VecFx32 v10 = {0, 0, -FX32_ONE};

        if (param1 < 96) {
            v4 = 96 - param1;
            v6 = param2->unk_00 * v4 / 96;
        } else {
            v4 = param1 - 96;
            v6 = param2->unk_00 * v4 / 96;
            v6 *= -1;
        }

        if (param0 < 128) {
            v5 = 128 - param0;
            v7 = param2->unk_02 * v5 / 128;
        } else {
            v5 = param0 - 128;
            v7 = param2->unk_02 * v5 / 128;
            v7 *= -1;
        }

        {
            MTX_RotX43(&v8, FX_SinIdx(v6), FX_CosIdx(v6));
            MTX_MultVec43(&v10, &v8, &v9);
            MTX_RotY43(&v8, FX_SinIdx(v7), FX_CosIdx(v7));
            MTX_MultVec43(&v9, &v8, &v9);
            MTX_MultVec43(&v9, &param2->unk_20, &v9);

            {
                VecFx32 v11;
                fx32 v12;
                fx32 v13;

                v13 = VEC_DotProduct(&param2->unk_10, &v9);
                v12 = -(FX_Div(param2->unk_1C, v13));

                VEC_MultAdd(v12, &v9, &param2->unk_04, &v11);

                v3.x = v2.x + (v11.x);
                v3.z = v2.z + (v11.z);

                return v3;
            }
        }
    }
}

UnkStruct_ov5_021EB0E0 * ov5_021EB0C8 (UnkStruct_020203AC * const param0)
{
    UnkStruct_ov5_021EB0E0 * v0;

    v0 = sub_02018144(4, sizeof(UnkStruct_ov5_021EB0E0));
    ov5_021EB0E0(v0, param0);

    return v0;
}

void ov5_021EB0E0 (UnkStruct_ov5_021EB0E0 * param0, UnkStruct_020203AC * const param1)
{
    UnkStruct_ov115_0226527C v0;

    v0 = sub_02020A94(param1);
    param0->unk_00 = sub_02020A88(param1);

    {
        fx32 v1;

        v1 = FX_Div(FX_SinIdx(param0->unk_00), FX_CosIdx(param0->unk_00));
        v1 = v1 * 4 / 3;

        param0->unk_02 = FX_AtanIdx(v1);
    }
    {
        VecFx32 v2 = {0, FX32_ONE, 0};
        VecFx32 v3, v4;

        v3 = sub_02020ABC(param1);
        v4 = sub_02020AAC(param1);

        VEC_Subtract(&v3, &v4, &param0->unk_04);

        param0->unk_10 = v2;
        param0->unk_1C = VEC_DotProduct(&v2, &param0->unk_04);
    }

    MTX_RotX43(&param0->unk_20, FX_SinIdx(v0.unk_00), FX_CosIdx(v0.unk_00));
    param0->unk_50 = param1;
}

void ov5_021EB184 (UnkStruct_ov5_021EB0E0 ** param0)
{
    if ((*param0) == NULL) {
        return;
    }

    GF_ASSERT((*param0) != NULL);

    sub_020181C4((*param0));
    (*param0) = NULL;
}
