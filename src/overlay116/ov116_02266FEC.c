#include "overlay116/ov116_02266FEC.h"

#include <nitro.h>
#include <string.h>

#include "overlay116/union_ov116_02266FEC.h"
#include "overlay116/union_ov116_022671EC.h"

void ov116_02266FEC(UnkUnion_ov116_02266FEC *param0) {
    param0->val1_00 = 1.0;
    param0->val1_04 = 0;
    param0->val1_08 = 0;
    param0->val1_0C = 0;
}

void ov116_02266FFC(UnkUnion_ov116_02266FEC *param0, UnkUnion_ov116_02266FEC *param1) {
    *param0 = *param1;
}

void ov116_0226700C(UnkUnion_ov116_02266FEC *param0, const UnkUnion_ov116_02266FEC *param1, const UnkUnion_ov116_02266FEC *param2) {
    param0->val1_00 = (param1->val1_00 * param2->val1_00) - (param1->val1_04 * param2->val1_04) - (param1->val1_08 * param2->val1_08) - (param1->val1_0C * param2->val1_0C);
    param0->val1_04 = (param1->val1_00 * param2->val1_04) + (param1->val1_04 * param2->val1_00) + (param1->val1_08 * param2->val1_0C) - (param1->val1_0C * param2->val1_08);
    param0->val1_08 = (param1->val1_00 * param2->val1_08) - (param1->val1_04 * param2->val1_0C) + (param1->val1_08 * param2->val1_00) + (param1->val1_0C * param2->val1_04);
    param0->val1_0C = (param1->val1_00 * param2->val1_0C) + (param1->val1_04 * param2->val1_08) - (param1->val1_08 * param2->val1_04) + (param1->val1_0C * param2->val1_00);
}

f32 ov116_0226711C(const UnkUnion_ov116_02266FEC *param0) {
    return (param0->val1_00 * param0->val1_00) + (param0->val1_04 + param0->val1_04) + (param0->val1_08 + param0->val1_08) + (param0->val1_0C + param0->val1_0C);
}

f32 ov116_02267160(const UnkUnion_ov116_02266FEC *param0) {
    fx32 v0;

    v0 = FX_F32_TO_FX32(ov116_0226711C(param0));
    return FX_FX32_TO_F32(FX_Sqrt(v0));
}

void ov116_022671B8(UnkUnion_ov116_02266FEC *param0, const UnkUnion_ov116_02266FEC *param1, f32 param2) {
    param0->val1_00 = param1->val1_00 / param2;
    param0->val1_04 = param1->val1_04 / param2;
    param0->val1_08 = param1->val1_08 / param2;
    param0->val1_0C = param1->val1_0C / param2;
}

void ov116_022671EC(UnkUnion_ov116_022671EC *param0, const UnkUnion_ov116_02266FEC *param1) {
    f32 v0 = param1->val1_04 * param1->val1_04 * 2.0;
    f32 v1 = param1->val1_08 * param1->val1_08 * 2.0;
    f32 v2 = param1->val1_0C * param1->val1_0C * 2.0;
    f32 v3 = param1->val1_04 * param1->val1_08 * 2.0;
    f32 v4 = param1->val1_08 * param1->val1_0C * 2.0;
    f32 v5 = param1->val1_0C * param1->val1_04 * 2.0;
    f32 v6 = param1->val1_04 * param1->val1_00 * 2.0;
    f32 v7 = param1->val1_08 * param1->val1_00 * 2.0;
    f32 v8 = param1->val1_0C * param1->val1_00 * 2.0;

    param0->val1_00 = 1.0 - v1 - v2;
    param0->val1_04 = v3 + v8;
    param0->val1_08 = v5 - v7;
    param0->val1_0C = 0.0;
    param0->val1_10 = v3 - v8;
    param0->val1_14 = 1.0 - v2 - v0;
    param0->val1_18 = v4 + v6;
    param0->val1_1C = 0.0;
    param0->val1_20 = v5 + v7;
    param0->val1_24 = v4 - v6;
    param0->val1_28 = 1.0 - v0 - v1;
    param0->val1_2C = 0.0;
    param0->val1_30 = 0.0;
    param0->val1_34 = 0.0;
    param0->val1_38 = 0.0;
    param0->val1_3C = 1.0;
}

void ov116_022673FC(const UnkUnion_ov116_022671EC *param0, MtxFx44 *param1) {
    param1->_00 = FX32_CONST(param0->val1_00);
    param1->_01 = FX32_CONST(param0->val1_04);
    param1->_02 = FX32_CONST(param0->val1_08);
    param1->_03 = FX32_CONST(param0->val1_0C);
    param1->_10 = FX32_CONST(param0->val1_10);
    param1->_11 = FX32_CONST(param0->val1_14);
    param1->_12 = FX32_CONST(param0->val1_18);
    param1->_13 = FX32_CONST(param0->val1_1C);
    param1->_20 = FX32_CONST(param0->val1_20);
    param1->_21 = FX32_CONST(param0->val1_24);
    param1->_22 = FX32_CONST(param0->val1_28);
    param1->_23 = FX32_CONST(param0->val1_2C);
    param1->_30 = FX32_CONST(param0->val1_30);
    param1->_31 = FX32_CONST(param0->val1_34);
    param1->_32 = FX32_CONST(param0->val1_38);
    param1->_33 = FX32_CONST(param0->val1_3C);
}

void ov116_02267728(const UnkUnion_ov116_022671EC *param0, MtxFx43 *param1) {
    MtxFx44 v0;

    ov116_022673FC(param0, &v0);
    MTX_Copy44To43(&v0, param1);
}
